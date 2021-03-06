/*
 * Copyright (c) 2009, 2012, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 */
package com.oracle.graal.compiler.alloc;

import static com.oracle.graal.api.code.CodeUtil.*;
import static com.oracle.graal.api.code.ValueUtil.*;
import static com.oracle.graal.compiler.GraalDebugConfig.*;
import static com.oracle.graal.lir.LIRValueUtil.*;
import static com.oracle.graal.phases.GraalOptions.*;

import java.util.*;

import com.oracle.graal.alloc.*;
import com.oracle.graal.api.code.*;
import com.oracle.graal.api.meta.*;
import com.oracle.graal.compiler.alloc.Interval.RegisterBinding;
import com.oracle.graal.compiler.alloc.Interval.RegisterPriority;
import com.oracle.graal.compiler.alloc.Interval.SpillState;
import com.oracle.graal.compiler.gen.*;
import com.oracle.graal.debug.*;
import com.oracle.graal.graph.*;
import com.oracle.graal.lir.*;
import com.oracle.graal.lir.LIRInstruction.OperandFlag;
import com.oracle.graal.lir.LIRInstruction.OperandMode;
import com.oracle.graal.lir.LIRInstruction.StateProcedure;
import com.oracle.graal.lir.LIRInstruction.ValueProcedure;
import com.oracle.graal.lir.StandardOp.MoveOp;
import com.oracle.graal.nodes.cfg.*;
import com.oracle.graal.phases.util.*;

/**
 * An implementation of the linear scan register allocator algorithm described in <a
 * href="http://doi.acm.org/10.1145/1064979.1064998"
 * >"Optimized Interval Splitting in a Linear Scan Register Allocator"</a> by Christian Wimmer and
 * Hanspeter Moessenboeck.
 */
public final class LinearScan {

    final TargetDescription target;
    final LIR ir;
    final LIRGenerator gen;
    final FrameMap frameMap;
    final RegisterAttributes[] registerAttributes;
    final Register[] registers;

    boolean callKillsRegisters;

    private static final int INITIAL_SPLIT_INTERVALS_CAPACITY = 32;

    public static class BlockData {

        /**
         * Bit map specifying which operands are live upon entry to this block. These are values
         * used in this block or any of its successors where such value are not defined in this
         * block. The bit index of an operand is its {@linkplain LinearScan#operandNumber(Value)
         * operand number}.
         */
        public BitSet liveIn;

        /**
         * Bit map specifying which operands are live upon exit from this block. These are values
         * used in a successor block that are either defined in this block or were live upon entry
         * to this block. The bit index of an operand is its
         * {@linkplain LinearScan#operandNumber(Value) operand number}.
         */
        public BitSet liveOut;

        /**
         * Bit map specifying which operands are used (before being defined) in this block. That is,
         * these are the values that are live upon entry to the block. The bit index of an operand
         * is its {@linkplain LinearScan#operandNumber(Value) operand number}.
         */
        public BitSet liveGen;

        /**
         * Bit map specifying which operands are defined/overwritten in this block. The bit index of
         * an operand is its {@linkplain LinearScan#operandNumber(Value) operand number}.
         */
        public BitSet liveKill;
    }

    public final BlockMap<BlockData> blockData;

    /**
     * List of blocks in linear-scan order. This is only correct as long as the CFG does not change.
     */
    final List<Block> sortedBlocks;

    /**
     * Map from {@linkplain #operandNumber(Value) operand numbers} to intervals.
     */
    Interval[] intervals;

    /**
     * The number of valid entries in {@link #intervals}.
     */
    int intervalsSize;

    /**
     * The index of the first entry in {@link #intervals} for a
     * {@linkplain #createDerivedInterval(Interval) derived interval}.
     */
    int firstDerivedIntervalIndex = -1;

    /**
     * Intervals sorted by {@link Interval#from()}.
     */
    Interval[] sortedIntervals;

    /**
     * Map from an instruction {@linkplain LIRInstruction#id id} to the instruction. Entries should
     * be retrieved with {@link #instructionForId(int)} as the id is not simply an index into this
     * array.
     */
    LIRInstruction[] opIdToInstructionMap;

    /**
     * Map from an instruction {@linkplain LIRInstruction#id id} to the {@linkplain Block block}
     * containing the instruction. Entries should be retrieved with {@link #blockForId(int)} as the
     * id is not simply an index into this array.
     */
    Block[] opIdToBlockMap;

    /**
     * Bit set for each variable that is contained in each loop.
     */
    BitMap2D intervalInLoop;

    /**
     * The variable operands allocated from this pool. The {@linkplain #operandNumber(Value) number}
     * of the first variable operand in this pool is one greater than the number of the last
     * register operand in the pool.
     */
    private final ArrayList<Variable> variables;

    /**
     * The {@linkplain #operandNumber(Value) number} of the first variable operand allocated.
     */
    private final int firstVariableNumber;

    public LinearScan(TargetDescription target, LIR ir, LIRGenerator gen, FrameMap frameMap) {
        this.target = target;
        this.ir = ir;
        this.gen = gen;
        this.frameMap = frameMap;
        this.sortedBlocks = ir.linearScanOrder();
        this.registerAttributes = frameMap.registerConfig.getAttributesMap();

        this.registers = target.arch.getRegisters();
        this.firstVariableNumber = registers.length;
        this.variables = new ArrayList<>(ir.numVariables() * 3 / 2);
        this.blockData = new BlockMap<>(ir.cfg);
    }

    public int getFirstLirInstructionId(Block block) {
        int result = ir.lir(block).get(0).id();
        assert result >= 0;
        return result;
    }

    public int getLastLirInstructionId(Block block) {
        List<LIRInstruction> instructions = ir.lir(block);
        int result = instructions.get(instructions.size() - 1).id();
        assert result >= 0;
        return result;
    }

    public static boolean isVariableOrRegister(Value value) {
        return isVariable(value) || isRegister(value);
    }

    /**
     * Converts an operand (variable or register) to an index in a flat address space covering all
     * the {@linkplain Variable variables} and {@linkplain RegisterValue registers} being processed
     * by this allocator.
     */
    private int operandNumber(Value operand) {
        if (isRegister(operand)) {
            int number = asRegister(operand).number;
            assert number < firstVariableNumber;
            return number;
        }
        assert isVariable(operand) : operand;
        return firstVariableNumber + ((Variable) operand).index;
    }

    /**
     * Gets the operand denoted by a given operand number.
     */
    private AllocatableValue operandFor(int operandNumber) {
        if (operandNumber < firstVariableNumber) {
            assert operandNumber >= 0;
            return registers[operandNumber].asValue();
        }
        int index = operandNumber - firstVariableNumber;
        Variable variable = variables.get(index);
        assert variable.index == index;
        return variable;
    }

    /**
     * Gets the number of operands. This value will increase by 1 for new variable.
     */
    private int operandSize() {
        return firstVariableNumber + ir.numVariables();
    }

    /**
     * Gets the highest operand number for a register operand. This value will never change.
     */
    public int maxRegisterNumber() {
        return firstVariableNumber - 1;
    }

    static final IntervalPredicate IS_PRECOLORED_INTERVAL = new IntervalPredicate() {

        @Override
        public boolean apply(Interval i) {
            return isRegister(i.operand);
        }
    };

    static final IntervalPredicate IS_VARIABLE_INTERVAL = new IntervalPredicate() {

        @Override
        public boolean apply(Interval i) {
            return isVariable(i.operand);
        }
    };

    static final IntervalPredicate IS_OOP_INTERVAL = new IntervalPredicate() {

        @Override
        public boolean apply(Interval i) {
            return !isRegister(i.operand) && i.kind() == Kind.Object;
        }
    };

    /**
     * Gets an object describing the attributes of a given register according to this register
     * configuration.
     */
    RegisterAttributes attributes(Register reg) {
        return registerAttributes[reg.number];
    }

    void assignSpillSlot(Interval interval) {
        // assign the canonical spill slot of the parent (if a part of the interval
        // is already spilled) or allocate a new spill slot
        if (interval.spillSlot() != null) {
            interval.assignLocation(interval.spillSlot());
        } else {
            StackSlot slot = frameMap.allocateSpillSlot(interval.kind());
            interval.setSpillSlot(slot);
            interval.assignLocation(slot);
        }
    }

    /**
     * Creates a new interval.
     * 
     * @param operand the operand for the interval
     * @return the created interval
     */
    Interval createInterval(AllocatableValue operand) {
        assert isLegal(operand);
        int operandNumber = operandNumber(operand);
        Interval interval = new Interval(operand, operandNumber);
        assert operandNumber < intervalsSize;
        assert intervals[operandNumber] == null;
        intervals[operandNumber] = interval;
        return interval;
    }

    /**
     * Creates an interval as a result of splitting or spilling another interval.
     * 
     * @param source an interval being split of spilled
     * @return a new interval derived from {@code source}
     */
    Interval createDerivedInterval(Interval source) {
        if (firstDerivedIntervalIndex == -1) {
            firstDerivedIntervalIndex = intervalsSize;
        }
        if (intervalsSize == intervals.length) {
            intervals = Arrays.copyOf(intervals, intervals.length * 2);
        }
        intervalsSize++;
        Variable variable = new Variable(source.kind(), ir.nextVariable());
        assert variables.size() == variable.index;
        variables.add(variable);

        Interval interval = createInterval(variable);
        assert intervals[intervalsSize - 1] == interval;
        return interval;
    }

    // access to block list (sorted in linear scan order)
    int blockCount() {
        return sortedBlocks.size();
    }

    Block blockAt(int index) {
        return sortedBlocks.get(index);
    }

    /**
     * Gets the size of the {@link BlockData#liveIn} and {@link BlockData#liveOut} sets for a basic
     * block. These sets do not include any operands allocated as a result of creating
     * {@linkplain #createDerivedInterval(Interval) derived intervals}.
     */
    int liveSetSize() {
        return firstDerivedIntervalIndex == -1 ? operandSize() : firstDerivedIntervalIndex;
    }

    int numLoops() {
        return ir.cfg.getLoops().length;
    }

    boolean isIntervalInLoop(int interval, int loop) {
        return intervalInLoop.at(interval, loop);
    }

    Interval intervalFor(Value operand) {
        int operandNumber = operandNumber(operand);
        assert operandNumber < intervalsSize;
        return intervals[operandNumber];
    }

    Interval getOrCreateInterval(AllocatableValue operand) {
        Interval ret = intervalFor(operand);
        if (ret == null) {
            return createInterval(operand);
        } else {
            return ret;
        }
    }

    /**
     * Gets the highest instruction id allocated by this object.
     */
    int maxOpId() {
        assert opIdToInstructionMap.length > 0 : "no operations";
        return (opIdToInstructionMap.length - 1) << 1;
    }

    /**
     * Converts an {@linkplain LIRInstruction#id instruction id} to an instruction index. All LIR
     * instructions in a method have an index one greater than their linear-scan order predecesor
     * with the first instruction having an index of 0.
     */
    static int opIdToIndex(int opId) {
        return opId >> 1;
    }

    /**
     * Retrieves the {@link LIRInstruction} based on its {@linkplain LIRInstruction#id id}.
     * 
     * @param opId an instruction {@linkplain LIRInstruction#id id}
     * @return the instruction whose {@linkplain LIRInstruction#id} {@code == id}
     */
    LIRInstruction instructionForId(int opId) {
        assert isEven(opId) : "opId not even";
        LIRInstruction instr = opIdToInstructionMap[opIdToIndex(opId)];
        assert instr.id() == opId;
        return instr;
    }

    /**
     * Gets the block containing a given instruction.
     * 
     * @param opId an instruction {@linkplain LIRInstruction#id id}
     * @return the block containing the instruction denoted by {@code opId}
     */
    Block blockForId(int opId) {
        assert opIdToBlockMap.length > 0 && opId >= 0 && opId <= maxOpId() + 1 : "opId out of range";
        return opIdToBlockMap[opIdToIndex(opId)];
    }

    boolean isBlockBegin(int opId) {
        return opId == 0 || blockForId(opId) != blockForId(opId - 1);
    }

    boolean coversBlockBegin(int opId1, int opId2) {
        return blockForId(opId1) != blockForId(opId2);
    }

    /**
     * Determines if an {@link LIRInstruction} destroys all caller saved registers.
     * 
     * @param opId an instruction {@linkplain LIRInstruction#id id}
     * @return {@code true} if the instruction denoted by {@code id} destroys all caller saved
     *         registers.
     */
    boolean hasCall(int opId) {
        assert isEven(opId) : "opId not even";
        return instructionForId(opId).destroysCallerSavedRegisters();
    }

    /**
     * Eliminates moves from register to stack if the stack slot is known to be correct.
     */
    void changeSpillDefinitionPos(Interval interval, int defPos) {
        assert interval.isSplitParent() : "can only be called for split parents";

        switch (interval.spillState()) {
            case NoDefinitionFound:
                assert interval.spillDefinitionPos() == -1 : "must no be set before";
                interval.setSpillDefinitionPos(defPos);
                interval.setSpillState(SpillState.NoSpillStore);
                break;

            case NoSpillStore:
                assert defPos <= interval.spillDefinitionPos() : "positions are processed in reverse order when intervals are created";
                if (defPos < interval.spillDefinitionPos() - 2) {
                    // second definition found, so no spill optimization possible for this interval
                    interval.setSpillState(SpillState.NoOptimization);
                } else {
                    // two consecutive definitions (because of two-operand LIR form)
                    assert blockForId(defPos) == blockForId(interval.spillDefinitionPos()) : "block must be equal";
                }
                break;

            case NoOptimization:
                // nothing to do
                break;

            default:
                throw new BailoutException("other states not allowed at this time");
        }
    }

    // called during register allocation
    void changeSpillState(Interval interval, int spillPos) {
        switch (interval.spillState()) {
            case NoSpillStore: {
                int defLoopDepth = blockForId(interval.spillDefinitionPos()).getLoopDepth();
                int spillLoopDepth = blockForId(spillPos).getLoopDepth();

                if (defLoopDepth < spillLoopDepth) {
                    // the loop depth of the spilling position is higher then the loop depth
                    // at the definition of the interval . move write to memory out of loop
                    // by storing at definitin of the interval
                    interval.setSpillState(SpillState.StoreAtDefinition);
                } else {
                    // the interval is currently spilled only once, so for now there is no
                    // reason to store the interval at the definition
                    interval.setSpillState(SpillState.OneSpillStore);
                }
                break;
            }

            case OneSpillStore: {
                // the interval is spilled more then once, so it is better to store it to
                // memory at the definition
                interval.setSpillState(SpillState.StoreAtDefinition);
                break;
            }

            case StoreAtDefinition:
            case StartInMemory:
            case NoOptimization:
            case NoDefinitionFound:
                // nothing to do
                break;

            default:
                throw new BailoutException("other states not allowed at this time");
        }
    }

    abstract static class IntervalPredicate {

        abstract boolean apply(Interval i);
    }

    private static final IntervalPredicate mustStoreAtDefinition = new IntervalPredicate() {

        @Override
        public boolean apply(Interval i) {
            return i.isSplitParent() && i.spillState() == SpillState.StoreAtDefinition;
        }
    };

    // called once before assignment of register numbers
    void eliminateSpillMoves() {
        if (TraceLinearScanLevel.getValue() >= 3) {
            TTY.println(" Eliminating unnecessary spill moves");
        }

        // collect all intervals that must be stored after their definition.
        // the list is sorted by Interval.spillDefinitionPos
        Interval interval;
        interval = createUnhandledLists(mustStoreAtDefinition, null).first;
        if (DetailedAsserts.getValue()) {
            checkIntervals(interval);
        }

        LIRInsertionBuffer insertionBuffer = new LIRInsertionBuffer();
        for (Block block : sortedBlocks) {
            List<LIRInstruction> instructions = ir.lir(block);
            int numInst = instructions.size();

            // iterate all instructions of the block. skip the first because it is always a label
            for (int j = 1; j < numInst; j++) {
                LIRInstruction op = instructions.get(j);
                int opId = op.id();

                if (opId == -1) {
                    MoveOp move = (MoveOp) op;
                    // remove move from register to stack if the stack slot is guaranteed to be
                    // correct.
                    // only moves that have been inserted by LinearScan can be removed.
                    assert isVariable(move.getResult()) : "LinearScan inserts only moves to variables";

                    Interval curInterval = intervalFor(move.getResult());

                    if (!isRegister(curInterval.location()) && curInterval.alwaysInMemory()) {
                        // move target is a stack slot that is always correct, so eliminate
                        // instruction
                        if (TraceLinearScanLevel.getValue() >= 4) {
                            TTY.println("eliminating move from interval %d to %d", operandNumber(move.getInput()), operandNumber(move.getResult()));
                        }
                        instructions.set(j, null); // null-instructions are deleted by assignRegNum
                    }

                } else {
                    // insert move from register to stack just after the beginning of the interval
                    assert interval == Interval.EndMarker || interval.spillDefinitionPos() >= opId : "invalid order";
                    assert interval == Interval.EndMarker || (interval.isSplitParent() && interval.spillState() == SpillState.StoreAtDefinition) : "invalid interval";

                    while (interval != Interval.EndMarker && interval.spillDefinitionPos() == opId) {
                        if (!insertionBuffer.initialized()) {
                            // prepare insertion buffer (appended when all instructions of the block
                            // are processed)
                            insertionBuffer.init(instructions);
                        }

                        AllocatableValue fromLocation = interval.location();
                        AllocatableValue toLocation = canonicalSpillOpr(interval);

                        assert isRegister(fromLocation) : "from operand must be a register but is: " + fromLocation + " toLocation=" + toLocation + " spillState=" + interval.spillState();
                        assert isStackSlot(toLocation) : "to operand must be a stack slot";

                        insertionBuffer.append(j + 1, ir.spillMoveFactory.createMove(toLocation, fromLocation));

                        if (TraceLinearScanLevel.getValue() >= 4) {
                            StackSlot slot = interval.spillSlot();
                            TTY.println("inserting move after definition of interval %d to stack slot %s at opId %d", interval.operandNumber, slot, opId);
                        }

                        interval = interval.next;
                    }
                }
            } // end of instruction iteration

            if (insertionBuffer.initialized()) {
                insertionBuffer.finish();
            }
        } // end of block iteration

        assert interval == Interval.EndMarker : "missed an interval";
    }

    private static void checkIntervals(Interval interval) {
        Interval prev = null;
        Interval temp = interval;
        while (temp != Interval.EndMarker) {
            assert temp.spillDefinitionPos() > 0 : "invalid spill definition pos";
            if (prev != null) {
                assert temp.from() >= prev.from() : "intervals not sorted";
                assert temp.spillDefinitionPos() >= prev.spillDefinitionPos() : "when intervals are sorted by from :  then they must also be sorted by spillDefinitionPos";
            }

            assert temp.spillSlot() != null : "interval has no spill slot assigned";
            assert temp.spillDefinitionPos() >= temp.from() : "invalid order";
            assert temp.spillDefinitionPos() <= temp.from() + 2 : "only intervals defined once at their start-pos can be optimized";

            if (TraceLinearScanLevel.getValue() >= 4) {
                TTY.println("interval %d (from %d to %d) must be stored at %d", temp.operandNumber, temp.from(), temp.to(), temp.spillDefinitionPos());
            }

            prev = temp;
            temp = temp.next;
        }
    }

    /**
     * Numbers all instructions in all blocks. The numbering follows the
     * {@linkplain ComputeBlockOrder linear scan order}.
     */
    void numberInstructions() {
        ValueProcedure setVariableProc = new ValueProcedure() {

            @Override
            public Value doValue(Value value) {
                if (isVariable(value)) {
                    int variableIdx = asVariable(value).index;
                    while (variables.size() <= variableIdx) {
                        variables.add(null);
                    }
                    variables.set(variableIdx, asVariable(value));
                }
                return value;
            }
        };

        // Assign IDs to LIR nodes and build a mapping, lirOps, from ID to LIRInstruction node.
        int numInstructions = 0;
        for (Block block : sortedBlocks) {
            numInstructions += ir.lir(block).size();
        }

        // initialize with correct length
        opIdToInstructionMap = new LIRInstruction[numInstructions];
        opIdToBlockMap = new Block[numInstructions];

        int opId = 0;
        int index = 0;
        for (Block block : sortedBlocks) {
            blockData.put(block, new BlockData());

            List<LIRInstruction> instructions = ir.lir(block);

            int numInst = instructions.size();
            for (int j = 0; j < numInst; j++) {
                LIRInstruction op = instructions.get(j);
                op.setId(opId);

                opIdToInstructionMap[index] = op;
                opIdToBlockMap[index] = block;
                assert instructionForId(opId) == op : "must match";

                op.forEachTemp(setVariableProc);
                op.forEachOutput(setVariableProc);

                index++;
                opId += 2; // numbering of lirOps by two
            }
        }
        assert index == numInstructions : "must match";
        assert (index << 1) == opId : "must match: " + (index << 1);

        if (DetailedAsserts.getValue()) {
            for (int i = 0; i < variables.size(); i++) {
                assert variables.get(i) != null && variables.get(i).index == i;
            }
            assert variables.size() == ir.numVariables();
        }
    }

    /**
     * Computes local live sets (i.e. {@link BlockData#liveGen} and {@link BlockData#liveKill})
     * separately for each block.
     */
    void computeLocalLiveSets() {
        int liveSize = liveSetSize();

        intervalInLoop = new BitMap2D(operandSize(), numLoops());

        // iterate all blocks
        for (final Block block : sortedBlocks) {
            final BitSet liveGen = new BitSet(liveSize);
            final BitSet liveKill = new BitSet(liveSize);

            List<LIRInstruction> instructions = ir.lir(block);
            int numInst = instructions.size();

            // iterate all instructions of the block. skip the first because it is always a label
            assert !instructions.get(0).hasOperands() : "first operation must always be a label";
            for (int j = 1; j < numInst; j++) {
                final LIRInstruction op = instructions.get(j);

                ValueProcedure useProc = new ValueProcedure() {

                    @Override
                    protected Value doValue(Value operand) {
                        if (isVariable(operand)) {
                            int operandNum = operandNumber(operand);
                            if (!liveKill.get(operandNum)) {
                                liveGen.set(operandNum);
                                if (TraceLinearScanLevel.getValue() >= 4) {
                                    TTY.println("  Setting liveGen for operand %d at instruction %d", operandNum, op.id());
                                }
                            }
                            if (block.getLoop() != null) {
                                intervalInLoop.setBit(operandNum, block.getLoop().index);
                            }
                        }

                        if (DetailedAsserts.getValue()) {
                            verifyInput(block, liveKill, operand);
                        }
                        return operand;
                    }
                };
                ValueProcedure stateProc = new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand) {
                        int operandNum = operandNumber(operand);
                        if (!liveKill.get(operandNum)) {
                            liveGen.set(operandNum);
                            if (TraceLinearScanLevel.getValue() >= 4) {
                                TTY.println("  Setting liveGen for LIR opId %d, operand %d because of state for %s", op.id(), operandNum, op);
                            }
                        }
                        return operand;
                    }
                };
                ValueProcedure defProc = new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand) {
                        if (isVariable(operand)) {
                            int varNum = operandNumber(operand);
                            liveKill.set(varNum);
                            if (block.getLoop() != null) {
                                intervalInLoop.setBit(varNum, block.getLoop().index);
                            }
                        }

                        if (DetailedAsserts.getValue()) {
                            // fixed intervals are never live at block boundaries, so
                            // they need not be processed in live sets
                            // process them only in debug mode so that this can be checked
                            verifyTemp(liveKill, operand);
                        }
                        return operand;
                    }
                };

                op.forEachInput(useProc);
                op.forEachAlive(useProc);
                // Add uses of live locals from interpreter's point of view for proper debug
                // information generation
                op.forEachState(stateProc);
                op.forEachTemp(defProc);
                op.forEachOutput(defProc);
            } // end of instruction iteration

            blockData.get(block).liveGen = liveGen;
            blockData.get(block).liveKill = liveKill;
            blockData.get(block).liveIn = new BitSet(liveSize);
            blockData.get(block).liveOut = new BitSet(liveSize);

            if (TraceLinearScanLevel.getValue() >= 4) {
                TTY.println("liveGen  B%d %s", block.getId(), blockData.get(block).liveGen);
                TTY.println("liveKill B%d %s", block.getId(), blockData.get(block).liveKill);
            }
        } // end of block iteration
    }

    private void verifyTemp(BitSet liveKill, Value operand) {
        // fixed intervals are never live at block boundaries, so
        // they need not be processed in live sets
        // process them only in debug mode so that this can be checked
        if (isRegister(operand)) {
            if (isProcessed(operand)) {
                liveKill.set(operandNumber(operand));
            }
        }
    }

    private void verifyInput(Block block, BitSet liveKill, Value operand) {
        // fixed intervals are never live at block boundaries, so
        // they need not be processed in live sets.
        // this is checked by these assertions to be sure about it.
        // the entry block may have incoming
        // values in registers, which is ok.
        if (isRegister(operand) && block != ir.cfg.getStartBlock()) {
            if (isProcessed(operand)) {
                assert liveKill.get(operandNumber(operand)) : "using fixed register that is not defined in this block";
            }
        }
    }

    /**
     * Performs a backward dataflow analysis to compute global live sets (i.e.
     * {@link BlockData#liveIn} and {@link BlockData#liveOut}) for each block.
     */
    void computeGlobalLiveSets() {
        int numBlocks = blockCount();
        boolean changeOccurred;
        boolean changeOccurredInBlock;
        int iterationCount = 0;
        BitSet liveOut = new BitSet(liveSetSize()); // scratch set for calculations

        // Perform a backward dataflow analysis to compute liveOut and liveIn for each block.
        // The loop is executed until a fixpoint is reached (no changes in an iteration)
        do {
            changeOccurred = false;

            // iterate all blocks in reverse order
            for (int i = numBlocks - 1; i >= 0; i--) {
                Block block = blockAt(i);

                changeOccurredInBlock = false;

                // liveOut(block) is the union of liveIn(sux), for successors sux of block
                int n = block.getSuccessorCount();
                if (n > 0) {
                    // block has successors
                    if (n > 0) {
                        liveOut.clear();
                        for (Block successor : block.getSuccessors()) {
                            liveOut.or(blockData.get(successor).liveIn);
                        }
                    } else {
                        liveOut.clear();
                    }

                    if (!blockData.get(block).liveOut.equals(liveOut)) {
                        // A change occurred. Swap the old and new live out sets to avoid copying.
                        BitSet temp = blockData.get(block).liveOut;
                        blockData.get(block).liveOut = liveOut;
                        liveOut = temp;

                        changeOccurred = true;
                        changeOccurredInBlock = true;
                    }
                }

                if (iterationCount == 0 || changeOccurredInBlock) {
                    // liveIn(block) is the union of liveGen(block) with (liveOut(block) &
                    // !liveKill(block))
                    // note: liveIn has to be computed only in first iteration or if liveOut has
                    // changed!
                    BitSet liveIn = blockData.get(block).liveIn;
                    liveIn.clear();
                    liveIn.or(blockData.get(block).liveOut);
                    liveIn.andNot(blockData.get(block).liveKill);
                    liveIn.or(blockData.get(block).liveGen);
                }

                if (TraceLinearScanLevel.getValue() >= 4) {
                    traceLiveness(changeOccurredInBlock, iterationCount, block);
                }
            }
            iterationCount++;

            if (changeOccurred && iterationCount > 50) {
                throw new BailoutException("too many iterations in computeGlobalLiveSets");
            }
        } while (changeOccurred);

        if (DetailedAsserts.getValue()) {
            verifyLiveness();
        }

        // check that the liveIn set of the first block is empty
        Block startBlock = ir.cfg.getStartBlock();
        BitSet liveInArgs = new BitSet(blockData.get(startBlock).liveIn.size());
        if (!blockData.get(startBlock).liveIn.equals(liveInArgs)) {
            if (DetailedAsserts.getValue()) {
                reportFailure(numBlocks);
            }

            TTY.println("preds=" + startBlock.getPredecessorCount() + ", succs=" + startBlock.getSuccessorCount());
            TTY.println("startBlock-ID: " + startBlock.getId());

            // bailout of if this occurs in product mode.
            throw new GraalInternalError("liveIn set of first block must be empty");
        }
    }

    private void reportFailure(int numBlocks) {
        TTY.println(gen.getGraph().toString());
        TTY.println("Error: liveIn set of first block must be empty (when this fails, variables are used before they are defined)");
        TTY.print("affected registers:");
        TTY.println(blockData.get(ir.cfg.getStartBlock()).liveIn.toString());

        // print some additional information to simplify debugging
        for (int operandNum = 0; operandNum < blockData.get(ir.cfg.getStartBlock()).liveIn.size(); operandNum++) {
            if (blockData.get(ir.cfg.getStartBlock()).liveIn.get(operandNum)) {
                Value operand = operandFor(operandNum);
                TTY.println(" var %d; operand=%s; node=%s", operandNum, operand.toString(), gen.valueForOperand(operand));

                Deque<Block> definedIn = new ArrayDeque<>();
                HashSet<Block> usedIn = new HashSet<>();
                for (Block block : sortedBlocks) {
                    if (blockData.get(block).liveGen.get(operandNum)) {
                        usedIn.add(block);
                        TTY.println("  used in block B%d", block.getId());
                        for (LIRInstruction ins : ir.lir(block)) {
                            TTY.println(ins.id() + ": " + ins.toString());
                            ins.forEachState(new ValueProcedure() {

                                @Override
                                public Value doValue(Value liveStateOperand) {
                                    TTY.println("   operand=" + liveStateOperand);
                                    return liveStateOperand;
                                }
                            });
                        }
                    }
                    if (blockData.get(block).liveKill.get(operandNum)) {
                        definedIn.add(block);
                        TTY.println("  defined in block B%d", block.getId());
                        for (LIRInstruction ins : ir.lir(block)) {
                            TTY.println(ins.id() + ": " + ins.toString());
                        }
                    }
                }

                int[] hitCount = new int[numBlocks];

                while (!definedIn.isEmpty()) {
                    Block block = definedIn.removeFirst();
                    usedIn.remove(block);
                    for (Block successor : block.getSuccessors()) {
                        if (successor.isLoopHeader()) {
                            if (!block.isLoopEnd()) {
                                definedIn.add(successor);
                            }
                        } else {
                            if (++hitCount[successor.getId()] == successor.getPredecessorCount()) {
                                definedIn.add(successor);
                            }
                        }
                    }
                }
                TTY.print("  offending usages are in: ");
                for (Block block : usedIn) {
                    TTY.print("B%d ", block.getId());
                }
                TTY.println();
            }
        }
    }

    private void verifyLiveness() {
        // check that fixed intervals are not live at block boundaries
        // (live set must be empty at fixed intervals)
        for (Block block : sortedBlocks) {
            for (int j = 0; j <= maxRegisterNumber(); j++) {
                assert !blockData.get(block).liveIn.get(j) : "liveIn  set of fixed register must be empty";
                assert !blockData.get(block).liveOut.get(j) : "liveOut set of fixed register must be empty";
                assert !blockData.get(block).liveGen.get(j) : "liveGen set of fixed register must be empty";
            }
        }
    }

    private void traceLiveness(boolean changeOccurredInBlock, int iterationCount, Block block) {
        char c = iterationCount == 0 || changeOccurredInBlock ? '*' : ' ';
        TTY.print("(%d) liveIn%c  B%d ", iterationCount, c, block.getId());
        TTY.println(blockData.get(block).liveIn.toString());
        TTY.print("(%d) liveOut%c B%d ", iterationCount, c, block.getId());
        TTY.println(blockData.get(block).liveOut.toString());
    }

    void addUse(AllocatableValue operand, int from, int to, RegisterPriority registerPriority, PlatformKind kind) {
        if (!isProcessed(operand)) {
            return;
        }
        if (TraceLinearScanLevel.getValue() >= 2 && kind == null) {
            TTY.println(" use %s from %d to %d (%s)", operand, from, to, registerPriority.name());
        }

        Interval interval = getOrCreateInterval(operand);
        if (kind != Kind.Illegal) {
            interval.setKind(kind);
        }

        interval.addRange(from, to);

        // Register use position at even instruction id.
        interval.addUsePos(to & ~1, registerPriority);
    }

    void addTemp(AllocatableValue operand, int tempPos, RegisterPriority registerPriority, PlatformKind kind) {
        if (!isProcessed(operand)) {
            return;
        }
        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" temp %s tempPos %d (%s)", operand, tempPos, RegisterPriority.MustHaveRegister.name());
        }

        Interval interval = getOrCreateInterval(operand);
        if (kind != Kind.Illegal) {
            interval.setKind(kind);
        }

        interval.addRange(tempPos, tempPos + 1);
        interval.addUsePos(tempPos, registerPriority);
    }

    boolean isProcessed(Value operand) {
        return !isRegister(operand) || attributes(asRegister(operand)).isAllocatable();
    }

    void addDef(AllocatableValue operand, int defPos, RegisterPriority registerPriority, PlatformKind kind) {
        if (!isProcessed(operand)) {
            return;
        }
        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" def %s defPos %d (%s)", operand, defPos, registerPriority.name());
        }

        Interval interval = getOrCreateInterval(operand);
        if (kind != Kind.Illegal) {
            interval.setKind(kind);
        }

        Range r = interval.first();
        if (r.from <= defPos) {
            // Update the starting point (when a range is first created for a use, its
            // start is the beginning of the current block until a def is encountered.)
            r.from = defPos;
            interval.addUsePos(defPos, registerPriority);

        } else {
            // Dead value - make vacuous interval
            // also add register priority for dead intervals
            interval.addRange(defPos, defPos + 1);
            interval.addUsePos(defPos, registerPriority);
            if (TraceLinearScanLevel.getValue() >= 2) {
                TTY.println("Warning: def of operand %s at %d occurs without use", operand, defPos);
            }
        }

        changeSpillDefinitionPos(interval, defPos);
        if (registerPriority == RegisterPriority.None && interval.spillState().ordinal() <= SpillState.StartInMemory.ordinal()) {
            // detection of method-parameters and roundfp-results
            interval.setSpillState(SpillState.StartInMemory);
        }
    }

    /**
     * Determines the register priority for an instruction's output/result operand.
     */
    static RegisterPriority registerPriorityOfOutputOperand(LIRInstruction op) {
        if (op instanceof MoveOp) {
            MoveOp move = (MoveOp) op;
            if (optimizeMethodArgument(move.getInput())) {
                return RegisterPriority.None;
            }
        }

        // all other operands require a register
        return RegisterPriority.MustHaveRegister;
    }

    /**
     * Determines the priority which with an instruction's input operand will be allocated a
     * register.
     */
    static RegisterPriority registerPriorityOfInputOperand(EnumSet<OperandFlag> flags) {
        if (flags.contains(OperandFlag.STACK)) {
            return RegisterPriority.ShouldHaveRegister;
        }
        // all other operands require a register
        return RegisterPriority.MustHaveRegister;
    }

    private static boolean optimizeMethodArgument(Value value) {
        /*
         * Object method arguments that are passed on the stack are currently not optimized because
         * this requires that the runtime visits method arguments during stack walking.
         */
        return isStackSlot(value) && asStackSlot(value).isInCallerFrame() && value.getKind() != Kind.Object;
    }

    /**
     * Optimizes moves related to incoming stack based arguments. The interval for the destination
     * of such moves is assigned the stack slot (which is in the caller's frame) as its spill slot.
     */
    void handleMethodArguments(LIRInstruction op) {
        if (op instanceof MoveOp) {
            MoveOp move = (MoveOp) op;
            if (optimizeMethodArgument(move.getInput())) {
                StackSlot slot = asStackSlot(move.getInput());
                if (DetailedAsserts.getValue()) {
                    assert op.id() > 0 : "invalid id";
                    assert blockForId(op.id()).getPredecessorCount() == 0 : "move from stack must be in first block";
                    assert isVariable(move.getResult()) : "result of move must be a variable";

                    if (TraceLinearScanLevel.getValue() >= 4) {
                        TTY.println("found move from stack slot %s to %s", slot, move.getResult());
                    }
                }

                Interval interval = intervalFor(move.getResult());
                interval.setSpillSlot(slot);
                interval.assignLocation(slot);
            }
        }
    }

    void addRegisterHint(final LIRInstruction op, final Value targetValue, OperandMode mode, EnumSet<OperandFlag> flags, final boolean hintAtDef) {
        if (flags.contains(OperandFlag.HINT) && isVariableOrRegister(targetValue)) {

            op.forEachRegisterHint(targetValue, mode, new ValueProcedure() {

                @Override
                protected Value doValue(Value registerHint) {
                    if (isVariableOrRegister(registerHint)) {
                        Interval from = getOrCreateInterval((AllocatableValue) registerHint);
                        Interval to = getOrCreateInterval((AllocatableValue) targetValue);

                        // hints always point from def to use
                        if (hintAtDef) {
                            to.setLocationHint(from);
                        } else {
                            from.setLocationHint(to);
                        }

                        if (TraceLinearScanLevel.getValue() >= 4) {
                            TTY.println("operation at opId %d: added hint from interval %d to %d", op.id(), from.operandNumber, to.operandNumber);
                        }
                        return registerHint;
                    }
                    return null;
                }
            });
        }
    }

    void buildIntervals() {
        intervalsSize = operandSize();
        intervals = new Interval[intervalsSize + INITIAL_SPLIT_INTERVALS_CAPACITY];

        // create a list with all caller-save registers (cpu, fpu, xmm)
        Register[] callerSaveRegs = frameMap.registerConfig.getCallerSaveRegisters();

        // iterate all blocks in reverse order
        for (int i = blockCount() - 1; i >= 0; i--) {
            Block block = blockAt(i);
            List<LIRInstruction> instructions = ir.lir(block);
            final int blockFrom = getFirstLirInstructionId(block);
            int blockTo = getLastLirInstructionId(block);

            assert blockFrom == instructions.get(0).id();
            assert blockTo == instructions.get(instructions.size() - 1).id();

            // Update intervals for operands live at the end of this block;
            BitSet live = blockData.get(block).liveOut;
            for (int operandNum = live.nextSetBit(0); operandNum >= 0; operandNum = live.nextSetBit(operandNum + 1)) {
                assert live.get(operandNum) : "should not stop here otherwise";
                AllocatableValue operand = operandFor(operandNum);
                if (TraceLinearScanLevel.getValue() >= 2) {
                    TTY.println("live in %s to %d", operand, blockTo + 2);
                }

                addUse(operand, blockFrom, blockTo + 2, RegisterPriority.None, Kind.Illegal);

                // add special use positions for loop-end blocks when the
                // interval is used anywhere inside this loop. It's possible
                // that the block was part of a non-natural loop, so it might
                // have an invalid loop index.
                if (block.isLoopEnd() && block.getLoop() != null && isIntervalInLoop(operandNum, block.getLoop().index)) {
                    intervalFor(operand).addUsePos(blockTo + 1, RegisterPriority.LiveAtLoopEnd);
                }
            }

            // iterate all instructions of the block in reverse order.
            // skip the first instruction because it is always a label
            // definitions of intervals are processed before uses
            assert !instructions.get(0).hasOperands() : "first operation must always be a label";
            for (int j = instructions.size() - 1; j >= 1; j--) {
                final LIRInstruction op = instructions.get(j);
                final int opId = op.id();

                // add a temp range for each register if operation destroys caller-save registers
                if (op.destroysCallerSavedRegisters()) {
                    for (Register r : callerSaveRegs) {
                        if (attributes(r).isAllocatable()) {
                            addTemp(r.asValue(), opId, RegisterPriority.None, Kind.Illegal);
                        }
                    }
                    if (TraceLinearScanLevel.getValue() >= 4) {
                        TTY.println("operation destroys all caller-save registers");
                    }
                }

                op.forEachOutput(new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand, OperandMode mode, EnumSet<OperandFlag> flags) {
                        if (isVariableOrRegister(operand)) {
                            addDef((AllocatableValue) operand, opId, registerPriorityOfOutputOperand(op), operand.getPlatformKind());
                            addRegisterHint(op, operand, mode, flags, true);
                        }
                        return operand;
                    }
                });
                op.forEachTemp(new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand, OperandMode mode, EnumSet<OperandFlag> flags) {
                        if (isVariableOrRegister(operand)) {
                            addTemp((AllocatableValue) operand, opId, RegisterPriority.MustHaveRegister, operand.getPlatformKind());
                            addRegisterHint(op, operand, mode, flags, false);
                        }
                        return operand;
                    }
                });
                op.forEachAlive(new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand, OperandMode mode, EnumSet<OperandFlag> flags) {
                        if (isVariableOrRegister(operand)) {
                            RegisterPriority p = registerPriorityOfInputOperand(flags);
                            addUse((AllocatableValue) operand, blockFrom, opId + 1, p, operand.getPlatformKind());
                            addRegisterHint(op, operand, mode, flags, false);
                        }
                        return operand;
                    }
                });
                op.forEachInput(new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand, OperandMode mode, EnumSet<OperandFlag> flags) {
                        if (isVariableOrRegister(operand)) {
                            RegisterPriority p = registerPriorityOfInputOperand(flags);
                            addUse((AllocatableValue) operand, blockFrom, opId, p, operand.getPlatformKind());
                            addRegisterHint(op, operand, mode, flags, false);
                        }
                        return operand;
                    }
                });

                // Add uses of live locals from interpreter's point of view for proper
                // debug information generation
                // Treat these operands as temp values (if the live range is extended
                // to a call site, the value would be in a register at the call otherwise)
                op.forEachState(new ValueProcedure() {

                    @Override
                    public Value doValue(Value operand) {
                        addUse((AllocatableValue) operand, blockFrom, opId + 1, RegisterPriority.None, operand.getPlatformKind());
                        return operand;
                    }
                });

                // special steps for some instructions (especially moves)
                handleMethodArguments(op);

            } // end of instruction iteration
        } // end of block iteration

        // add the range [0, 1] to all fixed intervals.
        // the register allocator need not handle unhandled fixed intervals
        for (Interval interval : intervals) {
            if (interval != null && isRegister(interval.operand)) {
                interval.addRange(0, 1);
            }
        }
    }

    // * Phase 5: actual register allocation

    private static boolean isSorted(Interval[] intervals) {
        int from = -1;
        for (Interval interval : intervals) {
            assert interval != null;
            assert from <= interval.from();
            from = interval.from();
        }
        return true;
    }

    static Interval addToList(Interval first, Interval prev, Interval interval) {
        Interval newFirst = first;
        if (prev != null) {
            prev.next = interval;
        } else {
            newFirst = interval;
        }
        return newFirst;
    }

    Interval.Pair createUnhandledLists(IntervalPredicate isList1, IntervalPredicate isList2) {
        assert isSorted(sortedIntervals) : "interval list is not sorted";

        Interval list1 = Interval.EndMarker;
        Interval list2 = Interval.EndMarker;

        Interval list1Prev = null;
        Interval list2Prev = null;
        Interval v;

        int n = sortedIntervals.length;
        for (int i = 0; i < n; i++) {
            v = sortedIntervals[i];
            if (v == null) {
                continue;
            }

            if (isList1.apply(v)) {
                list1 = addToList(list1, list1Prev, v);
                list1Prev = v;
            } else if (isList2 == null || isList2.apply(v)) {
                list2 = addToList(list2, list2Prev, v);
                list2Prev = v;
            }
        }

        if (list1Prev != null) {
            list1Prev.next = Interval.EndMarker;
        }
        if (list2Prev != null) {
            list2Prev.next = Interval.EndMarker;
        }

        assert list1Prev == null || list1Prev.next == Interval.EndMarker : "linear list ends not with sentinel";
        assert list2Prev == null || list2Prev.next == Interval.EndMarker : "linear list ends not with sentinel";

        return new Interval.Pair(list1, list2);
    }

    void sortIntervalsBeforeAllocation() {
        int sortedLen = 0;
        for (Interval interval : intervals) {
            if (interval != null) {
                sortedLen++;
            }
        }

        Interval[] sortedList = new Interval[sortedLen];
        int sortedIdx = 0;
        int sortedFromMax = -1;

        // special sorting algorithm: the original interval-list is almost sorted,
        // only some intervals are swapped. So this is much faster than a complete QuickSort
        for (Interval interval : intervals) {
            if (interval != null) {
                int from = interval.from();

                if (sortedFromMax <= from) {
                    sortedList[sortedIdx++] = interval;
                    sortedFromMax = interval.from();
                } else {
                    // the assumption that the intervals are already sorted failed,
                    // so this interval must be sorted in manually
                    int j;
                    for (j = sortedIdx - 1; j >= 0 && from < sortedList[j].from(); j--) {
                        sortedList[j + 1] = sortedList[j];
                    }
                    sortedList[j + 1] = interval;
                    sortedIdx++;
                }
            }
        }
        sortedIntervals = sortedList;
    }

    void sortIntervalsAfterAllocation() {
        if (firstDerivedIntervalIndex == -1) {
            // no intervals have been added during allocation, so sorted list is already up to date
            return;
        }

        Interval[] oldList = sortedIntervals;
        Interval[] newList = Arrays.copyOfRange(intervals, firstDerivedIntervalIndex, intervalsSize);
        int oldLen = oldList.length;
        int newLen = newList.length;

        // conventional sort-algorithm for new intervals
        Arrays.sort(newList, INTERVAL_COMPARATOR);

        // merge old and new list (both already sorted) into one combined list
        Interval[] combinedList = new Interval[oldLen + newLen];
        int oldIdx = 0;
        int newIdx = 0;

        while (oldIdx + newIdx < combinedList.length) {
            if (newIdx >= newLen || (oldIdx < oldLen && oldList[oldIdx].from() <= newList[newIdx].from())) {
                combinedList[oldIdx + newIdx] = oldList[oldIdx];
                oldIdx++;
            } else {
                combinedList[oldIdx + newIdx] = newList[newIdx];
                newIdx++;
            }
        }

        sortedIntervals = combinedList;
    }

    private static final Comparator<Interval> INTERVAL_COMPARATOR = new Comparator<Interval>() {

        public int compare(Interval a, Interval b) {
            if (a != null) {
                if (b != null) {
                    return a.from() - b.from();
                } else {
                    return -1;
                }
            } else {
                if (b != null) {
                    return 1;
                } else {
                    return 0;
                }
            }
        }
    };

    public void allocateRegisters() {
        Interval precoloredIntervals;
        Interval notPrecoloredIntervals;

        Interval.Pair result = createUnhandledLists(IS_PRECOLORED_INTERVAL, IS_VARIABLE_INTERVAL);
        precoloredIntervals = result.first;
        notPrecoloredIntervals = result.second;

        // allocate cpu registers
        LinearScanWalker lsw = new LinearScanWalker(this, precoloredIntervals, notPrecoloredIntervals);
        lsw.walk();
        lsw.finishAllocation();
    }

    // * Phase 6: resolve data flow
    // (insert moves at edges between blocks if intervals have been split)

    // wrapper for Interval.splitChildAtOpId that performs a bailout in product mode
    // instead of returning null
    Interval splitChildAtOpId(Interval interval, int opId, LIRInstruction.OperandMode mode) {
        Interval result = interval.getSplitChildAtOpId(opId, mode, this);

        if (result != null) {
            if (TraceLinearScanLevel.getValue() >= 4) {
                TTY.println("Split child at pos " + opId + " of interval " + interval.toString() + " is " + result.toString());
            }
            return result;
        }

        throw new BailoutException("LinearScan: interval is null");
    }

    Interval intervalAtBlockBegin(Block block, Value operand) {
        assert isVariable(operand) : "register number out of bounds";
        assert intervalFor(operand) != null : "no interval found";

        return splitChildAtOpId(intervalFor(operand), getFirstLirInstructionId(block), LIRInstruction.OperandMode.DEF);
    }

    Interval intervalAtBlockEnd(Block block, Value operand) {
        assert isVariable(operand) : "register number out of bounds";
        assert intervalFor(operand) != null : "no interval found";

        return splitChildAtOpId(intervalFor(operand), getLastLirInstructionId(block) + 1, LIRInstruction.OperandMode.DEF);
    }

    Interval intervalAtOpId(Value operand, int opId) {
        assert isVariable(operand) : "register number out of bounds";
        assert intervalFor(operand) != null : "no interval found";

        return splitChildAtOpId(intervalFor(operand), opId, LIRInstruction.OperandMode.USE);
    }

    void resolveCollectMappings(Block fromBlock, Block toBlock, MoveResolver moveResolver) {
        assert moveResolver.checkEmpty();

        int numOperands = operandSize();
        BitSet liveAtEdge = blockData.get(toBlock).liveIn;

        // visit all variables for which the liveAtEdge bit is set
        for (int operandNum = liveAtEdge.nextSetBit(0); operandNum >= 0; operandNum = liveAtEdge.nextSetBit(operandNum + 1)) {
            assert operandNum < numOperands : "live information set for not exisiting interval";
            assert blockData.get(fromBlock).liveOut.get(operandNum) && blockData.get(toBlock).liveIn.get(operandNum) : "interval not live at this edge";

            Value liveOperand = operandFor(operandNum);
            Interval fromInterval = intervalAtBlockEnd(fromBlock, liveOperand);
            Interval toInterval = intervalAtBlockBegin(toBlock, liveOperand);

            if (fromInterval != toInterval && !fromInterval.location().equals(toInterval.location())) {
                // need to insert move instruction
                moveResolver.addMapping(fromInterval, toInterval);
            }
        }
    }

    void resolveFindInsertPos(Block fromBlock, Block toBlock, MoveResolver moveResolver) {
        if (fromBlock.getSuccessorCount() <= 1) {
            if (TraceLinearScanLevel.getValue() >= 4) {
                TTY.println("inserting moves at end of fromBlock B%d", fromBlock.getId());
            }

            List<LIRInstruction> instructions = ir.lir(fromBlock);
            LIRInstruction instr = instructions.get(instructions.size() - 1);
            if (instr instanceof StandardOp.JumpOp) {
                // insert moves before branch
                moveResolver.setInsertPosition(instructions, instructions.size() - 1);
            } else {
                moveResolver.setInsertPosition(instructions, instructions.size());
            }

        } else {
            if (TraceLinearScanLevel.getValue() >= 4) {
                TTY.println("inserting moves at beginning of toBlock B%d", toBlock.getId());
            }

            if (DetailedAsserts.getValue()) {
                assert ir.lir(fromBlock).get(0) instanceof StandardOp.LabelOp : "block does not start with a label";

                // because the number of predecessor edges matches the number of
                // successor edges, blocks which are reached by switch statements
                // may have be more than one predecessor but it will be guaranteed
                // that all predecessors will be the same.
                for (Block predecessor : toBlock.getPredecessors()) {
                    assert fromBlock == predecessor : "all critical edges must be broken";
                }
            }

            moveResolver.setInsertPosition(ir.lir(toBlock), 1);
        }
    }

    /**
     * Inserts necessary moves (spilling or reloading) at edges between blocks for intervals that
     * have been split.
     */
    void resolveDataFlow() {
        int numBlocks = blockCount();
        MoveResolver moveResolver = new MoveResolver(this);
        BitSet blockCompleted = new BitSet(numBlocks);
        BitSet alreadyResolved = new BitSet(numBlocks);

        for (Block block : sortedBlocks) {

            // check if block has only one predecessor and only one successor
            if (block.getPredecessorCount() == 1 && block.getSuccessorCount() == 1) {
                List<LIRInstruction> instructions = ir.lir(block);
                assert instructions.get(0) instanceof StandardOp.LabelOp : "block must start with label";
                assert instructions.get(instructions.size() - 1) instanceof StandardOp.JumpOp : "block with successor must end with unconditional jump";

                // check if block is empty (only label and branch)
                if (instructions.size() == 2) {
                    Block pred = block.getFirstPredecessor();
                    Block sux = block.getFirstSuccessor();

                    // prevent optimization of two consecutive blocks
                    if (!blockCompleted.get(pred.getLinearScanNumber()) && !blockCompleted.get(sux.getLinearScanNumber())) {
                        if (TraceLinearScanLevel.getValue() >= 3) {
                            TTY.println(" optimizing empty block B%d (pred: B%d, sux: B%d)", block.getId(), pred.getId(), sux.getId());
                        }
                        blockCompleted.set(block.getLinearScanNumber());

                        // directly resolve between pred and sux (without looking at the empty block
                        // between)
                        resolveCollectMappings(pred, sux, moveResolver);
                        if (moveResolver.hasMappings()) {
                            moveResolver.setInsertPosition(instructions, 1);
                            moveResolver.resolveAndAppendMoves();
                        }
                    }
                }
            }
        }

        for (Block fromBlock : sortedBlocks) {
            if (!blockCompleted.get(fromBlock.getLinearScanNumber())) {
                alreadyResolved.clear();
                alreadyResolved.or(blockCompleted);

                for (Block toBlock : fromBlock.getSuccessors()) {

                    // check for duplicate edges between the same blocks (can happen with switch
                    // blocks)
                    if (!alreadyResolved.get(toBlock.getLinearScanNumber())) {
                        if (TraceLinearScanLevel.getValue() >= 3) {
                            TTY.println(" processing edge between B%d and B%d", fromBlock.getId(), toBlock.getId());
                        }
                        alreadyResolved.set(toBlock.getLinearScanNumber());

                        // collect all intervals that have been split between fromBlock and toBlock
                        resolveCollectMappings(fromBlock, toBlock, moveResolver);
                        if (moveResolver.hasMappings()) {
                            resolveFindInsertPos(fromBlock, toBlock, moveResolver);
                            moveResolver.resolveAndAppendMoves();
                        }
                    }
                }
            }
        }
    }

    // * Phase 7: assign register numbers back to LIR
    // (includes computation of debug information and oop maps)

    static StackSlot canonicalSpillOpr(Interval interval) {
        assert interval.spillSlot() != null : "canonical spill slot not set";
        return interval.spillSlot();
    }

    /**
     * Assigns the allocated location for an LIR instruction operand back into the instruction.
     * 
     * @param operand an LIR instruction operand
     * @param opId the id of the LIR instruction using {@code operand}
     * @param mode the usage mode for {@code operand} by the instruction
     * @return the location assigned for the operand
     */
    private Value colorLirOperand(Variable operand, int opId, OperandMode mode) {
        Interval interval = intervalFor(operand);
        assert interval != null : "interval must exist";

        if (opId != -1) {
            if (DetailedAsserts.getValue()) {
                Block block = blockForId(opId);
                if (block.getSuccessorCount() <= 1 && opId == getLastLirInstructionId(block)) {
                    // check if spill moves could have been appended at the end of this block, but
                    // before the branch instruction. So the split child information for this branch
                    // would
                    // be incorrect.
                    LIRInstruction instr = ir.lir(block).get(ir.lir(block).size() - 1);
                    if (instr instanceof StandardOp.JumpOp) {
                        if (blockData.get(block).liveOut.get(operandNumber(operand))) {
                            assert false : "can't get split child for the last branch of a block because the information would be incorrect (moves are inserted before the branch in resolveDataFlow)";
                        }
                    }
                }
            }

            // operands are not changed when an interval is split during allocation,
            // so search the right interval here
            interval = splitChildAtOpId(interval, opId, mode);
        }

        return interval.location();
    }

    IntervalWalker initComputeOopMaps() {
        // setup lists of potential oops for walking
        Interval oopIntervals;
        Interval nonOopIntervals;

        oopIntervals = createUnhandledLists(IS_OOP_INTERVAL, null).first;

        // intervals that have no oops inside need not to be processed.
        // to ensure a walking until the last instruction id, add a dummy interval
        // with a high operation id
        nonOopIntervals = new Interval(Value.ILLEGAL, -1);
        nonOopIntervals.addRange(Integer.MAX_VALUE - 2, Integer.MAX_VALUE - 1);

        return new IntervalWalker(this, oopIntervals, nonOopIntervals);
    }

    void computeOopMap(IntervalWalker iw, LIRInstruction op, BitSet registerRefMap, BitSet frameRefMap) {
        if (TraceLinearScanLevel.getValue() >= 3) {
            TTY.println("creating oop map at opId %d", op.id());
        }

        // walk before the current operation . intervals that start at
        // the operation (i.e. output operands of the operation) are not
        // included in the oop map
        iw.walkBefore(op.id());

        // Iterate through active intervals
        for (Interval interval = iw.activeLists.get(RegisterBinding.Fixed); interval != Interval.EndMarker; interval = interval.next) {
            Value operand = interval.operand;

            assert interval.currentFrom() <= op.id() && op.id() <= interval.currentTo() : "interval should not be active otherwise";
            assert isVariable(interval.operand) : "fixed interval found";

            // Check if this range covers the instruction. Intervals that
            // start or end at the current operation are not included in the
            // oop map, except in the case of patching moves. For patching
            // moves, any intervals which end at this instruction are included
            // in the oop map since we may safepoint while doing the patch
            // before we've consumed the inputs.
            if (op.id() < interval.currentTo()) {
                // caller-save registers must not be included into oop-maps at calls
                assert !op.destroysCallerSavedRegisters() || !isRegister(operand) || !isCallerSave(operand) : "interval is in a caller-save register at a call . register will be overwritten";

                frameMap.setReference(interval.location(), registerRefMap, frameRefMap);

                // Spill optimization: when the stack value is guaranteed to be always correct,
                // then it must be added to the oop map even if the interval is currently in a
                // register
                if (interval.alwaysInMemory() && op.id() > interval.spillDefinitionPos() && !interval.location().equals(interval.spillSlot())) {
                    assert interval.spillDefinitionPos() > 0 : "position not set correctly";
                    assert interval.spillSlot() != null : "no spill slot assigned";
                    assert !isRegister(interval.operand) : "interval is on stack :  so stack slot is registered twice";
                    frameMap.setReference(interval.spillSlot(), registerRefMap, frameRefMap);
                }
            }
        }
    }

    private boolean isCallerSave(Value operand) {
        return attributes(asRegister(operand)).isCallerSave();
    }

    private void computeDebugInfo(IntervalWalker iw, final LIRInstruction op, LIRFrameState info) {
        BitSet registerRefMap = op.destroysCallerSavedRegisters() && callKillsRegisters ? null : frameMap.initRegisterRefMap();
        BitSet frameRefMap = frameMap.initFrameRefMap();
        computeOopMap(iw, op, registerRefMap, frameRefMap);

        info.forEachState(new ValueProcedure() {

            @Override
            public Value doValue(Value operand) {
                int tempOpId = op.id();
                OperandMode mode = OperandMode.USE;
                Block block = blockForId(tempOpId);
                if (block.getSuccessorCount() == 1 && tempOpId == getLastLirInstructionId(block)) {
                    // generating debug information for the last instruction of a block.
                    // if this instruction is a branch, spill moves are inserted before this branch
                    // and so the wrong operand would be returned (spill moves at block boundaries
                    // are not
                    // considered in the live ranges of intervals)
                    // Solution: use the first opId of the branch target block instead.
                    final LIRInstruction instr = ir.lir(block).get(ir.lir(block).size() - 1);
                    if (instr instanceof StandardOp.JumpOp) {
                        if (blockData.get(block).liveOut.get(operandNumber(operand))) {
                            tempOpId = getFirstLirInstructionId(block.getFirstSuccessor());
                            mode = OperandMode.DEF;
                        }
                    }
                }

                // Get current location of operand
                // The operand must be live because debug information is considered when building
                // the intervals
                // if the interval is not live, colorLirOperand will cause an assert on failure
                Value result = colorLirOperand((Variable) operand, tempOpId, mode);
                assert !hasCall(tempOpId) || isStackSlot(result) || !isCallerSave(result) : "cannot have caller-save register operands at calls";
                return result;
            }
        });

        info.finish(registerRefMap, frameRefMap);
    }

    private void assignLocations(List<LIRInstruction> instructions, final IntervalWalker iw) {
        int numInst = instructions.size();
        boolean hasDead = false;

        for (int j = 0; j < numInst; j++) {
            final LIRInstruction op = instructions.get(j);
            if (op == null) { // this can happen when spill-moves are removed in eliminateSpillMoves
                hasDead = true;
                continue;
            }

            ValueProcedure assignProc = new ValueProcedure() {

                @Override
                public Value doValue(Value operand, OperandMode mode, EnumSet<OperandFlag> flags) {
                    if (isVariable(operand)) {
                        return colorLirOperand((Variable) operand, op.id(), mode);
                    }
                    return operand;
                }
            };

            op.forEachInput(assignProc);
            op.forEachAlive(assignProc);
            op.forEachTemp(assignProc);
            op.forEachOutput(assignProc);

            // compute reference map and debug information
            op.forEachState(new StateProcedure() {

                @Override
                protected void doState(LIRFrameState state) {
                    computeDebugInfo(iw, op, state);
                }
            });

            // remove useless moves
            if (op instanceof MoveOp) {
                MoveOp move = (MoveOp) op;
                if (move.getInput().equals(move.getResult())) {
                    instructions.set(j, null);
                    hasDead = true;
                }
            }
        }

        if (hasDead) {
            // Remove null values from the list.
            instructions.removeAll(Collections.singleton(null));
        }
    }

    private void assignLocations() {
        IntervalWalker iw = initComputeOopMaps();
        for (Block block : sortedBlocks) {
            assignLocations(ir.lir(block), iw);
        }
    }

    public void allocate() {

        Debug.scope("LifetimeAnalysis", new Runnable() {

            public void run() {
                numberInstructions();
                printLir("Before register allocation", true);
                computeLocalLiveSets();
                computeGlobalLiveSets();
                buildIntervals();
                sortIntervalsBeforeAllocation();
            }
        });

        Debug.scope("RegisterAllocation", new Runnable() {

            public void run() {
                printIntervals("Before register allocation");
                allocateRegisters();
            }
        });

        Debug.scope("ResolveDataFlow", new Runnable() {

            public void run() {
                resolveDataFlow();
            }
        });

        Debug.scope("DebugInfo", new Runnable() {

            public void run() {
                frameMap.finish();

                printIntervals("After register allocation");
                printLir("After register allocation", true);

                sortIntervalsAfterAllocation();

                if (DetailedAsserts.getValue()) {
                    verify();
                }

                eliminateSpillMoves();
                assignLocations();

                if (DetailedAsserts.getValue()) {
                    verifyIntervals();
                }
            }
        });

        Debug.scope("ControlFlowOptimizations", new Runnable() {

            public void run() {
                printLir("After register number assignment", true);
                EdgeMoveOptimizer.optimize(ir);
                ControlFlowOptimizer.optimize(ir);
                printLir("After control flow optimization", false);
            }
        });
    }

    void printIntervals(String label) {
        if (TraceLinearScanLevel.getValue() >= 1) {
            int i;
            TTY.println();
            TTY.println(label);

            for (Interval interval : intervals) {
                if (interval != null) {
                    TTY.out().println(interval.logString(this));
                }
            }

            TTY.println();
            TTY.println("--- Basic Blocks ---");
            for (i = 0; i < blockCount(); i++) {
                Block block = blockAt(i);
                TTY.print("B%d [%d, %d, %s] ", block.getId(), getFirstLirInstructionId(block), getLastLirInstructionId(block), block.getLoop());
            }
            TTY.println();
            TTY.println();
        }

        Debug.dump(Arrays.copyOf(intervals, intervalsSize), label);
    }

    void printLir(String label, @SuppressWarnings("unused") boolean hirValid) {
        Debug.dump(ir, label);
    }

    boolean verify() {
        // (check that all intervals have a correct register and that no registers are overwritten)
        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" verifying intervals *");
        }
        verifyIntervals();

        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" verifying that no oops are in fixed intervals *");
        }
        // verifyNoOopsInFixedIntervals();

        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" verifying that unpinned constants are not alive across block boundaries");
        }
        verifyConstants();

        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" verifying register allocation *");
        }
        verifyRegisters();

        if (TraceLinearScanLevel.getValue() >= 2) {
            TTY.println(" no errors found *");
        }

        return true;
    }

    private void verifyRegisters() {
        RegisterVerifier verifier = new RegisterVerifier(this);
        verifier.verify(blockAt(0));
    }

    void verifyIntervals() {
        int len = intervalsSize;

        for (int i = 0; i < len; i++) {
            Interval i1 = intervals[i];
            if (i1 == null) {
                continue;
            }

            i1.checkSplitChildren();

            if (i1.operandNumber != i) {
                TTY.println("Interval %d is on position %d in list", i1.operandNumber, i);
                TTY.println(i1.logString(this));
                throw new GraalInternalError("");
            }

            if (isVariable(i1.operand) && i1.kind() == Kind.Illegal) {
                TTY.println("Interval %d has no type assigned", i1.operandNumber);
                TTY.println(i1.logString(this));
                throw new GraalInternalError("");
            }

            if (i1.location() == null) {
                TTY.println("Interval %d has no register assigned", i1.operandNumber);
                TTY.println(i1.logString(this));
                throw new GraalInternalError("");
            }

            if (i1.first() == Range.EndMarker) {
                TTY.println("Interval %d has no Range", i1.operandNumber);
                TTY.println(i1.logString(this));
                throw new GraalInternalError("");
            }

            for (Range r = i1.first(); r != Range.EndMarker; r = r.next) {
                if (r.from >= r.to) {
                    TTY.println("Interval %d has zero length range", i1.operandNumber);
                    TTY.println(i1.logString(this));
                    throw new GraalInternalError("");
                }
            }

            for (int j = i + 1; j < len; j++) {
                Interval i2 = intervals[j];
                if (i2 == null) {
                    continue;
                }

                // special intervals that are created in MoveResolver
                // . ignore them because the range information has no meaning there
                if (i1.from() == 1 && i1.to() == 2) {
                    continue;
                }
                if (i2.from() == 1 && i2.to() == 2) {
                    continue;
                }
                Value l1 = i1.location();
                Value l2 = i2.location();
                if (i1.intersects(i2) && (l1.equals(l2))) {
                    if (DetailedAsserts.getValue()) {
                        TTY.println("Intervals %d and %d overlap and have the same register assigned", i1.operandNumber, i2.operandNumber);
                        TTY.println(i1.logString(this));
                        TTY.println(i2.logString(this));
                    }
                    throw new BailoutException("");
                }
            }
        }
    }

    class CheckProcedure extends ValueProcedure {

        boolean ok;
        Interval curInterval;

        @Override
        protected Value doValue(Value operand) {
            if (isRegister(operand)) {
                if (intervalFor(operand) == curInterval) {
                    ok = true;
                }
            }
            return operand;
        }
    }

    void verifyNoOopsInFixedIntervals() {
        CheckProcedure checkProc = new CheckProcedure();

        Interval fixedIntervals;
        Interval otherIntervals;
        fixedIntervals = createUnhandledLists(IS_PRECOLORED_INTERVAL, null).first;
        // to ensure a walking until the last instruction id, add a dummy interval
        // with a high operation id
        otherIntervals = new Interval(Value.ILLEGAL, -1);
        otherIntervals.addRange(Integer.MAX_VALUE - 2, Integer.MAX_VALUE - 1);
        IntervalWalker iw = new IntervalWalker(this, fixedIntervals, otherIntervals);

        for (Block block : sortedBlocks) {
            List<LIRInstruction> instructions = ir.lir(block);

            for (int j = 0; j < instructions.size(); j++) {
                LIRInstruction op = instructions.get(j);

                if (op.hasState()) {
                    iw.walkBefore(op.id());
                    boolean checkLive = true;

                    // Make sure none of the fixed registers is live across an
                    // oopmap since we can't handle that correctly.
                    if (checkLive) {
                        for (Interval interval = iw.activeLists.get(RegisterBinding.Fixed); interval != Interval.EndMarker; interval = interval.next) {
                            if (interval.currentTo() > op.id() + 1) {
                                // This interval is live out of this op so make sure
                                // that this interval represents some value that's
                                // referenced by this op either as an input or output.
                                checkProc.curInterval = interval;
                                checkProc.ok = false;

                                op.forEachInput(checkProc);
                                op.forEachAlive(checkProc);
                                op.forEachTemp(checkProc);
                                op.forEachOutput(checkProc);

                                assert checkProc.ok : "fixed intervals should never be live across an oopmap point";
                            }
                        }
                    }
                }
            }
        }
    }

    void verifyConstants() {
        for (Block block : sortedBlocks) {
            BitSet liveAtEdge = blockData.get(block).liveIn;

            // visit all operands where the liveAtEdge bit is set
            for (int operandNum = liveAtEdge.nextSetBit(0); operandNum >= 0; operandNum = liveAtEdge.nextSetBit(operandNum + 1)) {
                if (TraceLinearScanLevel.getValue() >= 4) {
                    TTY.println("checking interval %d of block B%d", operandNum, block.getId());
                }
                Value operand = operandFor(operandNum);
                assert isVariable(operand) : "value must have variable operand";
                // TKR assert value.asConstant() == null || value.isPinned() :
                // "only pinned constants can be alive accross block boundaries";
            }
        }
    }
}

/*
 * Copyright (c) 2012, 2012, Oracle and/or its affiliates. All rights reserved.
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
package com.oracle.truffle.api.dsl.test;

import static com.oracle.truffle.api.CompilerAsserts.*;
import static com.oracle.truffle.api.CompilerDirectives.*;
import static com.oracle.truffle.api.TruffleOptions.*;
import static com.oracle.truffle.api.dsl.test.SimpleTypesGen.*;
import static java.util.Arrays.*;

import com.oracle.truffle.api.Assumption;
import com.oracle.truffle.api.CompilerDirectives.SlowPath;
import com.oracle.truffle.api.dsl.GeneratedBy;
import com.oracle.truffle.api.dsl.NodeFactory;
import com.oracle.truffle.api.dsl.test.SpecializationGroupingTest.TestGrouping;
import com.oracle.truffle.api.dsl.test.TypeSystemTest.ValueNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.InvalidAssumptionException;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(SpecializationGroupingTest.class)
public final class SpecializationGroupingTestFactory {

    private SpecializationGroupingTestFactory() {
    }

    public static List<NodeFactory<TestGrouping>> getFactories() {
        return asList(TestGroupingFactory.getInstance());
    }

    @GeneratedBy(TestGrouping.class)
    public static final class TestGroupingFactory implements NodeFactory<TestGrouping> {

        private static TestGroupingFactory testGroupingFactoryInstance;

        private TestGroupingFactory() {
        }

        @Override
        public TestGrouping createNode(Object... arguments) {
            if (arguments.length == 5 && (arguments[0] == null || arguments[0] instanceof ValueNode) && (arguments[1] == null || arguments[1] instanceof ValueNode) && (arguments[2] == null ||
                        arguments[2] instanceof Assumption) && (arguments[3] == null || arguments[3] instanceof Assumption) && (arguments[4] == null || arguments[4] instanceof Assumption)) {
                return create((ValueNode) arguments[0], (ValueNode) arguments[1], (Assumption) arguments[2], (Assumption) arguments[3], (Assumption) arguments[4]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public TestGrouping createNodeGeneric(TestGrouping thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<TestGrouping> getNodeClass() {
            return TestGrouping.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class, ValueNode.class, Assumption.class, Assumption.class, Assumption.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class, ValueNode.class);
        }

        public static TestGrouping createGeneric(TestGrouping thisNode) {
            return new TestGroupingGenericNode((TestGroupingBaseNode) thisNode);
        }

        public static TestGrouping create(ValueNode child0, ValueNode child1, Assumption a1, Assumption a2, Assumption a3) {
            return new TestGroupingUninitializedNode(child0, child1, a1, a2, a3);
        }

        public static NodeFactory<TestGrouping> getInstance() {
            if (testGroupingFactoryInstance == null) {
                testGroupingFactoryInstance = new TestGroupingFactory();
            }
            return testGroupingFactoryInstance;
        }

        @GeneratedBy(TestGrouping.class)
        private abstract static class TestGroupingBaseNode extends TestGrouping {

            @Child protected ValueNode child0;
            @Child protected ValueNode child1;
            final Assumption a1;
            final Assumption a2;
            final Assumption a3;
            @Child protected TestGroupingBaseNode next0;

            TestGroupingBaseNode(ValueNode child0, ValueNode child1, Assumption a1, Assumption a2, Assumption a3) {
                super();
                this.child0 = adoptChild(child0);
                this.child1 = adoptChild(child1);
                this.a1 = a1;
                this.a2 = a2;
                this.a3 = a3;
            }

            TestGroupingBaseNode(TestGroupingBaseNode copy) {
                this.child0 = adoptChild(copy.child0);
                this.child1 = adoptChild(copy.child1);
                this.a1 = copy.a1;
                this.a2 = copy.a2;
                this.a3 = copy.a3;
                this.next0 = adoptChild(copy.next0);
            }

            protected void setNext0(TestGroupingBaseNode next0) {
                this.next0 = adoptChild(next0);
            }

            protected abstract boolean isCompatible0(Class<?> type);

            protected abstract Object executeCachedGeneric0(VirtualFrame frameValue, Object child0ValueEvaluated, Object child1ValueEvaluated);

            protected int executeCached0(VirtualFrame frameValue, int child0ValueEvaluated, int child1ValueEvaluated) throws UnexpectedResultException {
                Object child0Value = child0ValueEvaluated;
                Object child1Value = child1ValueEvaluated;
                return SIMPLETYPES.expectInteger(this.executeCachedGeneric0(frameValue, child0Value, child1Value));
            }

            protected int executeCached1(VirtualFrame frameValue, int child0ValueEvaluated, Object child1ValueEvaluated) throws UnexpectedResultException {
                Object child0Value = child0ValueEvaluated;
                Object child1Value = child1ValueEvaluated;
                return SIMPLETYPES.expectInteger(this.executeCachedGeneric0(frameValue, child0Value, child1Value));
            }

            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object child0Value, Object child1Value, String reason) {
                neverPartOfCompilation();
                TestGroupingBaseNode current = this;
                String message = createInfo0(reason, child0Value, child1Value);
                if (minimumState < 7 && SIMPLETYPES.isInteger(child0Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    if (minimumState < 1 && SIMPLETYPES.isString(child1Value)) {
                        String child1ValueCast = SIMPLETYPES.asString(child1Value);
                        return current.replace(new TestGroupingIntStringNode(current), message).fail(child0ValueCast, child1ValueCast);
                    }
                    if (SIMPLETYPES.isInteger(child1Value) && super.true1(child0ValueCast)) {
                        int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                        if (minimumState < 2 && super.false1(child0ValueCast, child1ValueCast)) {
                            return current.replace(new TestGroupingInt0Node(current), message).fail1(child0ValueCast, child1ValueCast);
                        }
                        if (this.a1.isValid() && super.true2(child0ValueCast)) {
                            if (minimumState < 3 && this.a2.isValid()) {
                                return current.replace(new TestGroupingInt1Node(current), message).fail2(child0ValueCast, child1ValueCast);
                            }
                            if (this.a3.isValid()) {
                                if (minimumState < 4) {
                                    try {
                                        current = current.replace(new TestGroupingInt2Node(current), message);
                                        return current.throwRewrite(child0ValueCast, child1ValueCast);
                                    } catch (RuntimeException rewriteEx) {
                                        // fall through
                                    }
                                }
                                if (minimumState < 5 && super.false2(child0ValueCast)) {
                                    return current.replace(new TestGroupingInt3Node(current), message).fail4(child0ValueCast, child1ValueCast);
                                } else if (minimumState < 6 && !super.true3(child0ValueCast)) {
                                    return current.replace(new TestGroupingInt4Node(current), message).fail5(child0ValueCast, child1ValueCast);
                                } else {
                                    return current.replace(new TestGroupingInt5Node(current), message).success(child0ValueCast, child1ValueCast);
                                }
                            }
                        }
                    }
                }
                if (current.next0 == null && minimumState > 0) {
                    TestGroupingPolymorphicNode polymorphic = new TestGroupingPolymorphicNode(current);
                    current.child0 = null;
                    current.child1 = null;
                    current.replace(polymorphic, message);
                    polymorphic.setNext0(current);
                    current.setNext0(new TestGroupingUninitializedNode(current));
                    return current.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
                } else {
                    Node root = current;
                    if (current.next0 != null) {
                        this.next0 = null;
                        do {
                            assert root != null : "No polymorphic parent node.";
                            root = root.getParent();
                        } while (!(root instanceof TestGroupingPolymorphicNode));
                    }
                    return root.replace(new TestGroupingGenericNode((TestGroupingBaseNode) root), message).executeGeneric0(child0Value, child1Value);
                }
            }

            @SlowPath
            protected Object executeGeneric0(Object child0Value, Object child1Value) {
                if (SIMPLETYPES.isInteger(child0Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    if (SIMPLETYPES.isString(child1Value)) {
                        String child1ValueCast = SIMPLETYPES.asString(child1Value);
                        return super.fail(child0ValueCast, child1ValueCast);
                    }
                    if (SIMPLETYPES.isInteger(child1Value) && super.true1(child0ValueCast)) {
                        int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                        if (super.false1(child0ValueCast, child1ValueCast)) {
                            return super.fail1(child0ValueCast, child1ValueCast);
                        }
                        if (this.a1.isValid() && super.true2(child0ValueCast)) {
                            if (this.a2.isValid()) {
                                return super.fail2(child0ValueCast, child1ValueCast);
                            }
                            if (this.a3.isValid()) {
                                try {
                                    return super.throwRewrite(child0ValueCast, child1ValueCast);
                                } catch (RuntimeException rewriteEx) {
                                    // fall through
                                }
                                if (super.false2(child0ValueCast)) {
                                    return super.fail4(child0ValueCast, child1ValueCast);
                                } else if (!super.true3(child0ValueCast)) {
                                    return super.fail5(child0ValueCast, child1ValueCast);
                                } else {
                                    return super.success(child0ValueCast, child1ValueCast);
                                }
                            }
                        }
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", child0Value, child1Value));
            }

            protected static String createInfo0(String message, Object child0Value, Object child1Value) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("child0Value").append(" = ").append(child0Value);
                    if (child0Value != null) {
                        builder.append(" (").append(child0Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(", ").append("child1Value").append(" = ").append(child1Value);
                    if (child1Value != null) {
                        builder.append(" (").append(child1Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.POLYMORPHIC)
        private static class TestGroupingPolymorphicNode extends TestGroupingBaseNode {

            TestGroupingPolymorphicNode(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                return next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

            protected final void optimizeTypes() {
                if (isCompatible0(TestGroupingPolymorphic0Node.class)) {
                    super.replace(new TestGroupingPolymorphic0Node(this), "Optimized polymorphic types for (int, int, int)");
                } else if (isCompatible0(TestGroupingPolymorphic1Node.class)) {
                    super.replace(new TestGroupingPolymorphic1Node(this), "Optimized polymorphic types for (int, int, Object)");
                } else if (isCompatible0(TestGroupingPolymorphicNode.class)) {
                    super.replace(new TestGroupingPolymorphicNode(this), "Optimized polymorphic types for (Object, Object, Object)");
                }
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                throw new AssertionError("Should not be reached.");
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                return type != getClass() && next0.isCompatible0(type);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.POLYMORPHIC)
        private static final class TestGroupingPolymorphic0Node extends TestGroupingPolymorphicNode {

            TestGroupingPolymorphic0Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(next0.executeCachedGeneric0(frameValue, ex.getResult(), child1Value));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(next0.executeCachedGeneric0(frameValue, child0Value, ex.getResult()));
                }
                return next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.POLYMORPHIC)
        private static final class TestGroupingPolymorphic1Node extends TestGroupingPolymorphicNode {

            TestGroupingPolymorphic1Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(next0.executeCachedGeneric0(frameValue, ex.getResult(), child1Value));
                }
                Object child1Value = this.child1.execute(frameValue);
                return next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class TestGroupingUninitializedNode extends TestGroupingBaseNode {

            TestGroupingUninitializedNode(ValueNode child0, ValueNode child1, Assumption a1, Assumption a2, Assumption a3) {
                super(child0, child1, a1, a2, a3);
            }

            TestGroupingUninitializedNode(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                return true;
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, child0Value, child1Value, "Uninitialized monomorphic");
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                transferToInterpreter();
                Node root = this;
                int depth = 0;
                do {
                    assert root != null : "No polymorphic parent node.";
                    root = root.getParent();
                    depth++;
                } while (!(root instanceof TestGroupingPolymorphicNode));

                if (depth > 6) {
                    return root.replace(new TestGroupingGenericNode((TestGroupingBaseNode) root), "Polymorphic limit reached (6)").executeGeneric0(child0Value, child1Value);
                } else {
                    setNext0(new TestGroupingUninitializedNode(this));
                    Object result = executeAndSpecialize0(0, frameValue, child0Value, child1Value, "Uninitialized polymorphic (" + depth + "/6)");
                    if (this.next0 != null) {
                        ((TestGroupingPolymorphicNode) root).optimizeTypes();
                    }
                    return result;
                }
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingIntStringNode extends TestGroupingBaseNode {

            TestGroupingIntStringNode(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                String child1Value;
                try {
                    child1Value = this.child1.executeString(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof String"));
                }
                return super.fail(child0Value, child1Value);
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (SIMPLETYPES.isString(child1Value)) {
                    String child1ValueCast = SIMPLETYPES.asString(child1Value);
                    return super.fail(child0Value, child1ValueCast);
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isString(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    String child1ValueCast = SIMPLETYPES.asString(child1Value);
                    return super.fail(child0ValueCast, child1ValueCast);
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt0Node extends TestGroupingBaseNode {

            TestGroupingInt0Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(2, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(2, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.false1(child0Value, child1Value)) {
                    return super.fail1(child0Value, child1Value);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(2, frameValue, child0Value, child1Value, "One of guards [true1, false1] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (super.true1(child0Value) && super.false1(child0Value, child1Value)) {
                    return super.fail1(child0Value, child1Value);
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.false1(child0Value, child1ValueCast)) {
                        return super.fail1(child0Value, child1ValueCast);
                    }
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.false1(child0ValueCast, child1ValueCast)) {
                        return super.fail1(child0ValueCast, child1ValueCast);
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt1Node extends TestGroupingBaseNode {

            TestGroupingInt1Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(3, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(3, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.true2(child0Value)) {
                    try {
                        this.a1.check();
                        this.a2.check();
                        return super.fail2(child0Value, child1Value);
                    } catch (InvalidAssumptionException ex) {
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(3, frameValue, child0Value, child1Value, "Assumption failed"));
                    }
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(3, frameValue, child0Value, child1Value, "One of guards [true1, true2] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a2.isValid() && super.true1(child0Value) && super.true2(child0Value)) {
                    return super.fail2(child0Value, child1Value);
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a2.isValid() && SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value) && super.true2(child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return super.fail2(child0Value, child1ValueCast);
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (this.a1.isValid() && this.a2.isValid() && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.true2(child0ValueCast)) {
                        return super.fail2(child0ValueCast, child1ValueCast);
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt2Node extends TestGroupingBaseNode {

            TestGroupingInt2Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(4, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(4, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.true2(child0Value)) {
                    try {
                        this.a1.check();
                        this.a3.check();
                        return super.throwRewrite(child0Value, child1Value);
                    } catch (RuntimeException ex) {
                        transferToInterpreter();
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(4, frameValue, child0Value, child1Value, "Thrown RuntimeException"));
                    } catch (InvalidAssumptionException ex) {
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(4, frameValue, child0Value, child1Value, "Assumption failed"));
                    }
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(4, frameValue, child0Value, child1Value, "One of guards [true1, true2] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && super.true1(child0Value) && super.true2(child0Value)) {
                    try {
                        return super.throwRewrite(child0Value, child1Value);
                    } catch (RuntimeException rewriteEx) {
                        // fall through
                    }
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value) && super.true2(child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    try {
                        return super.throwRewrite(child0Value, child1ValueCast);
                    } catch (RuntimeException rewriteEx) {
                        // fall through
                    }
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.true2(child0ValueCast)) {
                        try {
                            return super.throwRewrite(child0ValueCast, child1ValueCast);
                        } catch (RuntimeException rewriteEx) {
                            // fall through
                        }
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt3Node extends TestGroupingBaseNode {

            TestGroupingInt3Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(5, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(5, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.true2(child0Value) && super.false2(child0Value)) {
                    try {
                        this.a1.check();
                        this.a3.check();
                        return super.fail4(child0Value, child1Value);
                    } catch (InvalidAssumptionException ex) {
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(5, frameValue, child0Value, child1Value, "Assumption failed"));
                    }
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(5, frameValue, child0Value, child1Value, "One of guards [true1, true2, false2] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && super.true1(child0Value) && super.true2(child0Value) && super.false2(child0Value)) {
                    return super.fail4(child0Value, child1Value);
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value) && super.true2(child0Value) && super.false2(child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return super.fail4(child0Value, child1ValueCast);
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.true2(child0ValueCast) && super.false2(child0ValueCast)) {
                        return super.fail4(child0ValueCast, child1ValueCast);
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt4Node extends TestGroupingBaseNode {

            TestGroupingInt4Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(6, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(6, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && !super.true3(child0Value)) {
                    try {
                        this.a1.check();
                        this.a3.check();
                        return super.fail5(child0Value, child1Value);
                    } catch (InvalidAssumptionException ex) {
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(6, frameValue, child0Value, child1Value, "Assumption failed"));
                    }
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(6, frameValue, child0Value, child1Value, "One of guards [true1, true2, !false2, !true3] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && !super.true3(child0Value)) {
                    return super.fail5(child0Value, child1Value);
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && !super.true3(
                            child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return super.fail5(child0Value, child1ValueCast);
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.true2(child0ValueCast) && !super.false2(child0ValueCast) && !super.true3(child0ValueCast)) {
                        return super.fail5(child0ValueCast, child1ValueCast);
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGroupingInt5Node extends TestGroupingBaseNode {

            TestGroupingInt5Node(TestGroupingBaseNode copy) {
                super(copy);
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                if (type == TestGroupingPolymorphic0Node.class || type == TestGroupingPolymorphic1Node.class || type == TestGroupingPolymorphicNode.class) {
                    return next0.isCompatible0(type);
                }
                return false;
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child1Value = this.child1.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(7, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(7, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                if (super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && super.true3(child0Value)) {
                    try {
                        this.a1.check();
                        this.a3.check();
                        return super.success(child0Value, child1Value);
                    } catch (InvalidAssumptionException ex) {
                        return SIMPLETYPES.expectInteger(executeAndSpecialize0(7, frameValue, child0Value, child1Value, "Assumption failed"));
                    }
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(7, frameValue, child0Value, child1Value, "One of guards [true1, true2, !false2, true3] failed"));
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return SIMPLETYPES.expectBoolean(ex.getResult());
                }
                return SIMPLETYPES.expectBoolean(value);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                int value;
                try {
                    value = this.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

            @Override
            protected int executeCached0(VirtualFrame frameValue, int child0Value, int child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && super.true3(child0Value)) {
                    return super.success(child0Value, child1Value);
                }
                return this.next0.executeCached0(frameValue, child0Value, child1Value);
            }

            @Override
            protected int executeCached1(VirtualFrame frameValue, int child0Value, Object child1Value) throws UnexpectedResultException {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child1Value) && super.true1(child0Value) && super.true2(child0Value) && !super.false2(child0Value) && super.true3(
                            child0Value)) {
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return super.success(child0Value, child1ValueCast);
                }
                return this.next0.executeCached1(frameValue, child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                if (this.a1.isValid() && this.a3.isValid() && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    if (super.true1(child0ValueCast) && super.true2(child0ValueCast) && !super.false2(child0ValueCast) && super.true3(child0ValueCast)) {
                        return super.success(child0ValueCast, child1ValueCast);
                    }
                }
                return this.next0.executeCachedGeneric0(frameValue, child0Value, child1Value);
            }

        }
        @GeneratedBy(TestGrouping.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class TestGroupingGenericNode extends TestGroupingBaseNode {

            TestGroupingGenericNode(TestGroupingBaseNode copy) {
                super(copy);
                this.next0 = null;
            }

            @Override
            protected boolean isCompatible0(Class<?> type) {
                throw new AssertionError();
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                return super.executeGeneric0(child0Value, child1Value);
            }

            @Override
            protected Object executeCachedGeneric0(VirtualFrame frameValue, Object child0Value, Object child1Value) {
                throw new AssertionError("Should not be reached.");
            }

        }
    }
}

/*
 * Copyright (c) 2012, Oracle and/or its affiliates. All rights reserved.
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

import com.oracle.truffle.api.CompilerDirectives.SlowPath;
import com.oracle.truffle.api.dsl.GeneratedBy;
import com.oracle.truffle.api.dsl.NodeFactory;
import com.oracle.truffle.api.dsl.test.CodeFormatTest.LineWrappingTest;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(CodeFormatTest.class)
public final class CodeFormatTestFactory {

    private CodeFormatTestFactory() {
    }

    public static List<NodeFactory<LineWrappingTest>> getFactories() {
        return asList(LineWrappingTestFactory.getInstance());
    }

    @GeneratedBy(LineWrappingTest.class)
    static final class LineWrappingTestFactory implements NodeFactory<LineWrappingTest> {

        private static LineWrappingTestFactory lineWrappingTestFactoryInstance;

        private LineWrappingTestFactory() {
        }

        @Override
        public LineWrappingTest createNode(Object... arguments) {
            if (arguments.length == 0) {
                return create();
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public LineWrappingTest createNodeGeneric(LineWrappingTest thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<LineWrappingTest> getNodeClass() {
            return LineWrappingTest.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList());
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static LineWrappingTest createGeneric(LineWrappingTest thisNode) {
            return new LineWrappingTestGenericNode((LineWrappingTestBaseNode) thisNode);
        }

        static LineWrappingTest create() {
            return new LineWrappingTestUninitializedNode();
        }

        static NodeFactory<LineWrappingTest> getInstance() {
            if (lineWrappingTestFactoryInstance == null) {
                lineWrappingTestFactoryInstance = new LineWrappingTestFactory();
            }
            return lineWrappingTestFactoryInstance;
        }

        @GeneratedBy(LineWrappingTest.class)
        private abstract static class LineWrappingTestBaseNode extends LineWrappingTest {

            LineWrappingTestBaseNode() {
                super();
            }

            @SuppressWarnings("unused")
            LineWrappingTestBaseNode(LineWrappingTestBaseNode copy) {
            }

            protected int executeAndSpecialize0(int minimumState, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 1 && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1()) {
                    return this.replace(new LineWrappingTestDefaultNode(this), message).execute();
                }
                return this.replace(new LineWrappingTestGenericNode(this), message).executeGeneric0();
            }

            @SlowPath
            protected int executeGeneric0() {
                if (super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1()) {
                    return super.execute();
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values"));
            }

            protected static String createInfo0(String message) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(LineWrappingTest.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class LineWrappingTestUninitializedNode extends LineWrappingTestBaseNode {

            LineWrappingTestUninitializedNode() {
                super();
            }

            @Override
            public int execute() {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, "Uninitialized monomorphic");
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, "Uninitialized monomorphic");
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                return SIMPLETYPES.expectBoolean(this.execute());
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return this.execute();
            }

        }
        @GeneratedBy(LineWrappingTest.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class LineWrappingTestDefaultNode extends LineWrappingTestBaseNode {

            LineWrappingTestDefaultNode(LineWrappingTestBaseNode copy) {
                super(copy);
            }

            @Override
            public int execute() {
                if (super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1()) {
                    return super.execute();
                }
                transferToInterpreter();
                return executeAndSpecialize0(1, "One of guards [guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyy"
                            + "yLLLLLLLLLLLLLoooooooonnnnnnngggggggName2, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1, guardWithaReeeeeeeeaaaaaaaaaaalllllll"
                            + "llyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1] failed");
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                if (super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1() && super.
                            guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2() && super.guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1()) {
                    return super.execute();
                }
                transferToInterpreter();
                return executeAndSpecialize0(1, "One of guards [guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyy"
                            + "yLLLLLLLLLLLLLoooooooonnnnnnngggggggName2, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1, guardWithaReeeeeeeeaaaaaaaaaaalllllll"
                            + "llyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName2, guardWithaReeeeeeeeaaaaaaaaaaalllllllllyyyyyyyyLLLLLLLLLLLLLoooooooonnnnnnngggggggName1] failed");
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                return SIMPLETYPES.expectBoolean(this.execute());
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return this.execute();
            }

        }
        @GeneratedBy(LineWrappingTest.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class LineWrappingTestGenericNode extends LineWrappingTestBaseNode {

            LineWrappingTestGenericNode(LineWrappingTestBaseNode copy) {
                super(copy);
            }

            @Override
            public int execute() {
                return super.executeGeneric0();
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.executeGeneric0();
            }

            @Override
            public boolean executeBoolean(VirtualFrame frameValue) throws UnexpectedResultException {
                return SIMPLETYPES.expectBoolean(this.execute());
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return this.execute();
            }

        }
    }
}

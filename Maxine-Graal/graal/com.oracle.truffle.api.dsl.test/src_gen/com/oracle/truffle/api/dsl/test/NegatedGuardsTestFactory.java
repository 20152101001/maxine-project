/*
 * Copyright (c) 2012, 2013, Oracle and/or its affiliates. All rights reserved.
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

import com.oracle.truffle.api.dsl.GeneratedBy;
import com.oracle.truffle.api.dsl.NodeFactory;
import com.oracle.truffle.api.dsl.test.NegatedGuardsTest.NegatedGuardNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(NegatedGuardsTest.class)
public final class NegatedGuardsTestFactory {

    private NegatedGuardsTestFactory() {
    }

    public static List<NodeFactory<NegatedGuardNode>> getFactories() {
        return asList(NegatedGuardNodeFactory.getInstance());
    }

    @GeneratedBy(NegatedGuardNode.class)
    static final class NegatedGuardNodeFactory implements NodeFactory<NegatedGuardNode> {

        private static NegatedGuardNodeFactory negatedGuardNodeFactoryInstance;

        private NegatedGuardNodeFactory() {
        }

        @Override
        public NegatedGuardNode createNode(Object... arguments) {
            if (arguments.length == 0) {
                return create();
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public NegatedGuardNode createNodeGeneric(NegatedGuardNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<NegatedGuardNode> getNodeClass() {
            return NegatedGuardNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList());
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static NegatedGuardNode createGeneric(NegatedGuardNode thisNode) {
            return new NegatedGuardDefault1Node((NegatedGuardBaseNode) thisNode);
        }

        static NegatedGuardNode create() {
            return new NegatedGuardUninitializedNode();
        }

        static NodeFactory<NegatedGuardNode> getInstance() {
            if (negatedGuardNodeFactoryInstance == null) {
                negatedGuardNodeFactoryInstance = new NegatedGuardNodeFactory();
            }
            return negatedGuardNodeFactoryInstance;
        }

        @GeneratedBy(NegatedGuardNode.class)
        private abstract static class NegatedGuardBaseNode extends NegatedGuardNode {

            NegatedGuardBaseNode() {
                super();
            }

            @SuppressWarnings("unused")
            NegatedGuardBaseNode(NegatedGuardBaseNode copy) {
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 2) {
                    if (minimumState < 1 && !super.guard()) {
                        return this.replace(new NegatedGuardDefault0Node(this), message).do1();
                    }
                    return this.replace(new NegatedGuardDefault1Node(this), message).do2();
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values"));
                // unreachable Generic
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
        @GeneratedBy(NegatedGuardNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class NegatedGuardUninitializedNode extends NegatedGuardBaseNode {

            NegatedGuardUninitializedNode() {
                super();
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(NegatedGuardNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class NegatedGuardDefault0Node extends NegatedGuardBaseNode {

            NegatedGuardDefault0Node(NegatedGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                if (!super.guard()) {
                    return super.do1();
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, "One of guards [!guard] failed"));
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
        @GeneratedBy(NegatedGuardNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class NegatedGuardDefault1Node extends NegatedGuardBaseNode {

            NegatedGuardDefault1Node(NegatedGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.do2();
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
    }
}

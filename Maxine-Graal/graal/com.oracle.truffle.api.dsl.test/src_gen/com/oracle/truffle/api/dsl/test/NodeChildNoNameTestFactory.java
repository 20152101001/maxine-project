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

import com.oracle.truffle.api.CompilerDirectives.SlowPath;
import com.oracle.truffle.api.dsl.GeneratedBy;
import com.oracle.truffle.api.dsl.NodeFactory;
import com.oracle.truffle.api.dsl.test.NodeChildNoNameTest.OneArgNoName;
import com.oracle.truffle.api.dsl.test.NodeChildNoNameTest.ThreeArgsNoName;
import com.oracle.truffle.api.dsl.test.NodeChildNoNameTest.TwoArgsNoName;
import com.oracle.truffle.api.dsl.test.TypeSystemTest.ValueNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(NodeChildNoNameTest.class)
public final class NodeChildNoNameTestFactory {

    private NodeChildNoNameTestFactory() {
    }

    public static List<NodeFactory<? extends ValueNode>> getFactories() {
        return asList(OneArgNoNameFactory.getInstance(), TwoArgsNoNameFactory.getInstance(), ThreeArgsNoNameFactory.getInstance());
    }

    @GeneratedBy(OneArgNoName.class)
    static final class OneArgNoNameFactory implements NodeFactory<OneArgNoName> {

        private static OneArgNoNameFactory oneArgNoNameFactoryInstance;

        private OneArgNoNameFactory() {
        }

        @Override
        public OneArgNoName createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public OneArgNoName createNodeGeneric(OneArgNoName thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<OneArgNoName> getNodeClass() {
            return OneArgNoName.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        static OneArgNoName createGeneric(OneArgNoName thisNode) {
            return new OneArgNoNameGenericNode((OneArgNoNameBaseNode) thisNode);
        }

        static OneArgNoName create(ValueNode child0) {
            return new OneArgNoNameUninitializedNode(child0);
        }

        static NodeFactory<OneArgNoName> getInstance() {
            if (oneArgNoNameFactoryInstance == null) {
                oneArgNoNameFactoryInstance = new OneArgNoNameFactory();
            }
            return oneArgNoNameFactoryInstance;
        }

        @GeneratedBy(OneArgNoName.class)
        private abstract static class OneArgNoNameBaseNode extends OneArgNoName {

            @Child protected ValueNode child0;

            OneArgNoNameBaseNode(ValueNode child0) {
                super();
                this.child0 = adoptChild(child0);
            }

            OneArgNoNameBaseNode(OneArgNoNameBaseNode copy) {
                this.child0 = adoptChild(copy.child0);
            }

            @Override
            public ValueNode getChild0() {
                return this.child0;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object child0Value, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, child0Value);
                if (minimumState < 1 && SIMPLETYPES.isInteger(child0Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    return this.replace(new OneArgNoNameIntNode(this), message).doIt(child0ValueCast);
                }
                return this.replace(new OneArgNoNameGenericNode(this), message).executeGeneric0(child0Value);
            }

            @SlowPath
            protected Object executeGeneric0(Object child0Value) {
                if (SIMPLETYPES.isInteger(child0Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    return super.doIt(child0ValueCast);
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", child0Value));
            }

            protected static String createInfo0(String message, Object child0Value) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("child0Value").append(" = ").append(child0Value);
                    if (child0Value != null) {
                        builder.append(" (").append(child0Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(OneArgNoName.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class OneArgNoNameUninitializedNode extends OneArgNoNameBaseNode {

            OneArgNoNameUninitializedNode(ValueNode child0) {
                super(child0);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object child0Value = this.child0.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, child0Value, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(OneArgNoName.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class OneArgNoNameIntNode extends OneArgNoNameBaseNode {

            OneArgNoNameIntNode(OneArgNoNameBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int child0Value;
                try {
                    child0Value = this.child0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected child0Value instanceof int"));
                }
                return super.doIt(child0Value);
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
        @GeneratedBy(OneArgNoName.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class OneArgNoNameGenericNode extends OneArgNoNameBaseNode {

            OneArgNoNameGenericNode(OneArgNoNameBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object child0Value = this.child0.execute(frameValue);
                return super.executeGeneric0(child0Value);
            }

        }
    }
    @GeneratedBy(TwoArgsNoName.class)
    static final class TwoArgsNoNameFactory implements NodeFactory<TwoArgsNoName> {

        private static TwoArgsNoNameFactory twoArgsNoNameFactoryInstance;

        private TwoArgsNoNameFactory() {
        }

        @Override
        public TwoArgsNoName createNode(Object... arguments) {
            if (arguments.length == 2 && (arguments[0] == null || arguments[0] instanceof ValueNode) && (arguments[1] == null || arguments[1] instanceof ValueNode)) {
                return create((ValueNode) arguments[0], (ValueNode) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public TwoArgsNoName createNodeGeneric(TwoArgsNoName thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<TwoArgsNoName> getNodeClass() {
            return TwoArgsNoName.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class, ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class, ValueNode.class);
        }

        static TwoArgsNoName createGeneric(TwoArgsNoName thisNode) {
            return new TwoArgsNoNameGenericNode((TwoArgsNoNameBaseNode) thisNode);
        }

        static TwoArgsNoName create(ValueNode child0, ValueNode child1) {
            return new TwoArgsNoNameUninitializedNode(child0, child1);
        }

        static NodeFactory<TwoArgsNoName> getInstance() {
            if (twoArgsNoNameFactoryInstance == null) {
                twoArgsNoNameFactoryInstance = new TwoArgsNoNameFactory();
            }
            return twoArgsNoNameFactoryInstance;
        }

        @GeneratedBy(TwoArgsNoName.class)
        private abstract static class TwoArgsNoNameBaseNode extends TwoArgsNoName {

            @Child protected ValueNode child0;
            @Child protected ValueNode child1;

            TwoArgsNoNameBaseNode(ValueNode child0, ValueNode child1) {
                super();
                this.child0 = adoptChild(child0);
                this.child1 = adoptChild(child1);
            }

            TwoArgsNoNameBaseNode(TwoArgsNoNameBaseNode copy) {
                this.child0 = adoptChild(copy.child0);
                this.child1 = adoptChild(copy.child1);
            }

            @Override
            public ValueNode getChild0() {
                return this.child0;
            }

            @Override
            public ValueNode getChild1() {
                return this.child1;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object child0Value, Object child1Value, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, child0Value, child1Value);
                if (minimumState < 1 && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return this.replace(new TwoArgsNoNameIntNode(this), message).doIt(child0ValueCast, child1ValueCast);
                }
                return this.replace(new TwoArgsNoNameGenericNode(this), message).executeGeneric0(child0Value, child1Value);
            }

            @SlowPath
            protected Object executeGeneric0(Object child0Value, Object child1Value) {
                if (SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    return super.doIt(child0ValueCast, child1ValueCast);
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
        @GeneratedBy(TwoArgsNoName.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class TwoArgsNoNameUninitializedNode extends TwoArgsNoNameBaseNode {

            TwoArgsNoNameUninitializedNode(ValueNode child0, ValueNode child1) {
                super(child0, child1);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, child0Value, child1Value, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(TwoArgsNoName.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TwoArgsNoNameIntNode extends TwoArgsNoNameBaseNode {

            TwoArgsNoNameIntNode(TwoArgsNoNameBaseNode copy) {
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
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), child1Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, child0Value, ex.getResult(), "Expected child1Value instanceof int"));
                }
                return super.doIt(child0Value, child1Value);
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
        @GeneratedBy(TwoArgsNoName.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class TwoArgsNoNameGenericNode extends TwoArgsNoNameBaseNode {

            TwoArgsNoNameGenericNode(TwoArgsNoNameBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                return super.executeGeneric0(child0Value, child1Value);
            }

        }
    }
    @GeneratedBy(ThreeArgsNoName.class)
    static final class ThreeArgsNoNameFactory implements NodeFactory<ThreeArgsNoName> {

        private static ThreeArgsNoNameFactory threeArgsNoNameFactoryInstance;

        private ThreeArgsNoNameFactory() {
        }

        @Override
        public ThreeArgsNoName createNode(Object... arguments) {
            if (arguments.length == 3 && (arguments[0] == null || arguments[0] instanceof ValueNode) && (arguments[1] == null || arguments[1] instanceof ValueNode) && (arguments[2] == null ||
                        arguments[2] instanceof ValueNode)) {
                return create((ValueNode) arguments[0], (ValueNode) arguments[1], (ValueNode) arguments[2]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public ThreeArgsNoName createNodeGeneric(ThreeArgsNoName thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<ThreeArgsNoName> getNodeClass() {
            return ThreeArgsNoName.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class, ValueNode.class, ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class, ValueNode.class, ValueNode.class);
        }

        static ThreeArgsNoName createGeneric(ThreeArgsNoName thisNode) {
            return new ThreeArgsNoNameGenericNode((ThreeArgsNoNameBaseNode) thisNode);
        }

        static ThreeArgsNoName create(ValueNode child0, ValueNode child1, ValueNode child2) {
            return new ThreeArgsNoNameUninitializedNode(child0, child1, child2);
        }

        static NodeFactory<ThreeArgsNoName> getInstance() {
            if (threeArgsNoNameFactoryInstance == null) {
                threeArgsNoNameFactoryInstance = new ThreeArgsNoNameFactory();
            }
            return threeArgsNoNameFactoryInstance;
        }

        @GeneratedBy(ThreeArgsNoName.class)
        private abstract static class ThreeArgsNoNameBaseNode extends ThreeArgsNoName {

            @Child protected ValueNode child0;
            @Child protected ValueNode child1;
            @Child protected ValueNode child2;

            ThreeArgsNoNameBaseNode(ValueNode child0, ValueNode child1, ValueNode child2) {
                super();
                this.child0 = adoptChild(child0);
                this.child1 = adoptChild(child1);
                this.child2 = adoptChild(child2);
            }

            ThreeArgsNoNameBaseNode(ThreeArgsNoNameBaseNode copy) {
                this.child0 = adoptChild(copy.child0);
                this.child1 = adoptChild(copy.child1);
                this.child2 = adoptChild(copy.child2);
            }

            @Override
            public ValueNode getChild0() {
                return this.child0;
            }

            @Override
            public ValueNode getChild1() {
                return this.child1;
            }

            @Override
            public ValueNode getChild2() {
                return this.child2;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object child0Value, Object child1Value, Object child2Value, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, child0Value, child1Value, child2Value);
                if (minimumState < 1 && SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value) && SIMPLETYPES.isInteger(child2Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    int child2ValueCast = SIMPLETYPES.asInteger(child2Value);
                    return this.replace(new ThreeArgsNoNameIntNode(this), message).doIt(child0ValueCast, child1ValueCast, child2ValueCast);
                }
                return this.replace(new ThreeArgsNoNameGenericNode(this), message).executeGeneric0(child0Value, child1Value, child2Value);
            }

            @SlowPath
            protected Object executeGeneric0(Object child0Value, Object child1Value, Object child2Value) {
                if (SIMPLETYPES.isInteger(child0Value) && SIMPLETYPES.isInteger(child1Value) && SIMPLETYPES.isInteger(child2Value)) {
                    int child0ValueCast = SIMPLETYPES.asInteger(child0Value);
                    int child1ValueCast = SIMPLETYPES.asInteger(child1Value);
                    int child2ValueCast = SIMPLETYPES.asInteger(child2Value);
                    return super.doIt(child0ValueCast, child1ValueCast, child2ValueCast);
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", child0Value, child1Value, child2Value));
            }

            protected static String createInfo0(String message, Object child0Value, Object child1Value, Object child2Value) {
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
                    builder.append(", ").append("child2Value").append(" = ").append(child2Value);
                    if (child2Value != null) {
                        builder.append(" (").append(child2Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(ThreeArgsNoName.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class ThreeArgsNoNameUninitializedNode extends ThreeArgsNoNameBaseNode {

            ThreeArgsNoNameUninitializedNode(ValueNode child0, ValueNode child1, ValueNode child2) {
                super(child0, child1, child2);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                Object child2Value = this.child2.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, child0Value, child1Value, child2Value, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(ThreeArgsNoName.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class ThreeArgsNoNameIntNode extends ThreeArgsNoNameBaseNode {

            ThreeArgsNoNameIntNode(ThreeArgsNoNameBaseNode copy) {
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
                    Object child2Value = this.child2.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), child1Value, child2Value, "Expected child0Value instanceof int"));
                }
                int child1Value;
                try {
                    child1Value = this.child1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object child2Value = this.child2.execute(frameValue);
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, child0Value, ex.getResult(), child2Value, "Expected child1Value instanceof int"));
                }
                int child2Value;
                try {
                    child2Value = this.child2.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, child0Value, child1Value, ex.getResult(), "Expected child2Value instanceof int"));
                }
                return super.doIt(child0Value, child1Value, child2Value);
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
        @GeneratedBy(ThreeArgsNoName.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class ThreeArgsNoNameGenericNode extends ThreeArgsNoNameBaseNode {

            ThreeArgsNoNameGenericNode(ThreeArgsNoNameBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object child0Value = this.child0.execute(frameValue);
                Object child1Value = this.child1.execute(frameValue);
                Object child2Value = this.child2.execute(frameValue);
                return super.executeGeneric0(child0Value, child1Value, child2Value);
            }

        }
    }
}

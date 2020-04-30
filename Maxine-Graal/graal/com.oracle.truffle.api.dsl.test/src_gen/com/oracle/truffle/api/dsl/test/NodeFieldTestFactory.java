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

import com.oracle.truffle.api.dsl.GeneratedBy;
import com.oracle.truffle.api.dsl.NodeFactory;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.IntContainerNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.IntFieldNoGetterTestNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.IntFieldTestNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.MultipleFieldsTestNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.RewriteTestNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.StringFieldTestNode;
import com.oracle.truffle.api.dsl.test.NodeFieldTest.TestContainer;
import com.oracle.truffle.api.dsl.test.TypeSystemTest.ValueNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(NodeFieldTest.class)
public final class NodeFieldTestFactory {

    private NodeFieldTestFactory() {
    }

    public static List<NodeFactory<? extends ValueNode>> getFactories() {
        return asList(IntFieldTestNodeFactory.getInstance(), IntFieldNoGetterTestNodeFactory.getInstance(), MultipleFieldsTestNodeFactory.getInstance(), StringFieldTestNodeFactory.getInstance(),
                    RewriteTestNodeFactory.getInstance(), TestContainerFactory.TestContainerContainerFieldFactory.getInstance());
    }

    @GeneratedBy(IntFieldTestNode.class)
    static final class IntFieldTestNodeFactory implements NodeFactory<IntFieldTestNode> {

        private static IntFieldTestNodeFactory intFieldTestNodeFactoryInstance;

        private IntFieldTestNodeFactory() {
        }

        @Override
        public IntFieldTestNode createNode(Object... arguments) {
            if (arguments.length == 1 && arguments[0] instanceof Integer) {
                return create((int) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public IntFieldTestNode createNodeGeneric(IntFieldTestNode thisNode) {
            throw new UnsupportedOperationException("No specialized version.");
        }

        @Override
        public Class<IntFieldTestNode> getNodeClass() {
            return IntFieldTestNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(int.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static IntFieldTestNode create(int field) {
            return new IntFieldTestDefaultNode(field);
        }

        static NodeFactory<IntFieldTestNode> getInstance() {
            if (intFieldTestNodeFactoryInstance == null) {
                intFieldTestNodeFactoryInstance = new IntFieldTestNodeFactory();
            }
            return intFieldTestNodeFactoryInstance;
        }

        @GeneratedBy(IntFieldTestNode.class)
        private abstract static class IntFieldTestBaseNode extends IntFieldTestNode {

            protected final int field;

            IntFieldTestBaseNode(int field) {
                super();
                this.field = field;
            }

            @Override
            public int getField() {
                return this.field;
            }

        }
        @GeneratedBy(IntFieldTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class IntFieldTestDefaultNode extends IntFieldTestBaseNode {

            IntFieldTestDefaultNode(int field) {
                super(field);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.intField();
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
    @GeneratedBy(IntFieldNoGetterTestNode.class)
    static final class IntFieldNoGetterTestNodeFactory implements NodeFactory<IntFieldNoGetterTestNode> {

        private static IntFieldNoGetterTestNodeFactory intFieldNoGetterTestNodeFactoryInstance;

        private IntFieldNoGetterTestNodeFactory() {
        }

        @Override
        public IntFieldNoGetterTestNode createNode(Object... arguments) {
            if (arguments.length == 1 && arguments[0] instanceof Integer) {
                return create((int) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public IntFieldNoGetterTestNode createNodeGeneric(IntFieldNoGetterTestNode thisNode) {
            throw new UnsupportedOperationException("No specialized version.");
        }

        @Override
        public Class<IntFieldNoGetterTestNode> getNodeClass() {
            return IntFieldNoGetterTestNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(int.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static IntFieldNoGetterTestNode create(int field) {
            return new IntFieldNoGetterTestDefaultNode(field);
        }

        static NodeFactory<IntFieldNoGetterTestNode> getInstance() {
            if (intFieldNoGetterTestNodeFactoryInstance == null) {
                intFieldNoGetterTestNodeFactoryInstance = new IntFieldNoGetterTestNodeFactory();
            }
            return intFieldNoGetterTestNodeFactoryInstance;
        }

        @GeneratedBy(IntFieldNoGetterTestNode.class)
        private abstract static class IntFieldNoGetterTestBaseNode extends IntFieldNoGetterTestNode {

            protected final int field;

            IntFieldNoGetterTestBaseNode(int field) {
                super();
                this.field = field;
            }

        }
        @GeneratedBy(IntFieldNoGetterTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class IntFieldNoGetterTestDefaultNode extends IntFieldNoGetterTestBaseNode {

            IntFieldNoGetterTestDefaultNode(int field) {
                super(field);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.intField(this.field);
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
    @GeneratedBy(MultipleFieldsTestNode.class)
    static final class MultipleFieldsTestNodeFactory implements NodeFactory<MultipleFieldsTestNode> {

        private static MultipleFieldsTestNodeFactory multipleFieldsTestNodeFactoryInstance;

        private MultipleFieldsTestNodeFactory() {
        }

        @Override
        public MultipleFieldsTestNode createNode(Object... arguments) {
            if (arguments.length == 2 && arguments[0] instanceof Integer && arguments[1] instanceof Integer) {
                return create((int) arguments[0], (int) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public MultipleFieldsTestNode createNodeGeneric(MultipleFieldsTestNode thisNode) {
            throw new UnsupportedOperationException("No specialized version.");
        }

        @Override
        public Class<MultipleFieldsTestNode> getNodeClass() {
            return MultipleFieldsTestNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(int.class, int.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static MultipleFieldsTestNode create(int field0, int field1) {
            return new MultipleFieldsTestDefaultNode(field0, field1);
        }

        static NodeFactory<MultipleFieldsTestNode> getInstance() {
            if (multipleFieldsTestNodeFactoryInstance == null) {
                multipleFieldsTestNodeFactoryInstance = new MultipleFieldsTestNodeFactory();
            }
            return multipleFieldsTestNodeFactoryInstance;
        }

        @GeneratedBy(MultipleFieldsTestNode.class)
        private abstract static class MultipleFieldsTestBaseNode extends MultipleFieldsTestNode {

            protected final int field0;
            protected final int field1;

            MultipleFieldsTestBaseNode(int field0, int field1) {
                super();
                this.field0 = field0;
                this.field1 = field1;
            }

            @Override
            public int getField0() {
                return this.field0;
            }

            @Override
            public int getField1() {
                return this.field1;
            }

        }
        @GeneratedBy(MultipleFieldsTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class MultipleFieldsTestDefaultNode extends MultipleFieldsTestBaseNode {

            MultipleFieldsTestDefaultNode(int field0, int field1) {
                super(field0, field1);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.intField();
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
    @GeneratedBy(StringFieldTestNode.class)
    static final class StringFieldTestNodeFactory implements NodeFactory<StringFieldTestNode> {

        private static StringFieldTestNodeFactory stringFieldTestNodeFactoryInstance;

        private StringFieldTestNodeFactory() {
        }

        @Override
        public StringFieldTestNode createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof String)) {
                return create((String) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public StringFieldTestNode createNodeGeneric(StringFieldTestNode thisNode) {
            throw new UnsupportedOperationException("No specialized version.");
        }

        @Override
        public Class<StringFieldTestNode> getNodeClass() {
            return StringFieldTestNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(String.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static StringFieldTestNode create(String field) {
            return new StringFieldTestDefaultNode(field);
        }

        static NodeFactory<StringFieldTestNode> getInstance() {
            if (stringFieldTestNodeFactoryInstance == null) {
                stringFieldTestNodeFactoryInstance = new StringFieldTestNodeFactory();
            }
            return stringFieldTestNodeFactoryInstance;
        }

        @GeneratedBy(StringFieldTestNode.class)
        private abstract static class StringFieldTestBaseNode extends StringFieldTestNode {

            protected final String field;

            StringFieldTestBaseNode(String field) {
                super();
                this.field = field;
            }

            @Override
            public String getField() {
                return this.field;
            }

        }
        @GeneratedBy(StringFieldTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class StringFieldTestDefaultNode extends StringFieldTestBaseNode {

            StringFieldTestDefaultNode(String field) {
                super(field);
            }

            @Override
            public String executeString(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.stringField();
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                String value;
                try {
                    value = this.executeString(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

        }
    }
    @GeneratedBy(RewriteTestNode.class)
    static final class RewriteTestNodeFactory implements NodeFactory<RewriteTestNode> {

        private static RewriteTestNodeFactory rewriteTestNodeFactoryInstance;

        private RewriteTestNodeFactory() {
        }

        @Override
        public RewriteTestNode createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof String)) {
                return create((String) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public RewriteTestNode createNodeGeneric(RewriteTestNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<RewriteTestNode> getNodeClass() {
            return RewriteTestNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(String.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static RewriteTestNode createGeneric(RewriteTestNode thisNode) {
            return new RewriteTestDefault1Node((RewriteTestBaseNode) thisNode);
        }

        static RewriteTestNode create(String field) {
            return new RewriteTestUninitializedNode(field);
        }

        static NodeFactory<RewriteTestNode> getInstance() {
            if (rewriteTestNodeFactoryInstance == null) {
                rewriteTestNodeFactoryInstance = new RewriteTestNodeFactory();
            }
            return rewriteTestNodeFactoryInstance;
        }

        @GeneratedBy(RewriteTestNode.class)
        private abstract static class RewriteTestBaseNode extends RewriteTestNode {

            protected final String field;

            RewriteTestBaseNode(String field) {
                super();
                this.field = field;
            }

            RewriteTestBaseNode(RewriteTestBaseNode copy) {
                this.field = copy.field;
            }

            @Override
            public String getField() {
                return this.field;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                RewriteTestBaseNode current = this;
                String message = createInfo0(reason);
                if (minimumState < 2) {
                    if (minimumState < 1) {
                        try {
                            current = current.replace(new RewriteTestDefault0Node(current), message);
                            return current.alwaysRewrite();
                        } catch (RuntimeException rewriteEx) {
                            // fall through
                        }
                    }
                    return current.replace(new RewriteTestDefault1Node(current), message).returnField();
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
        @GeneratedBy(RewriteTestNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class RewriteTestUninitializedNode extends RewriteTestBaseNode {

            RewriteTestUninitializedNode(String field) {
                super(field);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(RewriteTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class RewriteTestDefault0Node extends RewriteTestBaseNode {

            RewriteTestDefault0Node(RewriteTestBaseNode copy) {
                super(copy);
            }

            @Override
            public String executeString(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    return super.alwaysRewrite();
                } catch (RuntimeException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectString(executeAndSpecialize0(1, frameValue, "Thrown RuntimeException"));
                }
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                String value;
                try {
                    value = this.executeString(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

        }
        @GeneratedBy(RewriteTestNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class RewriteTestDefault1Node extends RewriteTestBaseNode {

            RewriteTestDefault1Node(RewriteTestBaseNode copy) {
                super(copy);
            }

            @Override
            public String executeString(VirtualFrame frameValue) throws UnexpectedResultException {
                return super.returnField();
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                String value;
                try {
                    value = this.executeString(frameValue);
                } catch (UnexpectedResultException ex) {
                    return ex.getResult();
                }
                return value;
            }

        }
    }
    @GeneratedBy(TestContainer.class)
    static final class TestContainerFactory {

        private TestContainerFactory() {
        }

        @GeneratedBy(methodName = "containerField", value = TestContainer.class)
        static final class TestContainerContainerFieldFactory implements NodeFactory<IntContainerNode> {

            private static TestContainerContainerFieldFactory testContainerContainerFieldFactoryInstance;

            private TestContainerContainerFieldFactory() {
            }

            @Override
            public IntContainerNode createNode(Object... arguments) {
                if (arguments.length == 2 && arguments[0] instanceof Integer && (arguments[1] == null || arguments[1] instanceof String)) {
                    return create((int) arguments[0], (String) arguments[1]);
                } else {
                    throw new IllegalArgumentException("Invalid create signature.");
                }
            }

            @Override
            public IntContainerNode createNodeGeneric(IntContainerNode thisNode) {
                throw new UnsupportedOperationException("No specialized version.");
            }

            @Override
            public Class<IntContainerNode> getNodeClass() {
                return IntContainerNode.class;
            }

            @Override
            public List<List<Class<?>>> getNodeSignatures() {
                return asList(Arrays.<Class<?>>asList(int.class, String.class));
            }

            @Override
            public List<Class<? extends Node>> getExecutionSignature() {
                return Arrays.<Class<? extends Node>>asList();
            }

            static IntContainerNode create(int field, String anotherField) {
                return new TestContainerContainerFieldDefaultNode(field, anotherField);
            }

            static NodeFactory<IntContainerNode> getInstance() {
                if (testContainerContainerFieldFactoryInstance == null) {
                    testContainerContainerFieldFactoryInstance = new TestContainerContainerFieldFactory();
                }
                return testContainerContainerFieldFactoryInstance;
            }

            @GeneratedBy(methodName = "containerField", value = TestContainer.class)
            private abstract static class TestContainerContainerFieldBaseNode extends IntContainerNode {

                protected final int field;
                protected final String anotherField;

                TestContainerContainerFieldBaseNode(int field, String anotherField) {
                    super();
                    this.field = field;
                    this.anotherField = anotherField;
                }

                @Override
                public int getField() {
                    return this.field;
                }

            }
            @GeneratedBy(methodName = "containerField", value = TestContainer.class)
            @NodeInfo(kind = Kind.SPECIALIZED)
            private static final class TestContainerContainerFieldDefaultNode extends TestContainerContainerFieldBaseNode {

                TestContainerContainerFieldDefaultNode(int field, String anotherField) {
                    super(field, anotherField);
                }

                @Override
                public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                    return TestContainer.containerField(this.field, this.anotherField);
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
}

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
import com.oracle.truffle.api.dsl.test.GuardsTest.GlobalFlagGuard;
import com.oracle.truffle.api.dsl.test.GuardsTest.GuardWithBaseClass;
import com.oracle.truffle.api.dsl.test.GuardsTest.GuardWithBaseInterface;
import com.oracle.truffle.api.dsl.test.GuardsTest.GuardWithBoxedPrimitive;
import com.oracle.truffle.api.dsl.test.GuardsTest.GuardWithObject;
import com.oracle.truffle.api.dsl.test.GuardsTest.InvocationGuard;
import com.oracle.truffle.api.dsl.test.GuardsTest.TestGuardResolve1;
import com.oracle.truffle.api.dsl.test.GuardsTest.TestGuardResolve2;
import com.oracle.truffle.api.dsl.test.GuardsTest.TestGuardResolve3;
import com.oracle.truffle.api.dsl.test.NodeContainerTest.Str;
import com.oracle.truffle.api.dsl.test.TypeSystemTest.ValueNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(GuardsTest.class)
public final class GuardsTestFactory {

    private GuardsTestFactory() {
    }

    public static List<NodeFactory<? extends ValueNode>> getFactories() {
        return asList(InvocationGuardFactory.getInstance(), GlobalFlagGuardFactory.getInstance(), GuardWithBaseClassFactory.getInstance(), GuardWithBaseInterfaceFactory.getInstance(),
                    GuardWithBoxedPrimitiveFactory.getInstance(), GuardWithObjectFactory.getInstance(), TestGuardResolve1Factory.getInstance(), TestGuardResolve2Factory.getInstance(), TestGuardResolve3Factory.getInstance());
    }

    @GeneratedBy(InvocationGuard.class)
    public static final class InvocationGuardFactory implements NodeFactory<InvocationGuard> {

        private static InvocationGuardFactory invocationGuardFactoryInstance;

        private InvocationGuardFactory() {
        }

        @Override
        public InvocationGuard createNode(Object... arguments) {
            if (arguments.length == 2 && (arguments[0] == null || arguments[0] instanceof ValueNode) && (arguments[1] == null || arguments[1] instanceof ValueNode)) {
                return create((ValueNode) arguments[0], (ValueNode) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public InvocationGuard createNodeGeneric(InvocationGuard thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<InvocationGuard> getNodeClass() {
            return InvocationGuard.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class, ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class, ValueNode.class);
        }

        public static InvocationGuard createGeneric(InvocationGuard thisNode) {
            return new InvocationGuardGenericNode((InvocationGuardBaseNode) thisNode);
        }

        public static InvocationGuard create(ValueNode value0, ValueNode value1) {
            return new InvocationGuardUninitializedNode(value0, value1);
        }

        public static NodeFactory<InvocationGuard> getInstance() {
            if (invocationGuardFactoryInstance == null) {
                invocationGuardFactoryInstance = new InvocationGuardFactory();
            }
            return invocationGuardFactoryInstance;
        }

        @GeneratedBy(InvocationGuard.class)
        private abstract static class InvocationGuardBaseNode extends InvocationGuard {

            @Child protected ValueNode value0;
            @Child protected ValueNode value1;

            InvocationGuardBaseNode(ValueNode value0, ValueNode value1) {
                super();
                this.value0 = adoptChild(value0);
                this.value1 = adoptChild(value1);
            }

            InvocationGuardBaseNode(InvocationGuardBaseNode copy) {
                this.value0 = adoptChild(copy.value0);
                this.value1 = adoptChild(copy.value1);
            }

            @SuppressWarnings("unused")
            protected int executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object value0Value, Object value1Value, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, value0Value, value1Value);
                if (minimumState < 1 && SIMPLETYPES.isInteger(value0Value) && SIMPLETYPES.isInteger(value1Value)) {
                    int value0ValueCast = SIMPLETYPES.asInteger(value0Value);
                    int value1ValueCast = SIMPLETYPES.asInteger(value1Value);
                    if (super.guard(value0ValueCast, value1ValueCast)) {
                        return this.replace(new InvocationGuardIntNode(this), message).doSpecialized(value0ValueCast, value1ValueCast);
                    }
                }
                return this.replace(new InvocationGuardGenericNode(this), message).executeGeneric0(value0Value, value1Value);
            }

            @SlowPath
            protected int executeGeneric0(Object value0Value, Object value1Value) {
                if (SIMPLETYPES.isInteger(value0Value) && SIMPLETYPES.isInteger(value1Value)) {
                    int value0ValueCast = SIMPLETYPES.asInteger(value0Value);
                    int value1ValueCast = SIMPLETYPES.asInteger(value1Value);
                    if (super.guard(value0ValueCast, value1ValueCast)) {
                        return super.doSpecialized(value0ValueCast, value1ValueCast);
                    }
                }
                return super.doGeneric(value0Value, value1Value);
            }

            protected static String createInfo0(String message, Object value0Value, Object value1Value) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("value0Value").append(" = ").append(value0Value);
                    if (value0Value != null) {
                        builder.append(" (").append(value0Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(", ").append("value1Value").append(" = ").append(value1Value);
                    if (value1Value != null) {
                        builder.append(" (").append(value1Value.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(InvocationGuard.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class InvocationGuardUninitializedNode extends InvocationGuardBaseNode {

            InvocationGuardUninitializedNode(ValueNode value0, ValueNode value1) {
                super(value0, value1);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                transferToInterpreter();
                Object value0Value = this.value0.execute(frameValue);
                Object value1Value = this.value1.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, value0Value, value1Value, "Uninitialized monomorphic");
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
        @GeneratedBy(InvocationGuard.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class InvocationGuardIntNode extends InvocationGuardBaseNode {

            InvocationGuardIntNode(InvocationGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int value0Value;
                try {
                    value0Value = this.value0.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    Object value1Value = this.value1.execute(frameValue);
                    return executeAndSpecialize0(1, frameValue, ex.getResult(), value1Value, "Expected value0Value instanceof int");
                }
                int value1Value;
                try {
                    value1Value = this.value1.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return executeAndSpecialize0(1, frameValue, value0Value, ex.getResult(), "Expected value1Value instanceof int");
                }
                if (super.guard(value0Value, value1Value)) {
                    return super.doSpecialized(value0Value, value1Value);
                }
                transferToInterpreter();
                return executeAndSpecialize0(1, frameValue, value0Value, value1Value, "One of guards [guard] failed");
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
        @GeneratedBy(InvocationGuard.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class InvocationGuardGenericNode extends InvocationGuardBaseNode {

            InvocationGuardGenericNode(InvocationGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Object value0Value = this.value0.execute(frameValue);
                Object value1Value = this.value1.execute(frameValue);
                return super.executeGeneric0(value0Value, value1Value);
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
    @GeneratedBy(GlobalFlagGuard.class)
    public static final class GlobalFlagGuardFactory implements NodeFactory<GlobalFlagGuard> {

        private static GlobalFlagGuardFactory globalFlagGuardFactoryInstance;

        private GlobalFlagGuardFactory() {
        }

        @Override
        public GlobalFlagGuard createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public GlobalFlagGuard createNodeGeneric(GlobalFlagGuard thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<GlobalFlagGuard> getNodeClass() {
            return GlobalFlagGuard.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static GlobalFlagGuard createGeneric(GlobalFlagGuard thisNode) {
            return new GlobalFlagGuardGenericNode((GlobalFlagGuardBaseNode) thisNode);
        }

        public static GlobalFlagGuard create(ValueNode expression) {
            return new GlobalFlagGuardUninitializedNode(expression);
        }

        public static NodeFactory<GlobalFlagGuard> getInstance() {
            if (globalFlagGuardFactoryInstance == null) {
                globalFlagGuardFactoryInstance = new GlobalFlagGuardFactory();
            }
            return globalFlagGuardFactoryInstance;
        }

        @GeneratedBy(GlobalFlagGuard.class)
        private abstract static class GlobalFlagGuardBaseNode extends GlobalFlagGuard {

            @Child protected ValueNode expression;

            GlobalFlagGuardBaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            GlobalFlagGuardBaseNode(GlobalFlagGuardBaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected int executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && super.globalFlagGuard()) {
                    return this.replace(new GlobalFlagGuardObjectNode(this), message).doSpecialized(expressionValue);
                }
                return this.replace(new GlobalFlagGuardGenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected int executeGeneric0(Object expressionValue) {
                if (super.globalFlagGuard()) {
                    return super.doSpecialized(expressionValue);
                }
                return super.doGeneric(expressionValue);
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(GlobalFlagGuard.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class GlobalFlagGuardUninitializedNode extends GlobalFlagGuardBaseNode {

            GlobalFlagGuardUninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
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
        @GeneratedBy(GlobalFlagGuard.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class GlobalFlagGuardObjectNode extends GlobalFlagGuardBaseNode {

            GlobalFlagGuardObjectNode(GlobalFlagGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Object expressionValue = this.expression.execute(frameValue);
                if (super.globalFlagGuard()) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [globalFlagGuard] failed");
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
        @GeneratedBy(GlobalFlagGuard.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class GlobalFlagGuardGenericNode extends GlobalFlagGuardBaseNode {

            GlobalFlagGuardGenericNode(GlobalFlagGuardBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
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
    @GeneratedBy(GuardWithBaseClass.class)
    public static final class GuardWithBaseClassFactory implements NodeFactory<GuardWithBaseClass> {

        private static GuardWithBaseClassFactory guardWithBaseClassFactoryInstance;

        private GuardWithBaseClassFactory() {
        }

        @Override
        public GuardWithBaseClass createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public GuardWithBaseClass createNodeGeneric(GuardWithBaseClass thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<GuardWithBaseClass> getNodeClass() {
            return GuardWithBaseClass.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static GuardWithBaseClass createGeneric(GuardWithBaseClass thisNode) {
            return new GuardWithBaseClassGenericNode((GuardWithBaseClassBaseNode) thisNode);
        }

        public static GuardWithBaseClass create(ValueNode expression) {
            return new GuardWithBaseClassUninitializedNode(expression);
        }

        public static NodeFactory<GuardWithBaseClass> getInstance() {
            if (guardWithBaseClassFactoryInstance == null) {
                guardWithBaseClassFactoryInstance = new GuardWithBaseClassFactory();
            }
            return guardWithBaseClassFactoryInstance;
        }

        @GeneratedBy(GuardWithBaseClass.class)
        private abstract static class GuardWithBaseClassBaseNode extends GuardWithBaseClass {

            @Child protected ValueNode expression;

            GuardWithBaseClassBaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            GuardWithBaseClassBaseNode(GuardWithBaseClassBaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return this.replace(new GuardWithBaseClassStrNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new GuardWithBaseClassGenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(GuardWithBaseClass.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class GuardWithBaseClassUninitializedNode extends GuardWithBaseClassBaseNode {

            GuardWithBaseClassUninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(GuardWithBaseClass.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class GuardWithBaseClassStrNode extends GuardWithBaseClassBaseNode {

            GuardWithBaseClassStrNode(GuardWithBaseClassBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Str expressionValue;
                try {
                    expressionValue = this.expression.executeStr(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof Str"));
                }
                if (super.baseGuard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [baseGuard] failed"));
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
        @GeneratedBy(GuardWithBaseClass.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class GuardWithBaseClassGenericNode extends GuardWithBaseClassBaseNode {

            GuardWithBaseClassGenericNode(GuardWithBaseClassBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(GuardWithBaseInterface.class)
    public static final class GuardWithBaseInterfaceFactory implements NodeFactory<GuardWithBaseInterface> {

        private static GuardWithBaseInterfaceFactory guardWithBaseInterfaceFactoryInstance;

        private GuardWithBaseInterfaceFactory() {
        }

        @Override
        public GuardWithBaseInterface createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public GuardWithBaseInterface createNodeGeneric(GuardWithBaseInterface thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<GuardWithBaseInterface> getNodeClass() {
            return GuardWithBaseInterface.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static GuardWithBaseInterface createGeneric(GuardWithBaseInterface thisNode) {
            return new GuardWithBaseInterfaceGenericNode((GuardWithBaseInterfaceBaseNode) thisNode);
        }

        public static GuardWithBaseInterface create(ValueNode expression) {
            return new GuardWithBaseInterfaceUninitializedNode(expression);
        }

        public static NodeFactory<GuardWithBaseInterface> getInstance() {
            if (guardWithBaseInterfaceFactoryInstance == null) {
                guardWithBaseInterfaceFactoryInstance = new GuardWithBaseInterfaceFactory();
            }
            return guardWithBaseInterfaceFactoryInstance;
        }

        @GeneratedBy(GuardWithBaseInterface.class)
        private abstract static class GuardWithBaseInterfaceBaseNode extends GuardWithBaseInterface {

            @Child protected ValueNode expression;

            GuardWithBaseInterfaceBaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            GuardWithBaseInterfaceBaseNode(GuardWithBaseInterfaceBaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isString(expressionValue)) {
                    String expressionValueCast = SIMPLETYPES.asString(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return this.replace(new GuardWithBaseInterfaceStringNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new GuardWithBaseInterfaceGenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isString(expressionValue)) {
                    String expressionValueCast = SIMPLETYPES.asString(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(GuardWithBaseInterface.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class GuardWithBaseInterfaceUninitializedNode extends GuardWithBaseInterfaceBaseNode {

            GuardWithBaseInterfaceUninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(GuardWithBaseInterface.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class GuardWithBaseInterfaceStringNode extends GuardWithBaseInterfaceBaseNode {

            GuardWithBaseInterfaceStringNode(GuardWithBaseInterfaceBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                String expressionValue;
                try {
                    expressionValue = this.expression.executeString(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof String"));
                }
                if (super.baseGuard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [baseGuard] failed"));
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
        @GeneratedBy(GuardWithBaseInterface.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class GuardWithBaseInterfaceGenericNode extends GuardWithBaseInterfaceBaseNode {

            GuardWithBaseInterfaceGenericNode(GuardWithBaseInterfaceBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(GuardWithBoxedPrimitive.class)
    public static final class GuardWithBoxedPrimitiveFactory implements NodeFactory<GuardWithBoxedPrimitive> {

        private static GuardWithBoxedPrimitiveFactory guardWithBoxedPrimitiveFactoryInstance;

        private GuardWithBoxedPrimitiveFactory() {
        }

        @Override
        public GuardWithBoxedPrimitive createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public GuardWithBoxedPrimitive createNodeGeneric(GuardWithBoxedPrimitive thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<GuardWithBoxedPrimitive> getNodeClass() {
            return GuardWithBoxedPrimitive.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static GuardWithBoxedPrimitive createGeneric(GuardWithBoxedPrimitive thisNode) {
            return new GuardWithBoxedPrimitiveGenericNode((GuardWithBoxedPrimitiveBaseNode) thisNode);
        }

        public static GuardWithBoxedPrimitive create(ValueNode expression) {
            return new GuardWithBoxedPrimitiveUninitializedNode(expression);
        }

        public static NodeFactory<GuardWithBoxedPrimitive> getInstance() {
            if (guardWithBoxedPrimitiveFactoryInstance == null) {
                guardWithBoxedPrimitiveFactoryInstance = new GuardWithBoxedPrimitiveFactory();
            }
            return guardWithBoxedPrimitiveFactoryInstance;
        }

        @GeneratedBy(GuardWithBoxedPrimitive.class)
        private abstract static class GuardWithBoxedPrimitiveBaseNode extends GuardWithBoxedPrimitive {

            @Child protected ValueNode expression;

            GuardWithBoxedPrimitiveBaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            GuardWithBoxedPrimitiveBaseNode(GuardWithBoxedPrimitiveBaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return this.replace(new GuardWithBoxedPrimitiveIntNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new GuardWithBoxedPrimitiveGenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.baseGuard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(GuardWithBoxedPrimitive.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class GuardWithBoxedPrimitiveUninitializedNode extends GuardWithBoxedPrimitiveBaseNode {

            GuardWithBoxedPrimitiveUninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(GuardWithBoxedPrimitive.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class GuardWithBoxedPrimitiveIntNode extends GuardWithBoxedPrimitiveBaseNode {

            GuardWithBoxedPrimitiveIntNode(GuardWithBoxedPrimitiveBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int expressionValue;
                try {
                    expressionValue = this.expression.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof int"));
                }
                if (super.baseGuard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [baseGuard] failed"));
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
        @GeneratedBy(GuardWithBoxedPrimitive.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class GuardWithBoxedPrimitiveGenericNode extends GuardWithBoxedPrimitiveBaseNode {

            GuardWithBoxedPrimitiveGenericNode(GuardWithBoxedPrimitiveBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(GuardWithObject.class)
    public static final class GuardWithObjectFactory implements NodeFactory<GuardWithObject> {

        private static GuardWithObjectFactory guardWithObjectFactoryInstance;

        private GuardWithObjectFactory() {
        }

        @Override
        public GuardWithObject createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public GuardWithObject createNodeGeneric(GuardWithObject thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<GuardWithObject> getNodeClass() {
            return GuardWithObject.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static GuardWithObject createGeneric(GuardWithObject thisNode) {
            return new GuardWithObjectGenericNode((GuardWithObjectBaseNode) thisNode);
        }

        public static GuardWithObject create(ValueNode expression) {
            return new GuardWithObjectUninitializedNode(expression);
        }

        public static NodeFactory<GuardWithObject> getInstance() {
            if (guardWithObjectFactoryInstance == null) {
                guardWithObjectFactoryInstance = new GuardWithObjectFactory();
            }
            return guardWithObjectFactoryInstance;
        }

        @GeneratedBy(GuardWithObject.class)
        private abstract static class GuardWithObjectBaseNode extends GuardWithObject {

            @Child protected ValueNode expression;

            GuardWithObjectBaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            GuardWithObjectBaseNode(GuardWithObjectBaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.baseGuard(expressionValue)) {
                        return this.replace(new GuardWithObjectIntNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new GuardWithObjectGenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.baseGuard(expressionValue)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(GuardWithObject.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class GuardWithObjectUninitializedNode extends GuardWithObjectBaseNode {

            GuardWithObjectUninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(GuardWithObject.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class GuardWithObjectIntNode extends GuardWithObjectBaseNode {

            GuardWithObjectIntNode(GuardWithObjectBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int expressionValue;
                try {
                    expressionValue = this.expression.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof int"));
                }
                if (super.baseGuard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [baseGuard] failed"));
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
        @GeneratedBy(GuardWithObject.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class GuardWithObjectGenericNode extends GuardWithObjectBaseNode {

            GuardWithObjectGenericNode(GuardWithObjectBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(TestGuardResolve1.class)
    public static final class TestGuardResolve1Factory implements NodeFactory<TestGuardResolve1> {

        private static TestGuardResolve1Factory testGuardResolve1FactoryInstance;

        private TestGuardResolve1Factory() {
        }

        @Override
        public TestGuardResolve1 createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public TestGuardResolve1 createNodeGeneric(TestGuardResolve1 thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<TestGuardResolve1> getNodeClass() {
            return TestGuardResolve1.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static TestGuardResolve1 createGeneric(TestGuardResolve1 thisNode) {
            return new TestGuardResolve1GenericNode((TestGuardResolve1BaseNode) thisNode);
        }

        public static TestGuardResolve1 create(ValueNode expression) {
            return new TestGuardResolve1UninitializedNode(expression);
        }

        public static NodeFactory<TestGuardResolve1> getInstance() {
            if (testGuardResolve1FactoryInstance == null) {
                testGuardResolve1FactoryInstance = new TestGuardResolve1Factory();
            }
            return testGuardResolve1FactoryInstance;
        }

        @GeneratedBy(TestGuardResolve1.class)
        private abstract static class TestGuardResolve1BaseNode extends TestGuardResolve1 {

            @Child protected ValueNode expression;

            TestGuardResolve1BaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            TestGuardResolve1BaseNode(TestGuardResolve1BaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return this.replace(new TestGuardResolve1IntNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new TestGuardResolve1GenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isInteger(expressionValue)) {
                    int expressionValueCast = SIMPLETYPES.asInteger(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(TestGuardResolve1.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class TestGuardResolve1UninitializedNode extends TestGuardResolve1BaseNode {

            TestGuardResolve1UninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(TestGuardResolve1.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGuardResolve1IntNode extends TestGuardResolve1BaseNode {

            TestGuardResolve1IntNode(TestGuardResolve1BaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                int expressionValue;
                try {
                    expressionValue = this.expression.executeInt(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof int"));
                }
                if (super.guard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [guard] failed"));
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
        @GeneratedBy(TestGuardResolve1.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class TestGuardResolve1GenericNode extends TestGuardResolve1BaseNode {

            TestGuardResolve1GenericNode(TestGuardResolve1BaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(TestGuardResolve2.class)
    public static final class TestGuardResolve2Factory implements NodeFactory<TestGuardResolve2> {

        private static TestGuardResolve2Factory testGuardResolve2FactoryInstance;

        private TestGuardResolve2Factory() {
        }

        @Override
        public TestGuardResolve2 createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public TestGuardResolve2 createNodeGeneric(TestGuardResolve2 thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<TestGuardResolve2> getNodeClass() {
            return TestGuardResolve2.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static TestGuardResolve2 createGeneric(TestGuardResolve2 thisNode) {
            return new TestGuardResolve2GenericNode((TestGuardResolve2BaseNode) thisNode);
        }

        public static TestGuardResolve2 create(ValueNode expression) {
            return new TestGuardResolve2UninitializedNode(expression);
        }

        public static NodeFactory<TestGuardResolve2> getInstance() {
            if (testGuardResolve2FactoryInstance == null) {
                testGuardResolve2FactoryInstance = new TestGuardResolve2Factory();
            }
            return testGuardResolve2FactoryInstance;
        }

        @GeneratedBy(TestGuardResolve2.class)
        private abstract static class TestGuardResolve2BaseNode extends TestGuardResolve2 {

            @Child protected ValueNode expression;

            TestGuardResolve2BaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            TestGuardResolve2BaseNode(TestGuardResolve2BaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return this.replace(new TestGuardResolve2StrNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new TestGuardResolve2GenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(TestGuardResolve2.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class TestGuardResolve2UninitializedNode extends TestGuardResolve2BaseNode {

            TestGuardResolve2UninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(TestGuardResolve2.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGuardResolve2StrNode extends TestGuardResolve2BaseNode {

            TestGuardResolve2StrNode(TestGuardResolve2BaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Str expressionValue;
                try {
                    expressionValue = this.expression.executeStr(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof Str"));
                }
                if (super.guard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [guard] failed"));
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
        @GeneratedBy(TestGuardResolve2.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class TestGuardResolve2GenericNode extends TestGuardResolve2BaseNode {

            TestGuardResolve2GenericNode(TestGuardResolve2BaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
    @GeneratedBy(TestGuardResolve3.class)
    public static final class TestGuardResolve3Factory implements NodeFactory<TestGuardResolve3> {

        private static TestGuardResolve3Factory testGuardResolve3FactoryInstance;

        private TestGuardResolve3Factory() {
        }

        @Override
        public TestGuardResolve3 createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof ValueNode)) {
                return create((ValueNode) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public TestGuardResolve3 createNodeGeneric(TestGuardResolve3 thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<TestGuardResolve3> getNodeClass() {
            return TestGuardResolve3.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(ValueNode.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList(ValueNode.class);
        }

        public static TestGuardResolve3 createGeneric(TestGuardResolve3 thisNode) {
            return new TestGuardResolve3GenericNode((TestGuardResolve3BaseNode) thisNode);
        }

        public static TestGuardResolve3 create(ValueNode expression) {
            return new TestGuardResolve3UninitializedNode(expression);
        }

        public static NodeFactory<TestGuardResolve3> getInstance() {
            if (testGuardResolve3FactoryInstance == null) {
                testGuardResolve3FactoryInstance = new TestGuardResolve3Factory();
            }
            return testGuardResolve3FactoryInstance;
        }

        @GeneratedBy(TestGuardResolve3.class)
        private abstract static class TestGuardResolve3BaseNode extends TestGuardResolve3 {

            @Child protected ValueNode expression;

            TestGuardResolve3BaseNode(ValueNode expression) {
                super();
                this.expression = adoptChild(expression);
            }

            TestGuardResolve3BaseNode(TestGuardResolve3BaseNode copy) {
                this.expression = adoptChild(copy.expression);
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, Object expressionValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason, expressionValue);
                if (minimumState < 1 && SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return this.replace(new TestGuardResolve3StrNode(this), message).doSpecialized(expressionValueCast);
                    }
                }
                return this.replace(new TestGuardResolve3GenericNode(this), message).executeGeneric0(expressionValue);
            }

            @SlowPath
            protected Object executeGeneric0(Object expressionValue) {
                if (SIMPLETYPES.isStr(expressionValue)) {
                    Str expressionValueCast = SIMPLETYPES.asStr(expressionValue);
                    if (super.guard(expressionValueCast)) {
                        return super.doSpecialized(expressionValueCast);
                    }
                }
                throw new UnsupportedOperationException(createInfo0("Unsupported values", expressionValue));
            }

            protected static String createInfo0(String message, Object expressionValue) {
                if (DetailedRewriteReasons) {
                    StringBuilder builder = new StringBuilder(message);
                    builder.append(" (");
                    builder.append("expressionValue").append(" = ").append(expressionValue);
                    if (expressionValue != null) {
                        builder.append(" (").append(expressionValue.getClass().getSimpleName()).append(")");
                    }
                    builder.append(")");
                    return builder.toString();
                } else {
                    return message;
                }
            }

        }
        @GeneratedBy(TestGuardResolve3.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class TestGuardResolve3UninitializedNode extends TestGuardResolve3BaseNode {

            TestGuardResolve3UninitializedNode(ValueNode expression) {
                super(expression);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeAndSpecialize0(0, frameValue, expressionValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(TestGuardResolve3.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class TestGuardResolve3StrNode extends TestGuardResolve3BaseNode {

            TestGuardResolve3StrNode(TestGuardResolve3BaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                Str expressionValue;
                try {
                    expressionValue = this.expression.executeStr(frameValue);
                } catch (UnexpectedResultException ex) {
                    transferToInterpreter();
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, ex.getResult(), "Expected expressionValue instanceof Str"));
                }
                if (super.guard(expressionValue)) {
                    return super.doSpecialized(expressionValue);
                }
                transferToInterpreter();
                return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, expressionValue, "One of guards [guard] failed"));
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
        @GeneratedBy(TestGuardResolve3.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class TestGuardResolve3GenericNode extends TestGuardResolve3BaseNode {

            TestGuardResolve3GenericNode(TestGuardResolve3BaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                Object expressionValue = this.expression.execute(frameValue);
                return super.executeGeneric0(expressionValue);
            }

        }
    }
}

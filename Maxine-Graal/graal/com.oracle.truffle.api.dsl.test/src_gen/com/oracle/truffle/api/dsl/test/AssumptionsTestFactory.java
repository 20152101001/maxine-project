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
import com.oracle.truffle.api.dsl.test.AssumptionsTest.DerivedAssumptionNode;
import com.oracle.truffle.api.dsl.test.AssumptionsTest.DerivedAssumptionRedeclaredNode;
import com.oracle.truffle.api.dsl.test.AssumptionsTest.MultipleAssumptionsNode;
import com.oracle.truffle.api.dsl.test.AssumptionsTest.SingleAssumptionNode;
import com.oracle.truffle.api.dsl.test.TypeSystemTest.ValueNode;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.InvalidAssumptionException;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.NodeInfo.Kind;
import com.oracle.truffle.api.nodes.UnexpectedResultException;
import java.util.Arrays;
import java.util.List;

@GeneratedBy(AssumptionsTest.class)
public final class AssumptionsTestFactory {

    private AssumptionsTestFactory() {
    }

    public static List<NodeFactory<? extends ValueNode>> getFactories() {
        return asList(SingleAssumptionNodeFactory.getInstance(), MultipleAssumptionsNodeFactory.getInstance(), DerivedAssumptionNodeFactory.getInstance(), DerivedAssumptionRedeclaredNodeFactory.
                    getInstance());
    }

    @GeneratedBy(SingleAssumptionNode.class)
    static final class SingleAssumptionNodeFactory implements NodeFactory<SingleAssumptionNode> {

        private static SingleAssumptionNodeFactory singleAssumptionNodeFactoryInstance;

        private SingleAssumptionNodeFactory() {
        }

        @Override
        public SingleAssumptionNode createNode(Object... arguments) {
            if (arguments.length == 1 && (arguments[0] == null || arguments[0] instanceof Assumption)) {
                return create((Assumption) arguments[0]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public SingleAssumptionNode createNodeGeneric(SingleAssumptionNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<SingleAssumptionNode> getNodeClass() {
            return SingleAssumptionNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(Assumption.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static SingleAssumptionNode createGeneric(SingleAssumptionNode thisNode) {
            return new SingleAssumptionObjectNode((SingleAssumptionBaseNode) thisNode);
        }

        static SingleAssumptionNode create(Assumption assumption) {
            return new SingleAssumptionUninitializedNode(assumption);
        }

        static NodeFactory<SingleAssumptionNode> getInstance() {
            if (singleAssumptionNodeFactoryInstance == null) {
                singleAssumptionNodeFactoryInstance = new SingleAssumptionNodeFactory();
            }
            return singleAssumptionNodeFactoryInstance;
        }

        @GeneratedBy(SingleAssumptionNode.class)
        private abstract static class SingleAssumptionBaseNode extends SingleAssumptionNode {

            final Assumption assumption;

            SingleAssumptionBaseNode(Assumption assumption) {
                super();
                this.assumption = assumption;
            }

            SingleAssumptionBaseNode(SingleAssumptionBaseNode copy) {
                this.assumption = copy.assumption;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 2) {
                    if (minimumState < 1 && this.assumption.isValid()) {
                        return this.replace(new SingleAssumptionIntNode(this), message).doInt();
                    }
                    return this.replace(new SingleAssumptionObjectNode(this), message).doObject();
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
        @GeneratedBy(SingleAssumptionNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class SingleAssumptionUninitializedNode extends SingleAssumptionBaseNode {

            SingleAssumptionUninitializedNode(Assumption assumption) {
                super(assumption);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(SingleAssumptionNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class SingleAssumptionIntNode extends SingleAssumptionBaseNode {

            SingleAssumptionIntNode(SingleAssumptionBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.assumption.check();
                    return super.doInt();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(SingleAssumptionNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class SingleAssumptionObjectNode extends SingleAssumptionBaseNode {

            SingleAssumptionObjectNode(SingleAssumptionBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return super.doObject();
            }

        }
    }
    @GeneratedBy(MultipleAssumptionsNode.class)
    static final class MultipleAssumptionsNodeFactory implements NodeFactory<MultipleAssumptionsNode> {

        private static MultipleAssumptionsNodeFactory multipleAssumptionsNodeFactoryInstance;

        private MultipleAssumptionsNodeFactory() {
        }

        @Override
        public MultipleAssumptionsNode createNode(Object... arguments) {
            if (arguments.length == 2 && (arguments[0] == null || arguments[0] instanceof Assumption) && (arguments[1] == null || arguments[1] instanceof Assumption)) {
                return create((Assumption) arguments[0], (Assumption) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public MultipleAssumptionsNode createNodeGeneric(MultipleAssumptionsNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<MultipleAssumptionsNode> getNodeClass() {
            return MultipleAssumptionsNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(Assumption.class, Assumption.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static MultipleAssumptionsNode createGeneric(MultipleAssumptionsNode thisNode) {
            return new MultipleAssumptionsGenericNode((MultipleAssumptionsBaseNode) thisNode);
        }

        static MultipleAssumptionsNode create(Assumption assumption1, Assumption assumption2) {
            return new MultipleAssumptionsUninitializedNode(assumption1, assumption2);
        }

        static NodeFactory<MultipleAssumptionsNode> getInstance() {
            if (multipleAssumptionsNodeFactoryInstance == null) {
                multipleAssumptionsNodeFactoryInstance = new MultipleAssumptionsNodeFactory();
            }
            return multipleAssumptionsNodeFactoryInstance;
        }

        @GeneratedBy(MultipleAssumptionsNode.class)
        private abstract static class MultipleAssumptionsBaseNode extends MultipleAssumptionsNode {

            final Assumption assumption1;
            final Assumption assumption2;

            MultipleAssumptionsBaseNode(Assumption assumption1, Assumption assumption2) {
                super();
                this.assumption1 = assumption1;
                this.assumption2 = assumption2;
            }

            MultipleAssumptionsBaseNode(MultipleAssumptionsBaseNode copy) {
                this.assumption1 = copy.assumption1;
                this.assumption2 = copy.assumption2;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 2 && this.assumption1.isValid()) {
                    if (minimumState < 1 && this.assumption2.isValid()) {
                        return this.replace(new MultipleAssumptionsIntNode(this), message).doInt();
                    }
                    return this.replace(new MultipleAssumptionsObjectNode(this), message).doObject();
                }
                return this.replace(new MultipleAssumptionsGenericNode(this), message).executeGeneric0();
            }

            @SlowPath
            protected Object executeGeneric0() {
                if (this.assumption1.isValid()) {
                    if (this.assumption2.isValid()) {
                        return super.doInt();
                    }
                    return super.doObject();
                }
                return super.doGeneric();
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
        @GeneratedBy(MultipleAssumptionsNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class MultipleAssumptionsUninitializedNode extends MultipleAssumptionsBaseNode {

            MultipleAssumptionsUninitializedNode(Assumption assumption1, Assumption assumption2) {
                super(assumption1, assumption2);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(MultipleAssumptionsNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class MultipleAssumptionsIntNode extends MultipleAssumptionsBaseNode {

            MultipleAssumptionsIntNode(MultipleAssumptionsBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.assumption1.check();
                    this.assumption2.check();
                    return super.doInt();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(MultipleAssumptionsNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class MultipleAssumptionsObjectNode extends MultipleAssumptionsBaseNode {

            MultipleAssumptionsObjectNode(MultipleAssumptionsBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                try {
                    this.assumption1.check();
                    return super.doObject();
                } catch (InvalidAssumptionException ex) {
                    return executeAndSpecialize0(2, frameValue, "Assumption failed");
                }
            }

        }
        @GeneratedBy(MultipleAssumptionsNode.class)
        @NodeInfo(kind = Kind.GENERIC)
        private static final class MultipleAssumptionsGenericNode extends MultipleAssumptionsBaseNode {

            MultipleAssumptionsGenericNode(MultipleAssumptionsBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return super.executeGeneric0();
            }

        }
    }
    @GeneratedBy(DerivedAssumptionNode.class)
    static final class DerivedAssumptionNodeFactory implements NodeFactory<DerivedAssumptionNode> {

        private static DerivedAssumptionNodeFactory derivedAssumptionNodeFactoryInstance;

        private DerivedAssumptionNodeFactory() {
        }

        @Override
        public DerivedAssumptionNode createNode(Object... arguments) {
            if (arguments.length == 2 && (arguments[0] == null || arguments[0] instanceof Assumption) && (arguments[1] == null || arguments[1] instanceof Assumption)) {
                return create((Assumption) arguments[0], (Assumption) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public DerivedAssumptionNode createNodeGeneric(DerivedAssumptionNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<DerivedAssumptionNode> getNodeClass() {
            return DerivedAssumptionNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(Assumption.class, Assumption.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static DerivedAssumptionNode createGeneric(DerivedAssumptionNode thisNode) {
            return new DerivedAssumptionObjectNode((DerivedAssumptionBaseNode) thisNode);
        }

        static DerivedAssumptionNode create(Assumption assumption, Assumption additionalAssumption) {
            return new DerivedAssumptionUninitializedNode(assumption, additionalAssumption);
        }

        static NodeFactory<DerivedAssumptionNode> getInstance() {
            if (derivedAssumptionNodeFactoryInstance == null) {
                derivedAssumptionNodeFactoryInstance = new DerivedAssumptionNodeFactory();
            }
            return derivedAssumptionNodeFactoryInstance;
        }

        @GeneratedBy(DerivedAssumptionNode.class)
        private abstract static class DerivedAssumptionBaseNode extends DerivedAssumptionNode {

            final Assumption assumption;
            final Assumption additionalAssumption;

            DerivedAssumptionBaseNode(Assumption assumption, Assumption additionalAssumption) {
                super();
                this.assumption = assumption;
                this.additionalAssumption = additionalAssumption;
            }

            DerivedAssumptionBaseNode(DerivedAssumptionBaseNode copy) {
                this.assumption = copy.assumption;
                this.additionalAssumption = copy.additionalAssumption;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 3) {
                    if (minimumState < 1 && this.assumption.isValid()) {
                        return this.replace(new DerivedAssumptionInt0Node(this), message).doInt();
                    }
                    if (minimumState < 2 && this.additionalAssumption.isValid()) {
                        return this.replace(new DerivedAssumptionInt1Node(this), message).doIntDerived();
                    }
                    return this.replace(new DerivedAssumptionObjectNode(this), message).doObject();
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
        @GeneratedBy(DerivedAssumptionNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class DerivedAssumptionUninitializedNode extends DerivedAssumptionBaseNode {

            DerivedAssumptionUninitializedNode(Assumption assumption, Assumption additionalAssumption) {
                super(assumption, additionalAssumption);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(DerivedAssumptionNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionInt0Node extends DerivedAssumptionBaseNode {

            DerivedAssumptionInt0Node(DerivedAssumptionBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.assumption.check();
                    return super.doInt();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(DerivedAssumptionNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionInt1Node extends DerivedAssumptionBaseNode {

            DerivedAssumptionInt1Node(DerivedAssumptionBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.additionalAssumption.check();
                    return super.doIntDerived();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(2, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(DerivedAssumptionNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionObjectNode extends DerivedAssumptionBaseNode {

            DerivedAssumptionObjectNode(DerivedAssumptionBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return super.doObject();
            }

        }
    }
    @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
    static final class DerivedAssumptionRedeclaredNodeFactory implements NodeFactory<DerivedAssumptionRedeclaredNode> {

        private static DerivedAssumptionRedeclaredNodeFactory derivedAssumptionRedeclaredNodeFactoryInstance;

        private DerivedAssumptionRedeclaredNodeFactory() {
        }

        @Override
        public DerivedAssumptionRedeclaredNode createNode(Object... arguments) {
            if (arguments.length == 2 && (arguments[0] == null || arguments[0] instanceof Assumption) && (arguments[1] == null || arguments[1] instanceof Assumption)) {
                return create((Assumption) arguments[0], (Assumption) arguments[1]);
            } else {
                throw new IllegalArgumentException("Invalid create signature.");
            }
        }

        @Override
        public DerivedAssumptionRedeclaredNode createNodeGeneric(DerivedAssumptionRedeclaredNode thisNode) {
            return createGeneric(thisNode);
        }

        @Override
        public Class<DerivedAssumptionRedeclaredNode> getNodeClass() {
            return DerivedAssumptionRedeclaredNode.class;
        }

        @Override
        public List<List<Class<?>>> getNodeSignatures() {
            return asList(Arrays.<Class<?>>asList(Assumption.class, Assumption.class));
        }

        @Override
        public List<Class<? extends Node>> getExecutionSignature() {
            return Arrays.<Class<? extends Node>>asList();
        }

        static DerivedAssumptionRedeclaredNode createGeneric(DerivedAssumptionRedeclaredNode thisNode) {
            return new DerivedAssumptionRedeclaredObjectNode((DerivedAssumptionRedeclaredBaseNode) thisNode);
        }

        static DerivedAssumptionRedeclaredNode create(Assumption additionalAssumption, Assumption assumption) {
            return new DerivedAssumptionRedeclaredUninitializedNode(additionalAssumption, assumption);
        }

        static NodeFactory<DerivedAssumptionRedeclaredNode> getInstance() {
            if (derivedAssumptionRedeclaredNodeFactoryInstance == null) {
                derivedAssumptionRedeclaredNodeFactoryInstance = new DerivedAssumptionRedeclaredNodeFactory();
            }
            return derivedAssumptionRedeclaredNodeFactoryInstance;
        }

        @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
        private abstract static class DerivedAssumptionRedeclaredBaseNode extends DerivedAssumptionRedeclaredNode {

            final Assumption additionalAssumption;
            final Assumption assumption;

            DerivedAssumptionRedeclaredBaseNode(Assumption additionalAssumption, Assumption assumption) {
                super();
                this.additionalAssumption = additionalAssumption;
                this.assumption = assumption;
            }

            DerivedAssumptionRedeclaredBaseNode(DerivedAssumptionRedeclaredBaseNode copy) {
                this.additionalAssumption = copy.additionalAssumption;
                this.assumption = copy.assumption;
            }

            @SuppressWarnings("unused")
            protected Object executeAndSpecialize0(int minimumState, VirtualFrame frameValue, String reason) {
                neverPartOfCompilation();
                String message = createInfo0(reason);
                if (minimumState < 3) {
                    if (minimumState < 1 && this.assumption.isValid()) {
                        return this.replace(new DerivedAssumptionRedeclaredInt0Node(this), message).doInt();
                    }
                    if (minimumState < 2 && this.additionalAssumption.isValid()) {
                        return this.replace(new DerivedAssumptionRedeclaredInt1Node(this), message).doIntDerived();
                    }
                    return this.replace(new DerivedAssumptionRedeclaredObjectNode(this), message).doObject();
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
        @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
        @NodeInfo(kind = Kind.UNINITIALIZED)
        private static final class DerivedAssumptionRedeclaredUninitializedNode extends DerivedAssumptionRedeclaredBaseNode {

            DerivedAssumptionRedeclaredUninitializedNode(Assumption additionalAssumption, Assumption assumption) {
                super(additionalAssumption, assumption);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                transferToInterpreter();
                return super.executeAndSpecialize0(0, frameValue, "Uninitialized monomorphic");
            }

        }
        @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionRedeclaredInt0Node extends DerivedAssumptionRedeclaredBaseNode {

            DerivedAssumptionRedeclaredInt0Node(DerivedAssumptionRedeclaredBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.assumption.check();
                    return super.doInt();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(1, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionRedeclaredInt1Node extends DerivedAssumptionRedeclaredBaseNode {

            DerivedAssumptionRedeclaredInt1Node(DerivedAssumptionRedeclaredBaseNode copy) {
                super(copy);
            }

            @Override
            public int executeInt(VirtualFrame frameValue) throws UnexpectedResultException {
                try {
                    this.additionalAssumption.check();
                    return super.doIntDerived();
                } catch (InvalidAssumptionException ex) {
                    return SIMPLETYPES.expectInteger(executeAndSpecialize0(2, frameValue, "Assumption failed"));
                }
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
        @GeneratedBy(DerivedAssumptionRedeclaredNode.class)
        @NodeInfo(kind = Kind.SPECIALIZED)
        private static final class DerivedAssumptionRedeclaredObjectNode extends DerivedAssumptionRedeclaredBaseNode {

            DerivedAssumptionRedeclaredObjectNode(DerivedAssumptionRedeclaredBaseNode copy) {
                super(copy);
            }

            @Override
            public Object execute(VirtualFrame frameValue) {
                return super.doObject();
            }

        }
    }
}

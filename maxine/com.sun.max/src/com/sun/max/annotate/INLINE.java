/*
 * Copyright (c) 2007, 2012, Oracle and/or its affiliates. All rights reserved.
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
package com.sun.max.annotate;
import java.lang.annotation.*;

/**
 * Every thus annotated method is to be inlined unconditionally by the VM's optimizing compiler
 * and the receiver is never null-checked.
 *
 * This annotation exists primarily for annotating methods that <b>must</b> be inlined
 * for semantic reasons as opposed to those that could be inlined for performance reasons,
 * primarily operations on {@link Word} subtypes.
 *
 * Using this annotation for performance reasons should be done very rarely and only when
 * profiling highlights a performance bottleneck or such a bottleneck is known <i>a priori</i>.
 *
 * Before checking for this annotation at a call site, the compiler should apply
 * devirtualization first (if applicable). The result of this step is then checked
 * for the annotation. As such, one should always check the compiler output to
 * ensure applying this annotation to a virtual method does what was expected.
 *
 * Historical note. The advice regarding performance inlining has tended to be
 * ignored, There are situations, depending on the compiler in use, and limitations
 * in the devirtualization support, where the annotation is ignored by the compiler. Since the
 * boot image builder checks that there are no calls to {@code INLINE} methods,
 * this can be a problem. As a workaround, the {@link #must()} can be set to {code false}
 * in such cases.
 *
 * Note also the fact that the receiver is never null-checked. This is an important performance
 * optimization for the VM code but it may not be appropriate in all contexts even in the
 * VM code; in particular it violates the JVM specification.
 *
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface INLINE {
    boolean must() default true;
}

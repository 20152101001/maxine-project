/*
 * Copyright (c) 2011, 2013, Oracle and/or its affiliates. All rights reserved.
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
package com.oracle.graal.phases;

import com.oracle.graal.debug.*;
import com.oracle.graal.nodes.*;

/**
 * Base class for all compiler phases. Subclasses should be stateless. There will be one global
 * instance for each compiler phase that is shared for all compilations. VM-, target- and
 * compilation-specific data can be passed with a context object.
 */
public abstract class BasePhase<C> {

    private String name;
    private static final DebugMetric metricPhaseRuns = Debug.metric("Runs");
    protected static final DebugMetric METRIC_PROCESSED_NODES = Debug.metric("ProcessedNodes");

    protected BasePhase() {
        this.name = this.getClass().getSimpleName();
        if (name.endsWith("Phase")) {
            name = name.substring(0, name.length() - "Phase".length());
        }
    }

    protected BasePhase(String name) {
        this.name = name;
    }

    protected String getDetailedName() {
        return getName();
    }

    public final void apply(final StructuredGraph graph, final C context) {
        apply(graph, context, true);
    }

    public final void apply(final StructuredGraph graph, final C context, final boolean dumpGraph) {
        Debug.scope(name, this, new Runnable() {

            public void run() {
                BasePhase.this.run(graph, context);
                metricPhaseRuns.increment();
                if (dumpGraph) {
                    Debug.dump(graph, "After phase %s", name);
                }
                assert graph.verify();
            }
        });
    }

    public final String getName() {
        return name;
    }

    protected abstract void run(StructuredGraph graph, C context);
}

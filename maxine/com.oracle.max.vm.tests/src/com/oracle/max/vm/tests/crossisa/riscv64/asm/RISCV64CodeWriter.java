/*
 * Copyright (c) 2018, APT Group, School of Computer Science,
 * The University of Manchester. All rights reserved.
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
 */
package com.oracle.max.vm.tests.crossisa.riscv64.asm;

import java.io.*;

import com.oracle.max.asm.*;

public class RISCV64CodeWriter {

    public static boolean debug = false;
    private int[] instructions;
    private byte[] byteVersion;
    private int totalInstructions;

    public RISCV64CodeWriter(Buffer codeBuffer) {
        totalInstructions = codeBuffer.position() / 4;
        byteVersion = null;
        instructions = new int[totalInstructions];
        for (int j = 0; j < totalInstructions; j++) {
            instructions[j] = codeBuffer.getInt(j * 4);
        }
    }

    public RISCV64CodeWriter(byte[] codeBuffer) {
        totalInstructions = codeBuffer.length / 4;
        instructions = null;
        byteVersion = codeBuffer;

    }

    public static void enableDebug() {
        debug = true;
    }

    public static void disableDebug() {
        debug = false;
    }

    private void log(String msg) {
        if (debug) {
            System.out.println(msg);
        }
    }

    public static String preAmble(String returnType, String listOfTypes, String listOfValues) {
        String val = new String(returnType + " (*pf)(");
        val += listOfTypes + ") = (" + returnType + "(*)(" + listOfTypes + "))(code);\n";
        val += "print_uart0(\"Changed!\");\n";
        val += "(*pf)(" + listOfValues + ");\n";
        return val;
    }

    public void createStaticCodeStubsFile(String functionPrototype, byte[] stubs, int entryPoint) {
        assert entryPoint > 0 : "Entry point cannot be negative : " + entryPoint
                + " (0x" + Integer.toHexString(entryPoint) + ")";
        assert entryPoint < (stubs.length + 1) * 4 : "Entry point must be within range of codeArray : " + entryPoint
                + " (0x" + Integer.toHexString(entryPoint) + ")";
        try {
            PrintWriter writer = new PrintWriter("codebuffer.c", "UTF-8");
            writer.println("unsigned char codeArray[" + (stubs.length + 1) * 4 + "] __attribute__((aligned(0x1000))) = {");
            for (int i = 0; i < stubs.length; i += 4) {
                writer.println("0x" + Integer.toHexString(stubs[i] & 0xFF) + ", " +
                               "0x" + Integer.toHexString(stubs[i + 1] & 0xFF) + ", " +
                               "0x" + Integer.toHexString(stubs[i + 2] & 0xFF) + ", " +
                               "0x" + Integer.toHexString(stubs[i + 3] & 0xFF) + ",");
            }
            // jalr zero, ra, 0
            writer.println("0x00, 0x00, 0x80, 0x67  };\n");
            writer.println("unsigned char *code = codeArray + " + entryPoint + ";");
            writer.println("void c_entry() {");
            writer.print(functionPrototype);
            writer.println("}");
            writer.close();
        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        }
    }

    public void createCodeFile() {
        createCodeFile(0);
    }

    public void createCodeFile(int numberOfArguments) {
        try {
            PrintWriter writer = new PrintWriter("codebuffer.c", "UTF-8");
            writer.println("unsigned char code[" + ((totalInstructions + 1) * 4) + "] __attribute__((aligned(0x1000))) ;\n");
            writer.println("void c_entry() {");
            log("unsigned char code[" + ((totalInstructions + 1) * 4) + "] __attribute__((aligned(0x1000))) ;\n");
            log("void c_entry() {");
            long instruction;
            int val;
            for (int i = 0; i < totalInstructions; i++) {
                instruction = instructions[i];
                val = i * 4;
                writer.println("code[" + val + "] = " + (instruction & 0xff) + ";");
                log("code[" + val + "] = 0x" + Long.toString(instruction & 0xff, 16) + ";");
                val = val + 1;
                writer.println("code[" + val + "] = " + ((instruction >> 8) & 0xff) + ";");
                log("code[" + val + "] = 0x" + Long.toString((instruction >> 8) & 0xff, 16) + ";");
                val = val + 1;
                writer.println("code[" + val + "] = " + ((instruction >> 16) & 0xff) + ";");
                log("code[" + val + "] = 0x" + Long.toString((instruction >> 16) & 0xff, 16) + ";");
                val = val + 1;
                writer.println("code[" + val + "] = " + (instruction >> 24 & 0xff) + ";");
                log("code[" + val + "] = 0x" + Long.toString(instruction >> 24 & 0xff, 16) + ";");
            }
            // jalr zero, ra, 0
            writer.println("code[" + totalInstructions * 4 + "] = " + 0x67 + ";");
            log("code[" + totalInstructions * 4 + "] = " + 0x1e + ";");
            writer.println("code[" + totalInstructions * 4 + "+1] = " + 0x80 + ";");
            log("code[" + totalInstructions * 4 + "+1] = " + 0xff + ";");
            writer.println("code[" + totalInstructions * 4 + "+2] = " + 0x00 + ";");
            log("code[" + totalInstructions * 4 + "+2] = " + 0x2f + ";");
            writer.println("code[" + totalInstructions * 4 + "+3] = " + 0x00 + ";");
            log("code[" + totalInstructions * 4 + "+3] = " + 0xe1 + ";");
            String preAmble = preAmble("void", "int", String.valueOf(numberOfArguments));
            writer.print(preAmble);
            log(preAmble);
            writer.println("}");
            log("}");
            writer.close();
        } catch (Exception e) {
            System.err.println(e);
            e.printStackTrace();
        }
    }
}

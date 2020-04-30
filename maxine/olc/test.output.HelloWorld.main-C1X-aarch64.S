0x0:	f81f0ffe 	str	x30, [sp, #-16]!
0x4:	94000000 	bl	0x4
0x8:	f81f0ffe 	str	x30, [sp, #-16]!
0xc:	d10083ff 	sub	sp, sp, #0x20
0x10:	5283fc10 	mov	w16, #0x1fe0                	// #8160
0x14:	72a00010 	movk	w16, #0x0, lsl #16
0x18:	cb3063f0 	sub	x16, sp, x16
0x1c:	f9000200 	str	x0, [x16]
0x20:	f80083e0 	stur	x0, [sp, #8]
0x24:	10fffdb0 	adr	x16, 0xffffffffffffffd8
0x28:	d503201f 	nop
0x2c:	d503201f 	nop
0x30:	d503201f 	nop
0x34:	d503201f 	nop
0x38:	d503201f 	nop
0x3c:	f9400201 	ldr	x1, [x16]
0x40:	f8418022 	ldur	x2, [x1, #24]
0x44:	10fffcf0 	adr	x16, 0xffffffffffffffe0
0x48:	d503201f 	nop
0x4c:	d503201f 	nop
0x50:	d503201f 	nop
0x54:	d503201f 	nop
0x58:	d503201f 	nop
0x5c:	f9400201 	ldr	x1, [x16]
0x60:	f9400043 	ldr	x3, [x2]
0x64:	d2803211 	mov	x17, #0x190                 	// #400
0x68:	f8716864 	ldr	x4, [x3, x17]
0x6c:	aa1f0040 	orr	x0, x2, xzr
0x70:	d63f0080 	blr	x4
0x74:	d503201f 	nop
0x78:	910083ff 	add	sp, sp, #0x20
0x7c:	f84107fe 	ldr	x30, [sp], #16
0x80:	d65f03c0 	ret
0x84:	d503201f 	nop
0x88:	d503201f 	nop
0x8c:	d503201f 	nop
0x90:	d503201f 	nop
0x94:	d503201f 	nop
0x98:	d503201f 	nop
0x9c:	d503201f 	nop
0xa0:	d503201f 	nop

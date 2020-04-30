0x0:	f81f0ffe 	str	x30, [sp, #-16]!
0x4:	94000000 	bl	0x4
0x8:	f81f0ffe 	str	x30, [sp, #-16]!
0xc:	d100c3ff 	sub	sp, sp, #0x30
0x10:	5283fa10 	mov	w16, #0x1fd0                	// #8144
0x14:	72a00010 	movk	w16, #0x0, lsl #16
0x18:	cb3063f0 	sub	x16, sp, x16
0x1c:	f9000200 	str	x0, [x16]
0x20:	f80183e0 	stur	x0, [sp, #24]
0x24:	10fffd70 	adr	x16, 0xffffffffffffffd0
0x28:	d503201f 	nop
0x2c:	d503201f 	nop
0x30:	d503201f 	nop
0x34:	d503201f 	nop
0x38:	d503201f 	nop
0x3c:	f9400202 	ldr	x2, [x16]
0x40:	f8418041 	ldur	x1, [x2, #24]
0x44:	10fffcb0 	adr	x16, 0xffffffffffffffd8
0x48:	d503201f 	nop
0x4c:	d503201f 	nop
0x50:	d503201f 	nop
0x54:	d503201f 	nop
0x58:	d503201f 	nop
0x5c:	f9400203 	ldr	x3, [x16]
0x60:	f9400024 	ldr	x4, [x1]
0x64:	d2803211 	mov	x17, #0x190                 	// #400
0x68:	f8716885 	ldr	x5, [x4, x17]
0x6c:	aa1f0020 	orr	x0, x1, xzr
0x70:	aa1f0061 	orr	x1, x3, xzr
0x74:	f80103e3 	stur	x3, [sp, #16]
0x78:	f80083e2 	stur	x2, [sp, #8]
0x7c:	d63f00a0 	blr	x5
0x80:	d503201f 	nop
0x84:	10fffaf0 	adr	x16, 0xffffffffffffffe0
0x88:	d503201f 	nop
0x8c:	d503201f 	nop
0x90:	d503201f 	nop
0x94:	d503201f 	nop
0x98:	d503201f 	nop
0x9c:	f9400200 	ldr	x0, [x16]
0xa0:	f8410001 	ldur	x1, [x0, #16]
0xa4:	f9400020 	ldr	x0, [x1]
0xa8:	d2802711 	mov	x17, #0x138                 	// #312
0xac:	f8716802 	ldr	x2, [x0, x17]
0xb0:	aa1f0020 	orr	x0, x1, xzr
0xb4:	d63f0040 	blr	x2
0xb8:	d503201f 	nop
0xbc:	f84083e2 	ldur	x2, [sp, #8]
0xc0:	f8418040 	ldur	x0, [x2, #24]
0xc4:	f9400001 	ldr	x1, [x0]
0xc8:	d2803211 	mov	x17, #0x190                 	// #400
0xcc:	f8716822 	ldr	x2, [x1, x17]
0xd0:	f84103e1 	ldur	x1, [sp, #16]
0xd4:	d63f0040 	blr	x2
0xd8:	d503201f 	nop
0xdc:	9100c3ff 	add	sp, sp, #0x30
0xe0:	f84107fe 	ldr	x30, [sp], #16
0xe4:	d65f03c0 	ret
0xe8:	d503201f 	nop
0xec:	d503201f 	nop
0xf0:	d503201f 	nop
0xf4:	d503201f 	nop
0xf8:	d503201f 	nop
0xfc:	d503201f 	nop
0x100:	d503201f 	nop
0x104:	d503201f 	nop

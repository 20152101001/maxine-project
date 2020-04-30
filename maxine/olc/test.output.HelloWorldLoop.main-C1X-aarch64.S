0x0:	f81f0ffe 	str	x30, [sp, #-16]!
0x4:	94000000 	bl	0x4
0x8:	f81f0ffe 	str	x30, [sp, #-16]!
0xc:	d100c3ff 	sub	sp, sp, #0x30
0x10:	5283fa10 	mov	w16, #0x1fd0                	// #8144
0x14:	72a00010 	movk	w16, #0x0, lsl #16
0x18:	cb3063f0 	sub	x16, sp, x16
0x1c:	f9000200 	str	x0, [x16]
0x20:	f80103e0 	stur	x0, [sp, #16]
0x24:	10fffdb0 	adr	x16, 0xffffffffffffffd8
0x28:	d503201f 	nop
0x2c:	d503201f 	nop
0x30:	d503201f 	nop
0x34:	d503201f 	nop
0x38:	d503201f 	nop
0x3c:	f9400202 	ldr	x2, [x16]
0x40:	f8418041 	ldur	x1, [x2, #24]
0x44:	10fffcf0 	adr	x16, 0xffffffffffffffe0
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
0x74:	f80083e2 	stur	x2, [sp, #8]
0x78:	d63f00a0 	blr	x5
0x7c:	d503201f 	nop
0x80:	d2800002 	mov	x2, #0x0                   	// #0
0x84:	14000003 	b	0x90
0x88:	11000442 	add	w2, w2, #0x1
0x8c:	f940035a 	ldr	x26, [x26]
0x90:	d2884810 	mov	x16, #0x4240                	// #16960
0x94:	f2a001f0 	movk	x16, #0xf, lsl #16
0x98:	6b10005f 	cmp	w2, w16
0x9c:	54ffff6b 	b.lt	0x88  // b.tstop
0xa0:	f84083e0 	ldur	x0, [sp, #8]
0xa4:	f8418001 	ldur	x1, [x0, #24]
0xa8:	f9400020 	ldr	x0, [x1]
0xac:	d2802d11 	mov	x17, #0x168                 	// #360
0xb0:	f8716804 	ldr	x4, [x0, x17]
0xb4:	aa1f0020 	orr	x0, x1, xzr
0xb8:	aa1f0041 	orr	x1, x2, xzr
0xbc:	b80183e2 	stur	w2, [sp, #24]
0xc0:	d63f0080 	blr	x4
0xc4:	d503201f 	nop
0xc8:	9100c3ff 	add	sp, sp, #0x30
0xcc:	f84107fe 	ldr	x30, [sp], #16
0xd0:	d65f03c0 	ret
0xd4:	d503201f 	nop
0xd8:	d503201f 	nop
0xdc:	d503201f 	nop
0xe0:	d503201f 	nop
0xe4:	d503201f 	nop
0xe8:	d503201f 	nop
0xec:	d503201f 	nop
0xf0:	d503201f 	nop

0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 80 00 00          	enterq $0x80,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 88 e0 ff 	mov    %rax,-0x1f78(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 21 ff ff ff 	mov    %r11,-0xdf(%rip)        # 0xffffff48
0x27:	48 8b 3d 22 ff ff ff 	mov    -0xde(%rip),%rdi        # 0xffffff50
0x2e:	48 63 77 30          	movslq 0x30(%rdi),%rsi
0x32:	83 ee 01             	sub    $0x1,%esi
0x35:	40 89 77 30          	rex mov %esi,0x30(%rdi)
0x39:	83 fe 00             	cmp    $0x0,%esi
0x3c:	0f 8f 11 00 00 00    	jg     0x53
0x42:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
0x49:	00 00 00 
0x4c:	90                   	nop
0x4d:	e8 00 00 00 00       	callq  0x52
0x52:	90                   	nop
0x53:	41 bb f4 01 00 00    	mov    $0x1f4,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7d:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x81:	89 04 24             	mov    %eax,(%rsp)
0x84:	44 8b 1c 24          	mov    (%rsp),%r11d
0x88:	b8 00 00 00 00       	mov    $0x0,%eax
0x8d:	48 83 c4 10          	add    $0x10,%rsp
0x91:	44 3b d8             	cmp    %eax,%r11d
0x94:	7f 33                	jg     0xc9
0x96:	48 8b 3d bb fe ff ff 	mov    -0x145(%rip),%rdi        # 0xffffff58
0x9d:	be 00 00 00 00       	mov    $0x0,%esi
0xa2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6:	48 8b c8             	mov    %rax,%rcx
0xa9:	48 63 f6             	movslq %esi,%rsi
0xac:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb7:	0f 8d 07 00 00 00    	jge    0xc4
0xbd:	83 c1 01             	add    $0x1,%ecx
0xc0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc4:	e9 99 00 00 00       	jmpq   0x162
0xc9:	48 8b 3d 90 fe ff ff 	mov    -0x170(%rip),%rdi        # 0xffffff60
0xd0:	be 01 00 00 00       	mov    $0x1,%esi
0xd5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xd9:	48 8b c8             	mov    %rax,%rcx
0xdc:	48 63 f6             	movslq %esi,%rsi
0xdf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xea:	0f 8d 07 00 00 00    	jge    0xf7
0xf0:	83 c1 01             	add    $0x1,%ecx
0xf3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf7:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xfb:	48 83 ec 10          	sub    $0x10,%rsp
0xff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x103:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x109:	48 83 ec 10          	sub    $0x10,%rsp
0x10d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x111:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x116:	40 8b 34 24          	rex mov (%rsp),%esi
0x11a:	48 8b c7             	mov    %rdi,%rax
0x11d:	48 63 40 10          	movslq 0x10(%rax),%rax
0x121:	3b f0                	cmp    %eax,%esi
0x123:	0f 82 0f 00 00 00    	jb     0x138
0x129:	e8 00 00 00 00       	callq  0x12e
0x12e:	90                   	nop
0x12f:	48 8b f8             	mov    %rax,%rdi
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 63 f6             	movslq %esi,%rsi
0x13b:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x140:	48 83 c4 10          	add    $0x10,%rsp
0x144:	48 89 04 24          	mov    %rax,(%rsp)
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	48 83 ec 10          	sub    $0x10,%rsp
0x152:	48 89 04 24          	mov    %rax,(%rsp)
0x156:	44 8b 1c 24          	mov    (%rsp),%r11d
0x15a:	48 83 c4 10          	add    $0x10,%rsp
0x15e:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x162:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x166:	48 83 ec 10          	sub    $0x10,%rsp
0x16a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x16e:	40 8b 34 24          	rex mov (%rsp),%esi
0x172:	48 8b 3d ef fd ff ff 	mov    -0x211(%rip),%rdi        # 0xffffff68
0x179:	83 fe 00             	cmp    $0x0,%esi
0x17c:	0f 8c fb 00 00 00    	jl     0x27d
0x182:	85 07                	test   %eax,(%rdi)
0x184:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x18b:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x18f:	48 8b 3d da fd ff ff 	mov    -0x226(%rip),%rdi        # 0xffffff70
0x196:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x19a:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x19e:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x1a5:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x1a9:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x1ad:	48 63 c0             	movslq %eax,%rax
0x1b0:	48 63 d6             	movslq %esi,%rdx
0x1b3:	48 0f af c2          	imul   %rdx,%rax
0x1b7:	48 83 c0 18          	add    $0x18,%rax
0x1bb:	48 83 c0 07          	add    $0x7,%rax
0x1bf:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x1c6:	00 00 00 
0x1c9:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x1d0:	ff ff ff 
0x1d3:	49 33 d3             	xor    %r11,%rdx
0x1d6:	48 23 c2             	and    %rdx,%rax
0x1d9:	49 8b d6             	mov    %r14,%rdx
0x1dc:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x1e0:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x1e7:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x1ee:	49 8b d0             	mov    %r8,%rdx
0x1f1:	48 03 d0             	add    %rax,%rdx
0x1f4:	4c 8b d2             	mov    %rdx,%r10
0x1f7:	4d 3b d1             	cmp    %r9,%r10
0x1fa:	0f 86 1f 00 00 00    	jbe    0x21f
0x200:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x204:	48 8b f0             	mov    %rax,%rsi
0x207:	48 8b d1             	mov    %rcx,%rdx
0x20a:	49 8b c8             	mov    %r8,%rcx
0x20d:	4d 8b c1             	mov    %r9,%r8
0x210:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x214:	e8 00 00 00 00       	callq  0x219
0x219:	90                   	nop
0x21a:	e9 12 00 00 00       	jmpq   0x231
0x21f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x223:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x227:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x22e:	49 8b c0             	mov    %r8,%rax
0x231:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x235:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x239:	e8 00 00 00 00       	callq  0x23e
0x23e:	90                   	nop
0x23f:	90                   	nop
0x240:	e8 00 00 00 00       	callq  0x245
0x245:	90                   	nop
0x246:	83 f8 00             	cmp    $0x0,%eax
0x249:	0f 84 40 00 00 00    	je     0x28f
0x24f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x253:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x257:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x25b:	85 07                	test   %eax,(%rdi)
0x25d:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x261:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x265:	83 e0 ff             	and    $0xffffffff,%eax
0x268:	48 8b f8             	mov    %rax,%rdi
0x26b:	48 8b f2             	mov    %rdx,%rsi
0x26e:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x272:	e8 00 00 00 00       	callq  0x277
0x277:	90                   	nop
0x278:	e9 12 00 00 00       	jmpq   0x28f
0x27d:	48 8b fe             	mov    %rsi,%rdi
0x280:	e8 00 00 00 00       	callq  0x285
0x285:	90                   	nop
0x286:	48 8b f8             	mov    %rax,%rdi
0x289:	e8 00 00 00 00       	callq  0x28e
0x28e:	90                   	nop
0x28f:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x293:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x297:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x29b:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x29f:	48 89 18             	mov    %rbx,(%rax)
0x2a2:	48 89 04 24          	mov    %rax,(%rsp)
0x2a6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2aa:	48 83 c4 10          	add    $0x10,%rsp
0x2ae:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x2b2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x2b8:	48 83 ec 10          	sub    $0x10,%rsp
0x2bc:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2c0:	44 8b 1c 24          	mov    (%rsp),%r11d
0x2c4:	48 83 c4 10          	add    $0x10,%rsp
0x2c8:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x2cc:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x2d0:	48 83 ec 10          	sub    $0x10,%rsp
0x2d4:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2d8:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x2dc:	48 83 ec 10          	sub    $0x10,%rsp
0x2e0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2e4:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x2e9:	8b 04 24             	mov    (%rsp),%eax
0x2ec:	48 83 c4 20          	add    $0x20,%rsp
0x2f0:	44 3b d8             	cmp    %eax,%r11d
0x2f3:	7c 33                	jl     0x328
0x2f5:	48 8b 3d 7c fc ff ff 	mov    -0x384(%rip),%rdi        # 0xffffff78
0x2fc:	be 04 00 00 00       	mov    $0x4,%esi
0x301:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x305:	48 8b c8             	mov    %rax,%rcx
0x308:	48 63 f6             	movslq %esi,%rsi
0x30b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x310:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x316:	0f 8d 07 00 00 00    	jge    0x323
0x31c:	83 c1 01             	add    $0x1,%ecx
0x31f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x323:	e9 d6 02 00 00       	jmpq   0x5fe
0x328:	48 8b 3d 51 fc ff ff 	mov    -0x3af(%rip),%rdi        # 0xffffff80
0x32f:	be 05 00 00 00       	mov    $0x5,%esi
0x334:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x338:	48 8b c8             	mov    %rax,%rcx
0x33b:	48 63 f6             	movslq %esi,%rsi
0x33e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x343:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x349:	0f 8d 07 00 00 00    	jge    0x356
0x34f:	83 c1 01             	add    $0x1,%ecx
0x352:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x356:	48 8b 3d 2b fc ff ff 	mov    -0x3d5(%rip),%rdi        # 0xffffff88
0x35d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x361:	48 8b 35 28 fc ff ff 	mov    -0x3d8(%rip),%rsi        # 0xffffff90
0x368:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x36c:	49 8b ce             	mov    %r14,%rcx
0x36f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x373:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x37a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x381:	48 8b d9             	mov    %rcx,%rbx
0x384:	48 03 da             	add    %rdx,%rbx
0x387:	4c 8b cb             	mov    %rbx,%r9
0x38a:	4d 3b c8             	cmp    %r8,%r9
0x38d:	0f 86 14 00 00 00    	jbe    0x3a7
0x393:	48 8b fe             	mov    %rsi,%rdi
0x396:	48 8b f2             	mov    %rdx,%rsi
0x399:	48 8b d0             	mov    %rax,%rdx
0x39c:	e8 00 00 00 00       	callq  0x3a1
0x3a1:	90                   	nop
0x3a2:	e9 0a 00 00 00       	jmpq   0x3b1
0x3a7:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x3ae:	48 8b c1             	mov    %rcx,%rax
0x3b1:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3b5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3b9:	90                   	nop
0x3ba:	90                   	nop
0x3bb:	90                   	nop
0x3bc:	e8 00 00 00 00       	callq  0x3c1
0x3c1:	90                   	nop
0x3c2:	90                   	nop
0x3c3:	90                   	nop
0x3c4:	e8 00 00 00 00       	callq  0x3c9
0x3c9:	90                   	nop
0x3ca:	83 f8 00             	cmp    $0x0,%eax
0x3cd:	0f 84 27 00 00 00    	je     0x3fa
0x3d3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3d7:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x3db:	85 06                	test   %eax,(%rsi)
0x3dd:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x3e1:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x3e5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3e9:	83 e2 ff             	and    $0xffffffff,%edx
0x3ec:	48 8b fa             	mov    %rdx,%rdi
0x3ef:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x3f3:	90                   	nop
0x3f4:	e8 00 00 00 00       	callq  0x3f9
0x3f9:	90                   	nop
0x3fa:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3fe:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x402:	48 89 38             	mov    %rdi,(%rax)
0x405:	48 83 ec 10          	sub    $0x10,%rsp
0x409:	48 89 04 24          	mov    %rax,(%rsp)
0x40d:	48 83 ec 10          	sub    $0x10,%rsp
0x411:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x416:	4c 89 1c 24          	mov    %r11,(%rsp)
0x41a:	4d 33 db             	xor    %r11,%r11
0x41d:	48 83 ec 10          	sub    $0x10,%rsp
0x421:	4c 89 1c 24          	mov    %r11,(%rsp)
0x425:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x42a:	41 85 03             	test   %eax,(%r11)
0x42d:	90                   	nop
0x42e:	90                   	nop
0x42f:	90                   	nop
0x430:	e8 00 00 00 00       	callq  0x435
0x435:	90                   	nop
0x436:	4c 8b 1c 24          	mov    (%rsp),%r11
0x43a:	48 83 c4 10          	add    $0x10,%rsp
0x43e:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x442:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x446:	48 83 ec 10          	sub    $0x10,%rsp
0x44a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x44e:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x452:	48 83 ec 10          	sub    $0x10,%rsp
0x456:	44 89 1c 24          	mov    %r11d,(%rsp)
0x45a:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x45e:	48 83 ec 10          	sub    $0x10,%rsp
0x462:	4c 89 1c 24          	mov    %r11,(%rsp)
0x466:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x46b:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x470:	48 8b 14 24          	mov    (%rsp),%rdx
0x474:	48 8b ca             	mov    %rdx,%rcx
0x477:	48 8b c7             	mov    %rdi,%rax
0x47a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x47e:	3b f0                	cmp    %eax,%esi
0x480:	0f 83 b4 00 00 00    	jae    0x53a
0x486:	4d 33 db             	xor    %r11,%r11
0x489:	49 3b cb             	cmp    %r11,%rcx
0x48c:	0f 84 b8 00 00 00    	je     0x54a
0x492:	48 8b c7             	mov    %rdi,%rax
0x495:	48 8b 00             	mov    (%rax),%rax
0x498:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x49c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x4a0:	4d 33 db             	xor    %r11,%r11
0x4a3:	49 3b cb             	cmp    %r11,%rcx
0x4a6:	0f 85 0a 00 00 00    	jne    0x4b6
0x4ac:	bb 00 00 00 00       	mov    $0x0,%ebx
0x4b1:	e9 66 00 00 00       	jmpq   0x51c
0x4b6:	48 8b d1             	mov    %rcx,%rdx
0x4b9:	48 8b 1a             	mov    (%rdx),%rbx
0x4bc:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x4c0:	48 3b d0             	cmp    %rax,%rdx
0x4c3:	0f 85 0a 00 00 00    	jne    0x4d3
0x4c9:	bb 01 00 00 00       	mov    $0x1,%ebx
0x4ce:	e9 49 00 00 00       	jmpq   0x51c
0x4d3:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x4da:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x4de:	49 8b c0             	mov    %r8,%rax
0x4e1:	99                   	cltd   
0x4e2:	41 f7 f9             	idiv   %r9d
0x4e5:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x4e9:	03 d0                	add    %eax,%edx
0x4eb:	48 8b c3             	mov    %rbx,%rax
0x4ee:	48 63 d2             	movslq %edx,%rdx
0x4f1:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x4f6:	48 63 c0             	movslq %eax,%rax
0x4f9:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x4fe:	4d 63 c0             	movslq %r8d,%r8
0x501:	49 3b c0             	cmp    %r8,%rax
0x504:	0f 85 0a 00 00 00    	jne    0x514
0x50a:	b8 01 00 00 00       	mov    $0x1,%eax
0x50f:	e9 05 00 00 00       	jmpq   0x519
0x514:	b8 00 00 00 00       	mov    $0x0,%eax
0x519:	48 8b d8             	mov    %rax,%rbx
0x51c:	83 fb 00             	cmp    $0x0,%ebx
0x51f:	0f 85 25 00 00 00    	jne    0x54a
0x525:	48 8b f1             	mov    %rcx,%rsi
0x528:	90                   	nop
0x529:	90                   	nop
0x52a:	90                   	nop
0x52b:	e8 00 00 00 00       	callq  0x530
0x530:	90                   	nop
0x531:	48 8b f8             	mov    %rax,%rdi
0x534:	e8 00 00 00 00       	callq  0x539
0x539:	90                   	nop
0x53a:	90                   	nop
0x53b:	e8 00 00 00 00       	callq  0x540
0x540:	90                   	nop
0x541:	48 8b f8             	mov    %rax,%rdi
0x544:	e8 00 00 00 00       	callq  0x549
0x549:	90                   	nop
0x54a:	48 63 f6             	movslq %esi,%rsi
0x54d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x552:	48 83 c4 30          	add    $0x30,%rsp
0x556:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x55a:	48 83 ec 10          	sub    $0x10,%rsp
0x55e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x562:	bf 17 00 00 00       	mov    $0x17,%edi
0x567:	48 8b 34 24          	mov    (%rsp),%rsi
0x56b:	48 8b 15 26 fa ff ff 	mov    -0x5da(%rip),%rdx        # 0xffffff98
0x572:	b9 09 00 00 00       	mov    $0x9,%ecx
0x577:	48 8b c6             	mov    %rsi,%rax
0x57a:	48 8b 00             	mov    (%rax),%rax
0x57d:	48 63 ff             	movslq %edi,%rdi
0x580:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x585:	48 8b fa             	mov    %rdx,%rdi
0x588:	48 8b d1             	mov    %rcx,%rdx
0x58b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x590:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x594:	90                   	nop
0x595:	90                   	nop
0x596:	e8 00 00 00 00       	callq  0x59b
0x59b:	90                   	nop
0x59c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5a0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5a4:	48 8b 3c 24          	mov    (%rsp),%rdi
0x5a8:	ff d0                	callq  *%rax
0x5aa:	90                   	nop
0x5ab:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x5af:	41 83 c3 01          	add    $0x1,%r11d
0x5b3:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x5b7:	48 8b 3d e2 f9 ff ff 	mov    -0x61e(%rip),%rdi        # 0xffffffa0
0x5be:	be 11 00 00 00       	mov    $0x11,%esi
0x5c3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5c7:	48 8b c8             	mov    %rax,%rcx
0x5ca:	48 63 f6             	movslq %esi,%rsi
0x5cd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5d2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5d8:	0f 8d 07 00 00 00    	jge    0x5e5
0x5de:	83 c1 01             	add    $0x1,%ecx
0x5e1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5e5:	48 8b 3d bc f9 ff ff 	mov    -0x644(%rip),%rdi        # 0xffffffa8
0x5ec:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x5f0:	83 e8 01             	sub    $0x1,%eax
0x5f3:	89 47 30             	mov    %eax,0x30(%rdi)
0x5f6:	4d 8b 36             	mov    (%r14),%r14
0x5f9:	e9 ce fc ff ff       	jmpq   0x2cc
0x5fe:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x604:	48 83 ec 10          	sub    $0x10,%rsp
0x608:	44 89 1c 24          	mov    %r11d,(%rsp)
0x60c:	44 8b 1c 24          	mov    (%rsp),%r11d
0x610:	48 83 c4 10          	add    $0x10,%rsp
0x614:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x618:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x61c:	48 83 ec 10          	sub    $0x10,%rsp
0x620:	44 89 1c 24          	mov    %r11d,(%rsp)
0x624:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x628:	48 83 ec 10          	sub    $0x10,%rsp
0x62c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x630:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x635:	8b 04 24             	mov    (%rsp),%eax
0x638:	48 83 c4 20          	add    $0x20,%rsp
0x63c:	44 3b d8             	cmp    %eax,%r11d
0x63f:	7c 33                	jl     0x674
0x641:	48 8b 3d 68 f9 ff ff 	mov    -0x698(%rip),%rdi        # 0xffffffb0
0x648:	be 12 00 00 00       	mov    $0x12,%esi
0x64d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x651:	48 8b c8             	mov    %rax,%rcx
0x654:	48 63 f6             	movslq %esi,%rsi
0x657:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x65c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x662:	0f 8d 07 00 00 00    	jge    0x66f
0x668:	83 c1 01             	add    $0x1,%ecx
0x66b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x66f:	e9 e5 00 00 00       	jmpq   0x759
0x674:	48 8b 3d 3d f9 ff ff 	mov    -0x6c3(%rip),%rdi        # 0xffffffb8
0x67b:	be 13 00 00 00       	mov    $0x13,%esi
0x680:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x684:	48 8b c8             	mov    %rax,%rcx
0x687:	48 63 f6             	movslq %esi,%rsi
0x68a:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x68f:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x695:	0f 8d 07 00 00 00    	jge    0x6a2
0x69b:	83 c1 01             	add    $0x1,%ecx
0x69e:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x6a2:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x6a6:	48 83 ec 10          	sub    $0x10,%rsp
0x6aa:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6ae:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x6b2:	48 83 ec 10          	sub    $0x10,%rsp
0x6b6:	44 89 1c 24          	mov    %r11d,(%rsp)
0x6ba:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6bf:	40 8b 34 24          	rex mov (%rsp),%esi
0x6c3:	48 8b c7             	mov    %rdi,%rax
0x6c6:	48 63 40 10          	movslq 0x10(%rax),%rax
0x6ca:	3b f0                	cmp    %eax,%esi
0x6cc:	0f 82 0f 00 00 00    	jb     0x6e1
0x6d2:	e8 00 00 00 00       	callq  0x6d7
0x6d7:	90                   	nop
0x6d8:	48 8b f8             	mov    %rax,%rdi
0x6db:	e8 00 00 00 00       	callq  0x6e0
0x6e0:	90                   	nop
0x6e1:	48 63 f6             	movslq %esi,%rsi
0x6e4:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x6e9:	48 83 c4 10          	add    $0x10,%rsp
0x6ed:	48 89 04 24          	mov    %rax,(%rsp)
0x6f1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6f5:	41 85 03             	test   %eax,(%r11)
0x6f8:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6fc:	90                   	nop
0x6fd:	90                   	nop
0x6fe:	90                   	nop
0x6ff:	90                   	nop
0x700:	e8 00 00 00 00       	callq  0x705
0x705:	90                   	nop
0x706:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x70a:	41 83 c3 01          	add    $0x1,%r11d
0x70e:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x712:	48 8b 3d a7 f8 ff ff 	mov    -0x759(%rip),%rdi        # 0xffffffc0
0x719:	be 16 00 00 00       	mov    $0x16,%esi
0x71e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x722:	48 8b c8             	mov    %rax,%rcx
0x725:	48 63 f6             	movslq %esi,%rsi
0x728:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x72d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x733:	0f 8d 07 00 00 00    	jge    0x740
0x739:	83 c1 01             	add    $0x1,%ecx
0x73c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x740:	48 8b 3d 81 f8 ff ff 	mov    -0x77f(%rip),%rdi        # 0xffffffc8
0x747:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x74b:	83 e8 01             	sub    $0x1,%eax
0x74e:	89 47 30             	mov    %eax,0x30(%rdi)
0x751:	4d 8b 36             	mov    (%r14),%r14
0x754:	e9 bf fe ff ff       	jmpq   0x618
0x759:	48 8b 3d 70 f8 ff ff 	mov    -0x790(%rip),%rdi        # 0xffffffd0
0x760:	be 18 00 00 00       	mov    $0x18,%esi
0x765:	48 63 f6             	movslq %esi,%rsi
0x768:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x76c:	48 83 ec 10          	sub    $0x10,%rsp
0x770:	48 89 04 24          	mov    %rax,(%rsp)
0x774:	4c 8b 1d 5d f8 ff ff 	mov    -0x7a3(%rip),%r11        # 0xffffffd8
0x77b:	48 83 ec 10          	sub    $0x10,%rsp
0x77f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x783:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x788:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x78d:	48 8b 15 4c f8 ff ff 	mov    -0x7b4(%rip),%rdx        # 0xffffffe0
0x794:	b9 18 00 00 00       	mov    $0x18,%ecx
0x799:	48 8b c6             	mov    %rsi,%rax
0x79c:	48 8b 00             	mov    (%rax),%rax
0x79f:	48 63 ff             	movslq %edi,%rdi
0x7a2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7a7:	48 8b fa             	mov    %rdx,%rdi
0x7aa:	48 8b d1             	mov    %rcx,%rdx
0x7ad:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7b2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7b6:	90                   	nop
0x7b7:	90                   	nop
0x7b8:	e8 00 00 00 00       	callq  0x7bd
0x7bd:	90                   	nop
0x7be:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7c2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7c6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7cb:	ff d0                	callq  *%rax
0x7cd:	90                   	nop
0x7ce:	48 83 c5 40          	add    $0x40,%rbp
0x7d2:	c9                   	leaveq 
0x7d3:	c2 10 00             	retq   $0x10

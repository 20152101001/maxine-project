0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 b0 00 00          	enterq $0xb0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 b8 e0 ff 	mov    %rax,-0x1f48(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 39 fe ff ff 	mov    %r11,-0x1c7(%rip)        # 0xfffffe60
0x27:	48 8b 3d 3a fe ff ff 	mov    -0x1c6(%rip),%rdi        # 0xfffffe68
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
0x53:	4c 8b 1d 16 fe ff ff 	mov    -0x1ea(%rip),%r11        # 0xfffffe70
0x5a:	48 83 ec 10          	sub    $0x10,%rsp
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	4c 8b 1c 24          	mov    (%rsp),%r11
0x66:	41 85 03             	test   %eax,(%r11)
0x69:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6d:	90                   	nop
0x6e:	90                   	nop
0x6f:	90                   	nop
0x70:	e8 00 00 00 00       	callq  0x75
0x75:	90                   	nop
0x76:	48 83 ec 10          	sub    $0x10,%rsp
0x7a:	48 89 04 24          	mov    %rax,(%rsp)
0x7e:	40 8b 34 24          	rex mov (%rsp),%esi
0x82:	48 8b 3d ef fd ff ff 	mov    -0x211(%rip),%rdi        # 0xfffffe78
0x89:	83 fe 00             	cmp    $0x0,%esi
0x8c:	0f 8c fb 00 00 00    	jl     0x18d
0x92:	85 07                	test   %eax,(%rdi)
0x94:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x9b:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x9f:	48 8b 3d da fd ff ff 	mov    -0x226(%rip),%rdi        # 0xfffffe80
0xa6:	48 8b 43 30          	mov    0x30(%rbx),%rax
0xaa:	48 8b 50 70          	mov    0x70(%rax),%rdx
0xae:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0xb5:	48 8b 50 48          	mov    0x48(%rax),%rdx
0xb9:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xbd:	48 63 c0             	movslq %eax,%rax
0xc0:	48 63 d6             	movslq %esi,%rdx
0xc3:	48 0f af c2          	imul   %rdx,%rax
0xc7:	48 83 c0 18          	add    $0x18,%rax
0xcb:	48 83 c0 07          	add    $0x7,%rax
0xcf:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xd6:	00 00 00 
0xd9:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0xe0:	ff ff ff 
0xe3:	49 33 d3             	xor    %r11,%rdx
0xe6:	48 23 c2             	and    %rdx,%rax
0xe9:	49 8b d6             	mov    %r14,%rdx
0xec:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0xf0:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0xf7:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0xfe:	49 8b d0             	mov    %r8,%rdx
0x101:	48 03 d0             	add    %rax,%rdx
0x104:	4c 8b d2             	mov    %rdx,%r10
0x107:	4d 3b d1             	cmp    %r9,%r10
0x10a:	0f 86 1f 00 00 00    	jbe    0x12f
0x110:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x114:	48 8b f0             	mov    %rax,%rsi
0x117:	48 8b d1             	mov    %rcx,%rdx
0x11a:	49 8b c8             	mov    %r8,%rcx
0x11d:	4d 8b c1             	mov    %r9,%r8
0x120:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x124:	e8 00 00 00 00       	callq  0x129
0x129:	90                   	nop
0x12a:	e9 12 00 00 00       	jmpq   0x141
0x12f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x133:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x137:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x13e:	49 8b c0             	mov    %r8,%rax
0x141:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x145:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x149:	e8 00 00 00 00       	callq  0x14e
0x14e:	90                   	nop
0x14f:	90                   	nop
0x150:	e8 00 00 00 00       	callq  0x155
0x155:	90                   	nop
0x156:	83 f8 00             	cmp    $0x0,%eax
0x159:	0f 84 40 00 00 00    	je     0x19f
0x15f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x163:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x167:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x16b:	85 07                	test   %eax,(%rdi)
0x16d:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x171:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x175:	83 e0 ff             	and    $0xffffffff,%eax
0x178:	48 8b f8             	mov    %rax,%rdi
0x17b:	48 8b f2             	mov    %rdx,%rsi
0x17e:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x182:	e8 00 00 00 00       	callq  0x187
0x187:	90                   	nop
0x188:	e9 12 00 00 00       	jmpq   0x19f
0x18d:	48 8b fe             	mov    %rsi,%rdi
0x190:	e8 00 00 00 00       	callq  0x195
0x195:	90                   	nop
0x196:	48 8b f8             	mov    %rax,%rdi
0x199:	e8 00 00 00 00       	callq  0x19e
0x19e:	90                   	nop
0x19f:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1a3:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1a7:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x1ab:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x1af:	48 89 18             	mov    %rbx,(%rax)
0x1b2:	48 89 04 24          	mov    %rax,(%rsp)
0x1b6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1ba:	48 83 c4 10          	add    $0x10,%rsp
0x1be:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x1c2:	e8 00 00 00 00       	callq  0x1c7
0x1c7:	90                   	nop
0x1c8:	48 83 ec 10          	sub    $0x10,%rsp
0x1cc:	48 89 04 24          	mov    %rax,(%rsp)
0x1d0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1d4:	48 83 c4 10          	add    $0x10,%rsp
0x1d8:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x1dc:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x1e0:	48 83 ec 10          	sub    $0x10,%rsp
0x1e4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1e8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ec:	4c 8b 1d 95 fc ff ff 	mov    -0x36b(%rip),%r11        # 0xfffffe88
0x1f3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1f7:	4c 8b 1d 92 fc ff ff 	mov    -0x36e(%rip),%r11        # 0xfffffe90
0x1fe:	48 83 ec 10          	sub    $0x10,%rsp
0x202:	4c 89 1c 24          	mov    %r11,(%rsp)
0x206:	48 8b 3d 8b fc ff ff 	mov    -0x375(%rip),%rdi        # 0xfffffe98
0x20d:	be 10 00 00 00       	mov    $0x10,%esi
0x212:	48 63 f6             	movslq %esi,%rsi
0x215:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x219:	48 83 ec 10          	sub    $0x10,%rsp
0x21d:	48 89 04 24          	mov    %rax,(%rsp)
0x221:	48 83 ec 10          	sub    $0x10,%rsp
0x225:	4c 8b 1d 74 fc ff ff 	mov    -0x38c(%rip),%r11        # 0xfffffea0
0x22c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x230:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x236:	48 83 ec 10          	sub    $0x10,%rsp
0x23a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x23e:	40 8b 34 24          	rex mov (%rsp),%esi
0x242:	48 8b 3d 5f fc ff ff 	mov    -0x3a1(%rip),%rdi        # 0xfffffea8
0x249:	83 fe 00             	cmp    $0x0,%esi
0x24c:	0f 8c fb 00 00 00    	jl     0x34d
0x252:	85 07                	test   %eax,(%rdi)
0x254:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x25b:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x25f:	48 8b 3d 4a fc ff ff 	mov    -0x3b6(%rip),%rdi        # 0xfffffeb0
0x266:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x26a:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x26e:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x275:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x279:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x27d:	48 63 c0             	movslq %eax,%rax
0x280:	48 63 d6             	movslq %esi,%rdx
0x283:	48 0f af c2          	imul   %rdx,%rax
0x287:	48 83 c0 18          	add    $0x18,%rax
0x28b:	48 83 c0 07          	add    $0x7,%rax
0x28f:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x296:	00 00 00 
0x299:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x2a0:	ff ff ff 
0x2a3:	49 33 d3             	xor    %r11,%rdx
0x2a6:	48 23 c2             	and    %rdx,%rax
0x2a9:	49 8b d6             	mov    %r14,%rdx
0x2ac:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x2b0:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x2b7:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x2be:	49 8b d0             	mov    %r8,%rdx
0x2c1:	48 03 d0             	add    %rax,%rdx
0x2c4:	4c 8b d2             	mov    %rdx,%r10
0x2c7:	4d 3b d1             	cmp    %r9,%r10
0x2ca:	0f 86 1f 00 00 00    	jbe    0x2ef
0x2d0:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x2d4:	48 8b f0             	mov    %rax,%rsi
0x2d7:	48 8b d1             	mov    %rcx,%rdx
0x2da:	49 8b c8             	mov    %r8,%rcx
0x2dd:	4d 8b c1             	mov    %r9,%r8
0x2e0:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2e4:	e8 00 00 00 00       	callq  0x2e9
0x2e9:	90                   	nop
0x2ea:	e9 12 00 00 00       	jmpq   0x301
0x2ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2f3:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x2f7:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x2fe:	49 8b c0             	mov    %r8,%rax
0x301:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x305:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x309:	e8 00 00 00 00       	callq  0x30e
0x30e:	90                   	nop
0x30f:	90                   	nop
0x310:	e8 00 00 00 00       	callq  0x315
0x315:	90                   	nop
0x316:	83 f8 00             	cmp    $0x0,%eax
0x319:	0f 84 40 00 00 00    	je     0x35f
0x31f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x323:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x327:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x32b:	85 07                	test   %eax,(%rdi)
0x32d:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x331:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x335:	83 e0 ff             	and    $0xffffffff,%eax
0x338:	48 8b f8             	mov    %rax,%rdi
0x33b:	48 8b f2             	mov    %rdx,%rsi
0x33e:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x342:	e8 00 00 00 00       	callq  0x347
0x347:	90                   	nop
0x348:	e9 12 00 00 00       	jmpq   0x35f
0x34d:	48 8b fe             	mov    %rsi,%rdi
0x350:	e8 00 00 00 00       	callq  0x355
0x355:	90                   	nop
0x356:	48 8b f8             	mov    %rax,%rdi
0x359:	e8 00 00 00 00       	callq  0x35e
0x35e:	90                   	nop
0x35f:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x363:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x367:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x36b:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x36f:	48 89 18             	mov    %rbx,(%rax)
0x372:	48 89 04 24          	mov    %rax,(%rsp)
0x376:	48 83 ec 10          	sub    $0x10,%rsp
0x37a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x37f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x383:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x389:	48 83 ec 10          	sub    $0x10,%rsp
0x38d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x391:	48 8b 3d 20 fb ff ff 	mov    -0x4e0(%rip),%rdi        # 0xfffffeb8
0x398:	be 10 00 00 00       	mov    $0x10,%esi
0x39d:	48 63 f6             	movslq %esi,%rsi
0x3a0:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3a4:	48 83 ec 10          	sub    $0x10,%rsp
0x3a8:	48 89 04 24          	mov    %rax,(%rsp)
0x3ac:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x3b1:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x3b6:	48 8b 14 24          	mov    (%rsp),%rdx
0x3ba:	48 8b ca             	mov    %rdx,%rcx
0x3bd:	48 8b c7             	mov    %rdi,%rax
0x3c0:	48 63 40 10          	movslq 0x10(%rax),%rax
0x3c4:	3b f0                	cmp    %eax,%esi
0x3c6:	0f 83 b4 00 00 00    	jae    0x480
0x3cc:	4d 33 db             	xor    %r11,%r11
0x3cf:	49 3b cb             	cmp    %r11,%rcx
0x3d2:	0f 84 b8 00 00 00    	je     0x490
0x3d8:	48 8b c7             	mov    %rdi,%rax
0x3db:	48 8b 00             	mov    (%rax),%rax
0x3de:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x3e2:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x3e6:	4d 33 db             	xor    %r11,%r11
0x3e9:	49 3b cb             	cmp    %r11,%rcx
0x3ec:	0f 85 0a 00 00 00    	jne    0x3fc
0x3f2:	bb 00 00 00 00       	mov    $0x0,%ebx
0x3f7:	e9 66 00 00 00       	jmpq   0x462
0x3fc:	48 8b d1             	mov    %rcx,%rdx
0x3ff:	48 8b 1a             	mov    (%rdx),%rbx
0x402:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x406:	48 3b d0             	cmp    %rax,%rdx
0x409:	0f 85 0a 00 00 00    	jne    0x419
0x40f:	bb 01 00 00 00       	mov    $0x1,%ebx
0x414:	e9 49 00 00 00       	jmpq   0x462
0x419:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x420:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x424:	49 8b c0             	mov    %r8,%rax
0x427:	99                   	cltd   
0x428:	41 f7 f9             	idiv   %r9d
0x42b:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x42f:	03 d0                	add    %eax,%edx
0x431:	48 8b c3             	mov    %rbx,%rax
0x434:	48 63 d2             	movslq %edx,%rdx
0x437:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x43c:	48 63 c0             	movslq %eax,%rax
0x43f:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x444:	4d 63 c0             	movslq %r8d,%r8
0x447:	49 3b c0             	cmp    %r8,%rax
0x44a:	0f 85 0a 00 00 00    	jne    0x45a
0x450:	b8 01 00 00 00       	mov    $0x1,%eax
0x455:	e9 05 00 00 00       	jmpq   0x45f
0x45a:	b8 00 00 00 00       	mov    $0x0,%eax
0x45f:	48 8b d8             	mov    %rax,%rbx
0x462:	83 fb 00             	cmp    $0x0,%ebx
0x465:	0f 85 25 00 00 00    	jne    0x490
0x46b:	48 8b f1             	mov    %rcx,%rsi
0x46e:	90                   	nop
0x46f:	90                   	nop
0x470:	90                   	nop
0x471:	e8 00 00 00 00       	callq  0x476
0x476:	90                   	nop
0x477:	48 8b f8             	mov    %rax,%rdi
0x47a:	e8 00 00 00 00       	callq  0x47f
0x47f:	90                   	nop
0x480:	90                   	nop
0x481:	e8 00 00 00 00       	callq  0x486
0x486:	90                   	nop
0x487:	48 8b f8             	mov    %rax,%rdi
0x48a:	e8 00 00 00 00       	callq  0x48f
0x48f:	90                   	nop
0x490:	48 63 f6             	movslq %esi,%rsi
0x493:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x498:	48 83 c4 30          	add    $0x30,%rsp
0x49c:	48 83 ec 10          	sub    $0x10,%rsp
0x4a0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4a5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4a9:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x4af:	48 83 ec 10          	sub    $0x10,%rsp
0x4b3:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4b7:	48 8b 3d 02 fa ff ff 	mov    -0x5fe(%rip),%rdi        # 0xfffffec0
0x4be:	be 10 00 00 00       	mov    $0x10,%esi
0x4c3:	48 63 f6             	movslq %esi,%rsi
0x4c6:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4ca:	48 83 ec 10          	sub    $0x10,%rsp
0x4ce:	48 89 04 24          	mov    %rax,(%rsp)
0x4d2:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x4d7:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x4dc:	48 8b 14 24          	mov    (%rsp),%rdx
0x4e0:	48 8b ca             	mov    %rdx,%rcx
0x4e3:	48 8b c7             	mov    %rdi,%rax
0x4e6:	48 63 40 10          	movslq 0x10(%rax),%rax
0x4ea:	3b f0                	cmp    %eax,%esi
0x4ec:	0f 83 b4 00 00 00    	jae    0x5a6
0x4f2:	4d 33 db             	xor    %r11,%r11
0x4f5:	49 3b cb             	cmp    %r11,%rcx
0x4f8:	0f 84 b8 00 00 00    	je     0x5b6
0x4fe:	48 8b c7             	mov    %rdi,%rax
0x501:	48 8b 00             	mov    (%rax),%rax
0x504:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x508:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x50c:	4d 33 db             	xor    %r11,%r11
0x50f:	49 3b cb             	cmp    %r11,%rcx
0x512:	0f 85 0a 00 00 00    	jne    0x522
0x518:	bb 00 00 00 00       	mov    $0x0,%ebx
0x51d:	e9 66 00 00 00       	jmpq   0x588
0x522:	48 8b d1             	mov    %rcx,%rdx
0x525:	48 8b 1a             	mov    (%rdx),%rbx
0x528:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x52c:	48 3b d0             	cmp    %rax,%rdx
0x52f:	0f 85 0a 00 00 00    	jne    0x53f
0x535:	bb 01 00 00 00       	mov    $0x1,%ebx
0x53a:	e9 49 00 00 00       	jmpq   0x588
0x53f:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x546:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x54a:	49 8b c0             	mov    %r8,%rax
0x54d:	99                   	cltd   
0x54e:	41 f7 f9             	idiv   %r9d
0x551:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x555:	03 d0                	add    %eax,%edx
0x557:	48 8b c3             	mov    %rbx,%rax
0x55a:	48 63 d2             	movslq %edx,%rdx
0x55d:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x562:	48 63 c0             	movslq %eax,%rax
0x565:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x56a:	4d 63 c0             	movslq %r8d,%r8
0x56d:	49 3b c0             	cmp    %r8,%rax
0x570:	0f 85 0a 00 00 00    	jne    0x580
0x576:	b8 01 00 00 00       	mov    $0x1,%eax
0x57b:	e9 05 00 00 00       	jmpq   0x585
0x580:	b8 00 00 00 00       	mov    $0x0,%eax
0x585:	48 8b d8             	mov    %rax,%rbx
0x588:	83 fb 00             	cmp    $0x0,%ebx
0x58b:	0f 85 25 00 00 00    	jne    0x5b6
0x591:	48 8b f1             	mov    %rcx,%rsi
0x594:	90                   	nop
0x595:	90                   	nop
0x596:	90                   	nop
0x597:	e8 00 00 00 00       	callq  0x59c
0x59c:	90                   	nop
0x59d:	48 8b f8             	mov    %rax,%rdi
0x5a0:	e8 00 00 00 00       	callq  0x5a5
0x5a5:	90                   	nop
0x5a6:	90                   	nop
0x5a7:	e8 00 00 00 00       	callq  0x5ac
0x5ac:	90                   	nop
0x5ad:	48 8b f8             	mov    %rax,%rdi
0x5b0:	e8 00 00 00 00       	callq  0x5b5
0x5b5:	90                   	nop
0x5b6:	48 63 f6             	movslq %esi,%rsi
0x5b9:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x5be:	48 83 c4 30          	add    $0x30,%rsp
0x5c2:	48 83 ec 10          	sub    $0x10,%rsp
0x5c6:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5cb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5cf:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x5d5:	48 83 ec 10          	sub    $0x10,%rsp
0x5d9:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5dd:	48 83 ec 10          	sub    $0x10,%rsp
0x5e1:	4c 8b 1d e0 f8 ff ff 	mov    -0x720(%rip),%r11        # 0xfffffec8
0x5e8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5ec:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x5f1:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x5f6:	48 8b 14 24          	mov    (%rsp),%rdx
0x5fa:	48 8b ca             	mov    %rdx,%rcx
0x5fd:	48 8b c7             	mov    %rdi,%rax
0x600:	48 63 40 10          	movslq 0x10(%rax),%rax
0x604:	3b f0                	cmp    %eax,%esi
0x606:	0f 83 b4 00 00 00    	jae    0x6c0
0x60c:	4d 33 db             	xor    %r11,%r11
0x60f:	49 3b cb             	cmp    %r11,%rcx
0x612:	0f 84 b8 00 00 00    	je     0x6d0
0x618:	48 8b c7             	mov    %rdi,%rax
0x61b:	48 8b 00             	mov    (%rax),%rax
0x61e:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x622:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x626:	4d 33 db             	xor    %r11,%r11
0x629:	49 3b cb             	cmp    %r11,%rcx
0x62c:	0f 85 0a 00 00 00    	jne    0x63c
0x632:	bb 00 00 00 00       	mov    $0x0,%ebx
0x637:	e9 66 00 00 00       	jmpq   0x6a2
0x63c:	48 8b d1             	mov    %rcx,%rdx
0x63f:	48 8b 1a             	mov    (%rdx),%rbx
0x642:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x646:	48 3b d0             	cmp    %rax,%rdx
0x649:	0f 85 0a 00 00 00    	jne    0x659
0x64f:	bb 01 00 00 00       	mov    $0x1,%ebx
0x654:	e9 49 00 00 00       	jmpq   0x6a2
0x659:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x660:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x664:	49 8b c0             	mov    %r8,%rax
0x667:	99                   	cltd   
0x668:	41 f7 f9             	idiv   %r9d
0x66b:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x66f:	03 d0                	add    %eax,%edx
0x671:	48 8b c3             	mov    %rbx,%rax
0x674:	48 63 d2             	movslq %edx,%rdx
0x677:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x67c:	48 63 c0             	movslq %eax,%rax
0x67f:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x684:	4d 63 c0             	movslq %r8d,%r8
0x687:	49 3b c0             	cmp    %r8,%rax
0x68a:	0f 85 0a 00 00 00    	jne    0x69a
0x690:	b8 01 00 00 00       	mov    $0x1,%eax
0x695:	e9 05 00 00 00       	jmpq   0x69f
0x69a:	b8 00 00 00 00       	mov    $0x0,%eax
0x69f:	48 8b d8             	mov    %rax,%rbx
0x6a2:	83 fb 00             	cmp    $0x0,%ebx
0x6a5:	0f 85 25 00 00 00    	jne    0x6d0
0x6ab:	48 8b f1             	mov    %rcx,%rsi
0x6ae:	90                   	nop
0x6af:	90                   	nop
0x6b0:	90                   	nop
0x6b1:	e8 00 00 00 00       	callq  0x6b6
0x6b6:	90                   	nop
0x6b7:	48 8b f8             	mov    %rax,%rdi
0x6ba:	e8 00 00 00 00       	callq  0x6bf
0x6bf:	90                   	nop
0x6c0:	90                   	nop
0x6c1:	e8 00 00 00 00       	callq  0x6c6
0x6c6:	90                   	nop
0x6c7:	48 8b f8             	mov    %rax,%rdi
0x6ca:	e8 00 00 00 00       	callq  0x6cf
0x6cf:	90                   	nop
0x6d0:	48 63 f6             	movslq %esi,%rsi
0x6d3:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x6d8:	48 83 c4 30          	add    $0x30,%rsp
0x6dc:	90                   	nop
0x6dd:	90                   	nop
0x6de:	90                   	nop
0x6df:	90                   	nop
0x6e0:	e8 00 00 00 00       	callq  0x6e5
0x6e5:	90                   	nop
0x6e6:	48 83 ec 10          	sub    $0x10,%rsp
0x6ea:	48 89 04 24          	mov    %rax,(%rsp)
0x6ee:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0x6f3:	41 85 03             	test   %eax,(%r11)
0x6f6:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x6fb:	e8 00 00 00 00       	callq  0x700
0x700:	90                   	nop
0x701:	48 83 ec 10          	sub    $0x10,%rsp
0x705:	48 89 04 24          	mov    %rax,(%rsp)
0x709:	4c 8b 1c 24          	mov    (%rsp),%r11
0x70d:	48 83 c4 10          	add    $0x10,%rsp
0x711:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x715:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x719:	48 83 ec 10          	sub    $0x10,%rsp
0x71d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x721:	48 83 ec 10          	sub    $0x10,%rsp
0x725:	4c 8b 1d a4 f7 ff ff 	mov    -0x85c(%rip),%r11        # 0xfffffed0
0x72c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x730:	4c 8b 1d a1 f7 ff ff 	mov    -0x85f(%rip),%r11        # 0xfffffed8
0x737:	48 83 ec 10          	sub    $0x10,%rsp
0x73b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x73f:	41 bb 04 00 00 00    	mov    $0x4,%r11d
0x745:	48 83 ec 10          	sub    $0x10,%rsp
0x749:	44 89 1c 24          	mov    %r11d,(%rsp)
0x74d:	40 8b 34 24          	rex mov (%rsp),%esi
0x751:	48 8b 3d 88 f7 ff ff 	mov    -0x878(%rip),%rdi        # 0xfffffee0
0x758:	83 fe 00             	cmp    $0x0,%esi
0x75b:	0f 8c fb 00 00 00    	jl     0x85c
0x761:	85 07                	test   %eax,(%rdi)
0x763:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x76a:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x76e:	48 8b 3d 73 f7 ff ff 	mov    -0x88d(%rip),%rdi        # 0xfffffee8
0x775:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x779:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x77d:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x784:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x788:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x78c:	48 63 c0             	movslq %eax,%rax
0x78f:	48 63 d6             	movslq %esi,%rdx
0x792:	48 0f af c2          	imul   %rdx,%rax
0x796:	48 83 c0 18          	add    $0x18,%rax
0x79a:	48 83 c0 07          	add    $0x7,%rax
0x79e:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x7a5:	00 00 00 
0x7a8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x7af:	ff ff ff 
0x7b2:	49 33 d3             	xor    %r11,%rdx
0x7b5:	48 23 c2             	and    %rdx,%rax
0x7b8:	49 8b d6             	mov    %r14,%rdx
0x7bb:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x7bf:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x7c6:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x7cd:	49 8b d0             	mov    %r8,%rdx
0x7d0:	48 03 d0             	add    %rax,%rdx
0x7d3:	4c 8b d2             	mov    %rdx,%r10
0x7d6:	4d 3b d1             	cmp    %r9,%r10
0x7d9:	0f 86 1f 00 00 00    	jbe    0x7fe
0x7df:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x7e3:	48 8b f0             	mov    %rax,%rsi
0x7e6:	48 8b d1             	mov    %rcx,%rdx
0x7e9:	49 8b c8             	mov    %r8,%rcx
0x7ec:	4d 8b c1             	mov    %r9,%r8
0x7ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x7f3:	e8 00 00 00 00       	callq  0x7f8
0x7f8:	90                   	nop
0x7f9:	e9 12 00 00 00       	jmpq   0x810
0x7fe:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x802:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x806:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x80d:	49 8b c0             	mov    %r8,%rax
0x810:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x814:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x818:	e8 00 00 00 00       	callq  0x81d
0x81d:	90                   	nop
0x81e:	90                   	nop
0x81f:	e8 00 00 00 00       	callq  0x824
0x824:	90                   	nop
0x825:	83 f8 00             	cmp    $0x0,%eax
0x828:	0f 84 40 00 00 00    	je     0x86e
0x82e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x832:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x836:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x83a:	85 07                	test   %eax,(%rdi)
0x83c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x840:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x844:	83 e0 ff             	and    $0xffffffff,%eax
0x847:	48 8b f8             	mov    %rax,%rdi
0x84a:	48 8b f2             	mov    %rdx,%rsi
0x84d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x851:	e8 00 00 00 00       	callq  0x856
0x856:	90                   	nop
0x857:	e9 12 00 00 00       	jmpq   0x86e
0x85c:	48 8b fe             	mov    %rsi,%rdi
0x85f:	e8 00 00 00 00       	callq  0x864
0x864:	90                   	nop
0x865:	48 8b f8             	mov    %rax,%rdi
0x868:	e8 00 00 00 00       	callq  0x86d
0x86d:	90                   	nop
0x86e:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x872:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x876:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x87a:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x87e:	48 89 18             	mov    %rbx,(%rax)
0x881:	48 89 04 24          	mov    %rax,(%rsp)
0x885:	48 83 ec 10          	sub    $0x10,%rsp
0x889:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x88e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x892:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x898:	48 83 ec 10          	sub    $0x10,%rsp
0x89c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8a0:	48 83 ec 10          	sub    $0x10,%rsp
0x8a4:	4c 8b 1d 45 f6 ff ff 	mov    -0x9bb(%rip),%r11        # 0xfffffef0
0x8ab:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8af:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x8b4:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x8b9:	48 8b 14 24          	mov    (%rsp),%rdx
0x8bd:	48 8b ca             	mov    %rdx,%rcx
0x8c0:	48 8b c7             	mov    %rdi,%rax
0x8c3:	48 63 40 10          	movslq 0x10(%rax),%rax
0x8c7:	3b f0                	cmp    %eax,%esi
0x8c9:	0f 83 b4 00 00 00    	jae    0x983
0x8cf:	4d 33 db             	xor    %r11,%r11
0x8d2:	49 3b cb             	cmp    %r11,%rcx
0x8d5:	0f 84 b8 00 00 00    	je     0x993
0x8db:	48 8b c7             	mov    %rdi,%rax
0x8de:	48 8b 00             	mov    (%rax),%rax
0x8e1:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x8e5:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x8e9:	4d 33 db             	xor    %r11,%r11
0x8ec:	49 3b cb             	cmp    %r11,%rcx
0x8ef:	0f 85 0a 00 00 00    	jne    0x8ff
0x8f5:	bb 00 00 00 00       	mov    $0x0,%ebx
0x8fa:	e9 66 00 00 00       	jmpq   0x965
0x8ff:	48 8b d1             	mov    %rcx,%rdx
0x902:	48 8b 1a             	mov    (%rdx),%rbx
0x905:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x909:	48 3b d0             	cmp    %rax,%rdx
0x90c:	0f 85 0a 00 00 00    	jne    0x91c
0x912:	bb 01 00 00 00       	mov    $0x1,%ebx
0x917:	e9 49 00 00 00       	jmpq   0x965
0x91c:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x923:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x927:	49 8b c0             	mov    %r8,%rax
0x92a:	99                   	cltd   
0x92b:	41 f7 f9             	idiv   %r9d
0x92e:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x932:	03 d0                	add    %eax,%edx
0x934:	48 8b c3             	mov    %rbx,%rax
0x937:	48 63 d2             	movslq %edx,%rdx
0x93a:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x93f:	48 63 c0             	movslq %eax,%rax
0x942:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x947:	4d 63 c0             	movslq %r8d,%r8
0x94a:	49 3b c0             	cmp    %r8,%rax
0x94d:	0f 85 0a 00 00 00    	jne    0x95d
0x953:	b8 01 00 00 00       	mov    $0x1,%eax
0x958:	e9 05 00 00 00       	jmpq   0x962
0x95d:	b8 00 00 00 00       	mov    $0x0,%eax
0x962:	48 8b d8             	mov    %rax,%rbx
0x965:	83 fb 00             	cmp    $0x0,%ebx
0x968:	0f 85 25 00 00 00    	jne    0x993
0x96e:	48 8b f1             	mov    %rcx,%rsi
0x971:	90                   	nop
0x972:	90                   	nop
0x973:	90                   	nop
0x974:	e8 00 00 00 00       	callq  0x979
0x979:	90                   	nop
0x97a:	48 8b f8             	mov    %rax,%rdi
0x97d:	e8 00 00 00 00       	callq  0x982
0x982:	90                   	nop
0x983:	90                   	nop
0x984:	e8 00 00 00 00       	callq  0x989
0x989:	90                   	nop
0x98a:	48 8b f8             	mov    %rax,%rdi
0x98d:	e8 00 00 00 00       	callq  0x992
0x992:	90                   	nop
0x993:	48 63 f6             	movslq %esi,%rsi
0x996:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x99b:	48 83 c4 30          	add    $0x30,%rsp
0x99f:	48 83 ec 10          	sub    $0x10,%rsp
0x9a3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x9a8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x9ac:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x9b2:	48 83 ec 10          	sub    $0x10,%rsp
0x9b6:	44 89 1c 24          	mov    %r11d,(%rsp)
0x9ba:	48 8b 3d 37 f5 ff ff 	mov    -0xac9(%rip),%rdi        # 0xfffffef8
0x9c1:	be 10 00 00 00       	mov    $0x10,%esi
0x9c6:	48 63 f6             	movslq %esi,%rsi
0x9c9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x9cd:	48 83 ec 10          	sub    $0x10,%rsp
0x9d1:	48 89 04 24          	mov    %rax,(%rsp)
0x9d5:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x9da:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x9df:	48 8b 14 24          	mov    (%rsp),%rdx
0x9e3:	48 8b ca             	mov    %rdx,%rcx
0x9e6:	48 8b c7             	mov    %rdi,%rax
0x9e9:	48 63 40 10          	movslq 0x10(%rax),%rax
0x9ed:	3b f0                	cmp    %eax,%esi
0x9ef:	0f 83 b4 00 00 00    	jae    0xaa9
0x9f5:	4d 33 db             	xor    %r11,%r11
0x9f8:	49 3b cb             	cmp    %r11,%rcx
0x9fb:	0f 84 b8 00 00 00    	je     0xab9
0xa01:	48 8b c7             	mov    %rdi,%rax
0xa04:	48 8b 00             	mov    (%rax),%rax
0xa07:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xa0b:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xa0f:	4d 33 db             	xor    %r11,%r11
0xa12:	49 3b cb             	cmp    %r11,%rcx
0xa15:	0f 85 0a 00 00 00    	jne    0xa25
0xa1b:	bb 00 00 00 00       	mov    $0x0,%ebx
0xa20:	e9 66 00 00 00       	jmpq   0xa8b
0xa25:	48 8b d1             	mov    %rcx,%rdx
0xa28:	48 8b 1a             	mov    (%rdx),%rbx
0xa2b:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xa2f:	48 3b d0             	cmp    %rax,%rdx
0xa32:	0f 85 0a 00 00 00    	jne    0xa42
0xa38:	bb 01 00 00 00       	mov    $0x1,%ebx
0xa3d:	e9 49 00 00 00       	jmpq   0xa8b
0xa42:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xa49:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xa4d:	49 8b c0             	mov    %r8,%rax
0xa50:	99                   	cltd   
0xa51:	41 f7 f9             	idiv   %r9d
0xa54:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xa58:	03 d0                	add    %eax,%edx
0xa5a:	48 8b c3             	mov    %rbx,%rax
0xa5d:	48 63 d2             	movslq %edx,%rdx
0xa60:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xa65:	48 63 c0             	movslq %eax,%rax
0xa68:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xa6d:	4d 63 c0             	movslq %r8d,%r8
0xa70:	49 3b c0             	cmp    %r8,%rax
0xa73:	0f 85 0a 00 00 00    	jne    0xa83
0xa79:	b8 01 00 00 00       	mov    $0x1,%eax
0xa7e:	e9 05 00 00 00       	jmpq   0xa88
0xa83:	b8 00 00 00 00       	mov    $0x0,%eax
0xa88:	48 8b d8             	mov    %rax,%rbx
0xa8b:	83 fb 00             	cmp    $0x0,%ebx
0xa8e:	0f 85 25 00 00 00    	jne    0xab9
0xa94:	48 8b f1             	mov    %rcx,%rsi
0xa97:	90                   	nop
0xa98:	90                   	nop
0xa99:	90                   	nop
0xa9a:	e8 00 00 00 00       	callq  0xa9f
0xa9f:	90                   	nop
0xaa0:	48 8b f8             	mov    %rax,%rdi
0xaa3:	e8 00 00 00 00       	callq  0xaa8
0xaa8:	90                   	nop
0xaa9:	90                   	nop
0xaaa:	e8 00 00 00 00       	callq  0xaaf
0xaaf:	90                   	nop
0xab0:	48 8b f8             	mov    %rax,%rdi
0xab3:	e8 00 00 00 00       	callq  0xab8
0xab8:	90                   	nop
0xab9:	48 63 f6             	movslq %esi,%rsi
0xabc:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xac1:	48 83 c4 30          	add    $0x30,%rsp
0xac5:	48 83 ec 10          	sub    $0x10,%rsp
0xac9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xace:	4c 89 1c 24          	mov    %r11,(%rsp)
0xad2:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0xad8:	48 83 ec 10          	sub    $0x10,%rsp
0xadc:	44 89 1c 24          	mov    %r11d,(%rsp)
0xae0:	48 8b 3d 19 f4 ff ff 	mov    -0xbe7(%rip),%rdi        # 0xffffff00
0xae7:	be 10 00 00 00       	mov    $0x10,%esi
0xaec:	48 63 f6             	movslq %esi,%rsi
0xaef:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xaf3:	48 83 ec 10          	sub    $0x10,%rsp
0xaf7:	48 89 04 24          	mov    %rax,(%rsp)
0xafb:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xb00:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xb05:	48 8b 14 24          	mov    (%rsp),%rdx
0xb09:	48 8b ca             	mov    %rdx,%rcx
0xb0c:	48 8b c7             	mov    %rdi,%rax
0xb0f:	48 63 40 10          	movslq 0x10(%rax),%rax
0xb13:	3b f0                	cmp    %eax,%esi
0xb15:	0f 83 b4 00 00 00    	jae    0xbcf
0xb1b:	4d 33 db             	xor    %r11,%r11
0xb1e:	49 3b cb             	cmp    %r11,%rcx
0xb21:	0f 84 b8 00 00 00    	je     0xbdf
0xb27:	48 8b c7             	mov    %rdi,%rax
0xb2a:	48 8b 00             	mov    (%rax),%rax
0xb2d:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xb31:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xb35:	4d 33 db             	xor    %r11,%r11
0xb38:	49 3b cb             	cmp    %r11,%rcx
0xb3b:	0f 85 0a 00 00 00    	jne    0xb4b
0xb41:	bb 00 00 00 00       	mov    $0x0,%ebx
0xb46:	e9 66 00 00 00       	jmpq   0xbb1
0xb4b:	48 8b d1             	mov    %rcx,%rdx
0xb4e:	48 8b 1a             	mov    (%rdx),%rbx
0xb51:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xb55:	48 3b d0             	cmp    %rax,%rdx
0xb58:	0f 85 0a 00 00 00    	jne    0xb68
0xb5e:	bb 01 00 00 00       	mov    $0x1,%ebx
0xb63:	e9 49 00 00 00       	jmpq   0xbb1
0xb68:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xb6f:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xb73:	49 8b c0             	mov    %r8,%rax
0xb76:	99                   	cltd   
0xb77:	41 f7 f9             	idiv   %r9d
0xb7a:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xb7e:	03 d0                	add    %eax,%edx
0xb80:	48 8b c3             	mov    %rbx,%rax
0xb83:	48 63 d2             	movslq %edx,%rdx
0xb86:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xb8b:	48 63 c0             	movslq %eax,%rax
0xb8e:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xb93:	4d 63 c0             	movslq %r8d,%r8
0xb96:	49 3b c0             	cmp    %r8,%rax
0xb99:	0f 85 0a 00 00 00    	jne    0xba9
0xb9f:	b8 01 00 00 00       	mov    $0x1,%eax
0xba4:	e9 05 00 00 00       	jmpq   0xbae
0xba9:	b8 00 00 00 00       	mov    $0x0,%eax
0xbae:	48 8b d8             	mov    %rax,%rbx
0xbb1:	83 fb 00             	cmp    $0x0,%ebx
0xbb4:	0f 85 25 00 00 00    	jne    0xbdf
0xbba:	48 8b f1             	mov    %rcx,%rsi
0xbbd:	90                   	nop
0xbbe:	90                   	nop
0xbbf:	90                   	nop
0xbc0:	e8 00 00 00 00       	callq  0xbc5
0xbc5:	90                   	nop
0xbc6:	48 8b f8             	mov    %rax,%rdi
0xbc9:	e8 00 00 00 00       	callq  0xbce
0xbce:	90                   	nop
0xbcf:	90                   	nop
0xbd0:	e8 00 00 00 00       	callq  0xbd5
0xbd5:	90                   	nop
0xbd6:	48 8b f8             	mov    %rax,%rdi
0xbd9:	e8 00 00 00 00       	callq  0xbde
0xbde:	90                   	nop
0xbdf:	48 63 f6             	movslq %esi,%rsi
0xbe2:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xbe7:	48 83 c4 30          	add    $0x30,%rsp
0xbeb:	48 83 ec 10          	sub    $0x10,%rsp
0xbef:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xbf4:	4c 89 1c 24          	mov    %r11,(%rsp)
0xbf8:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0xbfe:	48 83 ec 10          	sub    $0x10,%rsp
0xc02:	44 89 1c 24          	mov    %r11d,(%rsp)
0xc06:	48 83 ec 10          	sub    $0x10,%rsp
0xc0a:	4c 8b 1d f7 f2 ff ff 	mov    -0xd09(%rip),%r11        # 0xffffff08
0xc11:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc15:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xc1a:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xc1f:	48 8b 14 24          	mov    (%rsp),%rdx
0xc23:	48 8b ca             	mov    %rdx,%rcx
0xc26:	48 8b c7             	mov    %rdi,%rax
0xc29:	48 63 40 10          	movslq 0x10(%rax),%rax
0xc2d:	3b f0                	cmp    %eax,%esi
0xc2f:	0f 83 b4 00 00 00    	jae    0xce9
0xc35:	4d 33 db             	xor    %r11,%r11
0xc38:	49 3b cb             	cmp    %r11,%rcx
0xc3b:	0f 84 b8 00 00 00    	je     0xcf9
0xc41:	48 8b c7             	mov    %rdi,%rax
0xc44:	48 8b 00             	mov    (%rax),%rax
0xc47:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xc4b:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xc4f:	4d 33 db             	xor    %r11,%r11
0xc52:	49 3b cb             	cmp    %r11,%rcx
0xc55:	0f 85 0a 00 00 00    	jne    0xc65
0xc5b:	bb 00 00 00 00       	mov    $0x0,%ebx
0xc60:	e9 66 00 00 00       	jmpq   0xccb
0xc65:	48 8b d1             	mov    %rcx,%rdx
0xc68:	48 8b 1a             	mov    (%rdx),%rbx
0xc6b:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xc6f:	48 3b d0             	cmp    %rax,%rdx
0xc72:	0f 85 0a 00 00 00    	jne    0xc82
0xc78:	bb 01 00 00 00       	mov    $0x1,%ebx
0xc7d:	e9 49 00 00 00       	jmpq   0xccb
0xc82:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xc89:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xc8d:	49 8b c0             	mov    %r8,%rax
0xc90:	99                   	cltd   
0xc91:	41 f7 f9             	idiv   %r9d
0xc94:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xc98:	03 d0                	add    %eax,%edx
0xc9a:	48 8b c3             	mov    %rbx,%rax
0xc9d:	48 63 d2             	movslq %edx,%rdx
0xca0:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xca5:	48 63 c0             	movslq %eax,%rax
0xca8:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xcad:	4d 63 c0             	movslq %r8d,%r8
0xcb0:	49 3b c0             	cmp    %r8,%rax
0xcb3:	0f 85 0a 00 00 00    	jne    0xcc3
0xcb9:	b8 01 00 00 00       	mov    $0x1,%eax
0xcbe:	e9 05 00 00 00       	jmpq   0xcc8
0xcc3:	b8 00 00 00 00       	mov    $0x0,%eax
0xcc8:	48 8b d8             	mov    %rax,%rbx
0xccb:	83 fb 00             	cmp    $0x0,%ebx
0xcce:	0f 85 25 00 00 00    	jne    0xcf9
0xcd4:	48 8b f1             	mov    %rcx,%rsi
0xcd7:	90                   	nop
0xcd8:	90                   	nop
0xcd9:	90                   	nop
0xcda:	e8 00 00 00 00       	callq  0xcdf
0xcdf:	90                   	nop
0xce0:	48 8b f8             	mov    %rax,%rdi
0xce3:	e8 00 00 00 00       	callq  0xce8
0xce8:	90                   	nop
0xce9:	90                   	nop
0xcea:	e8 00 00 00 00       	callq  0xcef
0xcef:	90                   	nop
0xcf0:	48 8b f8             	mov    %rax,%rdi
0xcf3:	e8 00 00 00 00       	callq  0xcf8
0xcf8:	90                   	nop
0xcf9:	48 63 f6             	movslq %esi,%rsi
0xcfc:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xd01:	48 83 c4 30          	add    $0x30,%rsp
0xd05:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xd0a:	41 85 03             	test   %eax,(%r11)
0xd0d:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xd12:	e8 00 00 00 00       	callq  0xd17
0xd17:	90                   	nop
0xd18:	48 83 ec 10          	sub    $0x10,%rsp
0xd1c:	48 89 04 24          	mov    %rax,(%rsp)
0xd20:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xd25:	41 85 03             	test   %eax,(%r11)
0xd28:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xd2d:	90                   	nop
0xd2e:	90                   	nop
0xd2f:	90                   	nop
0xd30:	e8 00 00 00 00       	callq  0xd35
0xd35:	90                   	nop
0xd36:	48 83 ec 10          	sub    $0x10,%rsp
0xd3a:	48 89 04 24          	mov    %rax,(%rsp)
0xd3e:	4c 8b 1c 24          	mov    (%rsp),%r11
0xd42:	48 83 c4 10          	add    $0x10,%rsp
0xd46:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0xd4a:	48 8b 3d bf f1 ff ff 	mov    -0xe41(%rip),%rdi        # 0xffffff10
0xd51:	be 20 00 00 00       	mov    $0x20,%esi
0xd56:	48 63 f6             	movslq %esi,%rsi
0xd59:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xd5d:	48 83 ec 10          	sub    $0x10,%rsp
0xd61:	48 89 04 24          	mov    %rax,(%rsp)
0xd65:	bf 1d 00 00 00       	mov    $0x1d,%edi
0xd6a:	48 8b 34 24          	mov    (%rsp),%rsi
0xd6e:	48 8b 15 a3 f1 ff ff 	mov    -0xe5d(%rip),%rdx        # 0xffffff18
0xd75:	b9 0e 00 00 00       	mov    $0xe,%ecx
0xd7a:	48 8b c6             	mov    %rsi,%rax
0xd7d:	48 8b 00             	mov    (%rax),%rax
0xd80:	48 63 ff             	movslq %edi,%rdi
0xd83:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd88:	48 8b fa             	mov    %rdx,%rdi
0xd8b:	48 8b d1             	mov    %rcx,%rdx
0xd8e:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd93:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd97:	90                   	nop
0xd98:	90                   	nop
0xd99:	e8 00 00 00 00       	callq  0xd9e
0xd9e:	90                   	nop
0xd9f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xda3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xda7:	48 8b 3c 24          	mov    (%rsp),%rdi
0xdab:	ff d0                	callq  *%rax
0xdad:	90                   	nop
0xdae:	48 83 ec 10          	sub    $0x10,%rsp
0xdb2:	48 89 04 24          	mov    %rax,(%rsp)
0xdb6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xdba:	48 83 c4 10          	add    $0x10,%rsp
0xdbe:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0xdc2:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xdc6:	48 83 ec 10          	sub    $0x10,%rsp
0xdca:	4c 89 1c 24          	mov    %r11,(%rsp)
0xdce:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xdd2:	48 83 ec 10          	sub    $0x10,%rsp
0xdd6:	4c 89 1c 24          	mov    %r11,(%rsp)
0xdda:	4c 8b 1d 3f f1 ff ff 	mov    -0xec1(%rip),%r11        # 0xffffff20
0xde1:	48 83 ec 10          	sub    $0x10,%rsp
0xde5:	4c 89 1c 24          	mov    %r11,(%rsp)
0xde9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xded:	41 85 03             	test   %eax,(%r11)
0xdf0:	48 8b 3c 24          	mov    (%rsp),%rdi
0xdf4:	90                   	nop
0xdf5:	90                   	nop
0xdf6:	90                   	nop
0xdf7:	90                   	nop
0xdf8:	e8 00 00 00 00       	callq  0xdfd
0xdfd:	90                   	nop
0xdfe:	48 83 ec 10          	sub    $0x10,%rsp
0xe02:	48 89 04 24          	mov    %rax,(%rsp)
0xe06:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xe0c:	48 83 ec 10          	sub    $0x10,%rsp
0xe10:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe14:	4c 8b 1d 0d f1 ff ff 	mov    -0xef3(%rip),%r11        # 0xffffff28
0xe1b:	48 83 ec 10          	sub    $0x10,%rsp
0xe1f:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe23:	4c 8b 1c 24          	mov    (%rsp),%r11
0xe27:	41 85 03             	test   %eax,(%r11)
0xe2a:	48 8b 3c 24          	mov    (%rsp),%rdi
0xe2e:	90                   	nop
0xe2f:	90                   	nop
0xe30:	e8 00 00 00 00       	callq  0xe35
0xe35:	90                   	nop
0xe36:	48 83 ec 10          	sub    $0x10,%rsp
0xe3a:	48 89 04 24          	mov    %rax,(%rsp)
0xe3e:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xe42:	48 83 ec 10          	sub    $0x10,%rsp
0xe46:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe4a:	48 8b 3d df f0 ff ff 	mov    -0xf21(%rip),%rdi        # 0xffffff30
0xe51:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
0xe56:	48 8b 47 10          	mov    0x10(%rdi),%rax
0xe5a:	4d 33 db             	xor    %r11,%r11
0xe5d:	49 3b c3             	cmp    %r11,%rax
0xe60:	0f 85 1d 00 00 00    	jne    0xe83
0xe66:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0xe6a:	48 8b c7             	mov    %rdi,%rax
0xe6d:	48 8b f8             	mov    %rax,%rdi
0xe70:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xe74:	90                   	nop
0xe75:	e8 00 00 00 00       	callq  0xe7a
0xe7a:	90                   	nop
0xe7b:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0xe7f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xe83:	48 8b 47 10          	mov    0x10(%rdi),%rax
0xe87:	48 8b 0e             	mov    (%rsi),%rcx
0xe8a:	48 63 50 78          	movslq 0x78(%rax),%rdx
0xe8e:	48 63 d2             	movslq %edx,%rdx
0xe91:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0xe96:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xe9a:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
0xe9f:	ff d0                	callq  *%rax
0xea1:	90                   	nop
0xea2:	48 83 ec 10          	sub    $0x10,%rsp
0xea6:	48 89 04 24          	mov    %rax,(%rsp)
0xeaa:	44 8b 1c 24          	mov    (%rsp),%r11d
0xeae:	48 83 c4 10          	add    $0x10,%rsp
0xeb2:	44 89 5d a0          	mov    %r11d,-0x60(%rbp)
0xeb6:	48 8b 3d 7b f0 ff ff 	mov    -0xf85(%rip),%rdi        # 0xffffff38
0xebd:	be 18 00 00 00       	mov    $0x18,%esi
0xec2:	48 63 f6             	movslq %esi,%rsi
0xec5:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xec9:	48 83 ec 10          	sub    $0x10,%rsp
0xecd:	48 89 04 24          	mov    %rax,(%rsp)
0xed1:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0xed5:	48 83 ec 10          	sub    $0x10,%rsp
0xed9:	44 89 1c 24          	mov    %r11d,(%rsp)
0xedd:	bf 2a 00 00 00       	mov    $0x2a,%edi
0xee2:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xee7:	48 8b 15 52 f0 ff ff 	mov    -0xfae(%rip),%rdx        # 0xffffff40
0xeee:	b9 1a 00 00 00       	mov    $0x1a,%ecx
0xef3:	48 8b c6             	mov    %rsi,%rax
0xef6:	48 8b 00             	mov    (%rax),%rax
0xef9:	48 63 ff             	movslq %edi,%rdi
0xefc:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xf01:	48 8b fa             	mov    %rdx,%rdi
0xf04:	48 8b d1             	mov    %rcx,%rdx
0xf07:	b9 03 00 00 00       	mov    $0x3,%ecx
0xf0c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xf10:	90                   	nop
0xf11:	90                   	nop
0xf12:	e8 00 00 00 00       	callq  0xf17
0xf17:	90                   	nop
0xf18:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xf1c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xf20:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xf25:	ff d0                	callq  *%rax
0xf27:	90                   	nop
0xf28:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0xf2c:	48 83 ec 10          	sub    $0x10,%rsp
0xf30:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf34:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xf38:	48 83 ec 10          	sub    $0x10,%rsp
0xf3c:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf40:	4c 8b 1d 01 f0 ff ff 	mov    -0xfff(%rip),%r11        # 0xffffff48
0xf47:	48 83 ec 10          	sub    $0x10,%rsp
0xf4b:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf4f:	4c 8b 1c 24          	mov    (%rsp),%r11
0xf53:	41 85 03             	test   %eax,(%r11)
0xf56:	48 8b 3c 24          	mov    (%rsp),%rdi
0xf5a:	e8 00 00 00 00       	callq  0xf5f
0xf5f:	90                   	nop
0xf60:	48 83 ec 10          	sub    $0x10,%rsp
0xf64:	48 89 04 24          	mov    %rax,(%rsp)
0xf68:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xf6e:	48 83 ec 10          	sub    $0x10,%rsp
0xf72:	44 89 1c 24          	mov    %r11d,(%rsp)
0xf76:	4c 8b 1d d3 ef ff ff 	mov    -0x102d(%rip),%r11        # 0xffffff50
0xf7d:	48 83 ec 10          	sub    $0x10,%rsp
0xf81:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf85:	4c 8b 1c 24          	mov    (%rsp),%r11
0xf89:	41 85 03             	test   %eax,(%r11)
0xf8c:	48 8b 3c 24          	mov    (%rsp),%rdi
0xf90:	e8 00 00 00 00       	callq  0xf95
0xf95:	90                   	nop
0xf96:	48 83 ec 10          	sub    $0x10,%rsp
0xf9a:	48 89 04 24          	mov    %rax,(%rsp)
0xf9e:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xfa2:	48 83 ec 10          	sub    $0x10,%rsp
0xfa6:	4c 89 1c 24          	mov    %r11,(%rsp)
0xfaa:	48 8b 3d a7 ef ff ff 	mov    -0x1059(%rip),%rdi        # 0xffffff58
0xfb1:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
0xfb6:	48 8b 47 10          	mov    0x10(%rdi),%rax
0xfba:	4d 33 db             	xor    %r11,%r11
0xfbd:	49 3b c3             	cmp    %r11,%rax
0xfc0:	0f 85 1d 00 00 00    	jne    0xfe3
0xfc6:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0xfca:	48 8b c7             	mov    %rdi,%rax
0xfcd:	48 8b f8             	mov    %rax,%rdi
0xfd0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xfd4:	90                   	nop
0xfd5:	e8 00 00 00 00       	callq  0xfda
0xfda:	90                   	nop
0xfdb:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0xfdf:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xfe3:	48 8b 47 10          	mov    0x10(%rdi),%rax
0xfe7:	48 8b 0e             	mov    (%rsi),%rcx
0xfea:	48 63 50 78          	movslq 0x78(%rax),%rdx
0xfee:	48 63 d2             	movslq %edx,%rdx
0xff1:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0xff6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xffa:	48 8b 7c 24 50       	mov    0x50(%rsp),%rdi
0xfff:	ff d0                	callq  *%rax
0x1001:	90                   	nop
0x1002:	48 83 ec 10          	sub    $0x10,%rsp
0x1006:	48 89 04 24          	mov    %rax,(%rsp)
0x100a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x100e:	48 83 c4 10          	add    $0x10,%rsp
0x1012:	44 89 5d 90          	mov    %r11d,-0x70(%rbp)
0x1016:	48 8b 3d 43 ef ff ff 	mov    -0x10bd(%rip),%rdi        # 0xffffff60
0x101d:	be 18 00 00 00       	mov    $0x18,%esi
0x1022:	48 63 f6             	movslq %esi,%rsi
0x1025:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1029:	48 83 ec 10          	sub    $0x10,%rsp
0x102d:	48 89 04 24          	mov    %rax,(%rsp)
0x1031:	44 8b 5d 90          	mov    -0x70(%rbp),%r11d
0x1035:	48 83 ec 10          	sub    $0x10,%rsp
0x1039:	44 89 1c 24          	mov    %r11d,(%rsp)
0x103d:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x1042:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1047:	48 8b 15 1a ef ff ff 	mov    -0x10e6(%rip),%rdx        # 0xffffff68
0x104e:	b9 26 00 00 00       	mov    $0x26,%ecx
0x1053:	48 8b c6             	mov    %rsi,%rax
0x1056:	48 8b 00             	mov    (%rax),%rax
0x1059:	48 63 ff             	movslq %edi,%rdi
0x105c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1061:	48 8b fa             	mov    %rdx,%rdi
0x1064:	48 8b d1             	mov    %rcx,%rdx
0x1067:	b9 03 00 00 00       	mov    $0x3,%ecx
0x106c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1070:	90                   	nop
0x1071:	90                   	nop
0x1072:	e8 00 00 00 00       	callq  0x1077
0x1077:	90                   	nop
0x1078:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x107c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1080:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1085:	ff d0                	callq  *%rax
0x1087:	90                   	nop
0x1088:	48 8b 3d e1 ee ff ff 	mov    -0x111f(%rip),%rdi        # 0xffffff70
0x108f:	be 18 00 00 00       	mov    $0x18,%esi
0x1094:	48 63 f6             	movslq %esi,%rsi
0x1097:	0f be 04 37          	movsbl (%rdi,%rsi,1),%eax
0x109b:	48 83 ec 10          	sub    $0x10,%rsp
0x109f:	89 04 24             	mov    %eax,(%rsp)
0x10a2:	44 8b 1c 24          	mov    (%rsp),%r11d
0x10a6:	b8 00 00 00 00       	mov    $0x0,%eax
0x10ab:	48 83 c4 10          	add    $0x10,%rsp
0x10af:	44 3b d8             	cmp    %eax,%r11d
0x10b2:	74 33                	je     0x10e7
0x10b4:	48 8b 3d bd ee ff ff 	mov    -0x1143(%rip),%rdi        # 0xffffff78
0x10bb:	be 2e 00 00 00       	mov    $0x2e,%esi
0x10c0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x10c4:	48 8b c8             	mov    %rax,%rcx
0x10c7:	48 63 f6             	movslq %esi,%rsi
0x10ca:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x10cf:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x10d5:	0f 8d 07 00 00 00    	jge    0x10e2
0x10db:	83 c1 01             	add    $0x1,%ecx
0x10de:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x10e2:	e9 b6 03 00 00       	jmpq   0x149d
0x10e7:	48 8b 3d 92 ee ff ff 	mov    -0x116e(%rip),%rdi        # 0xffffff80
0x10ee:	be 2f 00 00 00       	mov    $0x2f,%esi
0x10f3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x10f7:	48 8b c8             	mov    %rax,%rcx
0x10fa:	48 63 f6             	movslq %esi,%rsi
0x10fd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1102:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1108:	0f 8d 07 00 00 00    	jge    0x1115
0x110e:	83 c1 01             	add    $0x1,%ecx
0x1111:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1115:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0x1119:	48 83 ec 10          	sub    $0x10,%rsp
0x111d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1121:	44 8b 5d 90          	mov    -0x70(%rbp),%r11d
0x1125:	48 83 ec 10          	sub    $0x10,%rsp
0x1129:	44 89 1c 24          	mov    %r11d,(%rsp)
0x112d:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x1132:	8b 04 24             	mov    (%rsp),%eax
0x1135:	48 83 c4 20          	add    $0x20,%rsp
0x1139:	44 3b d8             	cmp    %eax,%r11d
0x113c:	75 33                	jne    0x1171
0x113e:	48 8b 3d 43 ee ff ff 	mov    -0x11bd(%rip),%rdi        # 0xffffff88
0x1145:	be 30 00 00 00       	mov    $0x30,%esi
0x114a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x114e:	48 8b c8             	mov    %rax,%rcx
0x1151:	48 63 f6             	movslq %esi,%rsi
0x1154:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1159:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x115f:	0f 8d 07 00 00 00    	jge    0x116c
0x1165:	83 c1 01             	add    $0x1,%ecx
0x1168:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x116c:	e9 2c 03 00 00       	jmpq   0x149d
0x1171:	48 8b 3d 18 ee ff ff 	mov    -0x11e8(%rip),%rdi        # 0xffffff90
0x1178:	be 31 00 00 00       	mov    $0x31,%esi
0x117d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1181:	48 8b c8             	mov    %rax,%rcx
0x1184:	48 63 f6             	movslq %esi,%rsi
0x1187:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x118c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1192:	0f 8d 07 00 00 00    	jge    0x119f
0x1198:	83 c1 01             	add    $0x1,%ecx
0x119b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x119f:	48 8b 3d f2 ed ff ff 	mov    -0x120e(%rip),%rdi        # 0xffffff98
0x11a6:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x11aa:	48 8b 35 ef ed ff ff 	mov    -0x1211(%rip),%rsi        # 0xffffffa0
0x11b1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x11b5:	49 8b ce             	mov    %r14,%rcx
0x11b8:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x11bc:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x11c3:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x11ca:	48 8b d9             	mov    %rcx,%rbx
0x11cd:	48 03 da             	add    %rdx,%rbx
0x11d0:	4c 8b cb             	mov    %rbx,%r9
0x11d3:	4d 3b c8             	cmp    %r8,%r9
0x11d6:	0f 86 14 00 00 00    	jbe    0x11f0
0x11dc:	48 8b fe             	mov    %rsi,%rdi
0x11df:	48 8b f2             	mov    %rdx,%rsi
0x11e2:	48 8b d0             	mov    %rax,%rdx
0x11e5:	e8 00 00 00 00       	callq  0x11ea
0x11ea:	90                   	nop
0x11eb:	e9 0a 00 00 00       	jmpq   0x11fa
0x11f0:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x11f7:	48 8b c1             	mov    %rcx,%rax
0x11fa:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x11fe:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1202:	90                   	nop
0x1203:	90                   	nop
0x1204:	90                   	nop
0x1205:	e8 00 00 00 00       	callq  0x120a
0x120a:	90                   	nop
0x120b:	90                   	nop
0x120c:	90                   	nop
0x120d:	e8 00 00 00 00       	callq  0x1212
0x1212:	90                   	nop
0x1213:	83 f8 00             	cmp    $0x0,%eax
0x1216:	0f 84 27 00 00 00    	je     0x1243
0x121c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1220:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1224:	85 06                	test   %eax,(%rsi)
0x1226:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x122a:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x122e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1232:	83 e2 ff             	and    $0xffffffff,%edx
0x1235:	48 8b fa             	mov    %rdx,%rdi
0x1238:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x123c:	90                   	nop
0x123d:	e8 00 00 00 00       	callq  0x1242
0x1242:	90                   	nop
0x1243:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1247:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x124b:	48 89 38             	mov    %rdi,(%rax)
0x124e:	48 83 ec 10          	sub    $0x10,%rsp
0x1252:	48 89 04 24          	mov    %rax,(%rsp)
0x1256:	48 83 ec 10          	sub    $0x10,%rsp
0x125a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x125f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1263:	48 8b 3d 3e ed ff ff 	mov    -0x12c2(%rip),%rdi        # 0xffffffa8
0x126a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x126e:	48 8b 35 3b ed ff ff 	mov    -0x12c5(%rip),%rsi        # 0xffffffb0
0x1275:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1279:	49 8b ce             	mov    %r14,%rcx
0x127c:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1280:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1287:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x128e:	48 8b d9             	mov    %rcx,%rbx
0x1291:	48 03 da             	add    %rdx,%rbx
0x1294:	4c 8b cb             	mov    %rbx,%r9
0x1297:	4d 3b c8             	cmp    %r8,%r9
0x129a:	0f 86 14 00 00 00    	jbe    0x12b4
0x12a0:	48 8b fe             	mov    %rsi,%rdi
0x12a3:	48 8b f2             	mov    %rdx,%rsi
0x12a6:	48 8b d0             	mov    %rax,%rdx
0x12a9:	e8 00 00 00 00       	callq  0x12ae
0x12ae:	90                   	nop
0x12af:	e9 0a 00 00 00       	jmpq   0x12be
0x12b4:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x12bb:	48 8b c1             	mov    %rcx,%rax
0x12be:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x12c2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x12c6:	90                   	nop
0x12c7:	90                   	nop
0x12c8:	90                   	nop
0x12c9:	e8 00 00 00 00       	callq  0x12ce
0x12ce:	90                   	nop
0x12cf:	90                   	nop
0x12d0:	90                   	nop
0x12d1:	e8 00 00 00 00       	callq  0x12d6
0x12d6:	90                   	nop
0x12d7:	83 f8 00             	cmp    $0x0,%eax
0x12da:	0f 84 27 00 00 00    	je     0x1307
0x12e0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x12e4:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x12e8:	85 06                	test   %eax,(%rsi)
0x12ea:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x12ee:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x12f2:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x12f6:	83 e2 ff             	and    $0xffffffff,%edx
0x12f9:	48 8b fa             	mov    %rdx,%rdi
0x12fc:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1300:	90                   	nop
0x1301:	e8 00 00 00 00       	callq  0x1306
0x1306:	90                   	nop
0x1307:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x130b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x130f:	48 89 38             	mov    %rdi,(%rax)
0x1312:	48 83 ec 10          	sub    $0x10,%rsp
0x1316:	48 89 04 24          	mov    %rax,(%rsp)
0x131a:	48 83 ec 10          	sub    $0x10,%rsp
0x131e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1323:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1327:	4c 8b 1c 24          	mov    (%rsp),%r11
0x132b:	41 85 03             	test   %eax,(%r11)
0x132e:	90                   	nop
0x132f:	90                   	nop
0x1330:	e8 00 00 00 00       	callq  0x1335
0x1335:	90                   	nop
0x1336:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0x133a:	48 83 ec 10          	sub    $0x10,%rsp
0x133e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1342:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1347:	41 85 03             	test   %eax,(%r11)
0x134a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x134f:	90                   	nop
0x1350:	e8 00 00 00 00       	callq  0x1355
0x1355:	90                   	nop
0x1356:	48 83 ec 10          	sub    $0x10,%rsp
0x135a:	48 89 04 24          	mov    %rax,(%rsp)
0x135e:	4c 8b 1d 53 ec ff ff 	mov    -0x13ad(%rip),%r11        # 0xffffffb8
0x1365:	48 83 ec 10          	sub    $0x10,%rsp
0x1369:	4c 89 1c 24          	mov    %r11,(%rsp)
0x136d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1372:	41 85 03             	test   %eax,(%r11)
0x1375:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x137a:	e8 00 00 00 00       	callq  0x137f
0x137f:	90                   	nop
0x1380:	48 83 ec 10          	sub    $0x10,%rsp
0x1384:	48 89 04 24          	mov    %rax,(%rsp)
0x1388:	44 8b 5d 90          	mov    -0x70(%rbp),%r11d
0x138c:	48 83 ec 10          	sub    $0x10,%rsp
0x1390:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1394:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1399:	41 85 03             	test   %eax,(%r11)
0x139c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x13a1:	e8 00 00 00 00       	callq  0x13a6
0x13a6:	90                   	nop
0x13a7:	48 83 ec 10          	sub    $0x10,%rsp
0x13ab:	48 89 04 24          	mov    %rax,(%rsp)
0x13af:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13b3:	41 85 03             	test   %eax,(%r11)
0x13b6:	48 8b 3c 24          	mov    (%rsp),%rdi
0x13ba:	e8 00 00 00 00       	callq  0x13bf
0x13bf:	90                   	nop
0x13c0:	48 83 ec 10          	sub    $0x10,%rsp
0x13c4:	48 89 04 24          	mov    %rax,(%rsp)
0x13c8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x13cd:	41 85 03             	test   %eax,(%r11)
0x13d0:	e8 00 00 00 00       	callq  0x13d5
0x13d5:	90                   	nop
0x13d6:	48 8b 3c 24          	mov    (%rsp),%rdi
0x13da:	4d 33 db             	xor    %r11,%r11
0x13dd:	49 3b fb             	cmp    %r11,%rdi
0x13e0:	0f 84 62 00 00 00    	je     0x1448
0x13e6:	48 8b 0d d3 eb ff ff 	mov    -0x142d(%rip),%rcx        # 0xffffffc0
0x13ed:	4d 33 db             	xor    %r11,%r11
0x13f0:	49 3b fb             	cmp    %r11,%rdi
0x13f3:	0f 84 41 00 00 00    	je     0x143a
0x13f9:	48 8b 1f             	mov    (%rdi),%rbx
0x13fc:	48 3b d9             	cmp    %rcx,%rbx
0x13ff:	0f 84 2b 00 00 00    	je     0x1430
0x1405:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x1409:	b8 06 00 00 00       	mov    $0x6,%eax
0x140e:	99                   	cltd   
0x140f:	41 f7 f8             	idiv   %r8d
0x1412:	4c 8b ca             	mov    %rdx,%r9
0x1415:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x1419:	45 03 c8             	add    %r8d,%r9d
0x141c:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x1421:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x1426:	41 83 f9 06          	cmp    $0x6,%r9d
0x142a:	0f 85 0a 00 00 00    	jne    0x143a
0x1430:	be 01 00 00 00       	mov    $0x1,%esi
0x1435:	e9 05 00 00 00       	jmpq   0x143f
0x143a:	be 00 00 00 00       	mov    $0x0,%esi
0x143f:	83 fe 00             	cmp    $0x0,%esi
0x1442:	0f 84 44 00 00 00    	je     0x148c
0x1448:	48 8b f4             	mov    %rsp,%rsi
0x144b:	48 8b d5             	mov    %rbp,%rdx
0x144e:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x144e
0x1455:	48 8b 05 6c eb ff ff 	mov    -0x1494(%rip),%rax        # 0xffffffc8
0x145c:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x1460:	48 8b c1             	mov    %rcx,%rax
0x1463:	48 2b c3             	sub    %rbx,%rax
0x1466:	b9 01 00 00 00       	mov    $0x1,%ecx
0x146b:	48 d3 e0             	shl    %cl,%rax
0x146e:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x1475:	00 00 00 
0x1478:	49 0b c3             	or     %r11,%rax
0x147b:	48 8b c8             	mov    %rax,%rcx
0x147e:	90                   	nop
0x147f:	90                   	nop
0x1480:	90                   	nop
0x1481:	e8 00 00 00 00       	callq  0x1486
0x1486:	90                   	nop
0x1487:	e9 0d 00 00 00       	jmpq   0x1499
0x148c:	48 8b 3d 3d eb ff ff 	mov    -0x14c3(%rip),%rdi        # 0xffffffd0
0x1493:	e8 00 00 00 00       	callq  0x1498
0x1498:	90                   	nop
0x1499:	48 83 c4 10          	add    $0x10,%rsp
0x149d:	48 8b 3d 34 eb ff ff 	mov    -0x14cc(%rip),%rdi        # 0xffffffd8
0x14a4:	be 38 00 00 00       	mov    $0x38,%esi
0x14a9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x14ad:	48 8b c8             	mov    %rax,%rcx
0x14b0:	48 63 f6             	movslq %esi,%rsi
0x14b3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x14b8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x14be:	0f 8d 07 00 00 00    	jge    0x14cb
0x14c4:	83 c1 01             	add    $0x1,%ecx
0x14c7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x14cb:	e9 78 00 00 00       	jmpq   0x1548
0x14d0:	49 8b fe             	mov    %r14,%rdi
0x14d3:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x14d7:	85 07                	test   %eax,(%rdi)
0x14d9:	e8 00 00 00 00       	callq  0x14de
0x14de:	90                   	nop
0x14df:	48 83 ec 10          	sub    $0x10,%rsp
0x14e3:	48 89 04 24          	mov    %rax,(%rsp)
0x14e7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x14eb:	48 83 c4 10          	add    $0x10,%rsp
0x14ef:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0x14f3:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x14f7:	48 83 ec 10          	sub    $0x10,%rsp
0x14fb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14ff:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x1504:	48 8b 34 24          	mov    (%rsp),%rsi
0x1508:	48 8b 15 d1 ea ff ff 	mov    -0x152f(%rip),%rdx        # 0xffffffe0
0x150f:	b9 3a 00 00 00       	mov    $0x3a,%ecx
0x1514:	48 8b c6             	mov    %rsi,%rax
0x1517:	48 8b 00             	mov    (%rax),%rax
0x151a:	48 63 ff             	movslq %edi,%rdi
0x151d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1522:	48 8b fa             	mov    %rdx,%rdi
0x1525:	48 8b d1             	mov    %rcx,%rdx
0x1528:	b9 03 00 00 00       	mov    $0x3,%ecx
0x152d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1531:	90                   	nop
0x1532:	90                   	nop
0x1533:	e8 00 00 00 00       	callq  0x1538
0x1538:	90                   	nop
0x1539:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x153d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1541:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1545:	ff d0                	callq  *%rax
0x1547:	90                   	nop
0x1548:	48 83 c5 40          	add    $0x40,%rbp
0x154c:	c9                   	leaveq 
0x154d:	c2 10 00             	retq   $0x10

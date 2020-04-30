0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 70 00 00          	enterq $0x70,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 78 e0 ff 	mov    %rax,-0x1f88(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d f1 fe ff ff 	mov    %r11,-0x10f(%rip)        # 0xffffff18
0x27:	48 8b 3d f2 fe ff ff 	mov    -0x10e(%rip),%rdi        # 0xffffff20
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
0x53:	48 8b 3d ce fe ff ff 	mov    -0x132(%rip),%rdi        # 0xffffff28
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 cb fe ff ff 	mov    -0x135(%rip),%rsi        # 0xffffff30
0x65:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x69:	49 8b ce             	mov    %r14,%rcx
0x6c:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x70:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x77:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x7e:	48 8b d9             	mov    %rcx,%rbx
0x81:	48 03 da             	add    %rdx,%rbx
0x84:	4c 8b cb             	mov    %rbx,%r9
0x87:	4d 3b c8             	cmp    %r8,%r9
0x8a:	0f 86 14 00 00 00    	jbe    0xa4
0x90:	48 8b fe             	mov    %rsi,%rdi
0x93:	48 8b f2             	mov    %rdx,%rsi
0x96:	48 8b d0             	mov    %rax,%rdx
0x99:	e8 00 00 00 00       	callq  0x9e
0x9e:	90                   	nop
0x9f:	e9 0a 00 00 00       	jmpq   0xae
0xa4:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xab:	48 8b c1             	mov    %rcx,%rax
0xae:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb6:	90                   	nop
0xb7:	90                   	nop
0xb8:	90                   	nop
0xb9:	e8 00 00 00 00       	callq  0xbe
0xbe:	90                   	nop
0xbf:	90                   	nop
0xc0:	90                   	nop
0xc1:	e8 00 00 00 00       	callq  0xc6
0xc6:	90                   	nop
0xc7:	83 f8 00             	cmp    $0x0,%eax
0xca:	0f 84 27 00 00 00    	je     0xf7
0xd0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd4:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xd8:	85 06                	test   %eax,(%rsi)
0xda:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xde:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xe2:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xe6:	83 e2 ff             	and    $0xffffffff,%edx
0xe9:	48 8b fa             	mov    %rdx,%rdi
0xec:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xf0:	90                   	nop
0xf1:	e8 00 00 00 00       	callq  0xf6
0xf6:	90                   	nop
0xf7:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xfb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xff:	48 89 38             	mov    %rdi,(%rax)
0x102:	48 83 ec 10          	sub    $0x10,%rsp
0x106:	48 89 04 24          	mov    %rax,(%rsp)
0x10a:	48 83 ec 10          	sub    $0x10,%rsp
0x10e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x113:	4c 89 1c 24          	mov    %r11,(%rsp)
0x117:	4d 33 db             	xor    %r11,%r11
0x11a:	48 83 ec 10          	sub    $0x10,%rsp
0x11e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x122:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x127:	41 85 03             	test   %eax,(%r11)
0x12a:	e8 00 00 00 00       	callq  0x12f
0x12f:	90                   	nop
0x130:	4c 8b 1c 24          	mov    (%rsp),%r11
0x134:	48 83 c4 10          	add    $0x10,%rsp
0x138:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x13c:	90                   	nop
0x13d:	90                   	nop
0x13e:	90                   	nop
0x13f:	90                   	nop
0x140:	e8 00 00 00 00       	callq  0x145
0x145:	90                   	nop
0x146:	48 8b 3d eb fd ff ff 	mov    -0x215(%rip),%rdi        # 0xffffff38
0x14d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x151:	48 8b 35 e8 fd ff ff 	mov    -0x218(%rip),%rsi        # 0xffffff40
0x158:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x15c:	49 8b ce             	mov    %r14,%rcx
0x15f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x163:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x16a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x171:	48 8b d9             	mov    %rcx,%rbx
0x174:	48 03 da             	add    %rdx,%rbx
0x177:	4c 8b cb             	mov    %rbx,%r9
0x17a:	4d 3b c8             	cmp    %r8,%r9
0x17d:	0f 86 14 00 00 00    	jbe    0x197
0x183:	48 8b fe             	mov    %rsi,%rdi
0x186:	48 8b f2             	mov    %rdx,%rsi
0x189:	48 8b d0             	mov    %rax,%rdx
0x18c:	e8 00 00 00 00       	callq  0x191
0x191:	90                   	nop
0x192:	e9 0a 00 00 00       	jmpq   0x1a1
0x197:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x19e:	48 8b c1             	mov    %rcx,%rax
0x1a1:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1a5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1a9:	90                   	nop
0x1aa:	90                   	nop
0x1ab:	90                   	nop
0x1ac:	e8 00 00 00 00       	callq  0x1b1
0x1b1:	90                   	nop
0x1b2:	90                   	nop
0x1b3:	90                   	nop
0x1b4:	e8 00 00 00 00       	callq  0x1b9
0x1b9:	90                   	nop
0x1ba:	83 f8 00             	cmp    $0x0,%eax
0x1bd:	0f 84 27 00 00 00    	je     0x1ea
0x1c3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1c7:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1cb:	85 06                	test   %eax,(%rsi)
0x1cd:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1d1:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1d5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1d9:	83 e2 ff             	and    $0xffffffff,%edx
0x1dc:	48 8b fa             	mov    %rdx,%rdi
0x1df:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1e3:	90                   	nop
0x1e4:	e8 00 00 00 00       	callq  0x1e9
0x1e9:	90                   	nop
0x1ea:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1ee:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1f2:	48 89 38             	mov    %rdi,(%rax)
0x1f5:	48 83 ec 10          	sub    $0x10,%rsp
0x1f9:	48 89 04 24          	mov    %rax,(%rsp)
0x1fd:	48 83 ec 10          	sub    $0x10,%rsp
0x201:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x206:	4c 89 1c 24          	mov    %r11,(%rsp)
0x20a:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x20e:	48 83 ec 10          	sub    $0x10,%rsp
0x212:	4c 89 1c 24          	mov    %r11,(%rsp)
0x216:	4c 8b 1d 2b fd ff ff 	mov    -0x2d5(%rip),%r11        # 0xffffff48
0x21d:	48 83 ec 10          	sub    $0x10,%rsp
0x221:	4c 89 1c 24          	mov    %r11,(%rsp)
0x225:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x22a:	41 85 03             	test   %eax,(%r11)
0x22d:	90                   	nop
0x22e:	90                   	nop
0x22f:	90                   	nop
0x230:	e8 00 00 00 00       	callq  0x235
0x235:	90                   	nop
0x236:	4c 8b 1c 24          	mov    (%rsp),%r11
0x23a:	48 83 c4 10          	add    $0x10,%rsp
0x23e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x242:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x246:	48 83 ec 10          	sub    $0x10,%rsp
0x24a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x24e:	bf 17 00 00 00       	mov    $0x17,%edi
0x253:	48 8b 34 24          	mov    (%rsp),%rsi
0x257:	48 8b 15 f2 fc ff ff 	mov    -0x30e(%rip),%rdx        # 0xffffff50
0x25e:	b9 04 00 00 00       	mov    $0x4,%ecx
0x263:	48 8b c6             	mov    %rsi,%rax
0x266:	48 8b 00             	mov    (%rax),%rax
0x269:	48 63 ff             	movslq %edi,%rdi
0x26c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x271:	48 8b fa             	mov    %rdx,%rdi
0x274:	48 8b d1             	mov    %rcx,%rdx
0x277:	b9 03 00 00 00       	mov    $0x3,%ecx
0x27c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x280:	90                   	nop
0x281:	90                   	nop
0x282:	e8 00 00 00 00       	callq  0x287
0x287:	90                   	nop
0x288:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x28c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x290:	48 8b 3c 24          	mov    (%rsp),%rdi
0x294:	ff d0                	callq  *%rax
0x296:	90                   	nop
0x297:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x29b:	48 83 ec 10          	sub    $0x10,%rsp
0x29f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2a3:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2a7:	be 10 00 00 00       	mov    $0x10,%esi
0x2ac:	48 63 f6             	movslq %esi,%rsi
0x2af:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x2b3:	89 04 24             	mov    %eax,(%rsp)
0x2b6:	41 bb e8 03 00 00    	mov    $0x3e8,%r11d
0x2bc:	48 83 ec 10          	sub    $0x10,%rsp
0x2c0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2c4:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x2c9:	8b 04 24             	mov    (%rsp),%eax
0x2cc:	48 83 c4 20          	add    $0x20,%rsp
0x2d0:	44 3b d8             	cmp    %eax,%r11d
0x2d3:	7c 33                	jl     0x308
0x2d5:	48 8b 3d 7c fc ff ff 	mov    -0x384(%rip),%rdi        # 0xffffff58
0x2dc:	be 0d 00 00 00       	mov    $0xd,%esi
0x2e1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2e5:	48 8b c8             	mov    %rax,%rcx
0x2e8:	48 63 f6             	movslq %esi,%rsi
0x2eb:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2f0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2f6:	0f 8d 07 00 00 00    	jge    0x303
0x2fc:	83 c1 01             	add    $0x1,%ecx
0x2ff:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x303:	e9 8e 00 00 00       	jmpq   0x396
0x308:	48 8b 3d 51 fc ff ff 	mov    -0x3af(%rip),%rdi        # 0xffffff60
0x30f:	be 0e 00 00 00       	mov    $0xe,%esi
0x314:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x318:	48 8b c8             	mov    %rax,%rcx
0x31b:	48 63 f6             	movslq %esi,%rsi
0x31e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x323:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x329:	0f 8d 07 00 00 00    	jge    0x336
0x32f:	83 c1 01             	add    $0x1,%ecx
0x332:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x336:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x33d:	00 00 00 
0x340:	48 83 ec 20          	sub    $0x20,%rsp
0x344:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x349:	e8 00 00 00 00       	callq  0x34e
0x34e:	90                   	nop
0x34f:	48 8b 3d 12 fc ff ff 	mov    -0x3ee(%rip),%rdi        # 0xffffff68
0x356:	be 10 00 00 00       	mov    $0x10,%esi
0x35b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x35f:	48 8b c8             	mov    %rax,%rcx
0x362:	48 63 f6             	movslq %esi,%rsi
0x365:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x36a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x370:	0f 8d 07 00 00 00    	jge    0x37d
0x376:	83 c1 01             	add    $0x1,%ecx
0x379:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x37d:	48 8b 3d ec fb ff ff 	mov    -0x414(%rip),%rdi        # 0xffffff70
0x384:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x388:	83 e8 01             	sub    $0x1,%eax
0x38b:	89 47 30             	mov    %eax,0x30(%rdi)
0x38e:	4d 8b 36             	mov    (%r14),%r14
0x391:	e9 01 ff ff ff       	jmpq   0x297
0x396:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x39c:	48 83 ec 10          	sub    $0x10,%rsp
0x3a0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3a4:	44 8b 1c 24          	mov    (%rsp),%r11d
0x3a8:	48 83 c4 10          	add    $0x10,%rsp
0x3ac:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x3b0:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x3b4:	48 83 ec 10          	sub    $0x10,%rsp
0x3b8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3bc:	41 bb 05 00 00 00    	mov    $0x5,%r11d
0x3c2:	48 83 ec 10          	sub    $0x10,%rsp
0x3c6:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3ca:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x3cf:	8b 04 24             	mov    (%rsp),%eax
0x3d2:	48 83 c4 20          	add    $0x20,%rsp
0x3d6:	44 3b d8             	cmp    %eax,%r11d
0x3d9:	7c 33                	jl     0x40e
0x3db:	48 8b 3d 96 fb ff ff 	mov    -0x46a(%rip),%rdi        # 0xffffff78
0x3e2:	be 11 00 00 00       	mov    $0x11,%esi
0x3e7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3eb:	48 8b c8             	mov    %rax,%rcx
0x3ee:	48 63 f6             	movslq %esi,%rsi
0x3f1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3f6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3fc:	0f 8d 07 00 00 00    	jge    0x409
0x402:	83 c1 01             	add    $0x1,%ecx
0x405:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x409:	e9 d0 03 00 00       	jmpq   0x7de
0x40e:	48 8b 3d 6b fb ff ff 	mov    -0x495(%rip),%rdi        # 0xffffff80
0x415:	be 12 00 00 00       	mov    $0x12,%esi
0x41a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x41e:	48 8b c8             	mov    %rax,%rcx
0x421:	48 63 f6             	movslq %esi,%rsi
0x424:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x429:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x42f:	0f 8d 07 00 00 00    	jge    0x43c
0x435:	83 c1 01             	add    $0x1,%ecx
0x438:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x43c:	48 8b 3d 45 fb ff ff 	mov    -0x4bb(%rip),%rdi        # 0xffffff88
0x443:	be 18 00 00 00       	mov    $0x18,%esi
0x448:	48 63 f6             	movslq %esi,%rsi
0x44b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x44f:	48 83 ec 10          	sub    $0x10,%rsp
0x453:	48 89 04 24          	mov    %rax,(%rsp)
0x457:	48 8b 3d 32 fb ff ff 	mov    -0x4ce(%rip),%rdi        # 0xffffff90
0x45e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x462:	48 8b 35 2f fb ff ff 	mov    -0x4d1(%rip),%rsi        # 0xffffff98
0x469:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x46d:	49 8b ce             	mov    %r14,%rcx
0x470:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x474:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x47b:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x482:	48 8b d9             	mov    %rcx,%rbx
0x485:	48 03 da             	add    %rdx,%rbx
0x488:	4c 8b cb             	mov    %rbx,%r9
0x48b:	4d 3b c8             	cmp    %r8,%r9
0x48e:	0f 86 14 00 00 00    	jbe    0x4a8
0x494:	48 8b fe             	mov    %rsi,%rdi
0x497:	48 8b f2             	mov    %rdx,%rsi
0x49a:	48 8b d0             	mov    %rax,%rdx
0x49d:	e8 00 00 00 00       	callq  0x4a2
0x4a2:	90                   	nop
0x4a3:	e9 0a 00 00 00       	jmpq   0x4b2
0x4a8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x4af:	48 8b c1             	mov    %rcx,%rax
0x4b2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4b6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4ba:	90                   	nop
0x4bb:	90                   	nop
0x4bc:	90                   	nop
0x4bd:	e8 00 00 00 00       	callq  0x4c2
0x4c2:	90                   	nop
0x4c3:	90                   	nop
0x4c4:	90                   	nop
0x4c5:	e8 00 00 00 00       	callq  0x4ca
0x4ca:	90                   	nop
0x4cb:	83 f8 00             	cmp    $0x0,%eax
0x4ce:	0f 84 27 00 00 00    	je     0x4fb
0x4d4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4d8:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x4dc:	85 06                	test   %eax,(%rsi)
0x4de:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x4e2:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x4e6:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x4ea:	83 e2 ff             	and    $0xffffffff,%edx
0x4ed:	48 8b fa             	mov    %rdx,%rdi
0x4f0:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x4f4:	90                   	nop
0x4f5:	e8 00 00 00 00       	callq  0x4fa
0x4fa:	90                   	nop
0x4fb:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x4ff:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x503:	48 89 38             	mov    %rdi,(%rax)
0x506:	48 83 ec 10          	sub    $0x10,%rsp
0x50a:	48 89 04 24          	mov    %rax,(%rsp)
0x50e:	48 83 ec 10          	sub    $0x10,%rsp
0x512:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x517:	4c 89 1c 24          	mov    %r11,(%rsp)
0x51b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x51f:	41 85 03             	test   %eax,(%r11)
0x522:	e8 00 00 00 00       	callq  0x527
0x527:	90                   	nop
0x528:	4c 8b 1d 71 fa ff ff 	mov    -0x58f(%rip),%r11        # 0xffffffa0
0x52f:	48 83 ec 10          	sub    $0x10,%rsp
0x533:	4c 89 1c 24          	mov    %r11,(%rsp)
0x537:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x53c:	41 85 03             	test   %eax,(%r11)
0x53f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x544:	90                   	nop
0x545:	90                   	nop
0x546:	90                   	nop
0x547:	90                   	nop
0x548:	e8 00 00 00 00       	callq  0x54d
0x54d:	90                   	nop
0x54e:	48 83 ec 10          	sub    $0x10,%rsp
0x552:	48 89 04 24          	mov    %rax,(%rsp)
0x556:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x55a:	48 83 ec 10          	sub    $0x10,%rsp
0x55e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x562:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x567:	41 85 03             	test   %eax,(%r11)
0x56a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x56f:	90                   	nop
0x570:	e8 00 00 00 00       	callq  0x575
0x575:	90                   	nop
0x576:	48 83 ec 10          	sub    $0x10,%rsp
0x57a:	48 89 04 24          	mov    %rax,(%rsp)
0x57e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x582:	41 85 03             	test   %eax,(%r11)
0x585:	48 8b 3c 24          	mov    (%rsp),%rdi
0x589:	e8 00 00 00 00       	callq  0x58e
0x58e:	90                   	nop
0x58f:	48 83 ec 10          	sub    $0x10,%rsp
0x593:	48 89 04 24          	mov    %rax,(%rsp)
0x597:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x59c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5a1:	48 8b 15 00 fa ff ff 	mov    -0x600(%rip),%rdx        # 0xffffffa8
0x5a8:	b9 18 00 00 00       	mov    $0x18,%ecx
0x5ad:	48 8b c6             	mov    %rsi,%rax
0x5b0:	48 8b 00             	mov    (%rax),%rax
0x5b3:	48 63 ff             	movslq %edi,%rdi
0x5b6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5bb:	48 8b fa             	mov    %rdx,%rdi
0x5be:	48 8b d1             	mov    %rcx,%rdx
0x5c1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5c6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5ca:	90                   	nop
0x5cb:	90                   	nop
0x5cc:	e8 00 00 00 00       	callq  0x5d1
0x5d1:	90                   	nop
0x5d2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5d6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5da:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5df:	ff d0                	callq  *%rax
0x5e1:	90                   	nop
0x5e2:	e8 00 00 00 00       	callq  0x5e7
0x5e7:	90                   	nop
0x5e8:	48 8b 3d c1 f9 ff ff 	mov    -0x63f(%rip),%rdi        # 0xffffffb0
0x5ef:	be 18 00 00 00       	mov    $0x18,%esi
0x5f4:	48 63 f6             	movslq %esi,%rsi
0x5f7:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5fb:	48 83 ec 10          	sub    $0x10,%rsp
0x5ff:	48 89 04 24          	mov    %rax,(%rsp)
0x603:	48 8b 3d ae f9 ff ff 	mov    -0x652(%rip),%rdi        # 0xffffffb8
0x60a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x60e:	48 8b 35 ab f9 ff ff 	mov    -0x655(%rip),%rsi        # 0xffffffc0
0x615:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x619:	49 8b ce             	mov    %r14,%rcx
0x61c:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x620:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x627:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x62e:	48 8b d9             	mov    %rcx,%rbx
0x631:	48 03 da             	add    %rdx,%rbx
0x634:	4c 8b cb             	mov    %rbx,%r9
0x637:	4d 3b c8             	cmp    %r8,%r9
0x63a:	0f 86 14 00 00 00    	jbe    0x654
0x640:	48 8b fe             	mov    %rsi,%rdi
0x643:	48 8b f2             	mov    %rdx,%rsi
0x646:	48 8b d0             	mov    %rax,%rdx
0x649:	e8 00 00 00 00       	callq  0x64e
0x64e:	90                   	nop
0x64f:	e9 0a 00 00 00       	jmpq   0x65e
0x654:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x65b:	48 8b c1             	mov    %rcx,%rax
0x65e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x662:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x666:	90                   	nop
0x667:	90                   	nop
0x668:	90                   	nop
0x669:	e8 00 00 00 00       	callq  0x66e
0x66e:	90                   	nop
0x66f:	90                   	nop
0x670:	90                   	nop
0x671:	e8 00 00 00 00       	callq  0x676
0x676:	90                   	nop
0x677:	83 f8 00             	cmp    $0x0,%eax
0x67a:	0f 84 27 00 00 00    	je     0x6a7
0x680:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x684:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x688:	85 06                	test   %eax,(%rsi)
0x68a:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x68e:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x692:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x696:	83 e2 ff             	and    $0xffffffff,%edx
0x699:	48 8b fa             	mov    %rdx,%rdi
0x69c:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x6a0:	90                   	nop
0x6a1:	e8 00 00 00 00       	callq  0x6a6
0x6a6:	90                   	nop
0x6a7:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x6ab:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6af:	48 89 38             	mov    %rdi,(%rax)
0x6b2:	48 83 ec 10          	sub    $0x10,%rsp
0x6b6:	48 89 04 24          	mov    %rax,(%rsp)
0x6ba:	48 83 ec 10          	sub    $0x10,%rsp
0x6be:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6c3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6c7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6cb:	41 85 03             	test   %eax,(%r11)
0x6ce:	90                   	nop
0x6cf:	90                   	nop
0x6d0:	e8 00 00 00 00       	callq  0x6d5
0x6d5:	90                   	nop
0x6d6:	4c 8b 1d eb f8 ff ff 	mov    -0x715(%rip),%r11        # 0xffffffc8
0x6dd:	48 83 ec 10          	sub    $0x10,%rsp
0x6e1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6e5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6ea:	41 85 03             	test   %eax,(%r11)
0x6ed:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6f2:	e8 00 00 00 00       	callq  0x6f7
0x6f7:	90                   	nop
0x6f8:	48 83 ec 10          	sub    $0x10,%rsp
0x6fc:	48 89 04 24          	mov    %rax,(%rsp)
0x700:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x704:	48 83 ec 10          	sub    $0x10,%rsp
0x708:	44 89 1c 24          	mov    %r11d,(%rsp)
0x70c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x711:	41 85 03             	test   %eax,(%r11)
0x714:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x719:	e8 00 00 00 00       	callq  0x71e
0x71e:	90                   	nop
0x71f:	48 83 ec 10          	sub    $0x10,%rsp
0x723:	48 89 04 24          	mov    %rax,(%rsp)
0x727:	4c 8b 1c 24          	mov    (%rsp),%r11
0x72b:	41 85 03             	test   %eax,(%r11)
0x72e:	48 8b 3c 24          	mov    (%rsp),%rdi
0x732:	e8 00 00 00 00       	callq  0x737
0x737:	90                   	nop
0x738:	48 83 ec 10          	sub    $0x10,%rsp
0x73c:	48 89 04 24          	mov    %rax,(%rsp)
0x740:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x745:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x74a:	48 8b 15 7f f8 ff ff 	mov    -0x781(%rip),%rdx        # 0xffffffd0
0x751:	b9 26 00 00 00       	mov    $0x26,%ecx
0x756:	48 8b c6             	mov    %rsi,%rax
0x759:	48 8b 00             	mov    (%rax),%rax
0x75c:	48 63 ff             	movslq %edi,%rdi
0x75f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x764:	48 8b fa             	mov    %rdx,%rdi
0x767:	48 8b d1             	mov    %rcx,%rdx
0x76a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x76f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x773:	90                   	nop
0x774:	90                   	nop
0x775:	e8 00 00 00 00       	callq  0x77a
0x77a:	90                   	nop
0x77b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x77f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x783:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x788:	ff d0                	callq  *%rax
0x78a:	90                   	nop
0x78b:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x78f:	41 83 c3 01          	add    $0x1,%r11d
0x793:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x797:	48 8b 3d 3a f8 ff ff 	mov    -0x7c6(%rip),%rdi        # 0xffffffd8
0x79e:	be 2e 00 00 00       	mov    $0x2e,%esi
0x7a3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x7a7:	48 8b c8             	mov    %rax,%rcx
0x7aa:	48 63 f6             	movslq %esi,%rsi
0x7ad:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x7b2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x7b8:	0f 8d 07 00 00 00    	jge    0x7c5
0x7be:	83 c1 01             	add    $0x1,%ecx
0x7c1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7c5:	48 8b 3d 14 f8 ff ff 	mov    -0x7ec(%rip),%rdi        # 0xffffffe0
0x7cc:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x7d0:	83 e8 01             	sub    $0x1,%eax
0x7d3:	89 47 30             	mov    %eax,0x30(%rdi)
0x7d6:	4d 8b 36             	mov    (%r14),%r14
0x7d9:	e9 d2 fb ff ff       	jmpq   0x3b0
0x7de:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7e2:	48 83 ec 10          	sub    $0x10,%rsp
0x7e6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7ea:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7ee:	41 85 03             	test   %eax,(%r11)
0x7f1:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7f5:	90                   	nop
0x7f6:	90                   	nop
0x7f7:	90                   	nop
0x7f8:	e8 00 00 00 00       	callq  0x7fd
0x7fd:	90                   	nop
0x7fe:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x802:	48 83 ec 10          	sub    $0x10,%rsp
0x806:	4c 89 1c 24          	mov    %r11,(%rsp)
0x80a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x80e:	41 85 03             	test   %eax,(%r11)
0x811:	48 8b 3c 24          	mov    (%rsp),%rdi
0x815:	90                   	nop
0x816:	90                   	nop
0x817:	90                   	nop
0x818:	e8 00 00 00 00       	callq  0x81d
0x81d:	90                   	nop
0x81e:	48 83 c5 40          	add    $0x40,%rbp
0x822:	c9                   	leaveq 
0x823:	c2 10 00             	retq   $0x10

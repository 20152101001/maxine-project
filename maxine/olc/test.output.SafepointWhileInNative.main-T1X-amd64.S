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
0x20:	4c 89 1d e9 fe ff ff 	mov    %r11,-0x117(%rip)        # 0xffffff10
0x27:	48 8b 3d ea fe ff ff 	mov    -0x116(%rip),%rdi        # 0xffffff18
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
0x53:	48 8b 3d c6 fe ff ff 	mov    -0x13a(%rip),%rdi        # 0xffffff20
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 c3 fe ff ff 	mov    -0x13d(%rip),%rsi        # 0xffffff28
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
0x117:	4c 8b 1c 24          	mov    (%rsp),%r11
0x11b:	41 85 03             	test   %eax,(%r11)
0x11e:	90                   	nop
0x11f:	90                   	nop
0x120:	e8 00 00 00 00       	callq  0x125
0x125:	90                   	nop
0x126:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12a:	48 83 c4 10          	add    $0x10,%rsp
0x12e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 8b 3d f1 fd ff ff 	mov    -0x20f(%rip),%rdi        # 0xffffff30
0x13f:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x143:	48 8b 35 ee fd ff ff 	mov    -0x212(%rip),%rsi        # 0xffffff38
0x14a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x14e:	49 8b ce             	mov    %r14,%rcx
0x151:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x155:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x15c:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x163:	48 8b d9             	mov    %rcx,%rbx
0x166:	48 03 da             	add    %rdx,%rbx
0x169:	4c 8b cb             	mov    %rbx,%r9
0x16c:	4d 3b c8             	cmp    %r8,%r9
0x16f:	0f 86 14 00 00 00    	jbe    0x189
0x175:	48 8b fe             	mov    %rsi,%rdi
0x178:	48 8b f2             	mov    %rdx,%rsi
0x17b:	48 8b d0             	mov    %rax,%rdx
0x17e:	e8 00 00 00 00       	callq  0x183
0x183:	90                   	nop
0x184:	e9 0a 00 00 00       	jmpq   0x193
0x189:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x190:	48 8b c1             	mov    %rcx,%rax
0x193:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x197:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x19b:	90                   	nop
0x19c:	90                   	nop
0x19d:	90                   	nop
0x19e:	e8 00 00 00 00       	callq  0x1a3
0x1a3:	90                   	nop
0x1a4:	90                   	nop
0x1a5:	90                   	nop
0x1a6:	e8 00 00 00 00       	callq  0x1ab
0x1ab:	90                   	nop
0x1ac:	83 f8 00             	cmp    $0x0,%eax
0x1af:	0f 84 27 00 00 00    	je     0x1dc
0x1b5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1b9:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1bd:	85 06                	test   %eax,(%rsi)
0x1bf:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1c3:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1c7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1cb:	83 e2 ff             	and    $0xffffffff,%edx
0x1ce:	48 8b fa             	mov    %rdx,%rdi
0x1d1:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1d5:	90                   	nop
0x1d6:	e8 00 00 00 00       	callq  0x1db
0x1db:	90                   	nop
0x1dc:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1e0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e4:	48 89 38             	mov    %rdi,(%rax)
0x1e7:	48 83 ec 10          	sub    $0x10,%rsp
0x1eb:	48 89 04 24          	mov    %rax,(%rsp)
0x1ef:	48 83 ec 10          	sub    $0x10,%rsp
0x1f3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1f8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1fc:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x200:	48 83 ec 10          	sub    $0x10,%rsp
0x204:	4c 89 1c 24          	mov    %r11,(%rsp)
0x208:	4c 8b 1d 31 fd ff ff 	mov    -0x2cf(%rip),%r11        # 0xffffff40
0x20f:	48 83 ec 10          	sub    $0x10,%rsp
0x213:	4c 89 1c 24          	mov    %r11,(%rsp)
0x217:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x21c:	41 85 03             	test   %eax,(%r11)
0x21f:	90                   	nop
0x220:	e8 00 00 00 00       	callq  0x225
0x225:	90                   	nop
0x226:	4c 8b 1c 24          	mov    (%rsp),%r11
0x22a:	48 83 c4 10          	add    $0x10,%rsp
0x22e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x232:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x236:	48 83 ec 10          	sub    $0x10,%rsp
0x23a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x23e:	48 83 ec 10          	sub    $0x10,%rsp
0x242:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x247:	4c 89 1c 24          	mov    %r11,(%rsp)
0x24b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x24f:	48 83 c4 10          	add    $0x10,%rsp
0x253:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x257:	48 8b 3c 24          	mov    (%rsp),%rdi
0x25b:	48 8b f7             	mov    %rdi,%rsi
0x25e:	4d 33 db             	xor    %r11,%r11
0x261:	49 3b f3             	cmp    %r11,%rsi
0x264:	0f 84 7b 00 00 00    	je     0x2e5
0x26a:	48 8b 3d d7 fc ff ff 	mov    -0x329(%rip),%rdi        # 0xffffff48
0x271:	49 8b ce             	mov    %r14,%rcx
0x274:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x278:	48 8b d9             	mov    %rcx,%rbx
0x27b:	83 e3 ff             	and    $0xffffffff,%ebx
0x27e:	48 8b ce             	mov    %rsi,%rcx
0x281:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x285:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x28c:	00 fc 07 
0x28f:	48 8b d1             	mov    %rcx,%rdx
0x292:	48 23 d0             	and    %rax,%rdx
0x295:	4c 8b c1             	mov    %rcx,%r8
0x298:	4c 23 c0             	and    %rax,%r8
0x29b:	48 63 c3             	movslq %ebx,%rax
0x29e:	b9 22 00 00 00       	mov    $0x22,%ecx
0x2a3:	48 d3 e0             	shl    %cl,%rax
0x2a6:	4c 0b c0             	or     %rax,%r8
0x2a9:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x2b0:	00 00 08 
0x2b3:	4c 0b c0             	or     %rax,%r8
0x2b6:	48 8b ce             	mov    %rsi,%rcx
0x2b9:	48 8b c2             	mov    %rdx,%rax
0x2bc:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x2c0:	f0 4c 0f b1 01       	lock cmpxchg %r8,(%rcx)
0x2c5:	48 8b c8             	mov    %rax,%rcx
0x2c8:	48 3b ca             	cmp    %rdx,%rcx
0x2cb:	0f 84 23 00 00 00    	je     0x2f4
0x2d1:	48 8b d0             	mov    %rax,%rdx
0x2d4:	48 8b cb             	mov    %rbx,%rcx
0x2d7:	90                   	nop
0x2d8:	90                   	nop
0x2d9:	90                   	nop
0x2da:	e8 00 00 00 00       	callq  0x2df
0x2df:	90                   	nop
0x2e0:	e9 0f 00 00 00       	jmpq   0x2f4
0x2e5:	e8 00 00 00 00       	callq  0x2ea
0x2ea:	90                   	nop
0x2eb:	48 8b f8             	mov    %rax,%rdi
0x2ee:	e8 00 00 00 00       	callq  0x2f3
0x2f3:	90                   	nop
0x2f4:	48 83 c4 10          	add    $0x10,%rsp
0x2f8:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x2fc:	48 83 ec 10          	sub    $0x10,%rsp
0x300:	4c 89 1c 24          	mov    %r11,(%rsp)
0x304:	bf 17 00 00 00       	mov    $0x17,%edi
0x309:	48 8b 34 24          	mov    (%rsp),%rsi
0x30d:	48 8b 15 3c fc ff ff 	mov    -0x3c4(%rip),%rdx        # 0xffffff50
0x314:	b9 04 00 00 00       	mov    $0x4,%ecx
0x319:	48 8b c6             	mov    %rsi,%rax
0x31c:	48 8b 00             	mov    (%rax),%rax
0x31f:	48 63 ff             	movslq %edi,%rdi
0x322:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x327:	48 8b fa             	mov    %rdx,%rdi
0x32a:	48 8b d1             	mov    %rcx,%rdx
0x32d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x332:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x336:	90                   	nop
0x337:	90                   	nop
0x338:	e8 00 00 00 00       	callq  0x33d
0x33d:	90                   	nop
0x33e:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x342:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x346:	48 8b 3c 24          	mov    (%rsp),%rdi
0x34a:	ff d0                	callq  *%rax
0x34c:	90                   	nop
0x34d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x351:	48 83 ec 10          	sub    $0x10,%rsp
0x355:	4c 89 1c 24          	mov    %r11,(%rsp)
0x359:	4c 8b 1c 24          	mov    (%rsp),%r11
0x35d:	41 85 03             	test   %eax,(%r11)
0x360:	48 8b 3c 24          	mov    (%rsp),%rdi
0x364:	90                   	nop
0x365:	90                   	nop
0x366:	90                   	nop
0x367:	90                   	nop
0x368:	e8 00 00 00 00       	callq  0x36d
0x36d:	90                   	nop
0x36e:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x372:	48 83 ec 10          	sub    $0x10,%rsp
0x376:	4c 89 1c 24          	mov    %r11,(%rsp)
0x37a:	48 8b 3c 24          	mov    (%rsp),%rdi
0x37e:	48 8b f7             	mov    %rdi,%rsi
0x381:	4d 33 db             	xor    %r11,%r11
0x384:	49 3b f3             	cmp    %r11,%rsi
0x387:	0f 84 76 00 00 00    	je     0x403
0x38d:	48 8b 3d c4 fb ff ff 	mov    -0x43c(%rip),%rdi        # 0xffffff58
0x394:	49 8b ce             	mov    %r14,%rcx
0x397:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x39b:	48 8b d9             	mov    %rcx,%rbx
0x39e:	83 e3 ff             	and    $0xffffffff,%ebx
0x3a1:	48 8b ce             	mov    %rsi,%rcx
0x3a4:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x3a8:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x3af:	00 fc 07 
0x3b2:	48 8b d1             	mov    %rcx,%rdx
0x3b5:	48 23 d0             	and    %rax,%rdx
0x3b8:	4c 8b c1             	mov    %rcx,%r8
0x3bb:	4c 23 c0             	and    %rax,%r8
0x3be:	48 63 c3             	movslq %ebx,%rax
0x3c1:	b9 22 00 00 00       	mov    $0x22,%ecx
0x3c6:	48 d3 e0             	shl    %cl,%rax
0x3c9:	4c 0b c0             	or     %rax,%r8
0x3cc:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x3d3:	00 00 08 
0x3d6:	4c 0b c0             	or     %rax,%r8
0x3d9:	48 8b ce             	mov    %rsi,%rcx
0x3dc:	49 8b c0             	mov    %r8,%rax
0x3df:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x3e3:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x3e8:	48 8b d0             	mov    %rax,%rdx
0x3eb:	49 3b d0             	cmp    %r8,%rdx
0x3ee:	0f 84 0f 00 00 00    	je     0x403
0x3f4:	48 8b d0             	mov    %rax,%rdx
0x3f7:	48 8b cb             	mov    %rbx,%rcx
0x3fa:	90                   	nop
0x3fb:	90                   	nop
0x3fc:	90                   	nop
0x3fd:	e8 00 00 00 00       	callq  0x402
0x402:	90                   	nop
0x403:	48 83 c4 10          	add    $0x10,%rsp
0x407:	48 8b 3d 52 fb ff ff 	mov    -0x4ae(%rip),%rdi        # 0xffffff60
0x40e:	be 0d 00 00 00       	mov    $0xd,%esi
0x413:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x417:	48 8b c8             	mov    %rax,%rcx
0x41a:	48 63 f6             	movslq %esi,%rsi
0x41d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x422:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x428:	0f 8d 07 00 00 00    	jge    0x435
0x42e:	83 c1 01             	add    $0x1,%ecx
0x431:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x435:	e9 8f 01 00 00       	jmpq   0x5c9
0x43a:	49 8b fe             	mov    %r14,%rdi
0x43d:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x441:	85 07                	test   %eax,(%rdi)
0x443:	e8 00 00 00 00       	callq  0x448
0x448:	90                   	nop
0x449:	48 83 ec 10          	sub    $0x10,%rsp
0x44d:	48 89 04 24          	mov    %rax,(%rsp)
0x451:	4c 8b 1c 24          	mov    (%rsp),%r11
0x455:	48 83 c4 10          	add    $0x10,%rsp
0x459:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x45d:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x461:	48 83 ec 10          	sub    $0x10,%rsp
0x465:	4c 89 1c 24          	mov    %r11,(%rsp)
0x469:	48 8b 3c 24          	mov    (%rsp),%rdi
0x46d:	48 8b f7             	mov    %rdi,%rsi
0x470:	4d 33 db             	xor    %r11,%r11
0x473:	49 3b f3             	cmp    %r11,%rsi
0x476:	0f 84 76 00 00 00    	je     0x4f2
0x47c:	48 8b 3d e5 fa ff ff 	mov    -0x51b(%rip),%rdi        # 0xffffff68
0x483:	49 8b ce             	mov    %r14,%rcx
0x486:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x48a:	48 8b d9             	mov    %rcx,%rbx
0x48d:	83 e3 ff             	and    $0xffffffff,%ebx
0x490:	48 8b ce             	mov    %rsi,%rcx
0x493:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x497:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x49e:	00 fc 07 
0x4a1:	48 8b d1             	mov    %rcx,%rdx
0x4a4:	48 23 d0             	and    %rax,%rdx
0x4a7:	4c 8b c1             	mov    %rcx,%r8
0x4aa:	4c 23 c0             	and    %rax,%r8
0x4ad:	48 63 c3             	movslq %ebx,%rax
0x4b0:	b9 22 00 00 00       	mov    $0x22,%ecx
0x4b5:	48 d3 e0             	shl    %cl,%rax
0x4b8:	4c 0b c0             	or     %rax,%r8
0x4bb:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x4c2:	00 00 08 
0x4c5:	4c 0b c0             	or     %rax,%r8
0x4c8:	48 8b ce             	mov    %rsi,%rcx
0x4cb:	49 8b c0             	mov    %r8,%rax
0x4ce:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x4d2:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x4d7:	48 8b d0             	mov    %rax,%rdx
0x4da:	49 3b d0             	cmp    %r8,%rdx
0x4dd:	0f 84 0f 00 00 00    	je     0x4f2
0x4e3:	48 8b d0             	mov    %rax,%rdx
0x4e6:	48 8b cb             	mov    %rbx,%rcx
0x4e9:	90                   	nop
0x4ea:	90                   	nop
0x4eb:	90                   	nop
0x4ec:	e8 00 00 00 00       	callq  0x4f1
0x4f1:	90                   	nop
0x4f2:	48 83 c4 10          	add    $0x10,%rsp
0x4f6:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x4fa:	48 83 ec 10          	sub    $0x10,%rsp
0x4fe:	4c 89 1c 24          	mov    %r11,(%rsp)
0x502:	48 8b 3c 24          	mov    (%rsp),%rdi
0x506:	4d 33 db             	xor    %r11,%r11
0x509:	49 3b fb             	cmp    %r11,%rdi
0x50c:	0f 84 62 00 00 00    	je     0x574
0x512:	48 8b 0d 57 fa ff ff 	mov    -0x5a9(%rip),%rcx        # 0xffffff70
0x519:	4d 33 db             	xor    %r11,%r11
0x51c:	49 3b fb             	cmp    %r11,%rdi
0x51f:	0f 84 41 00 00 00    	je     0x566
0x525:	48 8b 1f             	mov    (%rdi),%rbx
0x528:	48 3b d9             	cmp    %rcx,%rbx
0x52b:	0f 84 2b 00 00 00    	je     0x55c
0x531:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x535:	b8 06 00 00 00       	mov    $0x6,%eax
0x53a:	99                   	cltd   
0x53b:	41 f7 f8             	idiv   %r8d
0x53e:	4c 8b ca             	mov    %rdx,%r9
0x541:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x545:	45 03 c8             	add    %r8d,%r9d
0x548:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x54d:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x552:	41 83 f9 06          	cmp    $0x6,%r9d
0x556:	0f 85 0a 00 00 00    	jne    0x566
0x55c:	be 01 00 00 00       	mov    $0x1,%esi
0x561:	e9 05 00 00 00       	jmpq   0x56b
0x566:	be 00 00 00 00       	mov    $0x0,%esi
0x56b:	83 fe 00             	cmp    $0x0,%esi
0x56e:	0f 84 44 00 00 00    	je     0x5b8
0x574:	48 8b f4             	mov    %rsp,%rsi
0x577:	48 8b d5             	mov    %rbp,%rdx
0x57a:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x57a
0x581:	48 8b 05 f0 f9 ff ff 	mov    -0x610(%rip),%rax        # 0xffffff78
0x588:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x58c:	48 8b c1             	mov    %rcx,%rax
0x58f:	48 2b c3             	sub    %rbx,%rax
0x592:	b9 01 00 00 00       	mov    $0x1,%ecx
0x597:	48 d3 e0             	shl    %cl,%rax
0x59a:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x5a1:	00 00 00 
0x5a4:	49 0b c3             	or     %r11,%rax
0x5a7:	48 8b c8             	mov    %rax,%rcx
0x5aa:	90                   	nop
0x5ab:	90                   	nop
0x5ac:	90                   	nop
0x5ad:	e8 00 00 00 00       	callq  0x5b2
0x5b2:	90                   	nop
0x5b3:	e9 0d 00 00 00       	jmpq   0x5c5
0x5b8:	48 8b 3d c1 f9 ff ff 	mov    -0x63f(%rip),%rdi        # 0xffffff80
0x5bf:	e8 00 00 00 00       	callq  0x5c4
0x5c4:	90                   	nop
0x5c5:	48 83 c4 10          	add    $0x10,%rsp
0x5c9:	48 8b 3d b8 f9 ff ff 	mov    -0x648(%rip),%rdi        # 0xffffff88
0x5d0:	be 18 00 00 00       	mov    $0x18,%esi
0x5d5:	48 63 f6             	movslq %esi,%rsi
0x5d8:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5dc:	48 83 ec 10          	sub    $0x10,%rsp
0x5e0:	48 89 04 24          	mov    %rax,(%rsp)
0x5e4:	4c 8b 1d a5 f9 ff ff 	mov    -0x65b(%rip),%r11        # 0xffffff90
0x5eb:	48 83 ec 10          	sub    $0x10,%rsp
0x5ef:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f3:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5f8:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5fd:	48 8b 15 94 f9 ff ff 	mov    -0x66c(%rip),%rdx        # 0xffffff98
0x604:	b9 0f 00 00 00       	mov    $0xf,%ecx
0x609:	48 8b c6             	mov    %rsi,%rax
0x60c:	48 8b 00             	mov    (%rax),%rax
0x60f:	48 63 ff             	movslq %edi,%rdi
0x612:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x617:	48 8b fa             	mov    %rdx,%rdi
0x61a:	48 8b d1             	mov    %rcx,%rdx
0x61d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x622:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x626:	90                   	nop
0x627:	90                   	nop
0x628:	e8 00 00 00 00       	callq  0x62d
0x62d:	90                   	nop
0x62e:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x632:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x636:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x63b:	ff d0                	callq  *%rax
0x63d:	90                   	nop
0x63e:	49 bb c8 00 00 00 00 	movabs $0xc8,%r11
0x645:	00 00 00 
0x648:	48 83 ec 20          	sub    $0x20,%rsp
0x64c:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x651:	e8 00 00 00 00       	callq  0x656
0x656:	90                   	nop
0x657:	48 8b 3d 42 f9 ff ff 	mov    -0x6be(%rip),%rdi        # 0xffffffa0
0x65e:	be 18 00 00 00       	mov    $0x18,%esi
0x663:	48 63 f6             	movslq %esi,%rsi
0x666:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66a:	48 83 ec 10          	sub    $0x10,%rsp
0x66e:	48 89 04 24          	mov    %rax,(%rsp)
0x672:	4c 8b 1d 2f f9 ff ff 	mov    -0x6d1(%rip),%r11        # 0xffffffa8
0x679:	48 83 ec 10          	sub    $0x10,%rsp
0x67d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x681:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x686:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x68b:	48 8b 15 1e f9 ff ff 	mov    -0x6e2(%rip),%rdx        # 0xffffffb0
0x692:	b9 19 00 00 00       	mov    $0x19,%ecx
0x697:	48 8b c6             	mov    %rsi,%rax
0x69a:	48 8b 00             	mov    (%rax),%rax
0x69d:	48 63 ff             	movslq %edi,%rdi
0x6a0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x6a5:	48 8b fa             	mov    %rdx,%rdi
0x6a8:	48 8b d1             	mov    %rcx,%rdx
0x6ab:	b9 03 00 00 00       	mov    $0x3,%ecx
0x6b0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x6b4:	90                   	nop
0x6b5:	90                   	nop
0x6b6:	e8 00 00 00 00       	callq  0x6bb
0x6bb:	90                   	nop
0x6bc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x6c0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x6c4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6c9:	ff d0                	callq  *%rax
0x6cb:	90                   	nop
0x6cc:	48 8b 3d e5 f8 ff ff 	mov    -0x71b(%rip),%rdi        # 0xffffffb8
0x6d3:	be 18 00 00 00       	mov    $0x18,%esi
0x6d8:	48 63 f6             	movslq %esi,%rsi
0x6db:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x6df:	48 83 ec 10          	sub    $0x10,%rsp
0x6e3:	48 89 04 24          	mov    %rax,(%rsp)
0x6e7:	4c 8b 1d d2 f8 ff ff 	mov    -0x72e(%rip),%r11        # 0xffffffc0
0x6ee:	48 83 ec 10          	sub    $0x10,%rsp
0x6f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6f6:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x6fb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x700:	48 8b 15 c1 f8 ff ff 	mov    -0x73f(%rip),%rdx        # 0xffffffc8
0x707:	b9 22 00 00 00       	mov    $0x22,%ecx
0x70c:	48 8b c6             	mov    %rsi,%rax
0x70f:	48 8b 00             	mov    (%rax),%rax
0x712:	48 63 ff             	movslq %edi,%rdi
0x715:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x71a:	48 8b fa             	mov    %rdx,%rdi
0x71d:	48 8b d1             	mov    %rcx,%rdx
0x720:	b9 03 00 00 00       	mov    $0x3,%ecx
0x725:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x729:	90                   	nop
0x72a:	90                   	nop
0x72b:	e8 00 00 00 00       	callq  0x730
0x730:	90                   	nop
0x731:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x735:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x739:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x73e:	ff d0                	callq  *%rax
0x740:	90                   	nop
0x741:	e8 00 00 00 00       	callq  0x746
0x746:	90                   	nop
0x747:	48 8b 3d 82 f8 ff ff 	mov    -0x77e(%rip),%rdi        # 0xffffffd0
0x74e:	be 18 00 00 00       	mov    $0x18,%esi
0x753:	48 63 f6             	movslq %esi,%rsi
0x756:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x75a:	48 83 ec 10          	sub    $0x10,%rsp
0x75e:	48 89 04 24          	mov    %rax,(%rsp)
0x762:	4c 8b 1d 6f f8 ff ff 	mov    -0x791(%rip),%r11        # 0xffffffd8
0x769:	48 83 ec 10          	sub    $0x10,%rsp
0x76d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x771:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x776:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x77b:	48 8b 15 5e f8 ff ff 	mov    -0x7a2(%rip),%rdx        # 0xffffffe0
0x782:	b9 2c 00 00 00       	mov    $0x2c,%ecx
0x787:	48 8b c6             	mov    %rsi,%rax
0x78a:	48 8b 00             	mov    (%rax),%rax
0x78d:	48 63 ff             	movslq %edi,%rdi
0x790:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x795:	48 8b fa             	mov    %rdx,%rdi
0x798:	48 8b d1             	mov    %rcx,%rdx
0x79b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7a0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7a4:	90                   	nop
0x7a5:	90                   	nop
0x7a6:	e8 00 00 00 00       	callq  0x7ab
0x7ab:	90                   	nop
0x7ac:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7b0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7b4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7b9:	ff d0                	callq  *%rax
0x7bb:	90                   	nop
0x7bc:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7c0:	48 83 ec 10          	sub    $0x10,%rsp
0x7c4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7c8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7cc:	41 85 03             	test   %eax,(%r11)
0x7cf:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7d3:	e8 00 00 00 00       	callq  0x7d8
0x7d8:	90                   	nop
0x7d9:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x7dd:	48 83 ec 10          	sub    $0x10,%rsp
0x7e1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7e5:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7e9:	41 85 03             	test   %eax,(%r11)
0x7ec:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7f0:	e8 00 00 00 00       	callq  0x7f5
0x7f5:	90                   	nop
0x7f6:	48 83 c5 40          	add    $0x40,%rbp
0x7fa:	c9                   	leaveq 
0x7fb:	c2 10 00             	retq   $0x10

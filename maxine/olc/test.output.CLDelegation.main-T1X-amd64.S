0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 50 00 00          	enterq $0x50,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 58 e0 ff 	mov    %rax,-0x1fa8(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d d1 fe ff ff 	mov    %r11,-0x12f(%rip)        # 0xfffffef8
0x27:	48 8b 3d d2 fe ff ff 	mov    -0x12e(%rip),%rdi        # 0xffffff00
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
0x53:	e8 00 00 00 00       	callq  0x58
0x58:	90                   	nop
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	48 89 04 24          	mov    %rax,(%rsp)
0x61:	4c 8b 1c 24          	mov    (%rsp),%r11
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6d:	48 8b 3d 94 fe ff ff 	mov    -0x16c(%rip),%rdi        # 0xffffff08
0x74:	be 18 00 00 00       	mov    $0x18,%esi
0x79:	48 63 f6             	movslq %esi,%rsi
0x7c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x80:	48 83 ec 10          	sub    $0x10,%rsp
0x84:	48 89 04 24          	mov    %rax,(%rsp)
0x88:	4c 8b 1d 81 fe ff ff 	mov    -0x17f(%rip),%r11        # 0xffffff10
0x8f:	48 83 ec 10          	sub    $0x10,%rsp
0x93:	4c 89 1c 24          	mov    %r11,(%rsp)
0x97:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x9c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xa1:	48 8b 15 70 fe ff ff 	mov    -0x190(%rip),%rdx        # 0xffffff18
0xa8:	b9 02 00 00 00       	mov    $0x2,%ecx
0xad:	48 8b c6             	mov    %rsi,%rax
0xb0:	48 8b 00             	mov    (%rax),%rax
0xb3:	48 63 ff             	movslq %edi,%rdi
0xb6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xbb:	48 8b fa             	mov    %rdx,%rdi
0xbe:	48 8b d1             	mov    %rcx,%rdx
0xc1:	b9 03 00 00 00       	mov    $0x3,%ecx
0xc6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xca:	90                   	nop
0xcb:	90                   	nop
0xcc:	e8 00 00 00 00       	callq  0xd1
0xd1:	90                   	nop
0xd2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xda:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xdf:	ff d0                	callq  *%rax
0xe1:	90                   	nop
0xe2:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xe6:	48 83 ec 10          	sub    $0x10,%rsp
0xea:	4c 89 1c 24          	mov    %r11,(%rsp)
0xee:	4c 8b 1c 24          	mov    (%rsp),%r11
0xf2:	48 33 c0             	xor    %rax,%rax
0xf5:	48 83 c4 10          	add    $0x10,%rsp
0xf9:	4c 3b d8             	cmp    %rax,%r11
0xfc:	75 33                	jne    0x131
0xfe:	48 8b 3d 1b fe ff ff 	mov    -0x1e5(%rip),%rdi        # 0xffffff20
0x105:	be 0a 00 00 00       	mov    $0xa,%esi
0x10a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x10e:	48 8b c8             	mov    %rax,%rcx
0x111:	48 63 f6             	movslq %esi,%rsi
0x114:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x119:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x11f:	0f 8d 07 00 00 00    	jge    0x12c
0x125:	83 c1 01             	add    $0x1,%ecx
0x128:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x12c:	e9 81 02 00 00       	jmpq   0x3b2
0x131:	48 8b 3d f0 fd ff ff 	mov    -0x210(%rip),%rdi        # 0xffffff28
0x138:	be 0b 00 00 00       	mov    $0xb,%esi
0x13d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x141:	48 8b c8             	mov    %rax,%rcx
0x144:	48 63 f6             	movslq %esi,%rsi
0x147:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x14c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x152:	0f 8d 07 00 00 00    	jge    0x15f
0x158:	83 c1 01             	add    $0x1,%ecx
0x15b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x15f:	48 8b 3d ca fd ff ff 	mov    -0x236(%rip),%rdi        # 0xffffff30
0x166:	be 18 00 00 00       	mov    $0x18,%esi
0x16b:	48 63 f6             	movslq %esi,%rsi
0x16e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x172:	48 83 ec 10          	sub    $0x10,%rsp
0x176:	48 89 04 24          	mov    %rax,(%rsp)
0x17a:	48 8b 3d b7 fd ff ff 	mov    -0x249(%rip),%rdi        # 0xffffff38
0x181:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x185:	48 8b 35 b4 fd ff ff 	mov    -0x24c(%rip),%rsi        # 0xffffff40
0x18c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x190:	49 8b ce             	mov    %r14,%rcx
0x193:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x197:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x19e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x1a5:	48 8b d9             	mov    %rcx,%rbx
0x1a8:	48 03 da             	add    %rdx,%rbx
0x1ab:	4c 8b cb             	mov    %rbx,%r9
0x1ae:	4d 3b c8             	cmp    %r8,%r9
0x1b1:	0f 86 14 00 00 00    	jbe    0x1cb
0x1b7:	48 8b fe             	mov    %rsi,%rdi
0x1ba:	48 8b f2             	mov    %rdx,%rsi
0x1bd:	48 8b d0             	mov    %rax,%rdx
0x1c0:	e8 00 00 00 00       	callq  0x1c5
0x1c5:	90                   	nop
0x1c6:	e9 0a 00 00 00       	jmpq   0x1d5
0x1cb:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1d2:	48 8b c1             	mov    %rcx,%rax
0x1d5:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1d9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1dd:	90                   	nop
0x1de:	90                   	nop
0x1df:	90                   	nop
0x1e0:	e8 00 00 00 00       	callq  0x1e5
0x1e5:	90                   	nop
0x1e6:	90                   	nop
0x1e7:	90                   	nop
0x1e8:	e8 00 00 00 00       	callq  0x1ed
0x1ed:	90                   	nop
0x1ee:	83 f8 00             	cmp    $0x0,%eax
0x1f1:	0f 84 27 00 00 00    	je     0x21e
0x1f7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1fb:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1ff:	85 06                	test   %eax,(%rsi)
0x201:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x205:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x209:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x20d:	83 e2 ff             	and    $0xffffffff,%edx
0x210:	48 8b fa             	mov    %rdx,%rdi
0x213:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x217:	90                   	nop
0x218:	e8 00 00 00 00       	callq  0x21d
0x21d:	90                   	nop
0x21e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x222:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x226:	48 89 38             	mov    %rdi,(%rax)
0x229:	48 83 ec 10          	sub    $0x10,%rsp
0x22d:	48 89 04 24          	mov    %rax,(%rsp)
0x231:	48 83 ec 10          	sub    $0x10,%rsp
0x235:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x23a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x23e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x242:	41 85 03             	test   %eax,(%r11)
0x245:	90                   	nop
0x246:	90                   	nop
0x247:	90                   	nop
0x248:	e8 00 00 00 00       	callq  0x24d
0x24d:	90                   	nop
0x24e:	4c 8b 1d f3 fc ff ff 	mov    -0x30d(%rip),%r11        # 0xffffff48
0x255:	48 83 ec 10          	sub    $0x10,%rsp
0x259:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x262:	41 85 03             	test   %eax,(%r11)
0x265:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x26a:	e8 00 00 00 00       	callq  0x26f
0x26f:	90                   	nop
0x270:	48 83 ec 10          	sub    $0x10,%rsp
0x274:	48 89 04 24          	mov    %rax,(%rsp)
0x278:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x27c:	48 83 ec 10          	sub    $0x10,%rsp
0x280:	4c 89 1c 24          	mov    %r11,(%rsp)
0x284:	4c 8b 1c 24          	mov    (%rsp),%r11
0x288:	41 85 03             	test   %eax,(%r11)
0x28b:	48 8b 3c 24          	mov    (%rsp),%rdi
0x28f:	90                   	nop
0x290:	e8 00 00 00 00       	callq  0x295
0x295:	90                   	nop
0x296:	48 83 ec 10          	sub    $0x10,%rsp
0x29a:	48 89 04 24          	mov    %rax,(%rsp)
0x29e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2a2:	41 85 03             	test   %eax,(%r11)
0x2a5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2a9:	e8 00 00 00 00       	callq  0x2ae
0x2ae:	90                   	nop
0x2af:	48 83 ec 10          	sub    $0x10,%rsp
0x2b3:	48 89 04 24          	mov    %rax,(%rsp)
0x2b7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2bc:	41 85 03             	test   %eax,(%r11)
0x2bf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2c4:	90                   	nop
0x2c5:	90                   	nop
0x2c6:	90                   	nop
0x2c7:	90                   	nop
0x2c8:	e8 00 00 00 00       	callq  0x2cd
0x2cd:	90                   	nop
0x2ce:	48 83 ec 10          	sub    $0x10,%rsp
0x2d2:	48 89 04 24          	mov    %rax,(%rsp)
0x2d6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2da:	41 85 03             	test   %eax,(%r11)
0x2dd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2e1:	e8 00 00 00 00       	callq  0x2e6
0x2e6:	90                   	nop
0x2e7:	48 83 ec 10          	sub    $0x10,%rsp
0x2eb:	48 89 04 24          	mov    %rax,(%rsp)
0x2ef:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2f4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2f9:	48 8b 15 50 fc ff ff 	mov    -0x3b0(%rip),%rdx        # 0xffffff50
0x300:	b9 13 00 00 00       	mov    $0x13,%ecx
0x305:	48 8b c6             	mov    %rsi,%rax
0x308:	48 8b 00             	mov    (%rax),%rax
0x30b:	48 63 ff             	movslq %edi,%rdi
0x30e:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x313:	48 8b fa             	mov    %rdx,%rdi
0x316:	48 8b d1             	mov    %rcx,%rdx
0x319:	b9 03 00 00 00       	mov    $0x3,%ecx
0x31e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x322:	90                   	nop
0x323:	90                   	nop
0x324:	e8 00 00 00 00       	callq  0x329
0x329:	90                   	nop
0x32a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x32e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x332:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x337:	ff d0                	callq  *%rax
0x339:	90                   	nop
0x33a:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x33e:	48 83 ec 10          	sub    $0x10,%rsp
0x342:	4c 89 1c 24          	mov    %r11,(%rsp)
0x346:	4c 8b 1c 24          	mov    (%rsp),%r11
0x34a:	41 85 03             	test   %eax,(%r11)
0x34d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x351:	e8 00 00 00 00       	callq  0x356
0x356:	90                   	nop
0x357:	48 83 ec 10          	sub    $0x10,%rsp
0x35b:	48 89 04 24          	mov    %rax,(%rsp)
0x35f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x363:	48 83 c4 10          	add    $0x10,%rsp
0x367:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x36b:	48 8b 3d e6 fb ff ff 	mov    -0x41a(%rip),%rdi        # 0xffffff58
0x372:	be 1c 00 00 00       	mov    $0x1c,%esi
0x377:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x37b:	48 8b c8             	mov    %rax,%rcx
0x37e:	48 63 f6             	movslq %esi,%rsi
0x381:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x386:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x38c:	0f 8d 07 00 00 00    	jge    0x399
0x392:	83 c1 01             	add    $0x1,%ecx
0x395:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x399:	48 8b 3d c0 fb ff ff 	mov    -0x440(%rip),%rdi        # 0xffffff60
0x3a0:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x3a4:	83 e8 01             	sub    $0x1,%eax
0x3a7:	89 47 30             	mov    %eax,0x30(%rdi)
0x3aa:	4d 8b 36             	mov    (%r14),%r14
0x3ad:	e9 30 fd ff ff       	jmpq   0xe2
0x3b2:	48 8b 3d af fb ff ff 	mov    -0x451(%rip),%rdi        # 0xffffff68
0x3b9:	be 18 00 00 00       	mov    $0x18,%esi
0x3be:	48 63 f6             	movslq %esi,%rsi
0x3c1:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3c5:	48 83 ec 10          	sub    $0x10,%rsp
0x3c9:	48 89 04 24          	mov    %rax,(%rsp)
0x3cd:	48 8b 3d 9c fb ff ff 	mov    -0x464(%rip),%rdi        # 0xffffff70
0x3d4:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x3d8:	48 8b 35 99 fb ff ff 	mov    -0x467(%rip),%rsi        # 0xffffff78
0x3df:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3e3:	49 8b ce             	mov    %r14,%rcx
0x3e6:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x3ea:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x3f1:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x3f8:	48 8b d9             	mov    %rcx,%rbx
0x3fb:	48 03 da             	add    %rdx,%rbx
0x3fe:	4c 8b cb             	mov    %rbx,%r9
0x401:	4d 3b c8             	cmp    %r8,%r9
0x404:	0f 86 14 00 00 00    	jbe    0x41e
0x40a:	48 8b fe             	mov    %rsi,%rdi
0x40d:	48 8b f2             	mov    %rdx,%rsi
0x410:	48 8b d0             	mov    %rax,%rdx
0x413:	e8 00 00 00 00       	callq  0x418
0x418:	90                   	nop
0x419:	e9 0a 00 00 00       	jmpq   0x428
0x41e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x425:	48 8b c1             	mov    %rcx,%rax
0x428:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x42c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x430:	90                   	nop
0x431:	90                   	nop
0x432:	90                   	nop
0x433:	e8 00 00 00 00       	callq  0x438
0x438:	90                   	nop
0x439:	90                   	nop
0x43a:	90                   	nop
0x43b:	e8 00 00 00 00       	callq  0x440
0x440:	90                   	nop
0x441:	83 f8 00             	cmp    $0x0,%eax
0x444:	0f 84 27 00 00 00    	je     0x471
0x44a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x44e:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x452:	85 06                	test   %eax,(%rsi)
0x454:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x458:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x45c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x460:	83 e2 ff             	and    $0xffffffff,%edx
0x463:	48 8b fa             	mov    %rdx,%rdi
0x466:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x46a:	90                   	nop
0x46b:	e8 00 00 00 00       	callq  0x470
0x470:	90                   	nop
0x471:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x475:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x479:	48 89 38             	mov    %rdi,(%rax)
0x47c:	48 83 ec 10          	sub    $0x10,%rsp
0x480:	48 89 04 24          	mov    %rax,(%rsp)
0x484:	48 83 ec 10          	sub    $0x10,%rsp
0x488:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x48d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x491:	4c 8b 1c 24          	mov    (%rsp),%r11
0x495:	41 85 03             	test   %eax,(%r11)
0x498:	e8 00 00 00 00       	callq  0x49d
0x49d:	90                   	nop
0x49e:	4c 8b 1d db fa ff ff 	mov    -0x525(%rip),%r11        # 0xffffff80
0x4a5:	48 83 ec 10          	sub    $0x10,%rsp
0x4a9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4ad:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4b2:	41 85 03             	test   %eax,(%r11)
0x4b5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4ba:	e8 00 00 00 00       	callq  0x4bf
0x4bf:	90                   	nop
0x4c0:	48 83 ec 10          	sub    $0x10,%rsp
0x4c4:	48 89 04 24          	mov    %rax,(%rsp)
0x4c8:	48 83 ec 10          	sub    $0x10,%rsp
0x4cc:	4c 8b 1d b5 fa ff ff 	mov    -0x54b(%rip),%r11        # 0xffffff88
0x4d3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4d7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4dc:	41 85 03             	test   %eax,(%r11)
0x4df:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4e4:	90                   	nop
0x4e5:	90                   	nop
0x4e6:	90                   	nop
0x4e7:	90                   	nop
0x4e8:	e8 00 00 00 00       	callq  0x4ed
0x4ed:	90                   	nop
0x4ee:	48 83 ec 10          	sub    $0x10,%rsp
0x4f2:	48 89 04 24          	mov    %rax,(%rsp)
0x4f6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4fa:	41 85 03             	test   %eax,(%r11)
0x4fd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x501:	e8 00 00 00 00       	callq  0x506
0x506:	90                   	nop
0x507:	48 83 ec 10          	sub    $0x10,%rsp
0x50b:	48 89 04 24          	mov    %rax,(%rsp)
0x50f:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x514:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x519:	48 8b 15 70 fa ff ff 	mov    -0x590(%rip),%rdx        # 0xffffff90
0x520:	b9 22 00 00 00       	mov    $0x22,%ecx
0x525:	48 8b c6             	mov    %rsi,%rax
0x528:	48 8b 00             	mov    (%rax),%rax
0x52b:	48 63 ff             	movslq %edi,%rdi
0x52e:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x533:	48 8b fa             	mov    %rdx,%rdi
0x536:	48 8b d1             	mov    %rcx,%rdx
0x539:	b9 03 00 00 00       	mov    $0x3,%ecx
0x53e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x542:	90                   	nop
0x543:	90                   	nop
0x544:	e8 00 00 00 00       	callq  0x549
0x549:	90                   	nop
0x54a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x54e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x552:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x557:	ff d0                	callq  *%rax
0x559:	90                   	nop
0x55a:	48 83 ec 10          	sub    $0x10,%rsp
0x55e:	4c 8b 1d 33 fa ff ff 	mov    -0x5cd(%rip),%r11        # 0xffffff98
0x565:	4c 89 1c 24          	mov    %r11,(%rsp)
0x569:	4c 8b 1c 24          	mov    (%rsp),%r11
0x56d:	41 85 03             	test   %eax,(%r11)
0x570:	48 8b 3c 24          	mov    (%rsp),%rdi
0x574:	90                   	nop
0x575:	90                   	nop
0x576:	90                   	nop
0x577:	90                   	nop
0x578:	e8 00 00 00 00       	callq  0x57d
0x57d:	90                   	nop
0x57e:	48 83 ec 10          	sub    $0x10,%rsp
0x582:	48 89 04 24          	mov    %rax,(%rsp)
0x586:	4c 8b 1c 24          	mov    (%rsp),%r11
0x58a:	48 83 c4 10          	add    $0x10,%rsp
0x58e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x592:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x596:	48 83 ec 10          	sub    $0x10,%rsp
0x59a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x59e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5a2:	48 33 c0             	xor    %rax,%rax
0x5a5:	48 83 c4 10          	add    $0x10,%rsp
0x5a9:	4c 3b d8             	cmp    %rax,%r11
0x5ac:	75 33                	jne    0x5e1
0x5ae:	48 8b 3d eb f9 ff ff 	mov    -0x615(%rip),%rdi        # 0xffffffa0
0x5b5:	be 2b 00 00 00       	mov    $0x2b,%esi
0x5ba:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5be:	48 8b c8             	mov    %rax,%rcx
0x5c1:	48 63 f6             	movslq %esi,%rsi
0x5c4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5c9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5cf:	0f 8d 07 00 00 00    	jge    0x5dc
0x5d5:	83 c1 01             	add    $0x1,%ecx
0x5d8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5dc:	e9 81 02 00 00       	jmpq   0x862
0x5e1:	48 8b 3d c0 f9 ff ff 	mov    -0x640(%rip),%rdi        # 0xffffffa8
0x5e8:	be 2c 00 00 00       	mov    $0x2c,%esi
0x5ed:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5f1:	48 8b c8             	mov    %rax,%rcx
0x5f4:	48 63 f6             	movslq %esi,%rsi
0x5f7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5fc:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x602:	0f 8d 07 00 00 00    	jge    0x60f
0x608:	83 c1 01             	add    $0x1,%ecx
0x60b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x60f:	48 8b 3d 9a f9 ff ff 	mov    -0x666(%rip),%rdi        # 0xffffffb0
0x616:	be 18 00 00 00       	mov    $0x18,%esi
0x61b:	48 63 f6             	movslq %esi,%rsi
0x61e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x622:	48 83 ec 10          	sub    $0x10,%rsp
0x626:	48 89 04 24          	mov    %rax,(%rsp)
0x62a:	48 8b 3d 87 f9 ff ff 	mov    -0x679(%rip),%rdi        # 0xffffffb8
0x631:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x635:	48 8b 35 84 f9 ff ff 	mov    -0x67c(%rip),%rsi        # 0xffffffc0
0x63c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x640:	49 8b ce             	mov    %r14,%rcx
0x643:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x647:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x64e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x655:	48 8b d9             	mov    %rcx,%rbx
0x658:	48 03 da             	add    %rdx,%rbx
0x65b:	4c 8b cb             	mov    %rbx,%r9
0x65e:	4d 3b c8             	cmp    %r8,%r9
0x661:	0f 86 14 00 00 00    	jbe    0x67b
0x667:	48 8b fe             	mov    %rsi,%rdi
0x66a:	48 8b f2             	mov    %rdx,%rsi
0x66d:	48 8b d0             	mov    %rax,%rdx
0x670:	e8 00 00 00 00       	callq  0x675
0x675:	90                   	nop
0x676:	e9 0a 00 00 00       	jmpq   0x685
0x67b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x682:	48 8b c1             	mov    %rcx,%rax
0x685:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x689:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x68d:	90                   	nop
0x68e:	90                   	nop
0x68f:	90                   	nop
0x690:	e8 00 00 00 00       	callq  0x695
0x695:	90                   	nop
0x696:	90                   	nop
0x697:	90                   	nop
0x698:	e8 00 00 00 00       	callq  0x69d
0x69d:	90                   	nop
0x69e:	83 f8 00             	cmp    $0x0,%eax
0x6a1:	0f 84 27 00 00 00    	je     0x6ce
0x6a7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6ab:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x6af:	85 06                	test   %eax,(%rsi)
0x6b1:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x6b5:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x6b9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6bd:	83 e2 ff             	and    $0xffffffff,%edx
0x6c0:	48 8b fa             	mov    %rdx,%rdi
0x6c3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x6c7:	90                   	nop
0x6c8:	e8 00 00 00 00       	callq  0x6cd
0x6cd:	90                   	nop
0x6ce:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x6d2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6d6:	48 89 38             	mov    %rdi,(%rax)
0x6d9:	48 83 ec 10          	sub    $0x10,%rsp
0x6dd:	48 89 04 24          	mov    %rax,(%rsp)
0x6e1:	48 83 ec 10          	sub    $0x10,%rsp
0x6e5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6ee:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6f2:	41 85 03             	test   %eax,(%r11)
0x6f5:	90                   	nop
0x6f6:	90                   	nop
0x6f7:	90                   	nop
0x6f8:	e8 00 00 00 00       	callq  0x6fd
0x6fd:	90                   	nop
0x6fe:	4c 8b 1d c3 f8 ff ff 	mov    -0x73d(%rip),%r11        # 0xffffffc8
0x705:	48 83 ec 10          	sub    $0x10,%rsp
0x709:	4c 89 1c 24          	mov    %r11,(%rsp)
0x70d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x712:	41 85 03             	test   %eax,(%r11)
0x715:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x71a:	e8 00 00 00 00       	callq  0x71f
0x71f:	90                   	nop
0x720:	48 83 ec 10          	sub    $0x10,%rsp
0x724:	48 89 04 24          	mov    %rax,(%rsp)
0x728:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x72c:	48 83 ec 10          	sub    $0x10,%rsp
0x730:	4c 89 1c 24          	mov    %r11,(%rsp)
0x734:	4c 8b 1c 24          	mov    (%rsp),%r11
0x738:	41 85 03             	test   %eax,(%r11)
0x73b:	48 8b 3c 24          	mov    (%rsp),%rdi
0x73f:	90                   	nop
0x740:	e8 00 00 00 00       	callq  0x745
0x745:	90                   	nop
0x746:	48 83 ec 10          	sub    $0x10,%rsp
0x74a:	48 89 04 24          	mov    %rax,(%rsp)
0x74e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x752:	41 85 03             	test   %eax,(%r11)
0x755:	48 8b 3c 24          	mov    (%rsp),%rdi
0x759:	e8 00 00 00 00       	callq  0x75e
0x75e:	90                   	nop
0x75f:	48 83 ec 10          	sub    $0x10,%rsp
0x763:	48 89 04 24          	mov    %rax,(%rsp)
0x767:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x76c:	41 85 03             	test   %eax,(%r11)
0x76f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x774:	90                   	nop
0x775:	90                   	nop
0x776:	90                   	nop
0x777:	90                   	nop
0x778:	e8 00 00 00 00       	callq  0x77d
0x77d:	90                   	nop
0x77e:	48 83 ec 10          	sub    $0x10,%rsp
0x782:	48 89 04 24          	mov    %rax,(%rsp)
0x786:	4c 8b 1c 24          	mov    (%rsp),%r11
0x78a:	41 85 03             	test   %eax,(%r11)
0x78d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x791:	e8 00 00 00 00       	callq  0x796
0x796:	90                   	nop
0x797:	48 83 ec 10          	sub    $0x10,%rsp
0x79b:	48 89 04 24          	mov    %rax,(%rsp)
0x79f:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x7a4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7a9:	48 8b 15 20 f8 ff ff 	mov    -0x7e0(%rip),%rdx        # 0xffffffd0
0x7b0:	b9 34 00 00 00       	mov    $0x34,%ecx
0x7b5:	48 8b c6             	mov    %rsi,%rax
0x7b8:	48 8b 00             	mov    (%rax),%rax
0x7bb:	48 63 ff             	movslq %edi,%rdi
0x7be:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7c3:	48 8b fa             	mov    %rdx,%rdi
0x7c6:	48 8b d1             	mov    %rcx,%rdx
0x7c9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7ce:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7d2:	90                   	nop
0x7d3:	90                   	nop
0x7d4:	e8 00 00 00 00       	callq  0x7d9
0x7d9:	90                   	nop
0x7da:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7de:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7e2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7e7:	ff d0                	callq  *%rax
0x7e9:	90                   	nop
0x7ea:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7ee:	48 83 ec 10          	sub    $0x10,%rsp
0x7f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7f6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7fa:	41 85 03             	test   %eax,(%r11)
0x7fd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x801:	e8 00 00 00 00       	callq  0x806
0x806:	90                   	nop
0x807:	48 83 ec 10          	sub    $0x10,%rsp
0x80b:	48 89 04 24          	mov    %rax,(%rsp)
0x80f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x813:	48 83 c4 10          	add    $0x10,%rsp
0x817:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x81b:	48 8b 3d b6 f7 ff ff 	mov    -0x84a(%rip),%rdi        # 0xffffffd8
0x822:	be 3d 00 00 00       	mov    $0x3d,%esi
0x827:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x82b:	48 8b c8             	mov    %rax,%rcx
0x82e:	48 63 f6             	movslq %esi,%rsi
0x831:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x836:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x83c:	0f 8d 07 00 00 00    	jge    0x849
0x842:	83 c1 01             	add    $0x1,%ecx
0x845:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x849:	48 8b 3d 90 f7 ff ff 	mov    -0x870(%rip),%rdi        # 0xffffffe0
0x850:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x854:	83 e8 01             	sub    $0x1,%eax
0x857:	89 47 30             	mov    %eax,0x30(%rdi)
0x85a:	4d 8b 36             	mov    (%r14),%r14
0x85d:	e9 30 fd ff ff       	jmpq   0x592
0x862:	48 83 c5 40          	add    $0x40,%rbp
0x866:	c9                   	leaveq 
0x867:	c2 10 00             	retq   $0x10

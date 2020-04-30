0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 90 00 00          	enterq $0x90,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 98 e0 ff 	mov    %rax,-0x1f68(%rsp)
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
0x53:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7d:	48 83 c4 10          	add    $0x10,%rsp
0x81:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x85:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x89:	48 83 ec 10          	sub    $0x10,%rsp
0x8d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x91:	48 8b 3c 24          	mov    (%rsp),%rdi
0x95:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x99:	89 04 24             	mov    %eax,(%rsp)
0x9c:	44 8b 1c 24          	mov    (%rsp),%r11d
0xa0:	48 83 c4 10          	add    $0x10,%rsp
0xa4:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xa8:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xae:	48 83 ec 10          	sub    $0x10,%rsp
0xb2:	44 89 1c 24          	mov    %r11d,(%rsp)
0xb6:	44 8b 1c 24          	mov    (%rsp),%r11d
0xba:	48 83 c4 10          	add    $0x10,%rsp
0xbe:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0xc2:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xc6:	48 83 ec 10          	sub    $0x10,%rsp
0xca:	44 89 1c 24          	mov    %r11d,(%rsp)
0xce:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0xd2:	48 83 ec 10          	sub    $0x10,%rsp
0xd6:	44 89 1c 24          	mov    %r11d,(%rsp)
0xda:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xdf:	8b 04 24             	mov    (%rsp),%eax
0xe2:	48 83 c4 20          	add    $0x20,%rsp
0xe6:	44 3b d8             	cmp    %eax,%r11d
0xe9:	7c 33                	jl     0x11e
0xeb:	48 8b 3d 36 fe ff ff 	mov    -0x1ca(%rip),%rdi        # 0xffffff28
0xf2:	be 00 00 00 00       	mov    $0x0,%esi
0xf7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xfb:	48 8b c8             	mov    %rax,%rcx
0xfe:	48 63 f6             	movslq %esi,%rsi
0x101:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x106:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x10c:	0f 8d 07 00 00 00    	jge    0x119
0x112:	83 c1 01             	add    $0x1,%ecx
0x115:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x119:	e9 a0 01 00 00       	jmpq   0x2be
0x11e:	48 8b 3d 0b fe ff ff 	mov    -0x1f5(%rip),%rdi        # 0xffffff30
0x125:	be 01 00 00 00       	mov    $0x1,%esi
0x12a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x12e:	48 8b c8             	mov    %rax,%rcx
0x131:	48 63 f6             	movslq %esi,%rsi
0x134:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x139:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x13f:	0f 8d 07 00 00 00    	jge    0x14c
0x145:	83 c1 01             	add    $0x1,%ecx
0x148:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x14c:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x150:	48 83 ec 10          	sub    $0x10,%rsp
0x154:	4c 89 1c 24          	mov    %r11,(%rsp)
0x158:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x15c:	48 83 ec 10          	sub    $0x10,%rsp
0x160:	44 89 1c 24          	mov    %r11d,(%rsp)
0x164:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x169:	40 8b 34 24          	rex mov (%rsp),%esi
0x16d:	48 8b c7             	mov    %rdi,%rax
0x170:	48 63 40 10          	movslq 0x10(%rax),%rax
0x174:	3b f0                	cmp    %eax,%esi
0x176:	0f 82 0f 00 00 00    	jb     0x18b
0x17c:	e8 00 00 00 00       	callq  0x181
0x181:	90                   	nop
0x182:	48 8b f8             	mov    %rax,%rdi
0x185:	e8 00 00 00 00       	callq  0x18a
0x18a:	90                   	nop
0x18b:	48 63 f6             	movslq %esi,%rsi
0x18e:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x193:	48 83 c4 10          	add    $0x10,%rsp
0x197:	48 89 04 24          	mov    %rax,(%rsp)
0x19b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x19f:	48 83 c4 10          	add    $0x10,%rsp
0x1a3:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x1a7:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1ab:	48 83 ec 10          	sub    $0x10,%rsp
0x1af:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1b3:	4c 8b 1d 7e fd ff ff 	mov    -0x282(%rip),%r11        # 0xffffff38
0x1ba:	48 83 ec 10          	sub    $0x10,%rsp
0x1be:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c2:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1c7:	41 85 03             	test   %eax,(%r11)
0x1ca:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	48 83 ec 10          	sub    $0x10,%rsp
0x1da:	48 89 04 24          	mov    %rax,(%rsp)
0x1de:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1e2:	b8 00 00 00 00       	mov    $0x0,%eax
0x1e7:	48 83 c4 10          	add    $0x10,%rsp
0x1eb:	44 3b d8             	cmp    %eax,%r11d
0x1ee:	75 33                	jne    0x223
0x1f0:	48 8b 3d 49 fd ff ff 	mov    -0x2b7(%rip),%rdi        # 0xffffff40
0x1f7:	be 04 00 00 00       	mov    $0x4,%esi
0x1fc:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x200:	48 8b c8             	mov    %rax,%rcx
0x203:	48 63 f6             	movslq %esi,%rsi
0x206:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x20b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x211:	0f 8d 07 00 00 00    	jge    0x21e
0x217:	83 c1 01             	add    $0x1,%ecx
0x21a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x21e:	e9 48 00 00 00       	jmpq   0x26b
0x223:	48 8b 3d 1e fd ff ff 	mov    -0x2e2(%rip),%rdi        # 0xffffff48
0x22a:	be 05 00 00 00       	mov    $0x5,%esi
0x22f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x233:	48 8b c8             	mov    %rax,%rcx
0x236:	48 63 f6             	movslq %esi,%rsi
0x239:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x23e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x244:	0f 8d 07 00 00 00    	jge    0x251
0x24a:	83 c1 01             	add    $0x1,%ecx
0x24d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x251:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x257:	48 83 ec 10          	sub    $0x10,%rsp
0x25b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x25f:	44 8b 1c 24          	mov    (%rsp),%r11d
0x263:	48 83 c4 10          	add    $0x10,%rsp
0x267:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x26b:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x26f:	41 83 c3 01          	add    $0x1,%r11d
0x273:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x277:	48 8b 3d d2 fc ff ff 	mov    -0x32e(%rip),%rdi        # 0xffffff50
0x27e:	be 06 00 00 00       	mov    $0x6,%esi
0x283:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x287:	48 8b c8             	mov    %rax,%rcx
0x28a:	48 63 f6             	movslq %esi,%rsi
0x28d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x292:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x298:	0f 8d 07 00 00 00    	jge    0x2a5
0x29e:	83 c1 01             	add    $0x1,%ecx
0x2a1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2a5:	48 8b 3d ac fc ff ff 	mov    -0x354(%rip),%rdi        # 0xffffff58
0x2ac:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x2b0:	83 e8 01             	sub    $0x1,%eax
0x2b3:	89 47 30             	mov    %eax,0x30(%rdi)
0x2b6:	4d 8b 36             	mov    (%r14),%r14
0x2b9:	e9 04 fe ff ff       	jmpq   0xc2
0x2be:	48 8b 3d 9b fc ff ff 	mov    -0x365(%rip),%rdi        # 0xffffff60
0x2c5:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x2c9:	48 8b 35 98 fc ff ff 	mov    -0x368(%rip),%rsi        # 0xffffff68
0x2d0:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2d4:	49 8b ce             	mov    %r14,%rcx
0x2d7:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x2db:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x2e2:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x2e9:	48 8b d9             	mov    %rcx,%rbx
0x2ec:	48 03 da             	add    %rdx,%rbx
0x2ef:	4c 8b cb             	mov    %rbx,%r9
0x2f2:	4d 3b c8             	cmp    %r8,%r9
0x2f5:	0f 86 14 00 00 00    	jbe    0x30f
0x2fb:	48 8b fe             	mov    %rsi,%rdi
0x2fe:	48 8b f2             	mov    %rdx,%rsi
0x301:	48 8b d0             	mov    %rax,%rdx
0x304:	e8 00 00 00 00       	callq  0x309
0x309:	90                   	nop
0x30a:	e9 0a 00 00 00       	jmpq   0x319
0x30f:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x316:	48 8b c1             	mov    %rcx,%rax
0x319:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x31d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x321:	90                   	nop
0x322:	90                   	nop
0x323:	90                   	nop
0x324:	e8 00 00 00 00       	callq  0x329
0x329:	90                   	nop
0x32a:	90                   	nop
0x32b:	90                   	nop
0x32c:	e8 00 00 00 00       	callq  0x331
0x331:	90                   	nop
0x332:	83 f8 00             	cmp    $0x0,%eax
0x335:	0f 84 27 00 00 00    	je     0x362
0x33b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x33f:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x343:	85 06                	test   %eax,(%rsi)
0x345:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x349:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x34d:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x351:	83 e2 ff             	and    $0xffffffff,%edx
0x354:	48 8b fa             	mov    %rdx,%rdi
0x357:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x35b:	90                   	nop
0x35c:	e8 00 00 00 00       	callq  0x361
0x361:	90                   	nop
0x362:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x366:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x36a:	48 89 38             	mov    %rdi,(%rax)
0x36d:	48 83 ec 10          	sub    $0x10,%rsp
0x371:	48 89 04 24          	mov    %rax,(%rsp)
0x375:	48 83 ec 10          	sub    $0x10,%rsp
0x379:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x37e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x382:	4c 8b 1c 24          	mov    (%rsp),%r11
0x386:	41 85 03             	test   %eax,(%r11)
0x389:	e8 00 00 00 00       	callq  0x38e
0x38e:	90                   	nop
0x38f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x393:	48 83 c4 10          	add    $0x10,%rsp
0x397:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x39b:	e8 00 00 00 00       	callq  0x3a0
0x3a0:	90                   	nop
0x3a1:	48 83 ec 10          	sub    $0x10,%rsp
0x3a5:	48 89 04 24          	mov    %rax,(%rsp)
0x3a9:	48 8b 3d c0 fb ff ff 	mov    -0x440(%rip),%rdi        # 0xffffff70
0x3b0:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x3b4:	48 8b 35 bd fb ff ff 	mov    -0x443(%rip),%rsi        # 0xffffff78
0x3bb:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3bf:	49 8b ce             	mov    %r14,%rcx
0x3c2:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x3c6:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x3cd:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x3d4:	48 8b d9             	mov    %rcx,%rbx
0x3d7:	48 03 da             	add    %rdx,%rbx
0x3da:	4c 8b cb             	mov    %rbx,%r9
0x3dd:	4d 3b c8             	cmp    %r8,%r9
0x3e0:	0f 86 14 00 00 00    	jbe    0x3fa
0x3e6:	48 8b fe             	mov    %rsi,%rdi
0x3e9:	48 8b f2             	mov    %rdx,%rsi
0x3ec:	48 8b d0             	mov    %rax,%rdx
0x3ef:	e8 00 00 00 00       	callq  0x3f4
0x3f4:	90                   	nop
0x3f5:	e9 0a 00 00 00       	jmpq   0x404
0x3fa:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x401:	48 8b c1             	mov    %rcx,%rax
0x404:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x408:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x40c:	90                   	nop
0x40d:	90                   	nop
0x40e:	90                   	nop
0x40f:	e8 00 00 00 00       	callq  0x414
0x414:	90                   	nop
0x415:	90                   	nop
0x416:	90                   	nop
0x417:	e8 00 00 00 00       	callq  0x41c
0x41c:	90                   	nop
0x41d:	83 f8 00             	cmp    $0x0,%eax
0x420:	0f 84 27 00 00 00    	je     0x44d
0x426:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x42a:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x42e:	85 06                	test   %eax,(%rsi)
0x430:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x434:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x438:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x43c:	83 e2 ff             	and    $0xffffffff,%edx
0x43f:	48 8b fa             	mov    %rdx,%rdi
0x442:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x446:	90                   	nop
0x447:	e8 00 00 00 00       	callq  0x44c
0x44c:	90                   	nop
0x44d:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x451:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x455:	48 89 38             	mov    %rdi,(%rax)
0x458:	48 83 ec 10          	sub    $0x10,%rsp
0x45c:	48 89 04 24          	mov    %rax,(%rsp)
0x460:	48 83 ec 10          	sub    $0x10,%rsp
0x464:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x469:	4c 89 1c 24          	mov    %r11,(%rsp)
0x46d:	48 8b 3d 0c fb ff ff 	mov    -0x4f4(%rip),%rdi        # 0xffffff80
0x474:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x478:	48 8b 35 09 fb ff ff 	mov    -0x4f7(%rip),%rsi        # 0xffffff88
0x47f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x483:	49 8b ce             	mov    %r14,%rcx
0x486:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x48a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x491:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x498:	48 8b d9             	mov    %rcx,%rbx
0x49b:	48 03 da             	add    %rdx,%rbx
0x49e:	4c 8b cb             	mov    %rbx,%r9
0x4a1:	4d 3b c8             	cmp    %r8,%r9
0x4a4:	0f 86 14 00 00 00    	jbe    0x4be
0x4aa:	48 8b fe             	mov    %rsi,%rdi
0x4ad:	48 8b f2             	mov    %rdx,%rsi
0x4b0:	48 8b d0             	mov    %rax,%rdx
0x4b3:	e8 00 00 00 00       	callq  0x4b8
0x4b8:	90                   	nop
0x4b9:	e9 0a 00 00 00       	jmpq   0x4c8
0x4be:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x4c5:	48 8b c1             	mov    %rcx,%rax
0x4c8:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4cc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4d0:	90                   	nop
0x4d1:	90                   	nop
0x4d2:	90                   	nop
0x4d3:	e8 00 00 00 00       	callq  0x4d8
0x4d8:	90                   	nop
0x4d9:	90                   	nop
0x4da:	90                   	nop
0x4db:	e8 00 00 00 00       	callq  0x4e0
0x4e0:	90                   	nop
0x4e1:	83 f8 00             	cmp    $0x0,%eax
0x4e4:	0f 84 27 00 00 00    	je     0x511
0x4ea:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4ee:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x4f2:	85 06                	test   %eax,(%rsi)
0x4f4:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x4f8:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x4fc:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x500:	83 e2 ff             	and    $0xffffffff,%edx
0x503:	48 8b fa             	mov    %rdx,%rdi
0x506:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x50a:	90                   	nop
0x50b:	e8 00 00 00 00       	callq  0x510
0x510:	90                   	nop
0x511:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x515:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x519:	48 89 38             	mov    %rdi,(%rax)
0x51c:	48 83 ec 10          	sub    $0x10,%rsp
0x520:	48 89 04 24          	mov    %rax,(%rsp)
0x524:	48 83 ec 10          	sub    $0x10,%rsp
0x528:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x52d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x531:	4c 8b 1c 24          	mov    (%rsp),%r11
0x535:	41 85 03             	test   %eax,(%r11)
0x538:	e8 00 00 00 00       	callq  0x53d
0x53d:	90                   	nop
0x53e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x543:	41 85 03             	test   %eax,(%r11)
0x546:	90                   	nop
0x547:	90                   	nop
0x548:	e8 00 00 00 00       	callq  0x54d
0x54d:	90                   	nop
0x54e:	bf 17 00 00 00       	mov    $0x17,%edi
0x553:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x558:	48 8b 15 31 fa ff ff 	mov    -0x5cf(%rip),%rdx        # 0xffffff90
0x55f:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x564:	48 8b c6             	mov    %rsi,%rax
0x567:	48 8b 00             	mov    (%rax),%rax
0x56a:	48 63 ff             	movslq %edi,%rdi
0x56d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x572:	48 8b fa             	mov    %rdx,%rdi
0x575:	48 8b d1             	mov    %rcx,%rdx
0x578:	b9 03 00 00 00       	mov    $0x3,%ecx
0x57d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x581:	90                   	nop
0x582:	90                   	nop
0x583:	e8 00 00 00 00       	callq  0x588
0x588:	90                   	nop
0x589:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x58d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x591:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x596:	ff d0                	callq  *%rax
0x598:	90                   	nop
0x599:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x59d:	48 83 ec 10          	sub    $0x10,%rsp
0x5a1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5a5:	bf 17 00 00 00       	mov    $0x17,%edi
0x5aa:	48 8b 34 24          	mov    (%rsp),%rsi
0x5ae:	48 8b 15 e3 f9 ff ff 	mov    -0x61d(%rip),%rdx        # 0xffffff98
0x5b5:	b9 15 00 00 00       	mov    $0x15,%ecx
0x5ba:	48 8b c6             	mov    %rsi,%rax
0x5bd:	48 8b 00             	mov    (%rax),%rax
0x5c0:	48 63 ff             	movslq %edi,%rdi
0x5c3:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5c8:	48 8b fa             	mov    %rdx,%rdi
0x5cb:	48 8b d1             	mov    %rcx,%rdx
0x5ce:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5d3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5d7:	90                   	nop
0x5d8:	90                   	nop
0x5d9:	e8 00 00 00 00       	callq  0x5de
0x5de:	90                   	nop
0x5df:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5e3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5e7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x5eb:	ff d0                	callq  *%rax
0x5ed:	90                   	nop
0x5ee:	48 8b 3d ab f9 ff ff 	mov    -0x655(%rip),%rdi        # 0xffffffa0
0x5f5:	be 18 00 00 00       	mov    $0x18,%esi
0x5fa:	48 63 f6             	movslq %esi,%rsi
0x5fd:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x601:	48 83 ec 10          	sub    $0x10,%rsp
0x605:	48 89 04 24          	mov    %rax,(%rsp)
0x609:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x60d:	48 83 ec 10          	sub    $0x10,%rsp
0x611:	44 89 1c 24          	mov    %r11d,(%rsp)
0x615:	44 8b 1c 24          	mov    (%rsp),%r11d
0x619:	b8 00 00 00 00       	mov    $0x0,%eax
0x61e:	48 83 c4 10          	add    $0x10,%rsp
0x622:	44 3b d8             	cmp    %eax,%r11d
0x625:	75 33                	jne    0x65a
0x627:	48 8b 3d 7a f9 ff ff 	mov    -0x686(%rip),%rdi        # 0xffffffa8
0x62e:	be 1d 00 00 00       	mov    $0x1d,%esi
0x633:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x637:	48 8b c8             	mov    %rax,%rcx
0x63a:	48 63 f6             	movslq %esi,%rsi
0x63d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x642:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x648:	0f 8d 07 00 00 00    	jge    0x655
0x64e:	83 c1 01             	add    $0x1,%ecx
0x651:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x655:	e9 70 00 00 00       	jmpq   0x6ca
0x65a:	48 8b 3d 4f f9 ff ff 	mov    -0x6b1(%rip),%rdi        # 0xffffffb0
0x661:	be 1e 00 00 00       	mov    $0x1e,%esi
0x666:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x66a:	48 8b c8             	mov    %rax,%rcx
0x66d:	48 63 f6             	movslq %esi,%rsi
0x670:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x675:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x67b:	0f 8d 07 00 00 00    	jge    0x688
0x681:	83 c1 01             	add    $0x1,%ecx
0x684:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x688:	4c 8b 1d 29 f9 ff ff 	mov    -0x6d7(%rip),%r11        # 0xffffffb8
0x68f:	48 83 ec 10          	sub    $0x10,%rsp
0x693:	4c 89 1c 24          	mov    %r11,(%rsp)
0x697:	48 8b 3d 22 f9 ff ff 	mov    -0x6de(%rip),%rdi        # 0xffffffc0
0x69e:	be 1f 00 00 00       	mov    $0x1f,%esi
0x6a3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x6a7:	48 8b c8             	mov    %rax,%rcx
0x6aa:	48 63 f6             	movslq %esi,%rsi
0x6ad:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x6b2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x6b8:	0f 8d 07 00 00 00    	jge    0x6c5
0x6be:	83 c1 01             	add    $0x1,%ecx
0x6c1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x6c5:	e9 0f 00 00 00       	jmpq   0x6d9
0x6ca:	4c 8b 1d f7 f8 ff ff 	mov    -0x709(%rip),%r11        # 0xffffffc8
0x6d1:	48 83 ec 10          	sub    $0x10,%rsp
0x6d5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6d9:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x6de:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x6e3:	48 8b 15 e6 f8 ff ff 	mov    -0x71a(%rip),%rdx        # 0xffffffd0
0x6ea:	b9 21 00 00 00       	mov    $0x21,%ecx
0x6ef:	48 8b c6             	mov    %rsi,%rax
0x6f2:	48 8b 00             	mov    (%rax),%rax
0x6f5:	48 63 ff             	movslq %edi,%rdi
0x6f8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x6fd:	48 8b fa             	mov    %rdx,%rdi
0x700:	48 8b d1             	mov    %rcx,%rdx
0x703:	b9 03 00 00 00       	mov    $0x3,%ecx
0x708:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x70c:	90                   	nop
0x70d:	90                   	nop
0x70e:	e8 00 00 00 00       	callq  0x713
0x713:	90                   	nop
0x714:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x718:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x71c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x721:	ff d0                	callq  *%rax
0x723:	90                   	nop
0x724:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x728:	48 83 ec 10          	sub    $0x10,%rsp
0x72c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x730:	44 8b 1c 24          	mov    (%rsp),%r11d
0x734:	b8 00 00 00 00       	mov    $0x0,%eax
0x739:	48 83 c4 10          	add    $0x10,%rsp
0x73d:	44 3b d8             	cmp    %eax,%r11d
0x740:	75 33                	jne    0x775
0x742:	48 8b 3d 8f f8 ff ff 	mov    -0x771(%rip),%rdi        # 0xffffffd8
0x749:	be 29 00 00 00       	mov    $0x29,%esi
0x74e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x752:	48 8b c8             	mov    %rax,%rcx
0x755:	48 63 f6             	movslq %esi,%rsi
0x758:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x75d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x763:	0f 8d 07 00 00 00    	jge    0x770
0x769:	83 c1 01             	add    $0x1,%ecx
0x76c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x770:	e9 42 00 00 00       	jmpq   0x7b7
0x775:	48 8b 3d 64 f8 ff ff 	mov    -0x79c(%rip),%rdi        # 0xffffffe0
0x77c:	be 2a 00 00 00       	mov    $0x2a,%esi
0x781:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x785:	48 8b c8             	mov    %rax,%rcx
0x788:	48 63 f6             	movslq %esi,%rsi
0x78b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x790:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x796:	0f 8d 07 00 00 00    	jge    0x7a3
0x79c:	83 c1 01             	add    $0x1,%ecx
0x79f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7a3:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x7a9:	48 83 ec 10          	sub    $0x10,%rsp
0x7ad:	44 89 1c 24          	mov    %r11d,(%rsp)
0x7b1:	e8 00 00 00 00       	callq  0x7b6
0x7b6:	90                   	nop
0x7b7:	48 83 c5 40          	add    $0x40,%rbp
0x7bb:	c9                   	leaveq 
0x7bc:	c2 10 00             	retq   $0x10

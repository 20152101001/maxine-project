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
0x20:	4c 89 1d 19 ff ff ff 	mov    %r11,-0xe7(%rip)        # 0xffffff40
0x27:	48 8b 3d 1a ff ff ff 	mov    -0xe6(%rip),%rdi        # 0xffffff48
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
0x53:	48 8b 3d f6 fe ff ff 	mov    -0x10a(%rip),%rdi        # 0xffffff50
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 f3 fe ff ff 	mov    -0x10d(%rip),%rsi        # 0xffffff58
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
0x132:	48 8b 3d 27 fe ff ff 	mov    -0x1d9(%rip),%rdi        # 0xffffff60
0x139:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x13d:	48 8b 35 24 fe ff ff 	mov    -0x1dc(%rip),%rsi        # 0xffffff68
0x144:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x148:	49 8b ce             	mov    %r14,%rcx
0x14b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x14f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x156:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x15d:	48 8b d9             	mov    %rcx,%rbx
0x160:	48 03 da             	add    %rdx,%rbx
0x163:	4c 8b cb             	mov    %rbx,%r9
0x166:	4d 3b c8             	cmp    %r8,%r9
0x169:	0f 86 14 00 00 00    	jbe    0x183
0x16f:	48 8b fe             	mov    %rsi,%rdi
0x172:	48 8b f2             	mov    %rdx,%rsi
0x175:	48 8b d0             	mov    %rax,%rdx
0x178:	e8 00 00 00 00       	callq  0x17d
0x17d:	90                   	nop
0x17e:	e9 0a 00 00 00       	jmpq   0x18d
0x183:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x18a:	48 8b c1             	mov    %rcx,%rax
0x18d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x191:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x195:	90                   	nop
0x196:	90                   	nop
0x197:	90                   	nop
0x198:	e8 00 00 00 00       	callq  0x19d
0x19d:	90                   	nop
0x19e:	90                   	nop
0x19f:	90                   	nop
0x1a0:	e8 00 00 00 00       	callq  0x1a5
0x1a5:	90                   	nop
0x1a6:	83 f8 00             	cmp    $0x0,%eax
0x1a9:	0f 84 27 00 00 00    	je     0x1d6
0x1af:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1b3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1b7:	85 06                	test   %eax,(%rsi)
0x1b9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1bd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1c1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1c5:	83 e2 ff             	and    $0xffffffff,%edx
0x1c8:	48 8b fa             	mov    %rdx,%rdi
0x1cb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1da:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1de:	48 89 38             	mov    %rdi,(%rax)
0x1e1:	48 83 ec 10          	sub    $0x10,%rsp
0x1e5:	48 89 04 24          	mov    %rax,(%rsp)
0x1e9:	48 83 ec 10          	sub    $0x10,%rsp
0x1ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1f6:	48 8b 3d 73 fd ff ff 	mov    -0x28d(%rip),%rdi        # 0xffffff70
0x1fd:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x201:	48 8b 35 70 fd ff ff 	mov    -0x290(%rip),%rsi        # 0xffffff78
0x208:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x20c:	49 8b ce             	mov    %r14,%rcx
0x20f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x213:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x21a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x221:	48 8b d9             	mov    %rcx,%rbx
0x224:	48 03 da             	add    %rdx,%rbx
0x227:	4c 8b cb             	mov    %rbx,%r9
0x22a:	4d 3b c8             	cmp    %r8,%r9
0x22d:	0f 86 14 00 00 00    	jbe    0x247
0x233:	48 8b fe             	mov    %rsi,%rdi
0x236:	48 8b f2             	mov    %rdx,%rsi
0x239:	48 8b d0             	mov    %rax,%rdx
0x23c:	e8 00 00 00 00       	callq  0x241
0x241:	90                   	nop
0x242:	e9 0a 00 00 00       	jmpq   0x251
0x247:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x24e:	48 8b c1             	mov    %rcx,%rax
0x251:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x255:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x259:	90                   	nop
0x25a:	90                   	nop
0x25b:	90                   	nop
0x25c:	e8 00 00 00 00       	callq  0x261
0x261:	90                   	nop
0x262:	90                   	nop
0x263:	90                   	nop
0x264:	e8 00 00 00 00       	callq  0x269
0x269:	90                   	nop
0x26a:	83 f8 00             	cmp    $0x0,%eax
0x26d:	0f 84 27 00 00 00    	je     0x29a
0x273:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x277:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x27b:	85 06                	test   %eax,(%rsi)
0x27d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x281:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x285:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x289:	83 e2 ff             	and    $0xffffffff,%edx
0x28c:	48 8b fa             	mov    %rdx,%rdi
0x28f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x293:	90                   	nop
0x294:	e8 00 00 00 00       	callq  0x299
0x299:	90                   	nop
0x29a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x29e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2a2:	48 89 38             	mov    %rdi,(%rax)
0x2a5:	48 83 ec 10          	sub    $0x10,%rsp
0x2a9:	48 89 04 24          	mov    %rax,(%rsp)
0x2ad:	48 83 ec 10          	sub    $0x10,%rsp
0x2b1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2b6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ba:	4c 8b 1d bf fc ff ff 	mov    -0x341(%rip),%r11        # 0xffffff80
0x2c1:	48 83 ec 10          	sub    $0x10,%rsp
0x2c5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2c9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2ce:	41 85 03             	test   %eax,(%r11)
0x2d1:	e8 00 00 00 00       	callq  0x2d6
0x2d6:	90                   	nop
0x2d7:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x2db:	48 83 ec 10          	sub    $0x10,%rsp
0x2df:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2e3:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x2e8:	41 85 03             	test   %eax,(%r11)
0x2eb:	e8 00 00 00 00       	callq  0x2f0
0x2f0:	90                   	nop
0x2f1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2f5:	48 83 c4 10          	add    $0x10,%rsp
0x2f9:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x2fd:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x301:	48 83 ec 10          	sub    $0x10,%rsp
0x305:	4c 89 1c 24          	mov    %r11,(%rsp)
0x309:	e8 00 00 00 00       	callq  0x30e
0x30e:	90                   	nop
0x30f:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x313:	48 83 ec 10          	sub    $0x10,%rsp
0x317:	4c 89 1c 24          	mov    %r11,(%rsp)
0x31b:	bf 17 00 00 00       	mov    $0x17,%edi
0x320:	48 8b 34 24          	mov    (%rsp),%rsi
0x324:	48 8b 15 5d fc ff ff 	mov    -0x3a3(%rip),%rdx        # 0xffffff88
0x32b:	b9 05 00 00 00       	mov    $0x5,%ecx
0x330:	48 8b c6             	mov    %rsi,%rax
0x333:	48 8b 00             	mov    (%rax),%rax
0x336:	48 63 ff             	movslq %edi,%rdi
0x339:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x33e:	48 8b fa             	mov    %rdx,%rdi
0x341:	48 8b d1             	mov    %rcx,%rdx
0x344:	b9 03 00 00 00       	mov    $0x3,%ecx
0x349:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x34d:	90                   	nop
0x34e:	90                   	nop
0x34f:	e8 00 00 00 00       	callq  0x354
0x354:	90                   	nop
0x355:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x359:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x35d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x361:	ff d0                	callq  *%rax
0x363:	90                   	nop
0x364:	48 83 ec 10          	sub    $0x10,%rsp
0x368:	48 89 04 24          	mov    %rax,(%rsp)
0x36c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x370:	48 83 c4 10          	add    $0x10,%rsp
0x374:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x378:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x37c:	48 83 ec 10          	sub    $0x10,%rsp
0x380:	4c 89 1c 24          	mov    %r11,(%rsp)
0x384:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x388:	48 83 ec 10          	sub    $0x10,%rsp
0x38c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x390:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x395:	48 8b 04 24          	mov    (%rsp),%rax
0x399:	48 83 c4 20          	add    $0x20,%rsp
0x39d:	4c 3b d8             	cmp    %rax,%r11
0x3a0:	74 33                	je     0x3d5
0x3a2:	48 8b 3d e7 fb ff ff 	mov    -0x419(%rip),%rdi        # 0xffffff90
0x3a9:	be 0d 00 00 00       	mov    $0xd,%esi
0x3ae:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3b2:	48 8b c8             	mov    %rax,%rcx
0x3b5:	48 63 f6             	movslq %esi,%rsi
0x3b8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3bd:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3c3:	0f 8d 07 00 00 00    	jge    0x3d0
0x3c9:	83 c1 01             	add    $0x1,%ecx
0x3cc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3d0:	e9 d6 00 00 00       	jmpq   0x4ab
0x3d5:	48 8b 3d bc fb ff ff 	mov    -0x444(%rip),%rdi        # 0xffffff98
0x3dc:	be 0e 00 00 00       	mov    $0xe,%esi
0x3e1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3e5:	48 8b c8             	mov    %rax,%rcx
0x3e8:	48 63 f6             	movslq %esi,%rsi
0x3eb:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3f0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3f6:	0f 8d 07 00 00 00    	jge    0x403
0x3fc:	83 c1 01             	add    $0x1,%ecx
0x3ff:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x403:	48 8b 3d 96 fb ff ff 	mov    -0x46a(%rip),%rdi        # 0xffffffa0
0x40a:	be 18 00 00 00       	mov    $0x18,%esi
0x40f:	48 63 f6             	movslq %esi,%rsi
0x412:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x416:	48 83 ec 10          	sub    $0x10,%rsp
0x41a:	48 89 04 24          	mov    %rax,(%rsp)
0x41e:	4c 8b 1d 83 fb ff ff 	mov    -0x47d(%rip),%r11        # 0xffffffa8
0x425:	48 83 ec 10          	sub    $0x10,%rsp
0x429:	4c 89 1c 24          	mov    %r11,(%rsp)
0x42d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x432:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x437:	48 8b 15 72 fb ff ff 	mov    -0x48e(%rip),%rdx        # 0xffffffb0
0x43e:	b9 10 00 00 00       	mov    $0x10,%ecx
0x443:	48 8b c6             	mov    %rsi,%rax
0x446:	48 8b 00             	mov    (%rax),%rax
0x449:	48 63 ff             	movslq %edi,%rdi
0x44c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x451:	48 8b fa             	mov    %rdx,%rdi
0x454:	48 8b d1             	mov    %rcx,%rdx
0x457:	b9 03 00 00 00       	mov    $0x3,%ecx
0x45c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x460:	90                   	nop
0x461:	90                   	nop
0x462:	e8 00 00 00 00       	callq  0x467
0x467:	90                   	nop
0x468:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x46c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x470:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x475:	ff d0                	callq  *%rax
0x477:	90                   	nop
0x478:	48 8b 3d 39 fb ff ff 	mov    -0x4c7(%rip),%rdi        # 0xffffffb8
0x47f:	be 18 00 00 00       	mov    $0x18,%esi
0x484:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x488:	48 8b c8             	mov    %rax,%rcx
0x48b:	48 63 f6             	movslq %esi,%rsi
0x48e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x493:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x499:	0f 8d 07 00 00 00    	jge    0x4a6
0x49f:	83 c1 01             	add    $0x1,%ecx
0x4a2:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4a6:	e9 33 01 00 00       	jmpq   0x5de
0x4ab:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x4af:	48 83 ec 10          	sub    $0x10,%rsp
0x4b3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4b7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4bb:	48 33 c0             	xor    %rax,%rax
0x4be:	48 83 c4 10          	add    $0x10,%rsp
0x4c2:	4c 3b d8             	cmp    %rax,%r11
0x4c5:	74 33                	je     0x4fa
0x4c7:	48 8b 3d f2 fa ff ff 	mov    -0x50e(%rip),%rdi        # 0xffffffc0
0x4ce:	be 19 00 00 00       	mov    $0x19,%esi
0x4d3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4d7:	48 8b c8             	mov    %rax,%rcx
0x4da:	48 63 f6             	movslq %esi,%rsi
0x4dd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4e2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4e8:	0f 8d 07 00 00 00    	jge    0x4f5
0x4ee:	83 c1 01             	add    $0x1,%ecx
0x4f1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4f5:	e9 9d 00 00 00       	jmpq   0x597
0x4fa:	48 8b 3d c7 fa ff ff 	mov    -0x539(%rip),%rdi        # 0xffffffc8
0x501:	be 1a 00 00 00       	mov    $0x1a,%esi
0x506:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x50a:	48 8b c8             	mov    %rax,%rcx
0x50d:	48 63 f6             	movslq %esi,%rsi
0x510:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x515:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x51b:	0f 8d 07 00 00 00    	jge    0x528
0x521:	83 c1 01             	add    $0x1,%ecx
0x524:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x528:	49 bb 0a 00 00 00 00 	movabs $0xa,%r11
0x52f:	00 00 00 
0x532:	48 83 ec 20          	sub    $0x20,%rsp
0x536:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x53b:	e8 00 00 00 00       	callq  0x540
0x540:	90                   	nop
0x541:	48 8b 3d 88 fa ff ff 	mov    -0x578(%rip),%rdi        # 0xffffffd0
0x548:	be 1c 00 00 00       	mov    $0x1c,%esi
0x54d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x551:	48 8b c8             	mov    %rax,%rcx
0x554:	48 63 f6             	movslq %esi,%rsi
0x557:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x55c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x562:	0f 8d 07 00 00 00    	jge    0x56f
0x568:	83 c1 01             	add    $0x1,%ecx
0x56b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x56f:	e9 23 00 00 00       	jmpq   0x597
0x574:	49 8b fe             	mov    %r14,%rdi
0x577:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x57b:	85 07                	test   %eax,(%rdi)
0x57d:	e8 00 00 00 00       	callq  0x582
0x582:	90                   	nop
0x583:	48 83 ec 10          	sub    $0x10,%rsp
0x587:	48 89 04 24          	mov    %rax,(%rsp)
0x58b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x58f:	48 83 c4 10          	add    $0x10,%rsp
0x593:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x597:	48 8b 3d 3a fa ff ff 	mov    -0x5c6(%rip),%rdi        # 0xffffffd8
0x59e:	be 1d 00 00 00       	mov    $0x1d,%esi
0x5a3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5a7:	48 8b c8             	mov    %rax,%rcx
0x5aa:	48 63 f6             	movslq %esi,%rsi
0x5ad:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5b2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5b8:	0f 8d 07 00 00 00    	jge    0x5c5
0x5be:	83 c1 01             	add    $0x1,%ecx
0x5c1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5c5:	48 8b 3d 14 fa ff ff 	mov    -0x5ec(%rip),%rdi        # 0xffffffe0
0x5cc:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x5d0:	83 e8 01             	sub    $0x1,%eax
0x5d3:	89 47 30             	mov    %eax,0x30(%rdi)
0x5d6:	4d 8b 36             	mov    (%r14),%r14
0x5d9:	e9 31 fd ff ff       	jmpq   0x30f
0x5de:	48 83 c5 40          	add    $0x40,%rbp
0x5e2:	c9                   	leaveq 
0x5e3:	c2 10 00             	retq   $0x10

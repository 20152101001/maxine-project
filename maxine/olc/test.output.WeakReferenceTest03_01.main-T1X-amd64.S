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
0x20:	4c 89 1d e1 fe ff ff 	mov    %r11,-0x11f(%rip)        # 0xffffff08
0x27:	48 8b 3d e2 fe ff ff 	mov    -0x11e(%rip),%rdi        # 0xffffff10
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
0x53:	48 8b 3d be fe ff ff 	mov    -0x142(%rip),%rdi        # 0xffffff18
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 bb fe ff ff 	mov    -0x145(%rip),%rsi        # 0xffffff20
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
0x132:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x138:	48 83 ec 10          	sub    $0x10,%rsp
0x13c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x140:	44 8b 1c 24          	mov    (%rsp),%r11d
0x144:	48 83 c4 10          	add    $0x10,%rsp
0x148:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x14c:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x150:	48 83 ec 10          	sub    $0x10,%rsp
0x154:	44 89 1c 24          	mov    %r11d,(%rsp)
0x158:	41 bb 05 00 00 00    	mov    $0x5,%r11d
0x15e:	48 83 ec 10          	sub    $0x10,%rsp
0x162:	44 89 1c 24          	mov    %r11d,(%rsp)
0x166:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x16b:	8b 04 24             	mov    (%rsp),%eax
0x16e:	48 83 c4 20          	add    $0x20,%rsp
0x172:	44 3b d8             	cmp    %eax,%r11d
0x175:	7c 33                	jl     0x1aa
0x177:	48 8b 3d aa fd ff ff 	mov    -0x256(%rip),%rdi        # 0xffffff28
0x17e:	be 01 00 00 00       	mov    $0x1,%esi
0x183:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x187:	48 8b c8             	mov    %rax,%rcx
0x18a:	48 63 f6             	movslq %esi,%rsi
0x18d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x192:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x198:	0f 8d 07 00 00 00    	jge    0x1a5
0x19e:	83 c1 01             	add    $0x1,%ecx
0x1a1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1a5:	e9 ce 06 00 00       	jmpq   0x878
0x1aa:	48 8b 3d 7f fd ff ff 	mov    -0x281(%rip),%rdi        # 0xffffff30
0x1b1:	be 02 00 00 00       	mov    $0x2,%esi
0x1b6:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1ba:	48 8b c8             	mov    %rax,%rcx
0x1bd:	48 63 f6             	movslq %esi,%rsi
0x1c0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1c5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1cb:	0f 8d 07 00 00 00    	jge    0x1d8
0x1d1:	83 c1 01             	add    $0x1,%ecx
0x1d4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1d8:	48 8b 3d 59 fd ff ff 	mov    -0x2a7(%rip),%rdi        # 0xffffff38
0x1df:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x1e3:	48 8b 35 56 fd ff ff 	mov    -0x2aa(%rip),%rsi        # 0xffffff40
0x1ea:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1ee:	49 8b ce             	mov    %r14,%rcx
0x1f1:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1f5:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1fc:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x203:	48 8b d9             	mov    %rcx,%rbx
0x206:	48 03 da             	add    %rdx,%rbx
0x209:	4c 8b cb             	mov    %rbx,%r9
0x20c:	4d 3b c8             	cmp    %r8,%r9
0x20f:	0f 86 14 00 00 00    	jbe    0x229
0x215:	48 8b fe             	mov    %rsi,%rdi
0x218:	48 8b f2             	mov    %rdx,%rsi
0x21b:	48 8b d0             	mov    %rax,%rdx
0x21e:	e8 00 00 00 00       	callq  0x223
0x223:	90                   	nop
0x224:	e9 0a 00 00 00       	jmpq   0x233
0x229:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x230:	48 8b c1             	mov    %rcx,%rax
0x233:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x237:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x23b:	90                   	nop
0x23c:	90                   	nop
0x23d:	90                   	nop
0x23e:	e8 00 00 00 00       	callq  0x243
0x243:	90                   	nop
0x244:	90                   	nop
0x245:	90                   	nop
0x246:	e8 00 00 00 00       	callq  0x24b
0x24b:	90                   	nop
0x24c:	83 f8 00             	cmp    $0x0,%eax
0x24f:	0f 84 27 00 00 00    	je     0x27c
0x255:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x259:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x25d:	85 06                	test   %eax,(%rsi)
0x25f:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x263:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x267:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x26b:	83 e2 ff             	and    $0xffffffff,%edx
0x26e:	48 8b fa             	mov    %rdx,%rdi
0x271:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x275:	90                   	nop
0x276:	e8 00 00 00 00       	callq  0x27b
0x27b:	90                   	nop
0x27c:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x280:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x284:	48 89 38             	mov    %rdi,(%rax)
0x287:	48 83 ec 10          	sub    $0x10,%rsp
0x28b:	48 89 04 24          	mov    %rax,(%rsp)
0x28f:	48 83 ec 10          	sub    $0x10,%rsp
0x293:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x298:	4c 89 1c 24          	mov    %r11,(%rsp)
0x29c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2a0:	41 85 03             	test   %eax,(%r11)
0x2a3:	e8 00 00 00 00       	callq  0x2a8
0x2a8:	90                   	nop
0x2a9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2ad:	48 83 c4 10          	add    $0x10,%rsp
0x2b1:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x2b5:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x2b9:	48 83 ec 10          	sub    $0x10,%rsp
0x2bd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2c1:	48 8b 3d 80 fc ff ff 	mov    -0x380(%rip),%rdi        # 0xffffff48
0x2c8:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x2cc:	48 8b 35 7d fc ff ff 	mov    -0x383(%rip),%rsi        # 0xffffff50
0x2d3:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2d7:	49 8b ce             	mov    %r14,%rcx
0x2da:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x2de:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x2e5:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x2ec:	48 8b d9             	mov    %rcx,%rbx
0x2ef:	48 03 da             	add    %rdx,%rbx
0x2f2:	4c 8b cb             	mov    %rbx,%r9
0x2f5:	4d 3b c8             	cmp    %r8,%r9
0x2f8:	0f 86 14 00 00 00    	jbe    0x312
0x2fe:	48 8b fe             	mov    %rsi,%rdi
0x301:	48 8b f2             	mov    %rdx,%rsi
0x304:	48 8b d0             	mov    %rax,%rdx
0x307:	e8 00 00 00 00       	callq  0x30c
0x30c:	90                   	nop
0x30d:	e9 0a 00 00 00       	jmpq   0x31c
0x312:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x319:	48 8b c1             	mov    %rcx,%rax
0x31c:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x320:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x324:	90                   	nop
0x325:	90                   	nop
0x326:	90                   	nop
0x327:	e8 00 00 00 00       	callq  0x32c
0x32c:	90                   	nop
0x32d:	90                   	nop
0x32e:	90                   	nop
0x32f:	e8 00 00 00 00       	callq  0x334
0x334:	90                   	nop
0x335:	83 f8 00             	cmp    $0x0,%eax
0x338:	0f 84 27 00 00 00    	je     0x365
0x33e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x342:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x346:	85 06                	test   %eax,(%rsi)
0x348:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x34c:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x350:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x354:	83 e2 ff             	and    $0xffffffff,%edx
0x357:	48 8b fa             	mov    %rdx,%rdi
0x35a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x35e:	90                   	nop
0x35f:	e8 00 00 00 00       	callq  0x364
0x364:	90                   	nop
0x365:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x369:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x36d:	48 89 38             	mov    %rdi,(%rax)
0x370:	48 83 ec 10          	sub    $0x10,%rsp
0x374:	48 89 04 24          	mov    %rax,(%rsp)
0x378:	48 83 ec 10          	sub    $0x10,%rsp
0x37c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x381:	4c 89 1c 24          	mov    %r11,(%rsp)
0x385:	4c 8b 1c 24          	mov    (%rsp),%r11
0x389:	41 85 03             	test   %eax,(%r11)
0x38c:	90                   	nop
0x38d:	90                   	nop
0x38e:	90                   	nop
0x38f:	90                   	nop
0x390:	e8 00 00 00 00       	callq  0x395
0x395:	90                   	nop
0x396:	4c 8b 1d bb fb ff ff 	mov    -0x445(%rip),%r11        # 0xffffff58
0x39d:	48 83 ec 10          	sub    $0x10,%rsp
0x3a1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3a5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3aa:	41 85 03             	test   %eax,(%r11)
0x3ad:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3b2:	e8 00 00 00 00       	callq  0x3b7
0x3b7:	90                   	nop
0x3b8:	48 83 ec 10          	sub    $0x10,%rsp
0x3bc:	48 89 04 24          	mov    %rax,(%rsp)
0x3c0:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x3c4:	48 83 ec 10          	sub    $0x10,%rsp
0x3c8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3cc:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3d1:	41 85 03             	test   %eax,(%r11)
0x3d4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3d9:	e8 00 00 00 00       	callq  0x3de
0x3de:	90                   	nop
0x3df:	48 83 ec 10          	sub    $0x10,%rsp
0x3e3:	48 89 04 24          	mov    %rax,(%rsp)
0x3e7:	4c 8b 1d 72 fb ff ff 	mov    -0x48e(%rip),%r11        # 0xffffff60
0x3ee:	48 83 ec 10          	sub    $0x10,%rsp
0x3f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3f6:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3fb:	41 85 03             	test   %eax,(%r11)
0x3fe:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x403:	e8 00 00 00 00       	callq  0x408
0x408:	90                   	nop
0x409:	48 83 ec 10          	sub    $0x10,%rsp
0x40d:	48 89 04 24          	mov    %rax,(%rsp)
0x411:	4c 8b 1c 24          	mov    (%rsp),%r11
0x415:	41 85 03             	test   %eax,(%r11)
0x418:	48 8b 3c 24          	mov    (%rsp),%rdi
0x41c:	90                   	nop
0x41d:	90                   	nop
0x41e:	90                   	nop
0x41f:	90                   	nop
0x420:	e8 00 00 00 00       	callq  0x425
0x425:	90                   	nop
0x426:	48 83 ec 10          	sub    $0x10,%rsp
0x42a:	48 89 04 24          	mov    %rax,(%rsp)
0x42e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x433:	41 85 03             	test   %eax,(%r11)
0x436:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x43b:	e8 00 00 00 00       	callq  0x440
0x440:	90                   	nop
0x441:	48 83 ec 10          	sub    $0x10,%rsp
0x445:	48 89 04 24          	mov    %rax,(%rsp)
0x449:	48 83 c4 10          	add    $0x10,%rsp
0x44d:	4d 33 db             	xor    %r11,%r11
0x450:	48 83 ec 10          	sub    $0x10,%rsp
0x454:	4c 89 1c 24          	mov    %r11,(%rsp)
0x458:	4c 8b 1c 24          	mov    (%rsp),%r11
0x45c:	48 83 c4 10          	add    $0x10,%rsp
0x460:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x464:	90                   	nop
0x465:	90                   	nop
0x466:	90                   	nop
0x467:	90                   	nop
0x468:	e8 00 00 00 00       	callq  0x46d
0x46d:	90                   	nop
0x46e:	48 8b 3d f3 fa ff ff 	mov    -0x50d(%rip),%rdi        # 0xffffff68
0x475:	be 10 00 00 00       	mov    $0x10,%esi
0x47a:	48 63 f6             	movslq %esi,%rsi
0x47d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x481:	48 83 ec 10          	sub    $0x10,%rsp
0x485:	48 89 04 24          	mov    %rax,(%rsp)
0x489:	bf 17 00 00 00       	mov    $0x17,%edi
0x48e:	48 8b 34 24          	mov    (%rsp),%rsi
0x492:	48 8b 15 d7 fa ff ff 	mov    -0x529(%rip),%rdx        # 0xffffff70
0x499:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x49e:	48 8b c6             	mov    %rsi,%rax
0x4a1:	48 8b 00             	mov    (%rax),%rax
0x4a4:	48 63 ff             	movslq %edi,%rdi
0x4a7:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4ac:	48 8b fa             	mov    %rdx,%rdi
0x4af:	48 8b d1             	mov    %rcx,%rdx
0x4b2:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4b7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4bb:	90                   	nop
0x4bc:	90                   	nop
0x4bd:	e8 00 00 00 00       	callq  0x4c2
0x4c2:	90                   	nop
0x4c3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4c7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4cb:	48 8b 3c 24          	mov    (%rsp),%rdi
0x4cf:	ff d0                	callq  *%rax
0x4d1:	90                   	nop
0x4d2:	48 83 ec 10          	sub    $0x10,%rsp
0x4d6:	48 89 04 24          	mov    %rax,(%rsp)
0x4da:	48 8b 34 24          	mov    (%rsp),%rsi
0x4de:	48 8b 3d 93 fa ff ff 	mov    -0x56d(%rip),%rdi        # 0xffffff78
0x4e5:	48 8b 15 94 fa ff ff 	mov    -0x56c(%rip),%rdx        # 0xffffff80
0x4ec:	b9 14 00 00 00       	mov    $0x14,%ecx
0x4f1:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x4f5:	48 8b fa             	mov    %rdx,%rdi
0x4f8:	48 8b de             	mov    %rsi,%rbx
0x4fb:	48 8b f3             	mov    %rbx,%rsi
0x4fe:	48 8b d1             	mov    %rcx,%rdx
0x501:	b9 03 00 00 00       	mov    $0x3,%ecx
0x506:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x50a:	e8 00 00 00 00       	callq  0x50f
0x50f:	90                   	nop
0x510:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x514:	4d 33 db             	xor    %r11,%r11
0x517:	49 3b f3             	cmp    %r11,%rsi
0x51a:	0f 85 0e 00 00 00    	jne    0x52e
0x520:	bf 01 00 00 00       	mov    $0x1,%edi
0x525:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x529:	e9 6f 00 00 00       	jmpq   0x59d
0x52e:	48 8b c6             	mov    %rsi,%rax
0x531:	48 8b 38             	mov    (%rax),%rdi
0x534:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x538:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x53c:	0f 85 0e 00 00 00    	jne    0x550
0x542:	bf 01 00 00 00       	mov    $0x1,%edi
0x547:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x54b:	e9 4d 00 00 00       	jmpq   0x59d
0x550:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x554:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x55b:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x55f:	48 8b c3             	mov    %rbx,%rax
0x562:	99                   	cltd   
0x563:	41 f7 f8             	idiv   %r8d
0x566:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x56a:	03 d0                	add    %eax,%edx
0x56c:	48 8b c7             	mov    %rdi,%rax
0x56f:	48 63 d2             	movslq %edx,%rdx
0x572:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x577:	48 63 c0             	movslq %eax,%rax
0x57a:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x57f:	48 63 db             	movslq %ebx,%rbx
0x582:	48 3b c3             	cmp    %rbx,%rax
0x585:	0f 85 0a 00 00 00    	jne    0x595
0x58b:	b8 01 00 00 00       	mov    $0x1,%eax
0x590:	e9 05 00 00 00       	jmpq   0x59a
0x595:	b8 00 00 00 00       	mov    $0x0,%eax
0x59a:	48 8b f8             	mov    %rax,%rdi
0x59d:	83 ff 00             	cmp    $0x0,%edi
0x5a0:	0f 85 12 00 00 00    	jne    0x5b8
0x5a6:	48 8b f9             	mov    %rcx,%rdi
0x5a9:	e8 00 00 00 00       	callq  0x5ae
0x5ae:	90                   	nop
0x5af:	48 8b f8             	mov    %rax,%rdi
0x5b2:	e8 00 00 00 00       	callq  0x5b7
0x5b7:	90                   	nop
0x5b8:	48 8b c6             	mov    %rsi,%rax
0x5bb:	48 89 04 24          	mov    %rax,(%rsp)
0x5bf:	48 83 ec 10          	sub    $0x10,%rsp
0x5c3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5c8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5cc:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5d0:	48 83 c4 10          	add    $0x10,%rsp
0x5d4:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x5d8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5dc:	48 33 c0             	xor    %rax,%rax
0x5df:	48 83 c4 10          	add    $0x10,%rsp
0x5e3:	4c 3b d8             	cmp    %rax,%r11
0x5e6:	74 33                	je     0x61b
0x5e8:	48 8b 3d 99 f9 ff ff 	mov    -0x667(%rip),%rdi        # 0xffffff88
0x5ef:	be 1c 00 00 00       	mov    $0x1c,%esi
0x5f4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5f8:	48 8b c8             	mov    %rax,%rcx
0x5fb:	48 63 f6             	movslq %esi,%rsi
0x5fe:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x603:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x609:	0f 8d 07 00 00 00    	jge    0x616
0x60f:	83 c1 01             	add    $0x1,%ecx
0x612:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x616:	e9 75 00 00 00       	jmpq   0x690
0x61b:	48 8b 3d 6e f9 ff ff 	mov    -0x692(%rip),%rdi        # 0xffffff90
0x622:	be 1d 00 00 00       	mov    $0x1d,%esi
0x627:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x62b:	48 8b c8             	mov    %rax,%rcx
0x62e:	48 63 f6             	movslq %esi,%rsi
0x631:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x636:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x63c:	0f 8d 07 00 00 00    	jge    0x649
0x642:	83 c1 01             	add    $0x1,%ecx
0x645:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x649:	48 8b 3d 48 f9 ff ff 	mov    -0x6b8(%rip),%rdi        # 0xffffff98
0x650:	be 1e 00 00 00       	mov    $0x1e,%esi
0x655:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x659:	48 8b c8             	mov    %rax,%rcx
0x65c:	48 63 f6             	movslq %esi,%rsi
0x65f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x664:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x66a:	0f 8d 07 00 00 00    	jge    0x677
0x670:	83 c1 01             	add    $0x1,%ecx
0x673:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x677:	48 8b 3d 22 f9 ff ff 	mov    -0x6de(%rip),%rdi        # 0xffffffa0
0x67e:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x682:	83 e8 01             	sub    $0x1,%eax
0x685:	89 47 30             	mov    %eax,0x30(%rdi)
0x688:	4d 8b 36             	mov    (%r14),%r14
0x68b:	e9 de fd ff ff       	jmpq   0x46e
0x690:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x694:	48 83 ec 10          	sub    $0x10,%rsp
0x698:	4c 89 1c 24          	mov    %r11,(%rsp)
0x69c:	48 8b 3d 05 f9 ff ff 	mov    -0x6fb(%rip),%rdi        # 0xffffffa8
0x6a3:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x6a7:	48 8b 35 02 f9 ff ff 	mov    -0x6fe(%rip),%rsi        # 0xffffffb0
0x6ae:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6b2:	49 8b ce             	mov    %r14,%rcx
0x6b5:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x6b9:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x6c0:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x6c7:	48 8b d9             	mov    %rcx,%rbx
0x6ca:	48 03 da             	add    %rdx,%rbx
0x6cd:	4c 8b cb             	mov    %rbx,%r9
0x6d0:	4d 3b c8             	cmp    %r8,%r9
0x6d3:	0f 86 14 00 00 00    	jbe    0x6ed
0x6d9:	48 8b fe             	mov    %rsi,%rdi
0x6dc:	48 8b f2             	mov    %rdx,%rsi
0x6df:	48 8b d0             	mov    %rax,%rdx
0x6e2:	e8 00 00 00 00       	callq  0x6e7
0x6e7:	90                   	nop
0x6e8:	e9 0a 00 00 00       	jmpq   0x6f7
0x6ed:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x6f4:	48 8b c1             	mov    %rcx,%rax
0x6f7:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x6fb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6ff:	90                   	nop
0x700:	90                   	nop
0x701:	90                   	nop
0x702:	e8 00 00 00 00       	callq  0x707
0x707:	90                   	nop
0x708:	90                   	nop
0x709:	90                   	nop
0x70a:	e8 00 00 00 00       	callq  0x70f
0x70f:	90                   	nop
0x710:	83 f8 00             	cmp    $0x0,%eax
0x713:	0f 84 27 00 00 00    	je     0x740
0x719:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x71d:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x721:	85 06                	test   %eax,(%rsi)
0x723:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x727:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x72b:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x72f:	83 e2 ff             	and    $0xffffffff,%edx
0x732:	48 8b fa             	mov    %rdx,%rdi
0x735:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x739:	90                   	nop
0x73a:	e8 00 00 00 00       	callq  0x73f
0x73f:	90                   	nop
0x740:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x744:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x748:	48 89 38             	mov    %rdi,(%rax)
0x74b:	48 83 ec 10          	sub    $0x10,%rsp
0x74f:	48 89 04 24          	mov    %rax,(%rsp)
0x753:	48 83 ec 10          	sub    $0x10,%rsp
0x757:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x75c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x760:	4c 8b 1c 24          	mov    (%rsp),%r11
0x764:	41 85 03             	test   %eax,(%r11)
0x767:	90                   	nop
0x768:	e8 00 00 00 00       	callq  0x76d
0x76d:	90                   	nop
0x76e:	4c 8b 1d 43 f8 ff ff 	mov    -0x7bd(%rip),%r11        # 0xffffffb8
0x775:	48 83 ec 10          	sub    $0x10,%rsp
0x779:	4c 89 1c 24          	mov    %r11,(%rsp)
0x77d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x782:	41 85 03             	test   %eax,(%r11)
0x785:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x78a:	e8 00 00 00 00       	callq  0x78f
0x78f:	90                   	nop
0x790:	48 83 ec 10          	sub    $0x10,%rsp
0x794:	48 89 04 24          	mov    %rax,(%rsp)
0x798:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x79c:	48 83 ec 10          	sub    $0x10,%rsp
0x7a0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7a4:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x7a9:	41 85 03             	test   %eax,(%r11)
0x7ac:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7b1:	e8 00 00 00 00       	callq  0x7b6
0x7b6:	90                   	nop
0x7b7:	48 83 ec 10          	sub    $0x10,%rsp
0x7bb:	48 89 04 24          	mov    %rax,(%rsp)
0x7bf:	4c 8b 1d fa f7 ff ff 	mov    -0x806(%rip),%r11        # 0xffffffc0
0x7c6:	48 83 ec 10          	sub    $0x10,%rsp
0x7ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7ce:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x7d3:	41 85 03             	test   %eax,(%r11)
0x7d6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7db:	e8 00 00 00 00       	callq  0x7e0
0x7e0:	90                   	nop
0x7e1:	48 83 ec 10          	sub    $0x10,%rsp
0x7e5:	48 89 04 24          	mov    %rax,(%rsp)
0x7e9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7ed:	41 85 03             	test   %eax,(%r11)
0x7f0:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7f4:	90                   	nop
0x7f5:	90                   	nop
0x7f6:	90                   	nop
0x7f7:	90                   	nop
0x7f8:	e8 00 00 00 00       	callq  0x7fd
0x7fd:	90                   	nop
0x7fe:	48 83 ec 10          	sub    $0x10,%rsp
0x802:	48 89 04 24          	mov    %rax,(%rsp)
0x806:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x80b:	41 85 03             	test   %eax,(%r11)
0x80e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x813:	e8 00 00 00 00       	callq  0x818
0x818:	90                   	nop
0x819:	48 83 ec 10          	sub    $0x10,%rsp
0x81d:	48 89 04 24          	mov    %rax,(%rsp)
0x821:	48 83 c4 10          	add    $0x10,%rsp
0x825:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x829:	41 83 c3 01          	add    $0x1,%r11d
0x82d:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x831:	48 8b 3d 90 f7 ff ff 	mov    -0x870(%rip),%rdi        # 0xffffffc8
0x838:	be 25 00 00 00       	mov    $0x25,%esi
0x83d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x841:	48 8b c8             	mov    %rax,%rcx
0x844:	48 63 f6             	movslq %esi,%rsi
0x847:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x84c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x852:	0f 8d 07 00 00 00    	jge    0x85f
0x858:	83 c1 01             	add    $0x1,%ecx
0x85b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x85f:	48 8b 3d 6a f7 ff ff 	mov    -0x896(%rip),%rdi        # 0xffffffd0
0x866:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x86a:	83 e8 01             	sub    $0x1,%eax
0x86d:	89 47 30             	mov    %eax,0x30(%rdi)
0x870:	4d 8b 36             	mov    (%r14),%r14
0x873:	e9 d4 f8 ff ff       	jmpq   0x14c
0x878:	48 8b 3d 59 f7 ff ff 	mov    -0x8a7(%rip),%rdi        # 0xffffffd8
0x87f:	be 18 00 00 00       	mov    $0x18,%esi
0x884:	48 63 f6             	movslq %esi,%rsi
0x887:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x88b:	48 83 ec 10          	sub    $0x10,%rsp
0x88f:	48 89 04 24          	mov    %rax,(%rsp)
0x893:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x897:	48 83 ec 10          	sub    $0x10,%rsp
0x89b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x89f:	bf 30 00 00 00       	mov    $0x30,%edi
0x8a4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x8a9:	48 8b 15 30 f7 ff ff 	mov    -0x8d0(%rip),%rdx        # 0xffffffe0
0x8b0:	b9 27 00 00 00       	mov    $0x27,%ecx
0x8b5:	48 8b c6             	mov    %rsi,%rax
0x8b8:	48 8b 00             	mov    (%rax),%rax
0x8bb:	48 63 ff             	movslq %edi,%rdi
0x8be:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x8c3:	48 8b fa             	mov    %rdx,%rdi
0x8c6:	48 8b d1             	mov    %rcx,%rdx
0x8c9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x8ce:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x8d2:	90                   	nop
0x8d3:	90                   	nop
0x8d4:	e8 00 00 00 00       	callq  0x8d9
0x8d9:	90                   	nop
0x8da:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x8de:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x8e2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x8e7:	ff d0                	callq  *%rax
0x8e9:	90                   	nop
0x8ea:	48 83 c5 40          	add    $0x40,%rbp
0x8ee:	c9                   	leaveq 
0x8ef:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d c9 fe ff ff 	mov    %r11,-0x137(%rip)        # 0xfffffef0
0x27:	48 8b 3d ca fe ff ff 	mov    -0x136(%rip),%rdi        # 0xfffffef8
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
0x59:	48 8b 3d a0 fe ff ff 	mov    -0x160(%rip),%rdi        # 0xffffff00
0x60:	be 01 00 00 00       	mov    $0x1,%esi
0x65:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x69:	48 8b c8             	mov    %rax,%rcx
0x6c:	48 63 f6             	movslq %esi,%rsi
0x6f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x74:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x7a:	0f 8d 07 00 00 00    	jge    0x87
0x80:	83 c1 01             	add    $0x1,%ecx
0x83:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x87:	e9 18 02 00 00       	jmpq   0x2a4
0x8c:	49 8b fe             	mov    %r14,%rdi
0x8f:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x93:	85 07                	test   %eax,(%rdi)
0x95:	e8 00 00 00 00       	callq  0x9a
0x9a:	90                   	nop
0x9b:	48 83 ec 10          	sub    $0x10,%rsp
0x9f:	48 89 04 24          	mov    %rax,(%rsp)
0xa3:	4c 8b 1c 24          	mov    (%rsp),%r11
0xa7:	48 83 c4 10          	add    $0x10,%rsp
0xab:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0xaf:	48 8b 3d 52 fe ff ff 	mov    -0x1ae(%rip),%rdi        # 0xffffff08
0xb6:	be 18 00 00 00       	mov    $0x18,%esi
0xbb:	48 63 f6             	movslq %esi,%rsi
0xbe:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc2:	48 83 ec 10          	sub    $0x10,%rsp
0xc6:	48 89 04 24          	mov    %rax,(%rsp)
0xca:	48 8b 3d 3f fe ff ff 	mov    -0x1c1(%rip),%rdi        # 0xffffff10
0xd1:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xd5:	48 8b 35 3c fe ff ff 	mov    -0x1c4(%rip),%rsi        # 0xffffff18
0xdc:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xe0:	49 8b ce             	mov    %r14,%rcx
0xe3:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xe7:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xee:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xf5:	48 8b d9             	mov    %rcx,%rbx
0xf8:	48 03 da             	add    %rdx,%rbx
0xfb:	4c 8b cb             	mov    %rbx,%r9
0xfe:	4d 3b c8             	cmp    %r8,%r9
0x101:	0f 86 14 00 00 00    	jbe    0x11b
0x107:	48 8b fe             	mov    %rsi,%rdi
0x10a:	48 8b f2             	mov    %rdx,%rsi
0x10d:	48 8b d0             	mov    %rax,%rdx
0x110:	e8 00 00 00 00       	callq  0x115
0x115:	90                   	nop
0x116:	e9 0a 00 00 00       	jmpq   0x125
0x11b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x122:	48 8b c1             	mov    %rcx,%rax
0x125:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x129:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x12d:	90                   	nop
0x12e:	90                   	nop
0x12f:	90                   	nop
0x130:	e8 00 00 00 00       	callq  0x135
0x135:	90                   	nop
0x136:	90                   	nop
0x137:	90                   	nop
0x138:	e8 00 00 00 00       	callq  0x13d
0x13d:	90                   	nop
0x13e:	83 f8 00             	cmp    $0x0,%eax
0x141:	0f 84 27 00 00 00    	je     0x16e
0x147:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x14b:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x14f:	85 06                	test   %eax,(%rsi)
0x151:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x155:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x159:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x15d:	83 e2 ff             	and    $0xffffffff,%edx
0x160:	48 8b fa             	mov    %rdx,%rdi
0x163:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x167:	90                   	nop
0x168:	e8 00 00 00 00       	callq  0x16d
0x16d:	90                   	nop
0x16e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x172:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x176:	48 89 38             	mov    %rdi,(%rax)
0x179:	48 83 ec 10          	sub    $0x10,%rsp
0x17d:	48 89 04 24          	mov    %rax,(%rsp)
0x181:	48 83 ec 10          	sub    $0x10,%rsp
0x185:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x18a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x18e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x192:	41 85 03             	test   %eax,(%r11)
0x195:	90                   	nop
0x196:	90                   	nop
0x197:	90                   	nop
0x198:	e8 00 00 00 00       	callq  0x19d
0x19d:	90                   	nop
0x19e:	4c 8b 1d 7b fd ff ff 	mov    -0x285(%rip),%r11        # 0xffffff20
0x1a5:	48 83 ec 10          	sub    $0x10,%rsp
0x1a9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ad:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1b2:	41 85 03             	test   %eax,(%r11)
0x1b5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1ba:	e8 00 00 00 00       	callq  0x1bf
0x1bf:	90                   	nop
0x1c0:	48 83 ec 10          	sub    $0x10,%rsp
0x1c4:	48 89 04 24          	mov    %rax,(%rsp)
0x1c8:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1cc:	48 83 ec 10          	sub    $0x10,%rsp
0x1d0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1d4:	bf 0f 00 00 00       	mov    $0xf,%edi
0x1d9:	48 8b 34 24          	mov    (%rsp),%rsi
0x1dd:	48 8b 15 44 fd ff ff 	mov    -0x2bc(%rip),%rdx        # 0xffffff28
0x1e4:	b9 05 00 00 00       	mov    $0x5,%ecx
0x1e9:	48 8b c6             	mov    %rsi,%rax
0x1ec:	48 8b 00             	mov    (%rax),%rax
0x1ef:	48 63 ff             	movslq %edi,%rdi
0x1f2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1f7:	48 8b fa             	mov    %rdx,%rdi
0x1fa:	48 8b d1             	mov    %rcx,%rdx
0x1fd:	b9 03 00 00 00       	mov    $0x3,%ecx
0x202:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x206:	90                   	nop
0x207:	90                   	nop
0x208:	e8 00 00 00 00       	callq  0x20d
0x20d:	90                   	nop
0x20e:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x212:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x216:	48 8b 3c 24          	mov    (%rsp),%rdi
0x21a:	ff d0                	callq  *%rax
0x21c:	90                   	nop
0x21d:	48 83 ec 10          	sub    $0x10,%rsp
0x221:	48 89 04 24          	mov    %rax,(%rsp)
0x225:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x22a:	41 85 03             	test   %eax,(%r11)
0x22d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x232:	e8 00 00 00 00       	callq  0x237
0x237:	90                   	nop
0x238:	48 83 ec 10          	sub    $0x10,%rsp
0x23c:	48 89 04 24          	mov    %rax,(%rsp)
0x240:	4c 8b 1c 24          	mov    (%rsp),%r11
0x244:	41 85 03             	test   %eax,(%r11)
0x247:	48 8b 3c 24          	mov    (%rsp),%rdi
0x24b:	e8 00 00 00 00       	callq  0x250
0x250:	90                   	nop
0x251:	48 83 ec 10          	sub    $0x10,%rsp
0x255:	48 89 04 24          	mov    %rax,(%rsp)
0x259:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x25e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x263:	48 8b 15 c6 fc ff ff 	mov    -0x33a(%rip),%rdx        # 0xffffff30
0x26a:	b9 10 00 00 00       	mov    $0x10,%ecx
0x26f:	48 8b c6             	mov    %rsi,%rax
0x272:	48 8b 00             	mov    (%rax),%rax
0x275:	48 63 ff             	movslq %edi,%rdi
0x278:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x27d:	48 8b fa             	mov    %rdx,%rdi
0x280:	48 8b d1             	mov    %rcx,%rdx
0x283:	b9 03 00 00 00       	mov    $0x3,%ecx
0x288:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x28c:	90                   	nop
0x28d:	90                   	nop
0x28e:	e8 00 00 00 00       	callq  0x293
0x293:	90                   	nop
0x294:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x298:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x29c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2a1:	ff d0                	callq  *%rax
0x2a3:	90                   	nop
0x2a4:	48 83 ec 10          	sub    $0x10,%rsp
0x2a8:	4c 8b 1d 89 fc ff ff 	mov    -0x377(%rip),%r11        # 0xffffff38
0x2af:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2b3:	4c 8b 1d 86 fc ff ff 	mov    -0x37a(%rip),%r11        # 0xffffff40
0x2ba:	48 83 ec 10          	sub    $0x10,%rsp
0x2be:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2c2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x2c8:	48 83 ec 10          	sub    $0x10,%rsp
0x2cc:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2d0:	40 8b 34 24          	rex mov (%rsp),%esi
0x2d4:	48 8b 3d 6d fc ff ff 	mov    -0x393(%rip),%rdi        # 0xffffff48
0x2db:	83 fe 00             	cmp    $0x0,%esi
0x2de:	0f 8c fb 00 00 00    	jl     0x3df
0x2e4:	85 07                	test   %eax,(%rdi)
0x2e6:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x2ed:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x2f1:	48 8b 3d 58 fc ff ff 	mov    -0x3a8(%rip),%rdi        # 0xffffff50
0x2f8:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x2fc:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x300:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x307:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x30b:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x30f:	48 63 c0             	movslq %eax,%rax
0x312:	48 63 d6             	movslq %esi,%rdx
0x315:	48 0f af c2          	imul   %rdx,%rax
0x319:	48 83 c0 18          	add    $0x18,%rax
0x31d:	48 83 c0 07          	add    $0x7,%rax
0x321:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x328:	00 00 00 
0x32b:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x332:	ff ff ff 
0x335:	49 33 d3             	xor    %r11,%rdx
0x338:	48 23 c2             	and    %rdx,%rax
0x33b:	49 8b d6             	mov    %r14,%rdx
0x33e:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x342:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x349:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x350:	49 8b d0             	mov    %r8,%rdx
0x353:	48 03 d0             	add    %rax,%rdx
0x356:	4c 8b d2             	mov    %rdx,%r10
0x359:	4d 3b d1             	cmp    %r9,%r10
0x35c:	0f 86 1f 00 00 00    	jbe    0x381
0x362:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x366:	48 8b f0             	mov    %rax,%rsi
0x369:	48 8b d1             	mov    %rcx,%rdx
0x36c:	49 8b c8             	mov    %r8,%rcx
0x36f:	4d 8b c1             	mov    %r9,%r8
0x372:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x376:	e8 00 00 00 00       	callq  0x37b
0x37b:	90                   	nop
0x37c:	e9 12 00 00 00       	jmpq   0x393
0x381:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x385:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x389:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x390:	49 8b c0             	mov    %r8,%rax
0x393:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x397:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x39b:	e8 00 00 00 00       	callq  0x3a0
0x3a0:	90                   	nop
0x3a1:	90                   	nop
0x3a2:	e8 00 00 00 00       	callq  0x3a7
0x3a7:	90                   	nop
0x3a8:	83 f8 00             	cmp    $0x0,%eax
0x3ab:	0f 84 40 00 00 00    	je     0x3f1
0x3b1:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3b5:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x3b9:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x3bd:	85 07                	test   %eax,(%rdi)
0x3bf:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x3c3:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x3c7:	83 e0 ff             	and    $0xffffffff,%eax
0x3ca:	48 8b f8             	mov    %rax,%rdi
0x3cd:	48 8b f2             	mov    %rdx,%rsi
0x3d0:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x3d4:	e8 00 00 00 00       	callq  0x3d9
0x3d9:	90                   	nop
0x3da:	e9 12 00 00 00       	jmpq   0x3f1
0x3df:	48 8b fe             	mov    %rsi,%rdi
0x3e2:	e8 00 00 00 00       	callq  0x3e7
0x3e7:	90                   	nop
0x3e8:	48 8b f8             	mov    %rax,%rdi
0x3eb:	e8 00 00 00 00       	callq  0x3f0
0x3f0:	90                   	nop
0x3f1:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x3f5:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x3f9:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x3fd:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x401:	48 89 18             	mov    %rbx,(%rax)
0x404:	48 89 04 24          	mov    %rax,(%rsp)
0x408:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x40d:	41 85 03             	test   %eax,(%r11)
0x410:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x415:	90                   	nop
0x416:	90                   	nop
0x417:	90                   	nop
0x418:	e8 00 00 00 00       	callq  0x41d
0x41d:	90                   	nop
0x41e:	48 83 ec 10          	sub    $0x10,%rsp
0x422:	48 89 04 24          	mov    %rax,(%rsp)
0x426:	48 8b 14 24          	mov    (%rsp),%rdx
0x42a:	48 8b 3d 27 fb ff ff 	mov    -0x4d9(%rip),%rdi        # 0xffffff58
0x431:	be 10 00 00 00       	mov    $0x10,%esi
0x436:	e8 00 00 00 00       	callq  0x43b
0x43b:	90                   	nop
0x43c:	48 83 c4 10          	add    $0x10,%rsp
0x440:	e8 00 00 00 00       	callq  0x445
0x445:	90                   	nop
0x446:	48 8b 3d 13 fb ff ff 	mov    -0x4ed(%rip),%rdi        # 0xffffff60
0x44d:	be 18 00 00 00       	mov    $0x18,%esi
0x452:	48 63 f6             	movslq %esi,%rsi
0x455:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x459:	48 83 ec 10          	sub    $0x10,%rsp
0x45d:	48 89 04 24          	mov    %rax,(%rsp)
0x461:	4c 8b 1c 24          	mov    (%rsp),%r11
0x465:	48 33 c0             	xor    %rax,%rax
0x468:	48 83 c4 10          	add    $0x10,%rsp
0x46c:	4c 3b d8             	cmp    %rax,%r11
0x46f:	75 33                	jne    0x4a4
0x471:	48 8b 3d f0 fa ff ff 	mov    -0x510(%rip),%rdi        # 0xffffff68
0x478:	be 1a 00 00 00       	mov    $0x1a,%esi
0x47d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x481:	48 8b c8             	mov    %rax,%rcx
0x484:	48 63 f6             	movslq %esi,%rsi
0x487:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x48c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x492:	0f 8d 07 00 00 00    	jge    0x49f
0x498:	83 c1 01             	add    $0x1,%ecx
0x49b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x49f:	e9 30 04 00 00       	jmpq   0x8d4
0x4a4:	48 8b 3d c5 fa ff ff 	mov    -0x53b(%rip),%rdi        # 0xffffff70
0x4ab:	be 1b 00 00 00       	mov    $0x1b,%esi
0x4b0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4b4:	48 8b c8             	mov    %rax,%rcx
0x4b7:	48 63 f6             	movslq %esi,%rsi
0x4ba:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4bf:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4c5:	0f 8d 07 00 00 00    	jge    0x4d2
0x4cb:	83 c1 01             	add    $0x1,%ecx
0x4ce:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4d2:	48 8b 3d 9f fa ff ff 	mov    -0x561(%rip),%rdi        # 0xffffff78
0x4d9:	be 18 00 00 00       	mov    $0x18,%esi
0x4de:	48 63 f6             	movslq %esi,%rsi
0x4e1:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4e5:	48 83 ec 10          	sub    $0x10,%rsp
0x4e9:	48 89 04 24          	mov    %rax,(%rsp)
0x4ed:	48 8b 3d 8c fa ff ff 	mov    -0x574(%rip),%rdi        # 0xffffff80
0x4f4:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x4f8:	48 8b 35 89 fa ff ff 	mov    -0x577(%rip),%rsi        # 0xffffff88
0x4ff:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x503:	49 8b ce             	mov    %r14,%rcx
0x506:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x50a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x511:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x518:	48 8b d9             	mov    %rcx,%rbx
0x51b:	48 03 da             	add    %rdx,%rbx
0x51e:	4c 8b cb             	mov    %rbx,%r9
0x521:	4d 3b c8             	cmp    %r8,%r9
0x524:	0f 86 14 00 00 00    	jbe    0x53e
0x52a:	48 8b fe             	mov    %rsi,%rdi
0x52d:	48 8b f2             	mov    %rdx,%rsi
0x530:	48 8b d0             	mov    %rax,%rdx
0x533:	e8 00 00 00 00       	callq  0x538
0x538:	90                   	nop
0x539:	e9 0a 00 00 00       	jmpq   0x548
0x53e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x545:	48 8b c1             	mov    %rcx,%rax
0x548:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x54c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x550:	90                   	nop
0x551:	90                   	nop
0x552:	90                   	nop
0x553:	e8 00 00 00 00       	callq  0x558
0x558:	90                   	nop
0x559:	90                   	nop
0x55a:	90                   	nop
0x55b:	e8 00 00 00 00       	callq  0x560
0x560:	90                   	nop
0x561:	83 f8 00             	cmp    $0x0,%eax
0x564:	0f 84 27 00 00 00    	je     0x591
0x56a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x56e:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x572:	85 06                	test   %eax,(%rsi)
0x574:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x578:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x57c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x580:	83 e2 ff             	and    $0xffffffff,%edx
0x583:	48 8b fa             	mov    %rdx,%rdi
0x586:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x58a:	90                   	nop
0x58b:	e8 00 00 00 00       	callq  0x590
0x590:	90                   	nop
0x591:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x595:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x599:	48 89 38             	mov    %rdi,(%rax)
0x59c:	48 83 ec 10          	sub    $0x10,%rsp
0x5a0:	48 89 04 24          	mov    %rax,(%rsp)
0x5a4:	48 83 ec 10          	sub    $0x10,%rsp
0x5a8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5ad:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5b1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5b5:	41 85 03             	test   %eax,(%r11)
0x5b8:	e8 00 00 00 00       	callq  0x5bd
0x5bd:	90                   	nop
0x5be:	4c 8b 1d cb f9 ff ff 	mov    -0x635(%rip),%r11        # 0xffffff90
0x5c5:	48 83 ec 10          	sub    $0x10,%rsp
0x5c9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5cd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5d2:	41 85 03             	test   %eax,(%r11)
0x5d5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5da:	e8 00 00 00 00       	callq  0x5df
0x5df:	90                   	nop
0x5e0:	48 83 ec 10          	sub    $0x10,%rsp
0x5e4:	48 89 04 24          	mov    %rax,(%rsp)
0x5e8:	48 8b 3d a9 f9 ff ff 	mov    -0x657(%rip),%rdi        # 0xffffff98
0x5ef:	be 18 00 00 00       	mov    $0x18,%esi
0x5f4:	48 63 f6             	movslq %esi,%rsi
0x5f7:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5fb:	48 83 ec 10          	sub    $0x10,%rsp
0x5ff:	48 89 04 24          	mov    %rax,(%rsp)
0x603:	bf 0f 00 00 00       	mov    $0xf,%edi
0x608:	48 8b 34 24          	mov    (%rsp),%rsi
0x60c:	48 8b 15 8d f9 ff ff 	mov    -0x673(%rip),%rdx        # 0xffffffa0
0x613:	b9 1f 00 00 00       	mov    $0x1f,%ecx
0x618:	48 8b c6             	mov    %rsi,%rax
0x61b:	48 8b 00             	mov    (%rax),%rax
0x61e:	48 63 ff             	movslq %edi,%rdi
0x621:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x626:	48 8b fa             	mov    %rdx,%rdi
0x629:	48 8b d1             	mov    %rcx,%rdx
0x62c:	b9 03 00 00 00       	mov    $0x3,%ecx
0x631:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x635:	90                   	nop
0x636:	90                   	nop
0x637:	e8 00 00 00 00       	callq  0x63c
0x63c:	90                   	nop
0x63d:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x641:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x645:	48 8b 3c 24          	mov    (%rsp),%rdi
0x649:	ff d0                	callq  *%rax
0x64b:	90                   	nop
0x64c:	48 83 ec 10          	sub    $0x10,%rsp
0x650:	48 89 04 24          	mov    %rax,(%rsp)
0x654:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x659:	41 85 03             	test   %eax,(%r11)
0x65c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x661:	e8 00 00 00 00       	callq  0x666
0x666:	90                   	nop
0x667:	48 83 ec 10          	sub    $0x10,%rsp
0x66b:	48 89 04 24          	mov    %rax,(%rsp)
0x66f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x673:	41 85 03             	test   %eax,(%r11)
0x676:	48 8b 3c 24          	mov    (%rsp),%rdi
0x67a:	e8 00 00 00 00       	callq  0x67f
0x67f:	90                   	nop
0x680:	48 83 ec 10          	sub    $0x10,%rsp
0x684:	48 89 04 24          	mov    %rax,(%rsp)
0x688:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x68d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x692:	48 8b 15 0f f9 ff ff 	mov    -0x6f1(%rip),%rdx        # 0xffffffa8
0x699:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0x69e:	48 8b c6             	mov    %rsi,%rax
0x6a1:	48 8b 00             	mov    (%rax),%rax
0x6a4:	48 63 ff             	movslq %edi,%rdi
0x6a7:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x6ac:	48 8b fa             	mov    %rdx,%rdi
0x6af:	48 8b d1             	mov    %rcx,%rdx
0x6b2:	b9 03 00 00 00       	mov    $0x3,%ecx
0x6b7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x6bb:	90                   	nop
0x6bc:	90                   	nop
0x6bd:	e8 00 00 00 00       	callq  0x6c2
0x6c2:	90                   	nop
0x6c3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x6c7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x6cb:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6d0:	ff d0                	callq  *%rax
0x6d2:	90                   	nop
0x6d3:	48 8b 3d d6 f8 ff ff 	mov    -0x72a(%rip),%rdi        # 0xffffffb0
0x6da:	be 18 00 00 00       	mov    $0x18,%esi
0x6df:	48 63 f6             	movslq %esi,%rsi
0x6e2:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x6e6:	48 83 ec 10          	sub    $0x10,%rsp
0x6ea:	48 89 04 24          	mov    %rax,(%rsp)
0x6ee:	48 8b 3d c3 f8 ff ff 	mov    -0x73d(%rip),%rdi        # 0xffffffb8
0x6f5:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x6f9:	48 8b 35 c0 f8 ff ff 	mov    -0x740(%rip),%rsi        # 0xffffffc0
0x700:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x704:	49 8b ce             	mov    %r14,%rcx
0x707:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x70b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x712:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x719:	48 8b d9             	mov    %rcx,%rbx
0x71c:	48 03 da             	add    %rdx,%rbx
0x71f:	4c 8b cb             	mov    %rbx,%r9
0x722:	4d 3b c8             	cmp    %r8,%r9
0x725:	0f 86 14 00 00 00    	jbe    0x73f
0x72b:	48 8b fe             	mov    %rsi,%rdi
0x72e:	48 8b f2             	mov    %rdx,%rsi
0x731:	48 8b d0             	mov    %rax,%rdx
0x734:	e8 00 00 00 00       	callq  0x739
0x739:	90                   	nop
0x73a:	e9 0a 00 00 00       	jmpq   0x749
0x73f:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x746:	48 8b c1             	mov    %rcx,%rax
0x749:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x74d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x751:	90                   	nop
0x752:	90                   	nop
0x753:	90                   	nop
0x754:	e8 00 00 00 00       	callq  0x759
0x759:	90                   	nop
0x75a:	90                   	nop
0x75b:	90                   	nop
0x75c:	e8 00 00 00 00       	callq  0x761
0x761:	90                   	nop
0x762:	83 f8 00             	cmp    $0x0,%eax
0x765:	0f 84 27 00 00 00    	je     0x792
0x76b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x76f:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x773:	85 06                	test   %eax,(%rsi)
0x775:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x779:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x77d:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x781:	83 e2 ff             	and    $0xffffffff,%edx
0x784:	48 8b fa             	mov    %rdx,%rdi
0x787:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x78b:	90                   	nop
0x78c:	e8 00 00 00 00       	callq  0x791
0x791:	90                   	nop
0x792:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x796:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x79a:	48 89 38             	mov    %rdi,(%rax)
0x79d:	48 83 ec 10          	sub    $0x10,%rsp
0x7a1:	48 89 04 24          	mov    %rax,(%rsp)
0x7a5:	48 83 ec 10          	sub    $0x10,%rsp
0x7a9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x7ae:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7b2:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7b6:	41 85 03             	test   %eax,(%r11)
0x7b9:	e8 00 00 00 00       	callq  0x7be
0x7be:	90                   	nop
0x7bf:	4c 8b 1d 02 f8 ff ff 	mov    -0x7fe(%rip),%r11        # 0xffffffc8
0x7c6:	48 83 ec 10          	sub    $0x10,%rsp
0x7ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7ce:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x7d3:	41 85 03             	test   %eax,(%r11)
0x7d6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7db:	e8 00 00 00 00       	callq  0x7e0
0x7e0:	90                   	nop
0x7e1:	48 83 ec 10          	sub    $0x10,%rsp
0x7e5:	48 89 04 24          	mov    %rax,(%rsp)
0x7e9:	48 8b 3d e0 f7 ff ff 	mov    -0x820(%rip),%rdi        # 0xffffffd0
0x7f0:	be 18 00 00 00       	mov    $0x18,%esi
0x7f5:	48 63 f6             	movslq %esi,%rsi
0x7f8:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x7fc:	48 83 ec 10          	sub    $0x10,%rsp
0x800:	48 89 04 24          	mov    %rax,(%rsp)
0x804:	bf 18 00 00 00       	mov    $0x18,%edi
0x809:	48 8b 34 24          	mov    (%rsp),%rsi
0x80d:	48 8b 15 c4 f7 ff ff 	mov    -0x83c(%rip),%rdx        # 0xffffffd8
0x814:	b9 35 00 00 00       	mov    $0x35,%ecx
0x819:	48 8b c6             	mov    %rsi,%rax
0x81c:	48 8b 00             	mov    (%rax),%rax
0x81f:	48 63 ff             	movslq %edi,%rdi
0x822:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x827:	48 8b fa             	mov    %rdx,%rdi
0x82a:	48 8b d1             	mov    %rcx,%rdx
0x82d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x832:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x836:	90                   	nop
0x837:	90                   	nop
0x838:	e8 00 00 00 00       	callq  0x83d
0x83d:	90                   	nop
0x83e:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x842:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x846:	48 8b 3c 24          	mov    (%rsp),%rdi
0x84a:	ff d0                	callq  *%rax
0x84c:	90                   	nop
0x84d:	48 83 ec 10          	sub    $0x10,%rsp
0x851:	48 89 04 24          	mov    %rax,(%rsp)
0x855:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x85a:	41 85 03             	test   %eax,(%r11)
0x85d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x862:	e8 00 00 00 00       	callq  0x867
0x867:	90                   	nop
0x868:	48 83 ec 10          	sub    $0x10,%rsp
0x86c:	48 89 04 24          	mov    %rax,(%rsp)
0x870:	4c 8b 1c 24          	mov    (%rsp),%r11
0x874:	41 85 03             	test   %eax,(%r11)
0x877:	48 8b 3c 24          	mov    (%rsp),%rdi
0x87b:	e8 00 00 00 00       	callq  0x880
0x880:	90                   	nop
0x881:	48 83 ec 10          	sub    $0x10,%rsp
0x885:	48 89 04 24          	mov    %rax,(%rsp)
0x889:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x88e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x893:	48 8b 15 46 f7 ff ff 	mov    -0x8ba(%rip),%rdx        # 0xffffffe0
0x89a:	b9 40 00 00 00       	mov    $0x40,%ecx
0x89f:	48 8b c6             	mov    %rsi,%rax
0x8a2:	48 8b 00             	mov    (%rax),%rax
0x8a5:	48 63 ff             	movslq %edi,%rdi
0x8a8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x8ad:	48 8b fa             	mov    %rdx,%rdi
0x8b0:	48 8b d1             	mov    %rcx,%rdx
0x8b3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x8b8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x8bc:	90                   	nop
0x8bd:	90                   	nop
0x8be:	e8 00 00 00 00       	callq  0x8c3
0x8c3:	90                   	nop
0x8c4:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x8c8:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x8cc:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x8d1:	ff d0                	callq  *%rax
0x8d3:	90                   	nop
0x8d4:	48 83 c5 40          	add    $0x40,%rbp
0x8d8:	c9                   	leaveq 
0x8d9:	c2 10 00             	retq   $0x10

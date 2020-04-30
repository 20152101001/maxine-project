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
0x20:	4c 89 1d 39 ff ff ff 	mov    %r11,-0xc7(%rip)        # 0xffffff60
0x27:	48 8b 3d 3a ff ff ff 	mov    -0xc6(%rip),%rdi        # 0xffffff68
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
0x53:	48 8b 3d 16 ff ff ff 	mov    -0xea(%rip),%rdi        # 0xffffff70
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 13 ff ff ff 	mov    -0xed(%rip),%rsi        # 0xffffff78
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
0x117:	4c 8b 1d 62 fe ff ff 	mov    -0x19e(%rip),%r11        # 0xffffff80
0x11e:	48 83 ec 10          	sub    $0x10,%rsp
0x122:	4c 89 1c 24          	mov    %r11,(%rsp)
0x126:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x12b:	41 85 03             	test   %eax,(%r11)
0x12e:	90                   	nop
0x12f:	90                   	nop
0x130:	e8 00 00 00 00       	callq  0x135
0x135:	90                   	nop
0x136:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13a:	48 83 c4 10          	add    $0x10,%rsp
0x13e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x142:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x146:	48 83 ec 10          	sub    $0x10,%rsp
0x14a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14e:	90                   	nop
0x14f:	90                   	nop
0x150:	e8 00 00 00 00       	callq  0x155
0x155:	90                   	nop
0x156:	48 8b 3d 2b fe ff ff 	mov    -0x1d5(%rip),%rdi        # 0xffffff88
0x15d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x161:	48 8b 35 28 fe ff ff 	mov    -0x1d8(%rip),%rsi        # 0xffffff90
0x168:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x16c:	49 8b ce             	mov    %r14,%rcx
0x16f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x173:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x17a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x181:	48 8b d9             	mov    %rcx,%rbx
0x184:	48 03 da             	add    %rdx,%rbx
0x187:	4c 8b cb             	mov    %rbx,%r9
0x18a:	4d 3b c8             	cmp    %r8,%r9
0x18d:	0f 86 14 00 00 00    	jbe    0x1a7
0x193:	48 8b fe             	mov    %rsi,%rdi
0x196:	48 8b f2             	mov    %rdx,%rsi
0x199:	48 8b d0             	mov    %rax,%rdx
0x19c:	e8 00 00 00 00       	callq  0x1a1
0x1a1:	90                   	nop
0x1a2:	e9 0a 00 00 00       	jmpq   0x1b1
0x1a7:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1ae:	48 8b c1             	mov    %rcx,%rax
0x1b1:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1b5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1b9:	90                   	nop
0x1ba:	90                   	nop
0x1bb:	90                   	nop
0x1bc:	e8 00 00 00 00       	callq  0x1c1
0x1c1:	90                   	nop
0x1c2:	90                   	nop
0x1c3:	90                   	nop
0x1c4:	e8 00 00 00 00       	callq  0x1c9
0x1c9:	90                   	nop
0x1ca:	83 f8 00             	cmp    $0x0,%eax
0x1cd:	0f 84 27 00 00 00    	je     0x1fa
0x1d3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1d7:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1db:	85 06                	test   %eax,(%rsi)
0x1dd:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1e1:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1e5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1e9:	83 e2 ff             	and    $0xffffffff,%edx
0x1ec:	48 8b fa             	mov    %rdx,%rdi
0x1ef:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1f3:	90                   	nop
0x1f4:	e8 00 00 00 00       	callq  0x1f9
0x1f9:	90                   	nop
0x1fa:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1fe:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x202:	48 89 38             	mov    %rdi,(%rax)
0x205:	48 83 ec 10          	sub    $0x10,%rsp
0x209:	48 89 04 24          	mov    %rax,(%rsp)
0x20d:	48 83 ec 10          	sub    $0x10,%rsp
0x211:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x216:	4c 89 1c 24          	mov    %r11,(%rsp)
0x21a:	48 8b 3d 77 fd ff ff 	mov    -0x289(%rip),%rdi        # 0xffffff98
0x221:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x225:	48 8b 35 74 fd ff ff 	mov    -0x28c(%rip),%rsi        # 0xffffffa0
0x22c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x230:	49 8b ce             	mov    %r14,%rcx
0x233:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x237:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x23e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x245:	48 8b d9             	mov    %rcx,%rbx
0x248:	48 03 da             	add    %rdx,%rbx
0x24b:	4c 8b cb             	mov    %rbx,%r9
0x24e:	4d 3b c8             	cmp    %r8,%r9
0x251:	0f 86 14 00 00 00    	jbe    0x26b
0x257:	48 8b fe             	mov    %rsi,%rdi
0x25a:	48 8b f2             	mov    %rdx,%rsi
0x25d:	48 8b d0             	mov    %rax,%rdx
0x260:	e8 00 00 00 00       	callq  0x265
0x265:	90                   	nop
0x266:	e9 0a 00 00 00       	jmpq   0x275
0x26b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x272:	48 8b c1             	mov    %rcx,%rax
0x275:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x279:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x27d:	90                   	nop
0x27e:	90                   	nop
0x27f:	90                   	nop
0x280:	e8 00 00 00 00       	callq  0x285
0x285:	90                   	nop
0x286:	90                   	nop
0x287:	90                   	nop
0x288:	e8 00 00 00 00       	callq  0x28d
0x28d:	90                   	nop
0x28e:	83 f8 00             	cmp    $0x0,%eax
0x291:	0f 84 27 00 00 00    	je     0x2be
0x297:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x29b:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x29f:	85 06                	test   %eax,(%rsi)
0x2a1:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2a5:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2a9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2ad:	83 e2 ff             	and    $0xffffffff,%edx
0x2b0:	48 8b fa             	mov    %rdx,%rdi
0x2b3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2b7:	90                   	nop
0x2b8:	e8 00 00 00 00       	callq  0x2bd
0x2bd:	90                   	nop
0x2be:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2c2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c6:	48 89 38             	mov    %rdi,(%rax)
0x2c9:	48 83 ec 10          	sub    $0x10,%rsp
0x2cd:	48 89 04 24          	mov    %rax,(%rsp)
0x2d1:	48 83 ec 10          	sub    $0x10,%rsp
0x2d5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2da:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2de:	4c 8b 1d c3 fc ff ff 	mov    -0x33d(%rip),%r11        # 0xffffffa8
0x2e5:	48 83 ec 10          	sub    $0x10,%rsp
0x2e9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2f2:	41 85 03             	test   %eax,(%r11)
0x2f5:	90                   	nop
0x2f6:	90                   	nop
0x2f7:	90                   	nop
0x2f8:	e8 00 00 00 00       	callq  0x2fd
0x2fd:	90                   	nop
0x2fe:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x303:	41 85 03             	test   %eax,(%r11)
0x306:	90                   	nop
0x307:	90                   	nop
0x308:	e8 00 00 00 00       	callq  0x30d
0x30d:	90                   	nop
0x30e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x312:	48 83 c4 10          	add    $0x10,%rsp
0x316:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x31a:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x31e:	48 83 ec 10          	sub    $0x10,%rsp
0x322:	4c 89 1c 24          	mov    %r11,(%rsp)
0x326:	90                   	nop
0x327:	90                   	nop
0x328:	e8 00 00 00 00       	callq  0x32d
0x32d:	90                   	nop
0x32e:	48 8b 3d 7b fc ff ff 	mov    -0x385(%rip),%rdi        # 0xffffffb0
0x335:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x339:	48 8b 35 78 fc ff ff 	mov    -0x388(%rip),%rsi        # 0xffffffb8
0x340:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x344:	49 8b ce             	mov    %r14,%rcx
0x347:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x34b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x352:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x359:	48 8b d9             	mov    %rcx,%rbx
0x35c:	48 03 da             	add    %rdx,%rbx
0x35f:	4c 8b cb             	mov    %rbx,%r9
0x362:	4d 3b c8             	cmp    %r8,%r9
0x365:	0f 86 14 00 00 00    	jbe    0x37f
0x36b:	48 8b fe             	mov    %rsi,%rdi
0x36e:	48 8b f2             	mov    %rdx,%rsi
0x371:	48 8b d0             	mov    %rax,%rdx
0x374:	e8 00 00 00 00       	callq  0x379
0x379:	90                   	nop
0x37a:	e9 0a 00 00 00       	jmpq   0x389
0x37f:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x386:	48 8b c1             	mov    %rcx,%rax
0x389:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x38d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x391:	90                   	nop
0x392:	90                   	nop
0x393:	90                   	nop
0x394:	e8 00 00 00 00       	callq  0x399
0x399:	90                   	nop
0x39a:	90                   	nop
0x39b:	90                   	nop
0x39c:	e8 00 00 00 00       	callq  0x3a1
0x3a1:	90                   	nop
0x3a2:	83 f8 00             	cmp    $0x0,%eax
0x3a5:	0f 84 27 00 00 00    	je     0x3d2
0x3ab:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3af:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x3b3:	85 06                	test   %eax,(%rsi)
0x3b5:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x3b9:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x3bd:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3c1:	83 e2 ff             	and    $0xffffffff,%edx
0x3c4:	48 8b fa             	mov    %rdx,%rdi
0x3c7:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x3cb:	90                   	nop
0x3cc:	e8 00 00 00 00       	callq  0x3d1
0x3d1:	90                   	nop
0x3d2:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3d6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3da:	48 89 38             	mov    %rdi,(%rax)
0x3dd:	48 83 ec 10          	sub    $0x10,%rsp
0x3e1:	48 89 04 24          	mov    %rax,(%rsp)
0x3e5:	48 83 ec 10          	sub    $0x10,%rsp
0x3e9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3ee:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3f2:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3f6:	41 85 03             	test   %eax,(%r11)
0x3f9:	e8 00 00 00 00       	callq  0x3fe
0x3fe:	90                   	nop
0x3ff:	4c 8b 1c 24          	mov    (%rsp),%r11
0x403:	48 83 c4 10          	add    $0x10,%rsp
0x407:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x40b:	48 8b 3d ae fb ff ff 	mov    -0x452(%rip),%rdi        # 0xffffffc0
0x412:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x416:	48 8b 35 ab fb ff ff 	mov    -0x455(%rip),%rsi        # 0xffffffc8
0x41d:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x421:	49 8b ce             	mov    %r14,%rcx
0x424:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x428:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x42f:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x436:	48 8b d9             	mov    %rcx,%rbx
0x439:	48 03 da             	add    %rdx,%rbx
0x43c:	4c 8b cb             	mov    %rbx,%r9
0x43f:	4d 3b c8             	cmp    %r8,%r9
0x442:	0f 86 14 00 00 00    	jbe    0x45c
0x448:	48 8b fe             	mov    %rsi,%rdi
0x44b:	48 8b f2             	mov    %rdx,%rsi
0x44e:	48 8b d0             	mov    %rax,%rdx
0x451:	e8 00 00 00 00       	callq  0x456
0x456:	90                   	nop
0x457:	e9 0a 00 00 00       	jmpq   0x466
0x45c:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x463:	48 8b c1             	mov    %rcx,%rax
0x466:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x46a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x46e:	90                   	nop
0x46f:	90                   	nop
0x470:	90                   	nop
0x471:	e8 00 00 00 00       	callq  0x476
0x476:	90                   	nop
0x477:	90                   	nop
0x478:	90                   	nop
0x479:	e8 00 00 00 00       	callq  0x47e
0x47e:	90                   	nop
0x47f:	83 f8 00             	cmp    $0x0,%eax
0x482:	0f 84 27 00 00 00    	je     0x4af
0x488:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x48c:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x490:	85 06                	test   %eax,(%rsi)
0x492:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x496:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x49a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x49e:	83 e2 ff             	and    $0xffffffff,%edx
0x4a1:	48 8b fa             	mov    %rdx,%rdi
0x4a4:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x4a8:	90                   	nop
0x4a9:	e8 00 00 00 00       	callq  0x4ae
0x4ae:	90                   	nop
0x4af:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x4b3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4b7:	48 89 38             	mov    %rdi,(%rax)
0x4ba:	48 83 ec 10          	sub    $0x10,%rsp
0x4be:	48 89 04 24          	mov    %rax,(%rsp)
0x4c2:	48 83 ec 10          	sub    $0x10,%rsp
0x4c6:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4cb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4cf:	48 8b 3d fa fa ff ff 	mov    -0x506(%rip),%rdi        # 0xffffffd0
0x4d6:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x4da:	48 8b 35 f7 fa ff ff 	mov    -0x509(%rip),%rsi        # 0xffffffd8
0x4e1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x4e5:	49 8b ce             	mov    %r14,%rcx
0x4e8:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x4ec:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x4f3:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x4fa:	48 8b d9             	mov    %rcx,%rbx
0x4fd:	48 03 da             	add    %rdx,%rbx
0x500:	4c 8b cb             	mov    %rbx,%r9
0x503:	4d 3b c8             	cmp    %r8,%r9
0x506:	0f 86 14 00 00 00    	jbe    0x520
0x50c:	48 8b fe             	mov    %rsi,%rdi
0x50f:	48 8b f2             	mov    %rdx,%rsi
0x512:	48 8b d0             	mov    %rax,%rdx
0x515:	e8 00 00 00 00       	callq  0x51a
0x51a:	90                   	nop
0x51b:	e9 0a 00 00 00       	jmpq   0x52a
0x520:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x527:	48 8b c1             	mov    %rcx,%rax
0x52a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x52e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x532:	90                   	nop
0x533:	90                   	nop
0x534:	90                   	nop
0x535:	e8 00 00 00 00       	callq  0x53a
0x53a:	90                   	nop
0x53b:	90                   	nop
0x53c:	90                   	nop
0x53d:	e8 00 00 00 00       	callq  0x542
0x542:	90                   	nop
0x543:	83 f8 00             	cmp    $0x0,%eax
0x546:	0f 84 27 00 00 00    	je     0x573
0x54c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x550:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x554:	85 06                	test   %eax,(%rsi)
0x556:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x55a:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x55e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x562:	83 e2 ff             	and    $0xffffffff,%edx
0x565:	48 8b fa             	mov    %rdx,%rdi
0x568:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x56c:	90                   	nop
0x56d:	e8 00 00 00 00       	callq  0x572
0x572:	90                   	nop
0x573:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x577:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x57b:	48 89 38             	mov    %rdi,(%rax)
0x57e:	48 83 ec 10          	sub    $0x10,%rsp
0x582:	48 89 04 24          	mov    %rax,(%rsp)
0x586:	48 83 ec 10          	sub    $0x10,%rsp
0x58a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x58f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x593:	4c 8b 1d 46 fa ff ff 	mov    -0x5ba(%rip),%r11        # 0xffffffe0
0x59a:	48 83 ec 10          	sub    $0x10,%rsp
0x59e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5a2:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5a7:	41 85 03             	test   %eax,(%r11)
0x5aa:	e8 00 00 00 00       	callq  0x5af
0x5af:	90                   	nop
0x5b0:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x5b4:	48 83 ec 10          	sub    $0x10,%rsp
0x5b8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5bc:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x5c1:	41 85 03             	test   %eax,(%r11)
0x5c4:	90                   	nop
0x5c5:	90                   	nop
0x5c6:	90                   	nop
0x5c7:	90                   	nop
0x5c8:	e8 00 00 00 00       	callq  0x5cd
0x5cd:	90                   	nop
0x5ce:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5d2:	48 83 c4 10          	add    $0x10,%rsp
0x5d6:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x5da:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x5de:	48 83 ec 10          	sub    $0x10,%rsp
0x5e2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5e6:	90                   	nop
0x5e7:	90                   	nop
0x5e8:	e8 00 00 00 00       	callq  0x5ed
0x5ed:	90                   	nop
0x5ee:	48 83 c5 40          	add    $0x40,%rbp
0x5f2:	c9                   	leaveq 
0x5f3:	c2 10 00             	retq   $0x10

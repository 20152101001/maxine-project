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
0x53:	e8 00 00 00 00       	callq  0x58
0x58:	90                   	nop
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	48 89 04 24          	mov    %rax,(%rsp)
0x61:	4c 8b 1c 24          	mov    (%rsp),%r11
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6d:	48 83 ec 10          	sub    $0x10,%rsp
0x71:	4c 8b 1d f8 fe ff ff 	mov    -0x108(%rip),%r11        # 0xffffff70
0x78:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7c:	48 8b 3d f5 fe ff ff 	mov    -0x10b(%rip),%rdi        # 0xffffff78
0x83:	be 10 00 00 00       	mov    $0x10,%esi
0x88:	48 63 f6             	movslq %esi,%rsi
0x8b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x8f:	48 83 ec 10          	sub    $0x10,%rsp
0x93:	48 89 04 24          	mov    %rax,(%rsp)
0x97:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x9d:	48 83 ec 10          	sub    $0x10,%rsp
0xa1:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa5:	40 8b 34 24          	rex mov (%rsp),%esi
0xa9:	48 8b 3d d0 fe ff ff 	mov    -0x130(%rip),%rdi        # 0xffffff80
0xb0:	83 fe 00             	cmp    $0x0,%esi
0xb3:	0f 8c fb 00 00 00    	jl     0x1b4
0xb9:	85 07                	test   %eax,(%rdi)
0xbb:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0xc2:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0xc6:	48 8b 3d bb fe ff ff 	mov    -0x145(%rip),%rdi        # 0xffffff88
0xcd:	48 8b 43 30          	mov    0x30(%rbx),%rax
0xd1:	48 8b 50 70          	mov    0x70(%rax),%rdx
0xd5:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0xdc:	48 8b 50 48          	mov    0x48(%rax),%rdx
0xe0:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xe4:	48 63 c0             	movslq %eax,%rax
0xe7:	48 63 d6             	movslq %esi,%rdx
0xea:	48 0f af c2          	imul   %rdx,%rax
0xee:	48 83 c0 18          	add    $0x18,%rax
0xf2:	48 83 c0 07          	add    $0x7,%rax
0xf6:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xfd:	00 00 00 
0x100:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x107:	ff ff ff 
0x10a:	49 33 d3             	xor    %r11,%rdx
0x10d:	48 23 c2             	and    %rdx,%rax
0x110:	49 8b d6             	mov    %r14,%rdx
0x113:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x117:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x11e:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x125:	49 8b d0             	mov    %r8,%rdx
0x128:	48 03 d0             	add    %rax,%rdx
0x12b:	4c 8b d2             	mov    %rdx,%r10
0x12e:	4d 3b d1             	cmp    %r9,%r10
0x131:	0f 86 1f 00 00 00    	jbe    0x156
0x137:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x13b:	48 8b f0             	mov    %rax,%rsi
0x13e:	48 8b d1             	mov    %rcx,%rdx
0x141:	49 8b c8             	mov    %r8,%rcx
0x144:	4d 8b c1             	mov    %r9,%r8
0x147:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x14b:	e8 00 00 00 00       	callq  0x150
0x150:	90                   	nop
0x151:	e9 12 00 00 00       	jmpq   0x168
0x156:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x15a:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x15e:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x165:	49 8b c0             	mov    %r8,%rax
0x168:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x16c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x170:	e8 00 00 00 00       	callq  0x175
0x175:	90                   	nop
0x176:	90                   	nop
0x177:	e8 00 00 00 00       	callq  0x17c
0x17c:	90                   	nop
0x17d:	83 f8 00             	cmp    $0x0,%eax
0x180:	0f 84 40 00 00 00    	je     0x1c6
0x186:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x18a:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x18e:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x192:	85 07                	test   %eax,(%rdi)
0x194:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x198:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x19c:	83 e0 ff             	and    $0xffffffff,%eax
0x19f:	48 8b f8             	mov    %rax,%rdi
0x1a2:	48 8b f2             	mov    %rdx,%rsi
0x1a5:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1a9:	e8 00 00 00 00       	callq  0x1ae
0x1ae:	90                   	nop
0x1af:	e9 12 00 00 00       	jmpq   0x1c6
0x1b4:	48 8b fe             	mov    %rsi,%rdi
0x1b7:	e8 00 00 00 00       	callq  0x1bc
0x1bc:	90                   	nop
0x1bd:	48 8b f8             	mov    %rax,%rdi
0x1c0:	e8 00 00 00 00       	callq  0x1c5
0x1c5:	90                   	nop
0x1c6:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1ca:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1ce:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x1d2:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x1d6:	48 89 18             	mov    %rbx,(%rax)
0x1d9:	48 89 04 24          	mov    %rax,(%rsp)
0x1dd:	48 83 ec 10          	sub    $0x10,%rsp
0x1e1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1e6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ea:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x1f0:	48 83 ec 10          	sub    $0x10,%rsp
0x1f4:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1f8:	48 8b 3d 91 fd ff ff 	mov    -0x26f(%rip),%rdi        # 0xffffff90
0x1ff:	be 10 00 00 00       	mov    $0x10,%esi
0x204:	48 63 f6             	movslq %esi,%rsi
0x207:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x20b:	48 83 ec 10          	sub    $0x10,%rsp
0x20f:	48 89 04 24          	mov    %rax,(%rsp)
0x213:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x218:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x21d:	48 8b 14 24          	mov    (%rsp),%rdx
0x221:	48 8b ca             	mov    %rdx,%rcx
0x224:	48 8b c7             	mov    %rdi,%rax
0x227:	48 63 40 10          	movslq 0x10(%rax),%rax
0x22b:	3b f0                	cmp    %eax,%esi
0x22d:	0f 83 b4 00 00 00    	jae    0x2e7
0x233:	4d 33 db             	xor    %r11,%r11
0x236:	49 3b cb             	cmp    %r11,%rcx
0x239:	0f 84 b8 00 00 00    	je     0x2f7
0x23f:	48 8b c7             	mov    %rdi,%rax
0x242:	48 8b 00             	mov    (%rax),%rax
0x245:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x249:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x24d:	4d 33 db             	xor    %r11,%r11
0x250:	49 3b cb             	cmp    %r11,%rcx
0x253:	0f 85 0a 00 00 00    	jne    0x263
0x259:	bb 00 00 00 00       	mov    $0x0,%ebx
0x25e:	e9 66 00 00 00       	jmpq   0x2c9
0x263:	48 8b d1             	mov    %rcx,%rdx
0x266:	48 8b 1a             	mov    (%rdx),%rbx
0x269:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x26d:	48 3b d0             	cmp    %rax,%rdx
0x270:	0f 85 0a 00 00 00    	jne    0x280
0x276:	bb 01 00 00 00       	mov    $0x1,%ebx
0x27b:	e9 49 00 00 00       	jmpq   0x2c9
0x280:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x287:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x28b:	49 8b c0             	mov    %r8,%rax
0x28e:	99                   	cltd   
0x28f:	41 f7 f9             	idiv   %r9d
0x292:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x296:	03 d0                	add    %eax,%edx
0x298:	48 8b c3             	mov    %rbx,%rax
0x29b:	48 63 d2             	movslq %edx,%rdx
0x29e:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x2a3:	48 63 c0             	movslq %eax,%rax
0x2a6:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x2ab:	4d 63 c0             	movslq %r8d,%r8
0x2ae:	49 3b c0             	cmp    %r8,%rax
0x2b1:	0f 85 0a 00 00 00    	jne    0x2c1
0x2b7:	b8 01 00 00 00       	mov    $0x1,%eax
0x2bc:	e9 05 00 00 00       	jmpq   0x2c6
0x2c1:	b8 00 00 00 00       	mov    $0x0,%eax
0x2c6:	48 8b d8             	mov    %rax,%rbx
0x2c9:	83 fb 00             	cmp    $0x0,%ebx
0x2cc:	0f 85 25 00 00 00    	jne    0x2f7
0x2d2:	48 8b f1             	mov    %rcx,%rsi
0x2d5:	90                   	nop
0x2d6:	90                   	nop
0x2d7:	90                   	nop
0x2d8:	e8 00 00 00 00       	callq  0x2dd
0x2dd:	90                   	nop
0x2de:	48 8b f8             	mov    %rax,%rdi
0x2e1:	e8 00 00 00 00       	callq  0x2e6
0x2e6:	90                   	nop
0x2e7:	90                   	nop
0x2e8:	e8 00 00 00 00       	callq  0x2ed
0x2ed:	90                   	nop
0x2ee:	48 8b f8             	mov    %rax,%rdi
0x2f1:	e8 00 00 00 00       	callq  0x2f6
0x2f6:	90                   	nop
0x2f7:	48 63 f6             	movslq %esi,%rsi
0x2fa:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x2ff:	48 83 c4 30          	add    $0x30,%rsp
0x303:	e8 00 00 00 00       	callq  0x308
0x308:	90                   	nop
0x309:	48 83 ec 10          	sub    $0x10,%rsp
0x30d:	48 89 04 24          	mov    %rax,(%rsp)
0x311:	4c 8b 1c 24          	mov    (%rsp),%r11
0x315:	48 83 c4 10          	add    $0x10,%rsp
0x319:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x31d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x321:	48 83 ec 10          	sub    $0x10,%rsp
0x325:	4c 89 1c 24          	mov    %r11,(%rsp)
0x329:	48 83 ec 10          	sub    $0x10,%rsp
0x32d:	4c 8b 1d 64 fc ff ff 	mov    -0x39c(%rip),%r11        # 0xffffff98
0x334:	4c 89 1c 24          	mov    %r11,(%rsp)
0x338:	4c 8b 1d 61 fc ff ff 	mov    -0x39f(%rip),%r11        # 0xffffffa0
0x33f:	48 83 ec 10          	sub    $0x10,%rsp
0x343:	4c 89 1c 24          	mov    %r11,(%rsp)
0x347:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x34b:	48 83 ec 10          	sub    $0x10,%rsp
0x34f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x353:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0x358:	41 85 03             	test   %eax,(%r11)
0x35b:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x360:	e8 00 00 00 00       	callq  0x365
0x365:	90                   	nop
0x366:	48 83 ec 10          	sub    $0x10,%rsp
0x36a:	48 89 04 24          	mov    %rax,(%rsp)
0x36e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x372:	48 83 c4 10          	add    $0x10,%rsp
0x376:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x37a:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x37e:	48 83 ec 10          	sub    $0x10,%rsp
0x382:	4c 89 1c 24          	mov    %r11,(%rsp)
0x386:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x38c:	48 83 ec 10          	sub    $0x10,%rsp
0x390:	44 89 1c 24          	mov    %r11d,(%rsp)
0x394:	40 8b 34 24          	rex mov (%rsp),%esi
0x398:	48 8b 3d 09 fc ff ff 	mov    -0x3f7(%rip),%rdi        # 0xffffffa8
0x39f:	83 fe 00             	cmp    $0x0,%esi
0x3a2:	0f 8c fb 00 00 00    	jl     0x4a3
0x3a8:	85 07                	test   %eax,(%rdi)
0x3aa:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x3b1:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x3b5:	48 8b 3d f4 fb ff ff 	mov    -0x40c(%rip),%rdi        # 0xffffffb0
0x3bc:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x3c0:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x3c4:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x3cb:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x3cf:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x3d3:	48 63 c0             	movslq %eax,%rax
0x3d6:	48 63 d6             	movslq %esi,%rdx
0x3d9:	48 0f af c2          	imul   %rdx,%rax
0x3dd:	48 83 c0 18          	add    $0x18,%rax
0x3e1:	48 83 c0 07          	add    $0x7,%rax
0x3e5:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x3ec:	00 00 00 
0x3ef:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x3f6:	ff ff ff 
0x3f9:	49 33 d3             	xor    %r11,%rdx
0x3fc:	48 23 c2             	and    %rdx,%rax
0x3ff:	49 8b d6             	mov    %r14,%rdx
0x402:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x406:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x40d:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x414:	49 8b d0             	mov    %r8,%rdx
0x417:	48 03 d0             	add    %rax,%rdx
0x41a:	4c 8b d2             	mov    %rdx,%r10
0x41d:	4d 3b d1             	cmp    %r9,%r10
0x420:	0f 86 1f 00 00 00    	jbe    0x445
0x426:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x42a:	48 8b f0             	mov    %rax,%rsi
0x42d:	48 8b d1             	mov    %rcx,%rdx
0x430:	49 8b c8             	mov    %r8,%rcx
0x433:	4d 8b c1             	mov    %r9,%r8
0x436:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x43a:	e8 00 00 00 00       	callq  0x43f
0x43f:	90                   	nop
0x440:	e9 12 00 00 00       	jmpq   0x457
0x445:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x449:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x44d:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x454:	49 8b c0             	mov    %r8,%rax
0x457:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x45b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x45f:	e8 00 00 00 00       	callq  0x464
0x464:	90                   	nop
0x465:	90                   	nop
0x466:	e8 00 00 00 00       	callq  0x46b
0x46b:	90                   	nop
0x46c:	83 f8 00             	cmp    $0x0,%eax
0x46f:	0f 84 40 00 00 00    	je     0x4b5
0x475:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x479:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x47d:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x481:	85 07                	test   %eax,(%rdi)
0x483:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x487:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x48b:	83 e0 ff             	and    $0xffffffff,%eax
0x48e:	48 8b f8             	mov    %rax,%rdi
0x491:	48 8b f2             	mov    %rdx,%rsi
0x494:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x498:	e8 00 00 00 00       	callq  0x49d
0x49d:	90                   	nop
0x49e:	e9 12 00 00 00       	jmpq   0x4b5
0x4a3:	48 8b fe             	mov    %rsi,%rdi
0x4a6:	e8 00 00 00 00       	callq  0x4ab
0x4ab:	90                   	nop
0x4ac:	48 8b f8             	mov    %rax,%rdi
0x4af:	e8 00 00 00 00       	callq  0x4b4
0x4b4:	90                   	nop
0x4b5:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x4b9:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x4bd:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x4c1:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x4c5:	48 89 18             	mov    %rbx,(%rax)
0x4c8:	48 89 04 24          	mov    %rax,(%rsp)
0x4cc:	48 83 ec 10          	sub    $0x10,%rsp
0x4d0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4d5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4d9:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x4df:	48 83 ec 10          	sub    $0x10,%rsp
0x4e3:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4e7:	4c 8b 1d ca fa ff ff 	mov    -0x536(%rip),%r11        # 0xffffffb8
0x4ee:	48 83 ec 10          	sub    $0x10,%rsp
0x4f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4f6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x4fb:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x500:	48 8b 14 24          	mov    (%rsp),%rdx
0x504:	48 8b ca             	mov    %rdx,%rcx
0x507:	48 8b c7             	mov    %rdi,%rax
0x50a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x50e:	3b f0                	cmp    %eax,%esi
0x510:	0f 83 b4 00 00 00    	jae    0x5ca
0x516:	4d 33 db             	xor    %r11,%r11
0x519:	49 3b cb             	cmp    %r11,%rcx
0x51c:	0f 84 b8 00 00 00    	je     0x5da
0x522:	48 8b c7             	mov    %rdi,%rax
0x525:	48 8b 00             	mov    (%rax),%rax
0x528:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x52c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x530:	4d 33 db             	xor    %r11,%r11
0x533:	49 3b cb             	cmp    %r11,%rcx
0x536:	0f 85 0a 00 00 00    	jne    0x546
0x53c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x541:	e9 66 00 00 00       	jmpq   0x5ac
0x546:	48 8b d1             	mov    %rcx,%rdx
0x549:	48 8b 1a             	mov    (%rdx),%rbx
0x54c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x550:	48 3b d0             	cmp    %rax,%rdx
0x553:	0f 85 0a 00 00 00    	jne    0x563
0x559:	bb 01 00 00 00       	mov    $0x1,%ebx
0x55e:	e9 49 00 00 00       	jmpq   0x5ac
0x563:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x56a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x56e:	49 8b c0             	mov    %r8,%rax
0x571:	99                   	cltd   
0x572:	41 f7 f9             	idiv   %r9d
0x575:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x579:	03 d0                	add    %eax,%edx
0x57b:	48 8b c3             	mov    %rbx,%rax
0x57e:	48 63 d2             	movslq %edx,%rdx
0x581:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x586:	48 63 c0             	movslq %eax,%rax
0x589:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x58e:	4d 63 c0             	movslq %r8d,%r8
0x591:	49 3b c0             	cmp    %r8,%rax
0x594:	0f 85 0a 00 00 00    	jne    0x5a4
0x59a:	b8 01 00 00 00       	mov    $0x1,%eax
0x59f:	e9 05 00 00 00       	jmpq   0x5a9
0x5a4:	b8 00 00 00 00       	mov    $0x0,%eax
0x5a9:	48 8b d8             	mov    %rax,%rbx
0x5ac:	83 fb 00             	cmp    $0x0,%ebx
0x5af:	0f 85 25 00 00 00    	jne    0x5da
0x5b5:	48 8b f1             	mov    %rcx,%rsi
0x5b8:	90                   	nop
0x5b9:	90                   	nop
0x5ba:	90                   	nop
0x5bb:	e8 00 00 00 00       	callq  0x5c0
0x5c0:	90                   	nop
0x5c1:	48 8b f8             	mov    %rax,%rdi
0x5c4:	e8 00 00 00 00       	callq  0x5c9
0x5c9:	90                   	nop
0x5ca:	90                   	nop
0x5cb:	e8 00 00 00 00       	callq  0x5d0
0x5d0:	90                   	nop
0x5d1:	48 8b f8             	mov    %rax,%rdi
0x5d4:	e8 00 00 00 00       	callq  0x5d9
0x5d9:	90                   	nop
0x5da:	48 63 f6             	movslq %esi,%rsi
0x5dd:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x5e2:	48 83 c4 30          	add    $0x30,%rsp
0x5e6:	48 83 ec 10          	sub    $0x10,%rsp
0x5ea:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5ef:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f3:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x5f9:	48 83 ec 10          	sub    $0x10,%rsp
0x5fd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x601:	41 bb 64 00 00 00    	mov    $0x64,%r11d
0x607:	48 83 ec 10          	sub    $0x10,%rsp
0x60b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x60f:	90                   	nop
0x610:	e8 00 00 00 00       	callq  0x615
0x615:	90                   	nop
0x616:	48 83 ec 10          	sub    $0x10,%rsp
0x61a:	48 89 04 24          	mov    %rax,(%rsp)
0x61e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x623:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x628:	48 8b 14 24          	mov    (%rsp),%rdx
0x62c:	48 8b ca             	mov    %rdx,%rcx
0x62f:	48 8b c7             	mov    %rdi,%rax
0x632:	48 63 40 10          	movslq 0x10(%rax),%rax
0x636:	3b f0                	cmp    %eax,%esi
0x638:	0f 83 b4 00 00 00    	jae    0x6f2
0x63e:	4d 33 db             	xor    %r11,%r11
0x641:	49 3b cb             	cmp    %r11,%rcx
0x644:	0f 84 b8 00 00 00    	je     0x702
0x64a:	48 8b c7             	mov    %rdi,%rax
0x64d:	48 8b 00             	mov    (%rax),%rax
0x650:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x654:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x658:	4d 33 db             	xor    %r11,%r11
0x65b:	49 3b cb             	cmp    %r11,%rcx
0x65e:	0f 85 0a 00 00 00    	jne    0x66e
0x664:	bb 00 00 00 00       	mov    $0x0,%ebx
0x669:	e9 66 00 00 00       	jmpq   0x6d4
0x66e:	48 8b d1             	mov    %rcx,%rdx
0x671:	48 8b 1a             	mov    (%rdx),%rbx
0x674:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x678:	48 3b d0             	cmp    %rax,%rdx
0x67b:	0f 85 0a 00 00 00    	jne    0x68b
0x681:	bb 01 00 00 00       	mov    $0x1,%ebx
0x686:	e9 49 00 00 00       	jmpq   0x6d4
0x68b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x692:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x696:	49 8b c0             	mov    %r8,%rax
0x699:	99                   	cltd   
0x69a:	41 f7 f9             	idiv   %r9d
0x69d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x6a1:	03 d0                	add    %eax,%edx
0x6a3:	48 8b c3             	mov    %rbx,%rax
0x6a6:	48 63 d2             	movslq %edx,%rdx
0x6a9:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x6ae:	48 63 c0             	movslq %eax,%rax
0x6b1:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x6b6:	4d 63 c0             	movslq %r8d,%r8
0x6b9:	49 3b c0             	cmp    %r8,%rax
0x6bc:	0f 85 0a 00 00 00    	jne    0x6cc
0x6c2:	b8 01 00 00 00       	mov    $0x1,%eax
0x6c7:	e9 05 00 00 00       	jmpq   0x6d1
0x6cc:	b8 00 00 00 00       	mov    $0x0,%eax
0x6d1:	48 8b d8             	mov    %rax,%rbx
0x6d4:	83 fb 00             	cmp    $0x0,%ebx
0x6d7:	0f 85 25 00 00 00    	jne    0x702
0x6dd:	48 8b f1             	mov    %rcx,%rsi
0x6e0:	90                   	nop
0x6e1:	90                   	nop
0x6e2:	90                   	nop
0x6e3:	e8 00 00 00 00       	callq  0x6e8
0x6e8:	90                   	nop
0x6e9:	48 8b f8             	mov    %rax,%rdi
0x6ec:	e8 00 00 00 00       	callq  0x6f1
0x6f1:	90                   	nop
0x6f2:	90                   	nop
0x6f3:	e8 00 00 00 00       	callq  0x6f8
0x6f8:	90                   	nop
0x6f9:	48 8b f8             	mov    %rax,%rdi
0x6fc:	e8 00 00 00 00       	callq  0x701
0x701:	90                   	nop
0x702:	48 63 f6             	movslq %esi,%rsi
0x705:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x70a:	48 83 c4 30          	add    $0x30,%rsp
0x70e:	48 83 ec 10          	sub    $0x10,%rsp
0x712:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x717:	4c 89 1c 24          	mov    %r11,(%rsp)
0x71b:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x721:	48 83 ec 10          	sub    $0x10,%rsp
0x725:	44 89 1c 24          	mov    %r11d,(%rsp)
0x729:	41 bb 6e 00 00 00    	mov    $0x6e,%r11d
0x72f:	48 83 ec 10          	sub    $0x10,%rsp
0x733:	44 89 1c 24          	mov    %r11d,(%rsp)
0x737:	90                   	nop
0x738:	e8 00 00 00 00       	callq  0x73d
0x73d:	90                   	nop
0x73e:	48 83 ec 10          	sub    $0x10,%rsp
0x742:	48 89 04 24          	mov    %rax,(%rsp)
0x746:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x74b:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x750:	48 8b 14 24          	mov    (%rsp),%rdx
0x754:	48 8b ca             	mov    %rdx,%rcx
0x757:	48 8b c7             	mov    %rdi,%rax
0x75a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x75e:	3b f0                	cmp    %eax,%esi
0x760:	0f 83 b4 00 00 00    	jae    0x81a
0x766:	4d 33 db             	xor    %r11,%r11
0x769:	49 3b cb             	cmp    %r11,%rcx
0x76c:	0f 84 b8 00 00 00    	je     0x82a
0x772:	48 8b c7             	mov    %rdi,%rax
0x775:	48 8b 00             	mov    (%rax),%rax
0x778:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x77c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x780:	4d 33 db             	xor    %r11,%r11
0x783:	49 3b cb             	cmp    %r11,%rcx
0x786:	0f 85 0a 00 00 00    	jne    0x796
0x78c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x791:	e9 66 00 00 00       	jmpq   0x7fc
0x796:	48 8b d1             	mov    %rcx,%rdx
0x799:	48 8b 1a             	mov    (%rdx),%rbx
0x79c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x7a0:	48 3b d0             	cmp    %rax,%rdx
0x7a3:	0f 85 0a 00 00 00    	jne    0x7b3
0x7a9:	bb 01 00 00 00       	mov    $0x1,%ebx
0x7ae:	e9 49 00 00 00       	jmpq   0x7fc
0x7b3:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x7ba:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x7be:	49 8b c0             	mov    %r8,%rax
0x7c1:	99                   	cltd   
0x7c2:	41 f7 f9             	idiv   %r9d
0x7c5:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x7c9:	03 d0                	add    %eax,%edx
0x7cb:	48 8b c3             	mov    %rbx,%rax
0x7ce:	48 63 d2             	movslq %edx,%rdx
0x7d1:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x7d6:	48 63 c0             	movslq %eax,%rax
0x7d9:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x7de:	4d 63 c0             	movslq %r8d,%r8
0x7e1:	49 3b c0             	cmp    %r8,%rax
0x7e4:	0f 85 0a 00 00 00    	jne    0x7f4
0x7ea:	b8 01 00 00 00       	mov    $0x1,%eax
0x7ef:	e9 05 00 00 00       	jmpq   0x7f9
0x7f4:	b8 00 00 00 00       	mov    $0x0,%eax
0x7f9:	48 8b d8             	mov    %rax,%rbx
0x7fc:	83 fb 00             	cmp    $0x0,%ebx
0x7ff:	0f 85 25 00 00 00    	jne    0x82a
0x805:	48 8b f1             	mov    %rcx,%rsi
0x808:	90                   	nop
0x809:	90                   	nop
0x80a:	90                   	nop
0x80b:	e8 00 00 00 00       	callq  0x810
0x810:	90                   	nop
0x811:	48 8b f8             	mov    %rax,%rdi
0x814:	e8 00 00 00 00       	callq  0x819
0x819:	90                   	nop
0x81a:	90                   	nop
0x81b:	e8 00 00 00 00       	callq  0x820
0x820:	90                   	nop
0x821:	48 8b f8             	mov    %rax,%rdi
0x824:	e8 00 00 00 00       	callq  0x829
0x829:	90                   	nop
0x82a:	48 63 f6             	movslq %esi,%rsi
0x82d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x832:	48 83 c4 30          	add    $0x30,%rsp
0x836:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x83b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x840:	48 8b 15 79 f7 ff ff 	mov    -0x887(%rip),%rdx        # 0xffffffc0
0x847:	b9 0a 00 00 00       	mov    $0xa,%ecx
0x84c:	48 8b c6             	mov    %rsi,%rax
0x84f:	48 8b 00             	mov    (%rax),%rax
0x852:	48 63 ff             	movslq %edi,%rdi
0x855:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x85a:	48 8b fa             	mov    %rdx,%rdi
0x85d:	48 8b d1             	mov    %rcx,%rdx
0x860:	b9 03 00 00 00       	mov    $0x3,%ecx
0x865:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x869:	90                   	nop
0x86a:	90                   	nop
0x86b:	e8 00 00 00 00       	callq  0x870
0x870:	90                   	nop
0x871:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x875:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x879:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x87e:	ff d0                	callq  *%rax
0x880:	90                   	nop
0x881:	48 83 ec 10          	sub    $0x10,%rsp
0x885:	48 89 04 24          	mov    %rax,(%rsp)
0x889:	48 8b 34 24          	mov    (%rsp),%rsi
0x88d:	48 8b 3d 34 f7 ff ff 	mov    -0x8cc(%rip),%rdi        # 0xffffffc8
0x894:	48 8b 15 35 f7 ff ff 	mov    -0x8cb(%rip),%rdx        # 0xffffffd0
0x89b:	b9 12 00 00 00       	mov    $0x12,%ecx
0x8a0:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x8a4:	48 8b fa             	mov    %rdx,%rdi
0x8a7:	48 8b de             	mov    %rsi,%rbx
0x8aa:	48 8b f3             	mov    %rbx,%rsi
0x8ad:	48 8b d1             	mov    %rcx,%rdx
0x8b0:	b9 03 00 00 00       	mov    $0x3,%ecx
0x8b5:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x8b9:	e8 00 00 00 00       	callq  0x8be
0x8be:	90                   	nop
0x8bf:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x8c3:	4d 33 db             	xor    %r11,%r11
0x8c6:	49 3b f3             	cmp    %r11,%rsi
0x8c9:	0f 85 0e 00 00 00    	jne    0x8dd
0x8cf:	bf 01 00 00 00       	mov    $0x1,%edi
0x8d4:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x8d8:	e9 6f 00 00 00       	jmpq   0x94c
0x8dd:	48 8b c6             	mov    %rsi,%rax
0x8e0:	48 8b 38             	mov    (%rax),%rdi
0x8e3:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x8e7:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x8eb:	0f 85 0e 00 00 00    	jne    0x8ff
0x8f1:	bf 01 00 00 00       	mov    $0x1,%edi
0x8f6:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x8fa:	e9 4d 00 00 00       	jmpq   0x94c
0x8ff:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x903:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x90a:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x90e:	48 8b c3             	mov    %rbx,%rax
0x911:	99                   	cltd   
0x912:	41 f7 f8             	idiv   %r8d
0x915:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x919:	03 d0                	add    %eax,%edx
0x91b:	48 8b c7             	mov    %rdi,%rax
0x91e:	48 63 d2             	movslq %edx,%rdx
0x921:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x926:	48 63 c0             	movslq %eax,%rax
0x929:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x92e:	48 63 db             	movslq %ebx,%rbx
0x931:	48 3b c3             	cmp    %rbx,%rax
0x934:	0f 85 0a 00 00 00    	jne    0x944
0x93a:	b8 01 00 00 00       	mov    $0x1,%eax
0x93f:	e9 05 00 00 00       	jmpq   0x949
0x944:	b8 00 00 00 00       	mov    $0x0,%eax
0x949:	48 8b f8             	mov    %rax,%rdi
0x94c:	83 ff 00             	cmp    $0x0,%edi
0x94f:	0f 85 12 00 00 00    	jne    0x967
0x955:	48 8b f9             	mov    %rcx,%rdi
0x958:	e8 00 00 00 00       	callq  0x95d
0x95d:	90                   	nop
0x95e:	48 8b f8             	mov    %rax,%rdi
0x961:	e8 00 00 00 00       	callq  0x966
0x966:	90                   	nop
0x967:	48 8b c6             	mov    %rsi,%rax
0x96a:	48 89 04 24          	mov    %rax,(%rsp)
0x96e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x972:	48 83 c4 10          	add    $0x10,%rsp
0x976:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x97a:	48 8b 3d 57 f6 ff ff 	mov    -0x9a9(%rip),%rdi        # 0xffffffd8
0x981:	be 18 00 00 00       	mov    $0x18,%esi
0x986:	48 63 f6             	movslq %esi,%rsi
0x989:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x98d:	48 83 ec 10          	sub    $0x10,%rsp
0x991:	48 89 04 24          	mov    %rax,(%rsp)
0x995:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x999:	48 83 ec 10          	sub    $0x10,%rsp
0x99d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x9a1:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x9a6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x9ab:	48 8b 15 2e f6 ff ff 	mov    -0x9d2(%rip),%rdx        # 0xffffffe0
0x9b2:	b9 1b 00 00 00       	mov    $0x1b,%ecx
0x9b7:	48 8b c6             	mov    %rsi,%rax
0x9ba:	48 8b 00             	mov    (%rax),%rax
0x9bd:	48 63 ff             	movslq %edi,%rdi
0x9c0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x9c5:	48 8b fa             	mov    %rdx,%rdi
0x9c8:	48 8b d1             	mov    %rcx,%rdx
0x9cb:	b9 03 00 00 00       	mov    $0x3,%ecx
0x9d0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x9d4:	90                   	nop
0x9d5:	90                   	nop
0x9d6:	e8 00 00 00 00       	callq  0x9db
0x9db:	90                   	nop
0x9dc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x9e0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x9e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x9e9:	ff d0                	callq  *%rax
0x9eb:	90                   	nop
0x9ec:	48 83 c5 40          	add    $0x40,%rbp
0x9f0:	c9                   	leaveq 
0x9f1:	c2 10 00             	retq   $0x10

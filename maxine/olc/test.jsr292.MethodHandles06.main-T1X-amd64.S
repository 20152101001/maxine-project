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
0x20:	4c 89 1d 71 ff ff ff 	mov    %r11,-0x8f(%rip)        # 0xffffff98
0x27:	48 8b 3d 72 ff ff ff 	mov    -0x8e(%rip),%rdi        # 0xffffffa0
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
0x6d:	48 8b 3d 34 ff ff ff 	mov    -0xcc(%rip),%rdi        # 0xffffffa8
0x74:	be 10 00 00 00       	mov    $0x10,%esi
0x79:	48 63 f6             	movslq %esi,%rsi
0x7c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x80:	48 83 ec 10          	sub    $0x10,%rsp
0x84:	48 89 04 24          	mov    %rax,(%rsp)
0x88:	e8 00 00 00 00       	callq  0x8d
0x8d:	90                   	nop
0x8e:	48 83 ec 10          	sub    $0x10,%rsp
0x92:	48 89 04 24          	mov    %rax,(%rsp)
0x96:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9a:	48 83 c4 10          	add    $0x10,%rsp
0x9e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xa2:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xa6:	48 83 ec 10          	sub    $0x10,%rsp
0xaa:	4c 89 1c 24          	mov    %r11,(%rsp)
0xae:	48 83 ec 10          	sub    $0x10,%rsp
0xb2:	4c 8b 1d f7 fe ff ff 	mov    -0x109(%rip),%r11        # 0xffffffb0
0xb9:	4c 89 1c 24          	mov    %r11,(%rsp)
0xbd:	4c 8b 1d f4 fe ff ff 	mov    -0x10c(%rip),%r11        # 0xffffffb8
0xc4:	48 83 ec 10          	sub    $0x10,%rsp
0xc8:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcc:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xd0:	48 83 ec 10          	sub    $0x10,%rsp
0xd4:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd8:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xdd:	41 85 03             	test   %eax,(%r11)
0xe0:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xe5:	90                   	nop
0xe6:	90                   	nop
0xe7:	90                   	nop
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	48 89 04 24          	mov    %rax,(%rsp)
0xf6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xfa:	48 83 c4 10          	add    $0x10,%rsp
0xfe:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x102:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x106:	48 83 ec 10          	sub    $0x10,%rsp
0x10a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10e:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x114:	48 83 ec 10          	sub    $0x10,%rsp
0x118:	44 89 1c 24          	mov    %r11d,(%rsp)
0x11c:	40 8b 34 24          	rex mov (%rsp),%esi
0x120:	48 8b 3d 99 fe ff ff 	mov    -0x167(%rip),%rdi        # 0xffffffc0
0x127:	83 fe 00             	cmp    $0x0,%esi
0x12a:	0f 8c fb 00 00 00    	jl     0x22b
0x130:	85 07                	test   %eax,(%rdi)
0x132:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x139:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x13d:	48 8b 3d 84 fe ff ff 	mov    -0x17c(%rip),%rdi        # 0xffffffc8
0x144:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x148:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x14c:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x153:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x157:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x15b:	48 63 c0             	movslq %eax,%rax
0x15e:	48 63 d6             	movslq %esi,%rdx
0x161:	48 0f af c2          	imul   %rdx,%rax
0x165:	48 83 c0 18          	add    $0x18,%rax
0x169:	48 83 c0 07          	add    $0x7,%rax
0x16d:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x174:	00 00 00 
0x177:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x17e:	ff ff ff 
0x181:	49 33 d3             	xor    %r11,%rdx
0x184:	48 23 c2             	and    %rdx,%rax
0x187:	49 8b d6             	mov    %r14,%rdx
0x18a:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x18e:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x195:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x19c:	49 8b d0             	mov    %r8,%rdx
0x19f:	48 03 d0             	add    %rax,%rdx
0x1a2:	4c 8b d2             	mov    %rdx,%r10
0x1a5:	4d 3b d1             	cmp    %r9,%r10
0x1a8:	0f 86 1f 00 00 00    	jbe    0x1cd
0x1ae:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1b2:	48 8b f0             	mov    %rax,%rsi
0x1b5:	48 8b d1             	mov    %rcx,%rdx
0x1b8:	49 8b c8             	mov    %r8,%rcx
0x1bb:	4d 8b c1             	mov    %r9,%r8
0x1be:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1c2:	e8 00 00 00 00       	callq  0x1c7
0x1c7:	90                   	nop
0x1c8:	e9 12 00 00 00       	jmpq   0x1df
0x1cd:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1d1:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1d5:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1dc:	49 8b c0             	mov    %r8,%rax
0x1df:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1e3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e7:	e8 00 00 00 00       	callq  0x1ec
0x1ec:	90                   	nop
0x1ed:	90                   	nop
0x1ee:	e8 00 00 00 00       	callq  0x1f3
0x1f3:	90                   	nop
0x1f4:	83 f8 00             	cmp    $0x0,%eax
0x1f7:	0f 84 40 00 00 00    	je     0x23d
0x1fd:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x201:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x205:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x209:	85 07                	test   %eax,(%rdi)
0x20b:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x20f:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x213:	83 e0 ff             	and    $0xffffffff,%eax
0x216:	48 8b f8             	mov    %rax,%rdi
0x219:	48 8b f2             	mov    %rdx,%rsi
0x21c:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x220:	e8 00 00 00 00       	callq  0x225
0x225:	90                   	nop
0x226:	e9 12 00 00 00       	jmpq   0x23d
0x22b:	48 8b fe             	mov    %rsi,%rdi
0x22e:	e8 00 00 00 00       	callq  0x233
0x233:	90                   	nop
0x234:	48 8b f8             	mov    %rax,%rdi
0x237:	e8 00 00 00 00       	callq  0x23c
0x23c:	90                   	nop
0x23d:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x241:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x245:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x249:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x24d:	48 89 18             	mov    %rbx,(%rax)
0x250:	48 89 04 24          	mov    %rax,(%rsp)
0x254:	48 83 ec 10          	sub    $0x10,%rsp
0x258:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x25d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x261:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x267:	48 83 ec 10          	sub    $0x10,%rsp
0x26b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x26f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x275:	48 83 ec 10          	sub    $0x10,%rsp
0x279:	44 89 1c 24          	mov    %r11d,(%rsp)
0x27d:	90                   	nop
0x27e:	90                   	nop
0x27f:	90                   	nop
0x280:	e8 00 00 00 00       	callq  0x285
0x285:	90                   	nop
0x286:	48 83 ec 10          	sub    $0x10,%rsp
0x28a:	48 89 04 24          	mov    %rax,(%rsp)
0x28e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x293:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x298:	48 8b 14 24          	mov    (%rsp),%rdx
0x29c:	48 8b ca             	mov    %rdx,%rcx
0x29f:	48 8b c7             	mov    %rdi,%rax
0x2a2:	48 63 40 10          	movslq 0x10(%rax),%rax
0x2a6:	3b f0                	cmp    %eax,%esi
0x2a8:	0f 83 b4 00 00 00    	jae    0x362
0x2ae:	4d 33 db             	xor    %r11,%r11
0x2b1:	49 3b cb             	cmp    %r11,%rcx
0x2b4:	0f 84 b8 00 00 00    	je     0x372
0x2ba:	48 8b c7             	mov    %rdi,%rax
0x2bd:	48 8b 00             	mov    (%rax),%rax
0x2c0:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x2c4:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x2c8:	4d 33 db             	xor    %r11,%r11
0x2cb:	49 3b cb             	cmp    %r11,%rcx
0x2ce:	0f 85 0a 00 00 00    	jne    0x2de
0x2d4:	bb 00 00 00 00       	mov    $0x0,%ebx
0x2d9:	e9 66 00 00 00       	jmpq   0x344
0x2de:	48 8b d1             	mov    %rcx,%rdx
0x2e1:	48 8b 1a             	mov    (%rdx),%rbx
0x2e4:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x2e8:	48 3b d0             	cmp    %rax,%rdx
0x2eb:	0f 85 0a 00 00 00    	jne    0x2fb
0x2f1:	bb 01 00 00 00       	mov    $0x1,%ebx
0x2f6:	e9 49 00 00 00       	jmpq   0x344
0x2fb:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x302:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x306:	49 8b c0             	mov    %r8,%rax
0x309:	99                   	cltd   
0x30a:	41 f7 f9             	idiv   %r9d
0x30d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x311:	03 d0                	add    %eax,%edx
0x313:	48 8b c3             	mov    %rbx,%rax
0x316:	48 63 d2             	movslq %edx,%rdx
0x319:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x31e:	48 63 c0             	movslq %eax,%rax
0x321:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x326:	4d 63 c0             	movslq %r8d,%r8
0x329:	49 3b c0             	cmp    %r8,%rax
0x32c:	0f 85 0a 00 00 00    	jne    0x33c
0x332:	b8 01 00 00 00       	mov    $0x1,%eax
0x337:	e9 05 00 00 00       	jmpq   0x341
0x33c:	b8 00 00 00 00       	mov    $0x0,%eax
0x341:	48 8b d8             	mov    %rax,%rbx
0x344:	83 fb 00             	cmp    $0x0,%ebx
0x347:	0f 85 25 00 00 00    	jne    0x372
0x34d:	48 8b f1             	mov    %rcx,%rsi
0x350:	90                   	nop
0x351:	90                   	nop
0x352:	90                   	nop
0x353:	e8 00 00 00 00       	callq  0x358
0x358:	90                   	nop
0x359:	48 8b f8             	mov    %rax,%rdi
0x35c:	e8 00 00 00 00       	callq  0x361
0x361:	90                   	nop
0x362:	90                   	nop
0x363:	e8 00 00 00 00       	callq  0x368
0x368:	90                   	nop
0x369:	48 8b f8             	mov    %rax,%rdi
0x36c:	e8 00 00 00 00       	callq  0x371
0x371:	90                   	nop
0x372:	48 63 f6             	movslq %esi,%rsi
0x375:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x37a:	48 83 c4 30          	add    $0x30,%rsp
0x37e:	48 83 ec 10          	sub    $0x10,%rsp
0x382:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x387:	4c 89 1c 24          	mov    %r11,(%rsp)
0x38b:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x391:	48 83 ec 10          	sub    $0x10,%rsp
0x395:	44 89 1c 24          	mov    %r11d,(%rsp)
0x399:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x39f:	48 83 ec 10          	sub    $0x10,%rsp
0x3a3:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3a7:	90                   	nop
0x3a8:	e8 00 00 00 00       	callq  0x3ad
0x3ad:	90                   	nop
0x3ae:	48 83 ec 10          	sub    $0x10,%rsp
0x3b2:	48 89 04 24          	mov    %rax,(%rsp)
0x3b6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x3bb:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x3c0:	48 8b 14 24          	mov    (%rsp),%rdx
0x3c4:	48 8b ca             	mov    %rdx,%rcx
0x3c7:	48 8b c7             	mov    %rdi,%rax
0x3ca:	48 63 40 10          	movslq 0x10(%rax),%rax
0x3ce:	3b f0                	cmp    %eax,%esi
0x3d0:	0f 83 b4 00 00 00    	jae    0x48a
0x3d6:	4d 33 db             	xor    %r11,%r11
0x3d9:	49 3b cb             	cmp    %r11,%rcx
0x3dc:	0f 84 b8 00 00 00    	je     0x49a
0x3e2:	48 8b c7             	mov    %rdi,%rax
0x3e5:	48 8b 00             	mov    (%rax),%rax
0x3e8:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x3ec:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x3f0:	4d 33 db             	xor    %r11,%r11
0x3f3:	49 3b cb             	cmp    %r11,%rcx
0x3f6:	0f 85 0a 00 00 00    	jne    0x406
0x3fc:	bb 00 00 00 00       	mov    $0x0,%ebx
0x401:	e9 66 00 00 00       	jmpq   0x46c
0x406:	48 8b d1             	mov    %rcx,%rdx
0x409:	48 8b 1a             	mov    (%rdx),%rbx
0x40c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x410:	48 3b d0             	cmp    %rax,%rdx
0x413:	0f 85 0a 00 00 00    	jne    0x423
0x419:	bb 01 00 00 00       	mov    $0x1,%ebx
0x41e:	e9 49 00 00 00       	jmpq   0x46c
0x423:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x42a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x42e:	49 8b c0             	mov    %r8,%rax
0x431:	99                   	cltd   
0x432:	41 f7 f9             	idiv   %r9d
0x435:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x439:	03 d0                	add    %eax,%edx
0x43b:	48 8b c3             	mov    %rbx,%rax
0x43e:	48 63 d2             	movslq %edx,%rdx
0x441:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x446:	48 63 c0             	movslq %eax,%rax
0x449:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x44e:	4d 63 c0             	movslq %r8d,%r8
0x451:	49 3b c0             	cmp    %r8,%rax
0x454:	0f 85 0a 00 00 00    	jne    0x464
0x45a:	b8 01 00 00 00       	mov    $0x1,%eax
0x45f:	e9 05 00 00 00       	jmpq   0x469
0x464:	b8 00 00 00 00       	mov    $0x0,%eax
0x469:	48 8b d8             	mov    %rax,%rbx
0x46c:	83 fb 00             	cmp    $0x0,%ebx
0x46f:	0f 85 25 00 00 00    	jne    0x49a
0x475:	48 8b f1             	mov    %rcx,%rsi
0x478:	90                   	nop
0x479:	90                   	nop
0x47a:	90                   	nop
0x47b:	e8 00 00 00 00       	callq  0x480
0x480:	90                   	nop
0x481:	48 8b f8             	mov    %rax,%rdi
0x484:	e8 00 00 00 00       	callq  0x489
0x489:	90                   	nop
0x48a:	90                   	nop
0x48b:	e8 00 00 00 00       	callq  0x490
0x490:	90                   	nop
0x491:	48 8b f8             	mov    %rax,%rdi
0x494:	e8 00 00 00 00       	callq  0x499
0x499:	90                   	nop
0x49a:	48 63 f6             	movslq %esi,%rsi
0x49d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x4a2:	48 83 c4 30          	add    $0x30,%rsp
0x4a6:	48 83 ec 10          	sub    $0x10,%rsp
0x4aa:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4af:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4b3:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x4b9:	48 83 ec 10          	sub    $0x10,%rsp
0x4bd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4c1:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x4c7:	48 83 ec 10          	sub    $0x10,%rsp
0x4cb:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4cf:	90                   	nop
0x4d0:	e8 00 00 00 00       	callq  0x4d5
0x4d5:	90                   	nop
0x4d6:	48 83 ec 10          	sub    $0x10,%rsp
0x4da:	48 89 04 24          	mov    %rax,(%rsp)
0x4de:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x4e3:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x4e8:	48 8b 14 24          	mov    (%rsp),%rdx
0x4ec:	48 8b ca             	mov    %rdx,%rcx
0x4ef:	48 8b c7             	mov    %rdi,%rax
0x4f2:	48 63 40 10          	movslq 0x10(%rax),%rax
0x4f6:	3b f0                	cmp    %eax,%esi
0x4f8:	0f 83 b4 00 00 00    	jae    0x5b2
0x4fe:	4d 33 db             	xor    %r11,%r11
0x501:	49 3b cb             	cmp    %r11,%rcx
0x504:	0f 84 b8 00 00 00    	je     0x5c2
0x50a:	48 8b c7             	mov    %rdi,%rax
0x50d:	48 8b 00             	mov    (%rax),%rax
0x510:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x514:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x518:	4d 33 db             	xor    %r11,%r11
0x51b:	49 3b cb             	cmp    %r11,%rcx
0x51e:	0f 85 0a 00 00 00    	jne    0x52e
0x524:	bb 00 00 00 00       	mov    $0x0,%ebx
0x529:	e9 66 00 00 00       	jmpq   0x594
0x52e:	48 8b d1             	mov    %rcx,%rdx
0x531:	48 8b 1a             	mov    (%rdx),%rbx
0x534:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x538:	48 3b d0             	cmp    %rax,%rdx
0x53b:	0f 85 0a 00 00 00    	jne    0x54b
0x541:	bb 01 00 00 00       	mov    $0x1,%ebx
0x546:	e9 49 00 00 00       	jmpq   0x594
0x54b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x552:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x556:	49 8b c0             	mov    %r8,%rax
0x559:	99                   	cltd   
0x55a:	41 f7 f9             	idiv   %r9d
0x55d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x561:	03 d0                	add    %eax,%edx
0x563:	48 8b c3             	mov    %rbx,%rax
0x566:	48 63 d2             	movslq %edx,%rdx
0x569:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x56e:	48 63 c0             	movslq %eax,%rax
0x571:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x576:	4d 63 c0             	movslq %r8d,%r8
0x579:	49 3b c0             	cmp    %r8,%rax
0x57c:	0f 85 0a 00 00 00    	jne    0x58c
0x582:	b8 01 00 00 00       	mov    $0x1,%eax
0x587:	e9 05 00 00 00       	jmpq   0x591
0x58c:	b8 00 00 00 00       	mov    $0x0,%eax
0x591:	48 8b d8             	mov    %rax,%rbx
0x594:	83 fb 00             	cmp    $0x0,%ebx
0x597:	0f 85 25 00 00 00    	jne    0x5c2
0x59d:	48 8b f1             	mov    %rcx,%rsi
0x5a0:	90                   	nop
0x5a1:	90                   	nop
0x5a2:	90                   	nop
0x5a3:	e8 00 00 00 00       	callq  0x5a8
0x5a8:	90                   	nop
0x5a9:	48 8b f8             	mov    %rax,%rdi
0x5ac:	e8 00 00 00 00       	callq  0x5b1
0x5b1:	90                   	nop
0x5b2:	90                   	nop
0x5b3:	e8 00 00 00 00       	callq  0x5b8
0x5b8:	90                   	nop
0x5b9:	48 8b f8             	mov    %rax,%rdi
0x5bc:	e8 00 00 00 00       	callq  0x5c1
0x5c1:	90                   	nop
0x5c2:	48 63 f6             	movslq %esi,%rsi
0x5c5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x5ca:	48 83 c4 30          	add    $0x30,%rsp
0x5ce:	90                   	nop
0x5cf:	90                   	nop
0x5d0:	e8 00 00 00 00       	callq  0x5d5
0x5d5:	90                   	nop
0x5d6:	48 83 ec 10          	sub    $0x10,%rsp
0x5da:	48 89 04 24          	mov    %rax,(%rsp)
0x5de:	48 8b 3d eb f9 ff ff 	mov    -0x615(%rip),%rdi        # 0xffffffd0
0x5e5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5ea:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x5ee:	4d 33 db             	xor    %r11,%r11
0x5f1:	49 3b c3             	cmp    %r11,%rax
0x5f4:	0f 85 1d 00 00 00    	jne    0x617
0x5fa:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x5fe:	48 8b c7             	mov    %rdi,%rax
0x601:	48 8b f8             	mov    %rax,%rdi
0x604:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x608:	90                   	nop
0x609:	e8 00 00 00 00       	callq  0x60e
0x60e:	90                   	nop
0x60f:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x613:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x617:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x61b:	48 8b 0e             	mov    (%rsi),%rcx
0x61e:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x622:	48 63 d2             	movslq %edx,%rdx
0x625:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x62a:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x62e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x633:	ff d0                	callq  *%rax
0x635:	90                   	nop
0x636:	48 83 ec 10          	sub    $0x10,%rsp
0x63a:	48 89 04 24          	mov    %rax,(%rsp)
0x63e:	44 8b 1c 24          	mov    (%rsp),%r11d
0x642:	48 83 c4 10          	add    $0x10,%rsp
0x646:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x64a:	48 8b 3d 87 f9 ff ff 	mov    -0x679(%rip),%rdi        # 0xffffffd8
0x651:	be 18 00 00 00       	mov    $0x18,%esi
0x656:	48 63 f6             	movslq %esi,%rsi
0x659:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x65d:	48 83 ec 10          	sub    $0x10,%rsp
0x661:	48 89 04 24          	mov    %rax,(%rsp)
0x665:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x669:	48 83 ec 10          	sub    $0x10,%rsp
0x66d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x671:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x676:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x67b:	48 8b 15 5e f9 ff ff 	mov    -0x6a2(%rip),%rdx        # 0xffffffe0
0x682:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x687:	48 8b c6             	mov    %rsi,%rax
0x68a:	48 8b 00             	mov    (%rax),%rax
0x68d:	48 63 ff             	movslq %edi,%rdi
0x690:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x695:	48 8b fa             	mov    %rdx,%rdi
0x698:	48 8b d1             	mov    %rcx,%rdx
0x69b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x6a0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x6a4:	90                   	nop
0x6a5:	90                   	nop
0x6a6:	e8 00 00 00 00       	callq  0x6ab
0x6ab:	90                   	nop
0x6ac:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x6b0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x6b4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6b9:	ff d0                	callq  *%rax
0x6bb:	90                   	nop
0x6bc:	48 83 c5 40          	add    $0x40,%rbp
0x6c0:	c9                   	leaveq 
0x6c1:	c2 10 00             	retq   $0x10

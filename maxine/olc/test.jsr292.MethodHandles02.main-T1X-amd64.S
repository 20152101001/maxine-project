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
0x20:	4c 89 1d 59 ff ff ff 	mov    %r11,-0xa7(%rip)        # 0xffffff80
0x27:	48 8b 3d 5a ff ff ff 	mov    -0xa6(%rip),%rdi        # 0xffffff88
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
0x71:	4c 8b 1d 18 ff ff ff 	mov    -0xe8(%rip),%r11        # 0xffffff90
0x78:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7c:	48 8b 3d 15 ff ff ff 	mov    -0xeb(%rip),%rdi        # 0xffffff98
0x83:	be 10 00 00 00       	mov    $0x10,%esi
0x88:	48 63 f6             	movslq %esi,%rsi
0x8b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x8f:	48 83 ec 10          	sub    $0x10,%rsp
0x93:	48 89 04 24          	mov    %rax,(%rsp)
0x97:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x9d:	48 83 ec 10          	sub    $0x10,%rsp
0xa1:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa5:	40 8b 34 24          	rex mov (%rsp),%esi
0xa9:	48 8b 3d f0 fe ff ff 	mov    -0x110(%rip),%rdi        # 0xffffffa0
0xb0:	83 fe 00             	cmp    $0x0,%esi
0xb3:	0f 8c fb 00 00 00    	jl     0x1b4
0xb9:	85 07                	test   %eax,(%rdi)
0xbb:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0xc2:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0xc6:	48 8b 3d db fe ff ff 	mov    -0x125(%rip),%rdi        # 0xffffffa8
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
0x1f8:	48 8b 3d b1 fd ff ff 	mov    -0x24f(%rip),%rdi        # 0xffffffb0
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
0x32d:	4c 8b 1d 84 fc ff ff 	mov    -0x37c(%rip),%r11        # 0xffffffb8
0x334:	4c 89 1c 24          	mov    %r11,(%rsp)
0x338:	4c 8b 1d 81 fc ff ff 	mov    -0x37f(%rip),%r11        # 0xffffffc0
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
0x386:	4c 8b 1d 3b fc ff ff 	mov    -0x3c5(%rip),%r11        # 0xffffffc8
0x38d:	48 83 ec 10          	sub    $0x10,%rsp
0x391:	4c 89 1c 24          	mov    %r11,(%rsp)
0x395:	41 bb 64 00 00 00    	mov    $0x64,%r11d
0x39b:	48 83 ec 10          	sub    $0x10,%rsp
0x39f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3a3:	41 bb 6e 00 00 00    	mov    $0x6e,%r11d
0x3a9:	48 83 ec 10          	sub    $0x10,%rsp
0x3ad:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3b1:	48 8b 3d 18 fc ff ff 	mov    -0x3e8(%rip),%rdi        # 0xffffffd0
0x3b8:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
0x3bd:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x3c1:	4d 33 db             	xor    %r11,%r11
0x3c4:	49 3b c3             	cmp    %r11,%rax
0x3c7:	0f 85 1d 00 00 00    	jne    0x3ea
0x3cd:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x3d1:	48 8b c7             	mov    %rdi,%rax
0x3d4:	48 8b f8             	mov    %rax,%rdi
0x3d7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3db:	90                   	nop
0x3dc:	e8 00 00 00 00       	callq  0x3e1
0x3e1:	90                   	nop
0x3e2:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x3e6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3ea:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x3ee:	48 8b 0e             	mov    (%rsi),%rcx
0x3f1:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x3f5:	48 63 d2             	movslq %edx,%rdx
0x3f8:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x3fd:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x401:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x406:	ff d0                	callq  *%rax
0x408:	90                   	nop
0x409:	48 83 ec 10          	sub    $0x10,%rsp
0x40d:	48 89 04 24          	mov    %rax,(%rsp)
0x411:	4c 8b 1c 24          	mov    (%rsp),%r11
0x415:	48 83 c4 10          	add    $0x10,%rsp
0x419:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x41d:	48 8b 3d b4 fb ff ff 	mov    -0x44c(%rip),%rdi        # 0xffffffd8
0x424:	be 18 00 00 00       	mov    $0x18,%esi
0x429:	48 63 f6             	movslq %esi,%rsi
0x42c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x430:	48 83 ec 10          	sub    $0x10,%rsp
0x434:	48 89 04 24          	mov    %rax,(%rsp)
0x438:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x43c:	48 83 ec 10          	sub    $0x10,%rsp
0x440:	4c 89 1c 24          	mov    %r11,(%rsp)
0x444:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x449:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x44e:	48 8b 15 8b fb ff ff 	mov    -0x475(%rip),%rdx        # 0xffffffe0
0x455:	b9 06 00 00 00       	mov    $0x6,%ecx
0x45a:	48 8b c6             	mov    %rsi,%rax
0x45d:	48 8b 00             	mov    (%rax),%rax
0x460:	48 63 ff             	movslq %edi,%rdi
0x463:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x468:	48 8b fa             	mov    %rdx,%rdi
0x46b:	48 8b d1             	mov    %rcx,%rdx
0x46e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x473:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x477:	90                   	nop
0x478:	90                   	nop
0x479:	e8 00 00 00 00       	callq  0x47e
0x47e:	90                   	nop
0x47f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x483:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x487:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x48c:	ff d0                	callq  *%rax
0x48e:	90                   	nop
0x48f:	48 83 c5 40          	add    $0x40,%rbp
0x493:	c9                   	leaveq 
0x494:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d 99 fe ff ff 	mov    %r11,-0x167(%rip)        # 0xfffffec0
0x27:	48 8b 3d 9a fe ff ff 	mov    -0x166(%rip),%rdi        # 0xfffffec8
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
0x6d:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	44 89 1c 24          	mov    %r11d,(%rsp)
0x79:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x7d:	48 83 ec 10          	sub    $0x10,%rsp
0x81:	4c 89 1c 24          	mov    %r11,(%rsp)
0x85:	48 8b 3c 24          	mov    (%rsp),%rdi
0x89:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x8d:	89 04 24             	mov    %eax,(%rsp)
0x90:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x95:	8b 04 24             	mov    (%rsp),%eax
0x98:	48 83 c4 20          	add    $0x20,%rsp
0x9c:	44 3b d8             	cmp    %eax,%r11d
0x9f:	7c 33                	jl     0xd4
0xa1:	48 8b 3d 28 fe ff ff 	mov    -0x1d8(%rip),%rdi        # 0xfffffed0
0xa8:	be 00 00 00 00       	mov    $0x0,%esi
0xad:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xb1:	48 8b c8             	mov    %rax,%rcx
0xb4:	48 63 f6             	movslq %esi,%rsi
0xb7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xbc:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc2:	0f 8d 07 00 00 00    	jge    0xcf
0xc8:	83 c1 01             	add    $0x1,%ecx
0xcb:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xcf:	e9 a2 03 00 00       	jmpq   0x476
0xd4:	48 8b 3d fd fd ff ff 	mov    -0x203(%rip),%rdi        # 0xfffffed8
0xdb:	be 01 00 00 00       	mov    $0x1,%esi
0xe0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe4:	48 8b c8             	mov    %rax,%rcx
0xe7:	48 63 f6             	movslq %esi,%rsi
0xea:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xef:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf5:	0f 8d 07 00 00 00    	jge    0x102
0xfb:	83 c1 01             	add    $0x1,%ecx
0xfe:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x102:	48 8b 3d d7 fd ff ff 	mov    -0x229(%rip),%rdi        # 0xfffffee0
0x109:	be 18 00 00 00       	mov    $0x18,%esi
0x10e:	48 63 f6             	movslq %esi,%rsi
0x111:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x115:	48 83 ec 10          	sub    $0x10,%rsp
0x119:	48 89 04 24          	mov    %rax,(%rsp)
0x11d:	4c 8b 1d c4 fd ff ff 	mov    -0x23c(%rip),%r11        # 0xfffffee8
0x124:	48 83 ec 10          	sub    $0x10,%rsp
0x128:	4c 89 1c 24          	mov    %r11,(%rsp)
0x12c:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x132:	48 83 ec 10          	sub    $0x10,%rsp
0x136:	44 89 1c 24          	mov    %r11d,(%rsp)
0x13a:	40 8b 34 24          	rex mov (%rsp),%esi
0x13e:	48 8b 3d ab fd ff ff 	mov    -0x255(%rip),%rdi        # 0xfffffef0
0x145:	83 fe 00             	cmp    $0x0,%esi
0x148:	0f 8c fb 00 00 00    	jl     0x249
0x14e:	85 07                	test   %eax,(%rdi)
0x150:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x157:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x15b:	48 8b 3d 96 fd ff ff 	mov    -0x26a(%rip),%rdi        # 0xfffffef8
0x162:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x166:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x16a:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x171:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x175:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x179:	48 63 c0             	movslq %eax,%rax
0x17c:	48 63 d6             	movslq %esi,%rdx
0x17f:	48 0f af c2          	imul   %rdx,%rax
0x183:	48 83 c0 18          	add    $0x18,%rax
0x187:	48 83 c0 07          	add    $0x7,%rax
0x18b:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x192:	00 00 00 
0x195:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x19c:	ff ff ff 
0x19f:	49 33 d3             	xor    %r11,%rdx
0x1a2:	48 23 c2             	and    %rdx,%rax
0x1a5:	49 8b d6             	mov    %r14,%rdx
0x1a8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x1ac:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x1b3:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x1ba:	49 8b d0             	mov    %r8,%rdx
0x1bd:	48 03 d0             	add    %rax,%rdx
0x1c0:	4c 8b d2             	mov    %rdx,%r10
0x1c3:	4d 3b d1             	cmp    %r9,%r10
0x1c6:	0f 86 1f 00 00 00    	jbe    0x1eb
0x1cc:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1d0:	48 8b f0             	mov    %rax,%rsi
0x1d3:	48 8b d1             	mov    %rcx,%rdx
0x1d6:	49 8b c8             	mov    %r8,%rcx
0x1d9:	4d 8b c1             	mov    %r9,%r8
0x1dc:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1e0:	e8 00 00 00 00       	callq  0x1e5
0x1e5:	90                   	nop
0x1e6:	e9 12 00 00 00       	jmpq   0x1fd
0x1eb:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1ef:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1f3:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1fa:	49 8b c0             	mov    %r8,%rax
0x1fd:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x201:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x205:	e8 00 00 00 00       	callq  0x20a
0x20a:	90                   	nop
0x20b:	90                   	nop
0x20c:	e8 00 00 00 00       	callq  0x211
0x211:	90                   	nop
0x212:	83 f8 00             	cmp    $0x0,%eax
0x215:	0f 84 40 00 00 00    	je     0x25b
0x21b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x21f:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x223:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x227:	85 07                	test   %eax,(%rdi)
0x229:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x22d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x231:	83 e0 ff             	and    $0xffffffff,%eax
0x234:	48 8b f8             	mov    %rax,%rdi
0x237:	48 8b f2             	mov    %rdx,%rsi
0x23a:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x23e:	e8 00 00 00 00       	callq  0x243
0x243:	90                   	nop
0x244:	e9 12 00 00 00       	jmpq   0x25b
0x249:	48 8b fe             	mov    %rsi,%rdi
0x24c:	e8 00 00 00 00       	callq  0x251
0x251:	90                   	nop
0x252:	48 8b f8             	mov    %rax,%rdi
0x255:	e8 00 00 00 00       	callq  0x25a
0x25a:	90                   	nop
0x25b:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x25f:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x263:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x267:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x26b:	48 89 18             	mov    %rbx,(%rax)
0x26e:	48 89 04 24          	mov    %rax,(%rsp)
0x272:	48 83 ec 10          	sub    $0x10,%rsp
0x276:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x27b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x27f:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x285:	48 83 ec 10          	sub    $0x10,%rsp
0x289:	44 89 1c 24          	mov    %r11d,(%rsp)
0x28d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x291:	48 83 ec 10          	sub    $0x10,%rsp
0x295:	4c 89 1c 24          	mov    %r11,(%rsp)
0x299:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x29d:	48 83 ec 10          	sub    $0x10,%rsp
0x2a1:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2a5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2aa:	40 8b 34 24          	rex mov (%rsp),%esi
0x2ae:	48 8b c7             	mov    %rdi,%rax
0x2b1:	48 63 40 10          	movslq 0x10(%rax),%rax
0x2b5:	3b f0                	cmp    %eax,%esi
0x2b7:	0f 82 0f 00 00 00    	jb     0x2cc
0x2bd:	e8 00 00 00 00       	callq  0x2c2
0x2c2:	90                   	nop
0x2c3:	48 8b f8             	mov    %rax,%rdi
0x2c6:	e8 00 00 00 00       	callq  0x2cb
0x2cb:	90                   	nop
0x2cc:	48 63 f6             	movslq %esi,%rsi
0x2cf:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x2d4:	48 83 c4 10          	add    $0x10,%rsp
0x2d8:	48 89 04 24          	mov    %rax,(%rsp)
0x2dc:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x2e1:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x2e6:	48 8b 14 24          	mov    (%rsp),%rdx
0x2ea:	48 8b ca             	mov    %rdx,%rcx
0x2ed:	48 8b c7             	mov    %rdi,%rax
0x2f0:	48 63 40 10          	movslq 0x10(%rax),%rax
0x2f4:	3b f0                	cmp    %eax,%esi
0x2f6:	0f 83 b4 00 00 00    	jae    0x3b0
0x2fc:	4d 33 db             	xor    %r11,%r11
0x2ff:	49 3b cb             	cmp    %r11,%rcx
0x302:	0f 84 b8 00 00 00    	je     0x3c0
0x308:	48 8b c7             	mov    %rdi,%rax
0x30b:	48 8b 00             	mov    (%rax),%rax
0x30e:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x312:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x316:	4d 33 db             	xor    %r11,%r11
0x319:	49 3b cb             	cmp    %r11,%rcx
0x31c:	0f 85 0a 00 00 00    	jne    0x32c
0x322:	bb 00 00 00 00       	mov    $0x0,%ebx
0x327:	e9 66 00 00 00       	jmpq   0x392
0x32c:	48 8b d1             	mov    %rcx,%rdx
0x32f:	48 8b 1a             	mov    (%rdx),%rbx
0x332:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x336:	48 3b d0             	cmp    %rax,%rdx
0x339:	0f 85 0a 00 00 00    	jne    0x349
0x33f:	bb 01 00 00 00       	mov    $0x1,%ebx
0x344:	e9 49 00 00 00       	jmpq   0x392
0x349:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x350:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x354:	49 8b c0             	mov    %r8,%rax
0x357:	99                   	cltd   
0x358:	41 f7 f9             	idiv   %r9d
0x35b:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x35f:	03 d0                	add    %eax,%edx
0x361:	48 8b c3             	mov    %rbx,%rax
0x364:	48 63 d2             	movslq %edx,%rdx
0x367:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x36c:	48 63 c0             	movslq %eax,%rax
0x36f:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x374:	4d 63 c0             	movslq %r8d,%r8
0x377:	49 3b c0             	cmp    %r8,%rax
0x37a:	0f 85 0a 00 00 00    	jne    0x38a
0x380:	b8 01 00 00 00       	mov    $0x1,%eax
0x385:	e9 05 00 00 00       	jmpq   0x38f
0x38a:	b8 00 00 00 00       	mov    $0x0,%eax
0x38f:	48 8b d8             	mov    %rax,%rbx
0x392:	83 fb 00             	cmp    $0x0,%ebx
0x395:	0f 85 25 00 00 00    	jne    0x3c0
0x39b:	48 8b f1             	mov    %rcx,%rsi
0x39e:	90                   	nop
0x39f:	90                   	nop
0x3a0:	90                   	nop
0x3a1:	e8 00 00 00 00       	callq  0x3a6
0x3a6:	90                   	nop
0x3a7:	48 8b f8             	mov    %rax,%rdi
0x3aa:	e8 00 00 00 00       	callq  0x3af
0x3af:	90                   	nop
0x3b0:	90                   	nop
0x3b1:	e8 00 00 00 00       	callq  0x3b6
0x3b6:	90                   	nop
0x3b7:	48 8b f8             	mov    %rax,%rdi
0x3ba:	e8 00 00 00 00       	callq  0x3bf
0x3bf:	90                   	nop
0x3c0:	48 63 f6             	movslq %esi,%rsi
0x3c3:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x3c8:	48 83 c4 30          	add    $0x30,%rsp
0x3cc:	bf 31 00 00 00       	mov    $0x31,%edi
0x3d1:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x3d6:	48 8b 15 23 fb ff ff 	mov    -0x4dd(%rip),%rdx        # 0xffffff00
0x3dd:	b9 05 00 00 00       	mov    $0x5,%ecx
0x3e2:	48 8b c6             	mov    %rsi,%rax
0x3e5:	48 8b 00             	mov    (%rax),%rax
0x3e8:	48 63 ff             	movslq %edi,%rdi
0x3eb:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3f0:	48 8b fa             	mov    %rdx,%rdi
0x3f3:	48 8b d1             	mov    %rcx,%rdx
0x3f6:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3fb:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3ff:	90                   	nop
0x400:	90                   	nop
0x401:	e8 00 00 00 00       	callq  0x406
0x406:	90                   	nop
0x407:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x40b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x40f:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x414:	ff d0                	callq  *%rax
0x416:	90                   	nop
0x417:	48 83 ec 10          	sub    $0x10,%rsp
0x41b:	48 89 04 24          	mov    %rax,(%rsp)
0x41f:	48 83 c4 10          	add    $0x10,%rsp
0x423:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x427:	41 83 c3 01          	add    $0x1,%r11d
0x42b:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x42f:	48 8b 3d d2 fa ff ff 	mov    -0x52e(%rip),%rdi        # 0xffffff08
0x436:	be 0d 00 00 00       	mov    $0xd,%esi
0x43b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x43f:	48 8b c8             	mov    %rax,%rcx
0x442:	48 63 f6             	movslq %esi,%rsi
0x445:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x44a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x450:	0f 8d 07 00 00 00    	jge    0x45d
0x456:	83 c1 01             	add    $0x1,%ecx
0x459:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x45d:	48 8b 3d ac fa ff ff 	mov    -0x554(%rip),%rdi        # 0xffffff10
0x464:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x468:	83 e8 01             	sub    $0x1,%eax
0x46b:	89 47 30             	mov    %eax,0x30(%rdi)
0x46e:	4d 8b 36             	mov    (%r14),%r14
0x471:	e9 f7 fb ff ff       	jmpq   0x6d
0x476:	48 8b 3d 9b fa ff ff 	mov    -0x565(%rip),%rdi        # 0xffffff18
0x47d:	be 18 00 00 00       	mov    $0x18,%esi
0x482:	48 63 f6             	movslq %esi,%rsi
0x485:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x489:	48 83 ec 10          	sub    $0x10,%rsp
0x48d:	48 89 04 24          	mov    %rax,(%rsp)
0x491:	4c 8b 1d 88 fa ff ff 	mov    -0x578(%rip),%r11        # 0xffffff20
0x498:	48 83 ec 10          	sub    $0x10,%rsp
0x49c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4a0:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x4a6:	48 83 ec 10          	sub    $0x10,%rsp
0x4aa:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4ae:	40 8b 34 24          	rex mov (%rsp),%esi
0x4b2:	48 8b 3d 6f fa ff ff 	mov    -0x591(%rip),%rdi        # 0xffffff28
0x4b9:	83 fe 00             	cmp    $0x0,%esi
0x4bc:	0f 8c fb 00 00 00    	jl     0x5bd
0x4c2:	85 07                	test   %eax,(%rdi)
0x4c4:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x4cb:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x4cf:	48 8b 3d 5a fa ff ff 	mov    -0x5a6(%rip),%rdi        # 0xffffff30
0x4d6:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x4da:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x4de:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x4e5:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x4e9:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x4ed:	48 63 c0             	movslq %eax,%rax
0x4f0:	48 63 d6             	movslq %esi,%rdx
0x4f3:	48 0f af c2          	imul   %rdx,%rax
0x4f7:	48 83 c0 18          	add    $0x18,%rax
0x4fb:	48 83 c0 07          	add    $0x7,%rax
0x4ff:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x506:	00 00 00 
0x509:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x510:	ff ff ff 
0x513:	49 33 d3             	xor    %r11,%rdx
0x516:	48 23 c2             	and    %rdx,%rax
0x519:	49 8b d6             	mov    %r14,%rdx
0x51c:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x520:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x527:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x52e:	49 8b d0             	mov    %r8,%rdx
0x531:	48 03 d0             	add    %rax,%rdx
0x534:	4c 8b d2             	mov    %rdx,%r10
0x537:	4d 3b d1             	cmp    %r9,%r10
0x53a:	0f 86 1f 00 00 00    	jbe    0x55f
0x540:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x544:	48 8b f0             	mov    %rax,%rsi
0x547:	48 8b d1             	mov    %rcx,%rdx
0x54a:	49 8b c8             	mov    %r8,%rcx
0x54d:	4d 8b c1             	mov    %r9,%r8
0x550:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x554:	e8 00 00 00 00       	callq  0x559
0x559:	90                   	nop
0x55a:	e9 12 00 00 00       	jmpq   0x571
0x55f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x563:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x567:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x56e:	49 8b c0             	mov    %r8,%rax
0x571:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x575:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x579:	e8 00 00 00 00       	callq  0x57e
0x57e:	90                   	nop
0x57f:	90                   	nop
0x580:	e8 00 00 00 00       	callq  0x585
0x585:	90                   	nop
0x586:	83 f8 00             	cmp    $0x0,%eax
0x589:	0f 84 40 00 00 00    	je     0x5cf
0x58f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x593:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x597:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x59b:	85 07                	test   %eax,(%rdi)
0x59d:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x5a1:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x5a5:	83 e0 ff             	and    $0xffffffff,%eax
0x5a8:	48 8b f8             	mov    %rax,%rdi
0x5ab:	48 8b f2             	mov    %rdx,%rsi
0x5ae:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x5b2:	e8 00 00 00 00       	callq  0x5b7
0x5b7:	90                   	nop
0x5b8:	e9 12 00 00 00       	jmpq   0x5cf
0x5bd:	48 8b fe             	mov    %rsi,%rdi
0x5c0:	e8 00 00 00 00       	callq  0x5c5
0x5c5:	90                   	nop
0x5c6:	48 8b f8             	mov    %rax,%rdi
0x5c9:	e8 00 00 00 00       	callq  0x5ce
0x5ce:	90                   	nop
0x5cf:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x5d3:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x5d7:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x5db:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x5df:	48 89 18             	mov    %rbx,(%rax)
0x5e2:	48 89 04 24          	mov    %rax,(%rsp)
0x5e6:	48 83 ec 10          	sub    $0x10,%rsp
0x5ea:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5ef:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f3:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x5f9:	48 83 ec 10          	sub    $0x10,%rsp
0x5fd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x601:	41 bb 0b 00 00 00    	mov    $0xb,%r11d
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
0x70e:	bf 31 00 00 00       	mov    $0x31,%edi
0x713:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x718:	48 8b 15 19 f8 ff ff 	mov    -0x7e7(%rip),%rdx        # 0xffffff38
0x71f:	b9 11 00 00 00       	mov    $0x11,%ecx
0x724:	48 8b c6             	mov    %rsi,%rax
0x727:	48 8b 00             	mov    (%rax),%rax
0x72a:	48 63 ff             	movslq %edi,%rdi
0x72d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x732:	48 8b fa             	mov    %rdx,%rdi
0x735:	48 8b d1             	mov    %rcx,%rdx
0x738:	b9 03 00 00 00       	mov    $0x3,%ecx
0x73d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x741:	90                   	nop
0x742:	90                   	nop
0x743:	e8 00 00 00 00       	callq  0x748
0x748:	90                   	nop
0x749:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x74d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x751:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x756:	ff d0                	callq  *%rax
0x758:	90                   	nop
0x759:	48 83 ec 10          	sub    $0x10,%rsp
0x75d:	48 89 04 24          	mov    %rax,(%rsp)
0x761:	48 83 c4 10          	add    $0x10,%rsp
0x765:	48 8b 3d d4 f7 ff ff 	mov    -0x82c(%rip),%rdi        # 0xffffff40
0x76c:	be 18 00 00 00       	mov    $0x18,%esi
0x771:	48 63 f6             	movslq %esi,%rsi
0x774:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x778:	48 83 ec 10          	sub    $0x10,%rsp
0x77c:	48 89 04 24          	mov    %rax,(%rsp)
0x780:	4c 8b 1d c1 f7 ff ff 	mov    -0x83f(%rip),%r11        # 0xffffff48
0x787:	48 83 ec 10          	sub    $0x10,%rsp
0x78b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x78f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x795:	48 83 ec 10          	sub    $0x10,%rsp
0x799:	44 89 1c 24          	mov    %r11d,(%rsp)
0x79d:	40 8b 34 24          	rex mov (%rsp),%esi
0x7a1:	48 8b 3d a8 f7 ff ff 	mov    -0x858(%rip),%rdi        # 0xffffff50
0x7a8:	83 fe 00             	cmp    $0x0,%esi
0x7ab:	0f 8c fb 00 00 00    	jl     0x8ac
0x7b1:	85 07                	test   %eax,(%rdi)
0x7b3:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x7ba:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x7be:	48 8b 3d 93 f7 ff ff 	mov    -0x86d(%rip),%rdi        # 0xffffff58
0x7c5:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x7c9:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x7cd:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x7d4:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x7d8:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x7dc:	48 63 c0             	movslq %eax,%rax
0x7df:	48 63 d6             	movslq %esi,%rdx
0x7e2:	48 0f af c2          	imul   %rdx,%rax
0x7e6:	48 83 c0 18          	add    $0x18,%rax
0x7ea:	48 83 c0 07          	add    $0x7,%rax
0x7ee:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x7f5:	00 00 00 
0x7f8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x7ff:	ff ff ff 
0x802:	49 33 d3             	xor    %r11,%rdx
0x805:	48 23 c2             	and    %rdx,%rax
0x808:	49 8b d6             	mov    %r14,%rdx
0x80b:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x80f:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x816:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x81d:	49 8b d0             	mov    %r8,%rdx
0x820:	48 03 d0             	add    %rax,%rdx
0x823:	4c 8b d2             	mov    %rdx,%r10
0x826:	4d 3b d1             	cmp    %r9,%r10
0x829:	0f 86 1f 00 00 00    	jbe    0x84e
0x82f:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x833:	48 8b f0             	mov    %rax,%rsi
0x836:	48 8b d1             	mov    %rcx,%rdx
0x839:	49 8b c8             	mov    %r8,%rcx
0x83c:	4d 8b c1             	mov    %r9,%r8
0x83f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x843:	e8 00 00 00 00       	callq  0x848
0x848:	90                   	nop
0x849:	e9 12 00 00 00       	jmpq   0x860
0x84e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x852:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x856:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x85d:	49 8b c0             	mov    %r8,%rax
0x860:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x864:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x868:	e8 00 00 00 00       	callq  0x86d
0x86d:	90                   	nop
0x86e:	90                   	nop
0x86f:	e8 00 00 00 00       	callq  0x874
0x874:	90                   	nop
0x875:	83 f8 00             	cmp    $0x0,%eax
0x878:	0f 84 40 00 00 00    	je     0x8be
0x87e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x882:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x886:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x88a:	85 07                	test   %eax,(%rdi)
0x88c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x890:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x894:	83 e0 ff             	and    $0xffffffff,%eax
0x897:	48 8b f8             	mov    %rax,%rdi
0x89a:	48 8b f2             	mov    %rdx,%rsi
0x89d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x8a1:	e8 00 00 00 00       	callq  0x8a6
0x8a6:	90                   	nop
0x8a7:	e9 12 00 00 00       	jmpq   0x8be
0x8ac:	48 8b fe             	mov    %rsi,%rdi
0x8af:	e8 00 00 00 00       	callq  0x8b4
0x8b4:	90                   	nop
0x8b5:	48 8b f8             	mov    %rax,%rdi
0x8b8:	e8 00 00 00 00       	callq  0x8bd
0x8bd:	90                   	nop
0x8be:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x8c2:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x8c6:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x8ca:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x8ce:	48 89 18             	mov    %rbx,(%rax)
0x8d1:	48 89 04 24          	mov    %rax,(%rsp)
0x8d5:	48 83 ec 10          	sub    $0x10,%rsp
0x8d9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x8de:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8e2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x8e8:	48 83 ec 10          	sub    $0x10,%rsp
0x8ec:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8f0:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x8f6:	48 83 ec 10          	sub    $0x10,%rsp
0x8fa:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8fe:	90                   	nop
0x8ff:	90                   	nop
0x900:	e8 00 00 00 00       	callq  0x905
0x905:	90                   	nop
0x906:	48 83 ec 10          	sub    $0x10,%rsp
0x90a:	48 89 04 24          	mov    %rax,(%rsp)
0x90e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x913:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x918:	48 8b 14 24          	mov    (%rsp),%rdx
0x91c:	48 8b ca             	mov    %rdx,%rcx
0x91f:	48 8b c7             	mov    %rdi,%rax
0x922:	48 63 40 10          	movslq 0x10(%rax),%rax
0x926:	3b f0                	cmp    %eax,%esi
0x928:	0f 83 b4 00 00 00    	jae    0x9e2
0x92e:	4d 33 db             	xor    %r11,%r11
0x931:	49 3b cb             	cmp    %r11,%rcx
0x934:	0f 84 b8 00 00 00    	je     0x9f2
0x93a:	48 8b c7             	mov    %rdi,%rax
0x93d:	48 8b 00             	mov    (%rax),%rax
0x940:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x944:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x948:	4d 33 db             	xor    %r11,%r11
0x94b:	49 3b cb             	cmp    %r11,%rcx
0x94e:	0f 85 0a 00 00 00    	jne    0x95e
0x954:	bb 00 00 00 00       	mov    $0x0,%ebx
0x959:	e9 66 00 00 00       	jmpq   0x9c4
0x95e:	48 8b d1             	mov    %rcx,%rdx
0x961:	48 8b 1a             	mov    (%rdx),%rbx
0x964:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x968:	48 3b d0             	cmp    %rax,%rdx
0x96b:	0f 85 0a 00 00 00    	jne    0x97b
0x971:	bb 01 00 00 00       	mov    $0x1,%ebx
0x976:	e9 49 00 00 00       	jmpq   0x9c4
0x97b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x982:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x986:	49 8b c0             	mov    %r8,%rax
0x989:	99                   	cltd   
0x98a:	41 f7 f9             	idiv   %r9d
0x98d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x991:	03 d0                	add    %eax,%edx
0x993:	48 8b c3             	mov    %rbx,%rax
0x996:	48 63 d2             	movslq %edx,%rdx
0x999:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x99e:	48 63 c0             	movslq %eax,%rax
0x9a1:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x9a6:	4d 63 c0             	movslq %r8d,%r8
0x9a9:	49 3b c0             	cmp    %r8,%rax
0x9ac:	0f 85 0a 00 00 00    	jne    0x9bc
0x9b2:	b8 01 00 00 00       	mov    $0x1,%eax
0x9b7:	e9 05 00 00 00       	jmpq   0x9c1
0x9bc:	b8 00 00 00 00       	mov    $0x0,%eax
0x9c1:	48 8b d8             	mov    %rax,%rbx
0x9c4:	83 fb 00             	cmp    $0x0,%ebx
0x9c7:	0f 85 25 00 00 00    	jne    0x9f2
0x9cd:	48 8b f1             	mov    %rcx,%rsi
0x9d0:	90                   	nop
0x9d1:	90                   	nop
0x9d2:	90                   	nop
0x9d3:	e8 00 00 00 00       	callq  0x9d8
0x9d8:	90                   	nop
0x9d9:	48 8b f8             	mov    %rax,%rdi
0x9dc:	e8 00 00 00 00       	callq  0x9e1
0x9e1:	90                   	nop
0x9e2:	90                   	nop
0x9e3:	e8 00 00 00 00       	callq  0x9e8
0x9e8:	90                   	nop
0x9e9:	48 8b f8             	mov    %rax,%rdi
0x9ec:	e8 00 00 00 00       	callq  0x9f1
0x9f1:	90                   	nop
0x9f2:	48 63 f6             	movslq %esi,%rsi
0x9f5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x9fa:	48 83 c4 30          	add    $0x30,%rsp
0x9fe:	bf 31 00 00 00       	mov    $0x31,%edi
0xa03:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0xa08:	48 8b 15 51 f5 ff ff 	mov    -0xaaf(%rip),%rdx        # 0xffffff60
0xa0f:	b9 1c 00 00 00       	mov    $0x1c,%ecx
0xa14:	48 8b c6             	mov    %rsi,%rax
0xa17:	48 8b 00             	mov    (%rax),%rax
0xa1a:	48 63 ff             	movslq %edi,%rdi
0xa1d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa22:	48 8b fa             	mov    %rdx,%rdi
0xa25:	48 8b d1             	mov    %rcx,%rdx
0xa28:	b9 03 00 00 00       	mov    $0x3,%ecx
0xa2d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xa31:	90                   	nop
0xa32:	90                   	nop
0xa33:	e8 00 00 00 00       	callq  0xa38
0xa38:	90                   	nop
0xa39:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xa3d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xa41:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xa46:	ff d0                	callq  *%rax
0xa48:	90                   	nop
0xa49:	48 83 ec 10          	sub    $0x10,%rsp
0xa4d:	48 89 04 24          	mov    %rax,(%rsp)
0xa51:	48 83 c4 10          	add    $0x10,%rsp
0xa55:	48 8b 3d 0c f5 ff ff 	mov    -0xaf4(%rip),%rdi        # 0xffffff68
0xa5c:	be 18 00 00 00       	mov    $0x18,%esi
0xa61:	48 63 f6             	movslq %esi,%rsi
0xa64:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xa68:	48 83 ec 10          	sub    $0x10,%rsp
0xa6c:	48 89 04 24          	mov    %rax,(%rsp)
0xa70:	4c 8b 1d f9 f4 ff ff 	mov    -0xb07(%rip),%r11        # 0xffffff70
0xa77:	48 83 ec 10          	sub    $0x10,%rsp
0xa7b:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa7f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0xa85:	48 83 ec 10          	sub    $0x10,%rsp
0xa89:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa8d:	40 8b 34 24          	rex mov (%rsp),%esi
0xa91:	48 8b 3d e0 f4 ff ff 	mov    -0xb20(%rip),%rdi        # 0xffffff78
0xa98:	83 fe 00             	cmp    $0x0,%esi
0xa9b:	0f 8c fb 00 00 00    	jl     0xb9c
0xaa1:	85 07                	test   %eax,(%rdi)
0xaa3:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0xaaa:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0xaae:	48 8b 3d cb f4 ff ff 	mov    -0xb35(%rip),%rdi        # 0xffffff80
0xab5:	48 8b 43 30          	mov    0x30(%rbx),%rax
0xab9:	48 8b 50 70          	mov    0x70(%rax),%rdx
0xabd:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0xac4:	48 8b 50 48          	mov    0x48(%rax),%rdx
0xac8:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xacc:	48 63 c0             	movslq %eax,%rax
0xacf:	48 63 d6             	movslq %esi,%rdx
0xad2:	48 0f af c2          	imul   %rdx,%rax
0xad6:	48 83 c0 18          	add    $0x18,%rax
0xada:	48 83 c0 07          	add    $0x7,%rax
0xade:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xae5:	00 00 00 
0xae8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0xaef:	ff ff ff 
0xaf2:	49 33 d3             	xor    %r11,%rdx
0xaf5:	48 23 c2             	and    %rdx,%rax
0xaf8:	49 8b d6             	mov    %r14,%rdx
0xafb:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0xaff:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0xb06:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0xb0d:	49 8b d0             	mov    %r8,%rdx
0xb10:	48 03 d0             	add    %rax,%rdx
0xb13:	4c 8b d2             	mov    %rdx,%r10
0xb16:	4d 3b d1             	cmp    %r9,%r10
0xb19:	0f 86 1f 00 00 00    	jbe    0xb3e
0xb1f:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0xb23:	48 8b f0             	mov    %rax,%rsi
0xb26:	48 8b d1             	mov    %rcx,%rdx
0xb29:	49 8b c8             	mov    %r8,%rcx
0xb2c:	4d 8b c1             	mov    %r9,%r8
0xb2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb33:	e8 00 00 00 00       	callq  0xb38
0xb38:	90                   	nop
0xb39:	e9 12 00 00 00       	jmpq   0xb50
0xb3e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb42:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0xb46:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0xb4d:	49 8b c0             	mov    %r8,%rax
0xb50:	48 89 45 20          	mov    %rax,0x20(%rbp)
0xb54:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb58:	e8 00 00 00 00       	callq  0xb5d
0xb5d:	90                   	nop
0xb5e:	90                   	nop
0xb5f:	e8 00 00 00 00       	callq  0xb64
0xb64:	90                   	nop
0xb65:	83 f8 00             	cmp    $0x0,%eax
0xb68:	0f 84 40 00 00 00    	je     0xbae
0xb6e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xb72:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0xb76:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0xb7a:	85 07                	test   %eax,(%rdi)
0xb7c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0xb80:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0xb84:	83 e0 ff             	and    $0xffffffff,%eax
0xb87:	48 8b f8             	mov    %rax,%rdi
0xb8a:	48 8b f2             	mov    %rdx,%rsi
0xb8d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0xb91:	e8 00 00 00 00       	callq  0xb96
0xb96:	90                   	nop
0xb97:	e9 12 00 00 00       	jmpq   0xbae
0xb9c:	48 8b fe             	mov    %rsi,%rdi
0xb9f:	e8 00 00 00 00       	callq  0xba4
0xba4:	90                   	nop
0xba5:	48 8b f8             	mov    %rax,%rdi
0xba8:	e8 00 00 00 00       	callq  0xbad
0xbad:	90                   	nop
0xbae:	48 8b 45 20          	mov    0x20(%rbp),%rax
0xbb2:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0xbb6:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0xbba:	40 89 70 10          	rex mov %esi,0x10(%rax)
0xbbe:	48 89 18             	mov    %rbx,(%rax)
0xbc1:	48 89 04 24          	mov    %rax,(%rsp)
0xbc5:	48 83 ec 10          	sub    $0x10,%rsp
0xbc9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xbce:	4c 89 1c 24          	mov    %r11,(%rsp)
0xbd2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xbd8:	48 83 ec 10          	sub    $0x10,%rsp
0xbdc:	44 89 1c 24          	mov    %r11d,(%rsp)
0xbe0:	41 bb 63 00 00 00    	mov    $0x63,%r11d
0xbe6:	48 83 ec 10          	sub    $0x10,%rsp
0xbea:	44 89 1c 24          	mov    %r11d,(%rsp)
0xbee:	90                   	nop
0xbef:	90                   	nop
0xbf0:	e8 00 00 00 00       	callq  0xbf5
0xbf5:	90                   	nop
0xbf6:	48 83 ec 10          	sub    $0x10,%rsp
0xbfa:	48 89 04 24          	mov    %rax,(%rsp)
0xbfe:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xc03:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xc08:	48 8b 14 24          	mov    (%rsp),%rdx
0xc0c:	48 8b ca             	mov    %rdx,%rcx
0xc0f:	48 8b c7             	mov    %rdi,%rax
0xc12:	48 63 40 10          	movslq 0x10(%rax),%rax
0xc16:	3b f0                	cmp    %eax,%esi
0xc18:	0f 83 b4 00 00 00    	jae    0xcd2
0xc1e:	4d 33 db             	xor    %r11,%r11
0xc21:	49 3b cb             	cmp    %r11,%rcx
0xc24:	0f 84 b8 00 00 00    	je     0xce2
0xc2a:	48 8b c7             	mov    %rdi,%rax
0xc2d:	48 8b 00             	mov    (%rax),%rax
0xc30:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xc34:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xc38:	4d 33 db             	xor    %r11,%r11
0xc3b:	49 3b cb             	cmp    %r11,%rcx
0xc3e:	0f 85 0a 00 00 00    	jne    0xc4e
0xc44:	bb 00 00 00 00       	mov    $0x0,%ebx
0xc49:	e9 66 00 00 00       	jmpq   0xcb4
0xc4e:	48 8b d1             	mov    %rcx,%rdx
0xc51:	48 8b 1a             	mov    (%rdx),%rbx
0xc54:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xc58:	48 3b d0             	cmp    %rax,%rdx
0xc5b:	0f 85 0a 00 00 00    	jne    0xc6b
0xc61:	bb 01 00 00 00       	mov    $0x1,%ebx
0xc66:	e9 49 00 00 00       	jmpq   0xcb4
0xc6b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xc72:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xc76:	49 8b c0             	mov    %r8,%rax
0xc79:	99                   	cltd   
0xc7a:	41 f7 f9             	idiv   %r9d
0xc7d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xc81:	03 d0                	add    %eax,%edx
0xc83:	48 8b c3             	mov    %rbx,%rax
0xc86:	48 63 d2             	movslq %edx,%rdx
0xc89:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xc8e:	48 63 c0             	movslq %eax,%rax
0xc91:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xc96:	4d 63 c0             	movslq %r8d,%r8
0xc99:	49 3b c0             	cmp    %r8,%rax
0xc9c:	0f 85 0a 00 00 00    	jne    0xcac
0xca2:	b8 01 00 00 00       	mov    $0x1,%eax
0xca7:	e9 05 00 00 00       	jmpq   0xcb1
0xcac:	b8 00 00 00 00       	mov    $0x0,%eax
0xcb1:	48 8b d8             	mov    %rax,%rbx
0xcb4:	83 fb 00             	cmp    $0x0,%ebx
0xcb7:	0f 85 25 00 00 00    	jne    0xce2
0xcbd:	48 8b f1             	mov    %rcx,%rsi
0xcc0:	90                   	nop
0xcc1:	90                   	nop
0xcc2:	90                   	nop
0xcc3:	e8 00 00 00 00       	callq  0xcc8
0xcc8:	90                   	nop
0xcc9:	48 8b f8             	mov    %rax,%rdi
0xccc:	e8 00 00 00 00       	callq  0xcd1
0xcd1:	90                   	nop
0xcd2:	90                   	nop
0xcd3:	e8 00 00 00 00       	callq  0xcd8
0xcd8:	90                   	nop
0xcd9:	48 8b f8             	mov    %rax,%rdi
0xcdc:	e8 00 00 00 00       	callq  0xce1
0xce1:	90                   	nop
0xce2:	48 63 f6             	movslq %esi,%rsi
0xce5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xcea:	48 83 c4 30          	add    $0x30,%rsp
0xcee:	bf 31 00 00 00       	mov    $0x31,%edi
0xcf3:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0xcf8:	48 8b 15 89 f2 ff ff 	mov    -0xd77(%rip),%rdx        # 0xffffff88
0xcff:	b9 27 00 00 00       	mov    $0x27,%ecx
0xd04:	48 8b c6             	mov    %rsi,%rax
0xd07:	48 8b 00             	mov    (%rax),%rax
0xd0a:	48 63 ff             	movslq %edi,%rdi
0xd0d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd12:	48 8b fa             	mov    %rdx,%rdi
0xd15:	48 8b d1             	mov    %rcx,%rdx
0xd18:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd1d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd21:	90                   	nop
0xd22:	90                   	nop
0xd23:	e8 00 00 00 00       	callq  0xd28
0xd28:	90                   	nop
0xd29:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd2d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd31:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xd36:	ff d0                	callq  *%rax
0xd38:	90                   	nop
0xd39:	48 83 ec 10          	sub    $0x10,%rsp
0xd3d:	48 89 04 24          	mov    %rax,(%rsp)
0xd41:	48 83 c4 10          	add    $0x10,%rsp
0xd45:	48 8b 3d 44 f2 ff ff 	mov    -0xdbc(%rip),%rdi        # 0xffffff90
0xd4c:	be 18 00 00 00       	mov    $0x18,%esi
0xd51:	48 63 f6             	movslq %esi,%rsi
0xd54:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xd58:	48 83 ec 10          	sub    $0x10,%rsp
0xd5c:	48 89 04 24          	mov    %rax,(%rsp)
0xd60:	4c 8b 1d 31 f2 ff ff 	mov    -0xdcf(%rip),%r11        # 0xffffff98
0xd67:	48 83 ec 10          	sub    $0x10,%rsp
0xd6b:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd6f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0xd75:	48 83 ec 10          	sub    $0x10,%rsp
0xd79:	44 89 1c 24          	mov    %r11d,(%rsp)
0xd7d:	40 8b 34 24          	rex mov (%rsp),%esi
0xd81:	48 8b 3d 18 f2 ff ff 	mov    -0xde8(%rip),%rdi        # 0xffffffa0
0xd88:	83 fe 00             	cmp    $0x0,%esi
0xd8b:	0f 8c fb 00 00 00    	jl     0xe8c
0xd91:	85 07                	test   %eax,(%rdi)
0xd93:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0xd9a:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0xd9e:	48 8b 3d 03 f2 ff ff 	mov    -0xdfd(%rip),%rdi        # 0xffffffa8
0xda5:	48 8b 43 30          	mov    0x30(%rbx),%rax
0xda9:	48 8b 50 70          	mov    0x70(%rax),%rdx
0xdad:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0xdb4:	48 8b 50 48          	mov    0x48(%rax),%rdx
0xdb8:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xdbc:	48 63 c0             	movslq %eax,%rax
0xdbf:	48 63 d6             	movslq %esi,%rdx
0xdc2:	48 0f af c2          	imul   %rdx,%rax
0xdc6:	48 83 c0 18          	add    $0x18,%rax
0xdca:	48 83 c0 07          	add    $0x7,%rax
0xdce:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xdd5:	00 00 00 
0xdd8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0xddf:	ff ff ff 
0xde2:	49 33 d3             	xor    %r11,%rdx
0xde5:	48 23 c2             	and    %rdx,%rax
0xde8:	49 8b d6             	mov    %r14,%rdx
0xdeb:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0xdef:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0xdf6:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0xdfd:	49 8b d0             	mov    %r8,%rdx
0xe00:	48 03 d0             	add    %rax,%rdx
0xe03:	4c 8b d2             	mov    %rdx,%r10
0xe06:	4d 3b d1             	cmp    %r9,%r10
0xe09:	0f 86 1f 00 00 00    	jbe    0xe2e
0xe0f:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0xe13:	48 8b f0             	mov    %rax,%rsi
0xe16:	48 8b d1             	mov    %rcx,%rdx
0xe19:	49 8b c8             	mov    %r8,%rcx
0xe1c:	4d 8b c1             	mov    %r9,%r8
0xe1f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xe23:	e8 00 00 00 00       	callq  0xe28
0xe28:	90                   	nop
0xe29:	e9 12 00 00 00       	jmpq   0xe40
0xe2e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xe32:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0xe36:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0xe3d:	49 8b c0             	mov    %r8,%rax
0xe40:	48 89 45 20          	mov    %rax,0x20(%rbp)
0xe44:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xe48:	e8 00 00 00 00       	callq  0xe4d
0xe4d:	90                   	nop
0xe4e:	90                   	nop
0xe4f:	e8 00 00 00 00       	callq  0xe54
0xe54:	90                   	nop
0xe55:	83 f8 00             	cmp    $0x0,%eax
0xe58:	0f 84 40 00 00 00    	je     0xe9e
0xe5e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xe62:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0xe66:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0xe6a:	85 07                	test   %eax,(%rdi)
0xe6c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0xe70:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0xe74:	83 e0 ff             	and    $0xffffffff,%eax
0xe77:	48 8b f8             	mov    %rax,%rdi
0xe7a:	48 8b f2             	mov    %rdx,%rsi
0xe7d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0xe81:	e8 00 00 00 00       	callq  0xe86
0xe86:	90                   	nop
0xe87:	e9 12 00 00 00       	jmpq   0xe9e
0xe8c:	48 8b fe             	mov    %rsi,%rdi
0xe8f:	e8 00 00 00 00       	callq  0xe94
0xe94:	90                   	nop
0xe95:	48 8b f8             	mov    %rax,%rdi
0xe98:	e8 00 00 00 00       	callq  0xe9d
0xe9d:	90                   	nop
0xe9e:	48 8b 45 20          	mov    0x20(%rbp),%rax
0xea2:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0xea6:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0xeaa:	40 89 70 10          	rex mov %esi,0x10(%rax)
0xeae:	48 89 18             	mov    %rbx,(%rax)
0xeb1:	48 89 04 24          	mov    %rax,(%rsp)
0xeb5:	48 83 ec 10          	sub    $0x10,%rsp
0xeb9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xebe:	4c 89 1c 24          	mov    %r11,(%rsp)
0xec2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xec8:	48 83 ec 10          	sub    $0x10,%rsp
0xecc:	44 89 1c 24          	mov    %r11d,(%rsp)
0xed0:	41 bb cd cc 44 c1    	mov    $0xc144cccd,%r11d
0xed6:	48 83 ec 10          	sub    $0x10,%rsp
0xeda:	44 89 1c 24          	mov    %r11d,(%rsp)
0xede:	90                   	nop
0xedf:	90                   	nop
0xee0:	e8 00 00 00 00       	callq  0xee5
0xee5:	90                   	nop
0xee6:	48 83 ec 10          	sub    $0x10,%rsp
0xeea:	48 89 04 24          	mov    %rax,(%rsp)
0xeee:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xef3:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xef8:	48 8b 14 24          	mov    (%rsp),%rdx
0xefc:	48 8b ca             	mov    %rdx,%rcx
0xeff:	48 8b c7             	mov    %rdi,%rax
0xf02:	48 63 40 10          	movslq 0x10(%rax),%rax
0xf06:	3b f0                	cmp    %eax,%esi
0xf08:	0f 83 b4 00 00 00    	jae    0xfc2
0xf0e:	4d 33 db             	xor    %r11,%r11
0xf11:	49 3b cb             	cmp    %r11,%rcx
0xf14:	0f 84 b8 00 00 00    	je     0xfd2
0xf1a:	48 8b c7             	mov    %rdi,%rax
0xf1d:	48 8b 00             	mov    (%rax),%rax
0xf20:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xf24:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xf28:	4d 33 db             	xor    %r11,%r11
0xf2b:	49 3b cb             	cmp    %r11,%rcx
0xf2e:	0f 85 0a 00 00 00    	jne    0xf3e
0xf34:	bb 00 00 00 00       	mov    $0x0,%ebx
0xf39:	e9 66 00 00 00       	jmpq   0xfa4
0xf3e:	48 8b d1             	mov    %rcx,%rdx
0xf41:	48 8b 1a             	mov    (%rdx),%rbx
0xf44:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xf48:	48 3b d0             	cmp    %rax,%rdx
0xf4b:	0f 85 0a 00 00 00    	jne    0xf5b
0xf51:	bb 01 00 00 00       	mov    $0x1,%ebx
0xf56:	e9 49 00 00 00       	jmpq   0xfa4
0xf5b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xf62:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xf66:	49 8b c0             	mov    %r8,%rax
0xf69:	99                   	cltd   
0xf6a:	41 f7 f9             	idiv   %r9d
0xf6d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xf71:	03 d0                	add    %eax,%edx
0xf73:	48 8b c3             	mov    %rbx,%rax
0xf76:	48 63 d2             	movslq %edx,%rdx
0xf79:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xf7e:	48 63 c0             	movslq %eax,%rax
0xf81:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xf86:	4d 63 c0             	movslq %r8d,%r8
0xf89:	49 3b c0             	cmp    %r8,%rax
0xf8c:	0f 85 0a 00 00 00    	jne    0xf9c
0xf92:	b8 01 00 00 00       	mov    $0x1,%eax
0xf97:	e9 05 00 00 00       	jmpq   0xfa1
0xf9c:	b8 00 00 00 00       	mov    $0x0,%eax
0xfa1:	48 8b d8             	mov    %rax,%rbx
0xfa4:	83 fb 00             	cmp    $0x0,%ebx
0xfa7:	0f 85 25 00 00 00    	jne    0xfd2
0xfad:	48 8b f1             	mov    %rcx,%rsi
0xfb0:	90                   	nop
0xfb1:	90                   	nop
0xfb2:	90                   	nop
0xfb3:	e8 00 00 00 00       	callq  0xfb8
0xfb8:	90                   	nop
0xfb9:	48 8b f8             	mov    %rax,%rdi
0xfbc:	e8 00 00 00 00       	callq  0xfc1
0xfc1:	90                   	nop
0xfc2:	90                   	nop
0xfc3:	e8 00 00 00 00       	callq  0xfc8
0xfc8:	90                   	nop
0xfc9:	48 8b f8             	mov    %rax,%rdi
0xfcc:	e8 00 00 00 00       	callq  0xfd1
0xfd1:	90                   	nop
0xfd2:	48 63 f6             	movslq %esi,%rsi
0xfd5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xfda:	48 83 c4 30          	add    $0x30,%rsp
0xfde:	bf 31 00 00 00       	mov    $0x31,%edi
0xfe3:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0xfe8:	48 8b 15 c1 ef ff ff 	mov    -0x103f(%rip),%rdx        # 0xffffffb0
0xfef:	b9 32 00 00 00       	mov    $0x32,%ecx
0xff4:	48 8b c6             	mov    %rsi,%rax
0xff7:	48 8b 00             	mov    (%rax),%rax
0xffa:	48 63 ff             	movslq %edi,%rdi
0xffd:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1002:	48 8b fa             	mov    %rdx,%rdi
0x1005:	48 8b d1             	mov    %rcx,%rdx
0x1008:	b9 03 00 00 00       	mov    $0x3,%ecx
0x100d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1011:	90                   	nop
0x1012:	90                   	nop
0x1013:	e8 00 00 00 00       	callq  0x1018
0x1018:	90                   	nop
0x1019:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x101d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1021:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1026:	ff d0                	callq  *%rax
0x1028:	90                   	nop
0x1029:	48 83 ec 10          	sub    $0x10,%rsp
0x102d:	48 89 04 24          	mov    %rax,(%rsp)
0x1031:	48 83 c4 10          	add    $0x10,%rsp
0x1035:	48 8b 3d 7c ef ff ff 	mov    -0x1084(%rip),%rdi        # 0xffffffb8
0x103c:	be 18 00 00 00       	mov    $0x18,%esi
0x1041:	48 63 f6             	movslq %esi,%rsi
0x1044:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1048:	48 83 ec 10          	sub    $0x10,%rsp
0x104c:	48 89 04 24          	mov    %rax,(%rsp)
0x1050:	4c 8b 1d 69 ef ff ff 	mov    -0x1097(%rip),%r11        # 0xffffffc0
0x1057:	48 83 ec 10          	sub    $0x10,%rsp
0x105b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x105f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x1065:	48 83 ec 10          	sub    $0x10,%rsp
0x1069:	44 89 1c 24          	mov    %r11d,(%rsp)
0x106d:	40 8b 34 24          	rex mov (%rsp),%esi
0x1071:	48 8b 3d 50 ef ff ff 	mov    -0x10b0(%rip),%rdi        # 0xffffffc8
0x1078:	83 fe 00             	cmp    $0x0,%esi
0x107b:	0f 8c fb 00 00 00    	jl     0x117c
0x1081:	85 07                	test   %eax,(%rdi)
0x1083:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x108a:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x108e:	48 8b 3d 3b ef ff ff 	mov    -0x10c5(%rip),%rdi        # 0xffffffd0
0x1095:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x1099:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x109d:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x10a4:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x10a8:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x10ac:	48 63 c0             	movslq %eax,%rax
0x10af:	48 63 d6             	movslq %esi,%rdx
0x10b2:	48 0f af c2          	imul   %rdx,%rax
0x10b6:	48 83 c0 18          	add    $0x18,%rax
0x10ba:	48 83 c0 07          	add    $0x7,%rax
0x10be:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x10c5:	00 00 00 
0x10c8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x10cf:	ff ff ff 
0x10d2:	49 33 d3             	xor    %r11,%rdx
0x10d5:	48 23 c2             	and    %rdx,%rax
0x10d8:	49 8b d6             	mov    %r14,%rdx
0x10db:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x10df:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x10e6:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x10ed:	49 8b d0             	mov    %r8,%rdx
0x10f0:	48 03 d0             	add    %rax,%rdx
0x10f3:	4c 8b d2             	mov    %rdx,%r10
0x10f6:	4d 3b d1             	cmp    %r9,%r10
0x10f9:	0f 86 1f 00 00 00    	jbe    0x111e
0x10ff:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1103:	48 8b f0             	mov    %rax,%rsi
0x1106:	48 8b d1             	mov    %rcx,%rdx
0x1109:	49 8b c8             	mov    %r8,%rcx
0x110c:	4d 8b c1             	mov    %r9,%r8
0x110f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1113:	e8 00 00 00 00       	callq  0x1118
0x1118:	90                   	nop
0x1119:	e9 12 00 00 00       	jmpq   0x1130
0x111e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1122:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1126:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x112d:	49 8b c0             	mov    %r8,%rax
0x1130:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1134:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1138:	e8 00 00 00 00       	callq  0x113d
0x113d:	90                   	nop
0x113e:	90                   	nop
0x113f:	e8 00 00 00 00       	callq  0x1144
0x1144:	90                   	nop
0x1145:	83 f8 00             	cmp    $0x0,%eax
0x1148:	0f 84 40 00 00 00    	je     0x118e
0x114e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1152:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1156:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x115a:	85 07                	test   %eax,(%rdi)
0x115c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x1160:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x1164:	83 e0 ff             	and    $0xffffffff,%eax
0x1167:	48 8b f8             	mov    %rax,%rdi
0x116a:	48 8b f2             	mov    %rdx,%rsi
0x116d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1171:	e8 00 00 00 00       	callq  0x1176
0x1176:	90                   	nop
0x1177:	e9 12 00 00 00       	jmpq   0x118e
0x117c:	48 8b fe             	mov    %rsi,%rdi
0x117f:	e8 00 00 00 00       	callq  0x1184
0x1184:	90                   	nop
0x1185:	48 8b f8             	mov    %rax,%rdi
0x1188:	e8 00 00 00 00       	callq  0x118d
0x118d:	90                   	nop
0x118e:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1192:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1196:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x119a:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x119e:	48 89 18             	mov    %rbx,(%rax)
0x11a1:	48 89 04 24          	mov    %rax,(%rsp)
0x11a5:	48 83 ec 10          	sub    $0x10,%rsp
0x11a9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x11ae:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11b2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x11b8:	48 83 ec 10          	sub    $0x10,%rsp
0x11bc:	44 89 1c 24          	mov    %r11d,(%rsp)
0x11c0:	49 bb ff ff ff ff ff 	movabs $0x7fffffffffffffff,%r11
0x11c7:	ff ff 7f 
0x11ca:	48 83 ec 20          	sub    $0x20,%rsp
0x11ce:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x11d3:	41 bb 00 00 00 80    	mov    $0x80000000,%r11d
0x11d9:	48 83 ec 10          	sub    $0x10,%rsp
0x11dd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x11e1:	4c 8b 1d f0 ed ff ff 	mov    -0x1210(%rip),%r11        # 0xffffffd8
0x11e8:	48 83 ec 10          	sub    $0x10,%rsp
0x11ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11f0:	e8 00 00 00 00       	callq  0x11f5
0x11f5:	90                   	nop
0x11f6:	48 83 ec 10          	sub    $0x10,%rsp
0x11fa:	48 89 04 24          	mov    %rax,(%rsp)
0x11fe:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1203:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x1208:	48 8b 14 24          	mov    (%rsp),%rdx
0x120c:	48 8b ca             	mov    %rdx,%rcx
0x120f:	48 8b c7             	mov    %rdi,%rax
0x1212:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1216:	3b f0                	cmp    %eax,%esi
0x1218:	0f 83 b4 00 00 00    	jae    0x12d2
0x121e:	4d 33 db             	xor    %r11,%r11
0x1221:	49 3b cb             	cmp    %r11,%rcx
0x1224:	0f 84 b8 00 00 00    	je     0x12e2
0x122a:	48 8b c7             	mov    %rdi,%rax
0x122d:	48 8b 00             	mov    (%rax),%rax
0x1230:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x1234:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x1238:	4d 33 db             	xor    %r11,%r11
0x123b:	49 3b cb             	cmp    %r11,%rcx
0x123e:	0f 85 0a 00 00 00    	jne    0x124e
0x1244:	bb 00 00 00 00       	mov    $0x0,%ebx
0x1249:	e9 66 00 00 00       	jmpq   0x12b4
0x124e:	48 8b d1             	mov    %rcx,%rdx
0x1251:	48 8b 1a             	mov    (%rdx),%rbx
0x1254:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x1258:	48 3b d0             	cmp    %rax,%rdx
0x125b:	0f 85 0a 00 00 00    	jne    0x126b
0x1261:	bb 01 00 00 00       	mov    $0x1,%ebx
0x1266:	e9 49 00 00 00       	jmpq   0x12b4
0x126b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x1272:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x1276:	49 8b c0             	mov    %r8,%rax
0x1279:	99                   	cltd   
0x127a:	41 f7 f9             	idiv   %r9d
0x127d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1281:	03 d0                	add    %eax,%edx
0x1283:	48 8b c3             	mov    %rbx,%rax
0x1286:	48 63 d2             	movslq %edx,%rdx
0x1289:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x128e:	48 63 c0             	movslq %eax,%rax
0x1291:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x1296:	4d 63 c0             	movslq %r8d,%r8
0x1299:	49 3b c0             	cmp    %r8,%rax
0x129c:	0f 85 0a 00 00 00    	jne    0x12ac
0x12a2:	b8 01 00 00 00       	mov    $0x1,%eax
0x12a7:	e9 05 00 00 00       	jmpq   0x12b1
0x12ac:	b8 00 00 00 00       	mov    $0x0,%eax
0x12b1:	48 8b d8             	mov    %rax,%rbx
0x12b4:	83 fb 00             	cmp    $0x0,%ebx
0x12b7:	0f 85 25 00 00 00    	jne    0x12e2
0x12bd:	48 8b f1             	mov    %rcx,%rsi
0x12c0:	90                   	nop
0x12c1:	90                   	nop
0x12c2:	90                   	nop
0x12c3:	e8 00 00 00 00       	callq  0x12c8
0x12c8:	90                   	nop
0x12c9:	48 8b f8             	mov    %rax,%rdi
0x12cc:	e8 00 00 00 00       	callq  0x12d1
0x12d1:	90                   	nop
0x12d2:	90                   	nop
0x12d3:	e8 00 00 00 00       	callq  0x12d8
0x12d8:	90                   	nop
0x12d9:	48 8b f8             	mov    %rax,%rdi
0x12dc:	e8 00 00 00 00       	callq  0x12e1
0x12e1:	90                   	nop
0x12e2:	48 63 f6             	movslq %esi,%rsi
0x12e5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x12ea:	48 83 c4 30          	add    $0x30,%rsp
0x12ee:	bf 31 00 00 00       	mov    $0x31,%edi
0x12f3:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x12f8:	48 8b 15 e1 ec ff ff 	mov    -0x131f(%rip),%rdx        # 0xffffffe0
0x12ff:	b9 3d 00 00 00       	mov    $0x3d,%ecx
0x1304:	48 8b c6             	mov    %rsi,%rax
0x1307:	48 8b 00             	mov    (%rax),%rax
0x130a:	48 63 ff             	movslq %edi,%rdi
0x130d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1312:	48 8b fa             	mov    %rdx,%rdi
0x1315:	48 8b d1             	mov    %rcx,%rdx
0x1318:	b9 03 00 00 00       	mov    $0x3,%ecx
0x131d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1321:	90                   	nop
0x1322:	90                   	nop
0x1323:	e8 00 00 00 00       	callq  0x1328
0x1328:	90                   	nop
0x1329:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x132d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1331:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1336:	ff d0                	callq  *%rax
0x1338:	90                   	nop
0x1339:	48 83 ec 10          	sub    $0x10,%rsp
0x133d:	48 89 04 24          	mov    %rax,(%rsp)
0x1341:	48 83 c4 10          	add    $0x10,%rsp
0x1345:	48 83 c5 40          	add    $0x40,%rbp
0x1349:	c9                   	leaveq 
0x134a:	c2 10 00             	retq   $0x10

0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 a0 00 00          	enterq $0xa0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 a8 e0 ff 	mov    %rax,-0x1f58(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d c1 fd ff ff 	mov    %r11,-0x23f(%rip)        # 0xfffffde8
0x27:	48 8b 3d c2 fd ff ff 	mov    -0x23e(%rip),%rdi        # 0xfffffdf0
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
0x53:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x57:	48 83 ec 10          	sub    $0x10,%rsp
0x5b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x63:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x67:	89 04 24             	mov    %eax,(%rsp)
0x6a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x6e:	b8 00 00 00 00       	mov    $0x0,%eax
0x73:	48 83 c4 10          	add    $0x10,%rsp
0x77:	44 3b d8             	cmp    %eax,%r11d
0x7a:	74 33                	je     0xaf
0x7c:	48 8b 3d 75 fd ff ff 	mov    -0x28b(%rip),%rdi        # 0xfffffdf8
0x83:	be 00 00 00 00       	mov    $0x0,%esi
0x88:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8c:	48 8b c8             	mov    %rax,%rcx
0x8f:	48 63 f6             	movslq %esi,%rsi
0x92:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x97:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x9d:	0f 8d 07 00 00 00    	jge    0xaa
0xa3:	83 c1 01             	add    $0x1,%ecx
0xa6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xaa:	e9 d6 01 00 00       	jmpq   0x285
0xaf:	48 8b 3d 4a fd ff ff 	mov    -0x2b6(%rip),%rdi        # 0xfffffe00
0xb6:	be 01 00 00 00       	mov    $0x1,%esi
0xbb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbf:	48 8b c8             	mov    %rax,%rcx
0xc2:	48 63 f6             	movslq %esi,%rsi
0xc5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xca:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xd0:	0f 8d 07 00 00 00    	jge    0xdd
0xd6:	83 c1 01             	add    $0x1,%ecx
0xd9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xdd:	48 8b 3d 24 fd ff ff 	mov    -0x2dc(%rip),%rdi        # 0xfffffe08
0xe4:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xe8:	48 8b 35 21 fd ff ff 	mov    -0x2df(%rip),%rsi        # 0xfffffe10
0xef:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xf3:	49 8b ce             	mov    %r14,%rcx
0xf6:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xfa:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x101:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x108:	48 8b d9             	mov    %rcx,%rbx
0x10b:	48 03 da             	add    %rdx,%rbx
0x10e:	4c 8b cb             	mov    %rbx,%r9
0x111:	4d 3b c8             	cmp    %r8,%r9
0x114:	0f 86 14 00 00 00    	jbe    0x12e
0x11a:	48 8b fe             	mov    %rsi,%rdi
0x11d:	48 8b f2             	mov    %rdx,%rsi
0x120:	48 8b d0             	mov    %rax,%rdx
0x123:	e8 00 00 00 00       	callq  0x128
0x128:	90                   	nop
0x129:	e9 0a 00 00 00       	jmpq   0x138
0x12e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x135:	48 8b c1             	mov    %rcx,%rax
0x138:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x13c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x140:	90                   	nop
0x141:	90                   	nop
0x142:	90                   	nop
0x143:	e8 00 00 00 00       	callq  0x148
0x148:	90                   	nop
0x149:	90                   	nop
0x14a:	90                   	nop
0x14b:	e8 00 00 00 00       	callq  0x150
0x150:	90                   	nop
0x151:	83 f8 00             	cmp    $0x0,%eax
0x154:	0f 84 27 00 00 00    	je     0x181
0x15a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x15e:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x162:	85 06                	test   %eax,(%rsi)
0x164:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x168:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x16c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x170:	83 e2 ff             	and    $0xffffffff,%edx
0x173:	48 8b fa             	mov    %rdx,%rdi
0x176:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x17a:	90                   	nop
0x17b:	e8 00 00 00 00       	callq  0x180
0x180:	90                   	nop
0x181:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x185:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x189:	48 89 38             	mov    %rdi,(%rax)
0x18c:	48 83 ec 10          	sub    $0x10,%rsp
0x190:	48 89 04 24          	mov    %rax,(%rsp)
0x194:	48 83 ec 10          	sub    $0x10,%rsp
0x198:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x19d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1a1:	4c 8b 1d 70 fc ff ff 	mov    -0x390(%rip),%r11        # 0xfffffe18
0x1a8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ac:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1b0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1b5:	41 85 03             	test   %eax,(%r11)
0x1b8:	e8 00 00 00 00       	callq  0x1bd
0x1bd:	90                   	nop
0x1be:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1c2:	4d 33 db             	xor    %r11,%r11
0x1c5:	49 3b fb             	cmp    %r11,%rdi
0x1c8:	0f 84 62 00 00 00    	je     0x230
0x1ce:	48 8b 0d 4b fc ff ff 	mov    -0x3b5(%rip),%rcx        # 0xfffffe20
0x1d5:	4d 33 db             	xor    %r11,%r11
0x1d8:	49 3b fb             	cmp    %r11,%rdi
0x1db:	0f 84 41 00 00 00    	je     0x222
0x1e1:	48 8b 1f             	mov    (%rdi),%rbx
0x1e4:	48 3b d9             	cmp    %rcx,%rbx
0x1e7:	0f 84 2b 00 00 00    	je     0x218
0x1ed:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x1f1:	b8 06 00 00 00       	mov    $0x6,%eax
0x1f6:	99                   	cltd   
0x1f7:	41 f7 f8             	idiv   %r8d
0x1fa:	4c 8b ca             	mov    %rdx,%r9
0x1fd:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x201:	45 03 c8             	add    %r8d,%r9d
0x204:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x209:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x20e:	41 83 f9 06          	cmp    $0x6,%r9d
0x212:	0f 85 0a 00 00 00    	jne    0x222
0x218:	be 01 00 00 00       	mov    $0x1,%esi
0x21d:	e9 05 00 00 00       	jmpq   0x227
0x222:	be 00 00 00 00       	mov    $0x0,%esi
0x227:	83 fe 00             	cmp    $0x0,%esi
0x22a:	0f 84 44 00 00 00    	je     0x274
0x230:	48 8b f4             	mov    %rsp,%rsi
0x233:	48 8b d5             	mov    %rbp,%rdx
0x236:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x236
0x23d:	48 8b 05 e4 fb ff ff 	mov    -0x41c(%rip),%rax        # 0xfffffe28
0x244:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x248:	48 8b c1             	mov    %rcx,%rax
0x24b:	48 2b c3             	sub    %rbx,%rax
0x24e:	b9 01 00 00 00       	mov    $0x1,%ecx
0x253:	48 d3 e0             	shl    %cl,%rax
0x256:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x25d:	00 00 00 
0x260:	49 0b c3             	or     %r11,%rax
0x263:	48 8b c8             	mov    %rax,%rcx
0x266:	90                   	nop
0x267:	90                   	nop
0x268:	90                   	nop
0x269:	e8 00 00 00 00       	callq  0x26e
0x26e:	90                   	nop
0x26f:	e9 0d 00 00 00       	jmpq   0x281
0x274:	48 8b 3d b5 fb ff ff 	mov    -0x44b(%rip),%rdi        # 0xfffffe30
0x27b:	e8 00 00 00 00       	callq  0x280
0x280:	90                   	nop
0x281:	48 83 c4 10          	add    $0x10,%rsp
0x285:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x289:	48 83 ec 10          	sub    $0x10,%rsp
0x28d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x291:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x297:	48 83 ec 10          	sub    $0x10,%rsp
0x29b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x29f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2a4:	40 8b 34 24          	rex mov (%rsp),%esi
0x2a8:	48 8b c7             	mov    %rdi,%rax
0x2ab:	48 63 40 10          	movslq 0x10(%rax),%rax
0x2af:	3b f0                	cmp    %eax,%esi
0x2b1:	0f 82 0f 00 00 00    	jb     0x2c6
0x2b7:	e8 00 00 00 00       	callq  0x2bc
0x2bc:	90                   	nop
0x2bd:	48 8b f8             	mov    %rax,%rdi
0x2c0:	e8 00 00 00 00       	callq  0x2c5
0x2c5:	90                   	nop
0x2c6:	48 63 f6             	movslq %esi,%rsi
0x2c9:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x2ce:	48 83 c4 10          	add    $0x10,%rsp
0x2d2:	48 89 04 24          	mov    %rax,(%rsp)
0x2d6:	4c 8b 1d 5b fb ff ff 	mov    -0x4a5(%rip),%r11        # 0xfffffe38
0x2dd:	48 83 ec 10          	sub    $0x10,%rsp
0x2e1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2e5:	90                   	nop
0x2e6:	90                   	nop
0x2e7:	90                   	nop
0x2e8:	e8 00 00 00 00       	callq  0x2ed
0x2ed:	90                   	nop
0x2ee:	48 83 ec 10          	sub    $0x10,%rsp
0x2f2:	48 89 04 24          	mov    %rax,(%rsp)
0x2f6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2fa:	48 83 c4 10          	add    $0x10,%rsp
0x2fe:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x302:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x306:	48 83 ec 10          	sub    $0x10,%rsp
0x30a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x30e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x312:	41 85 03             	test   %eax,(%r11)
0x315:	48 8b 3c 24          	mov    (%rsp),%rdi
0x319:	e8 00 00 00 00       	callq  0x31e
0x31e:	90                   	nop
0x31f:	48 83 ec 10          	sub    $0x10,%rsp
0x323:	48 89 04 24          	mov    %rax,(%rsp)
0x327:	4c 8b 1c 24          	mov    (%rsp),%r11
0x32b:	48 83 c4 10          	add    $0x10,%rsp
0x32f:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x333:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x337:	48 83 ec 10          	sub    $0x10,%rsp
0x33b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x33f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x343:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x347:	89 04 24             	mov    %eax,(%rsp)
0x34a:	40 8b 34 24          	rex mov (%rsp),%esi
0x34e:	48 8b 3d eb fa ff ff 	mov    -0x515(%rip),%rdi        # 0xfffffe40
0x355:	83 fe 00             	cmp    $0x0,%esi
0x358:	0f 8c fb 00 00 00    	jl     0x459
0x35e:	85 07                	test   %eax,(%rdi)
0x360:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x367:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x36b:	48 8b 3d d6 fa ff ff 	mov    -0x52a(%rip),%rdi        # 0xfffffe48
0x372:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x376:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x37a:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x381:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x385:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x389:	48 63 c0             	movslq %eax,%rax
0x38c:	48 63 d6             	movslq %esi,%rdx
0x38f:	48 0f af c2          	imul   %rdx,%rax
0x393:	48 83 c0 18          	add    $0x18,%rax
0x397:	48 83 c0 07          	add    $0x7,%rax
0x39b:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x3a2:	00 00 00 
0x3a5:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x3ac:	ff ff ff 
0x3af:	49 33 d3             	xor    %r11,%rdx
0x3b2:	48 23 c2             	and    %rdx,%rax
0x3b5:	49 8b d6             	mov    %r14,%rdx
0x3b8:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x3bc:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x3c3:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x3ca:	49 8b d0             	mov    %r8,%rdx
0x3cd:	48 03 d0             	add    %rax,%rdx
0x3d0:	4c 8b d2             	mov    %rdx,%r10
0x3d3:	4d 3b d1             	cmp    %r9,%r10
0x3d6:	0f 86 1f 00 00 00    	jbe    0x3fb
0x3dc:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x3e0:	48 8b f0             	mov    %rax,%rsi
0x3e3:	48 8b d1             	mov    %rcx,%rdx
0x3e6:	49 8b c8             	mov    %r8,%rcx
0x3e9:	4d 8b c1             	mov    %r9,%r8
0x3ec:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3f0:	e8 00 00 00 00       	callq  0x3f5
0x3f5:	90                   	nop
0x3f6:	e9 12 00 00 00       	jmpq   0x40d
0x3fb:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3ff:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x403:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x40a:	49 8b c0             	mov    %r8,%rax
0x40d:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x411:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x415:	e8 00 00 00 00       	callq  0x41a
0x41a:	90                   	nop
0x41b:	90                   	nop
0x41c:	e8 00 00 00 00       	callq  0x421
0x421:	90                   	nop
0x422:	83 f8 00             	cmp    $0x0,%eax
0x425:	0f 84 40 00 00 00    	je     0x46b
0x42b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x42f:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x433:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x437:	85 07                	test   %eax,(%rdi)
0x439:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x43d:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x441:	83 e0 ff             	and    $0xffffffff,%eax
0x444:	48 8b f8             	mov    %rax,%rdi
0x447:	48 8b f2             	mov    %rdx,%rsi
0x44a:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x44e:	e8 00 00 00 00       	callq  0x453
0x453:	90                   	nop
0x454:	e9 12 00 00 00       	jmpq   0x46b
0x459:	48 8b fe             	mov    %rsi,%rdi
0x45c:	e8 00 00 00 00       	callq  0x461
0x461:	90                   	nop
0x462:	48 8b f8             	mov    %rax,%rdi
0x465:	e8 00 00 00 00       	callq  0x46a
0x46a:	90                   	nop
0x46b:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x46f:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x473:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x477:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x47b:	48 89 18             	mov    %rbx,(%rax)
0x47e:	48 89 04 24          	mov    %rax,(%rsp)
0x482:	4c 8b 1c 24          	mov    (%rsp),%r11
0x486:	48 83 c4 10          	add    $0x10,%rsp
0x48a:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x48e:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x494:	48 83 ec 10          	sub    $0x10,%rsp
0x498:	44 89 1c 24          	mov    %r11d,(%rsp)
0x49c:	44 8b 1c 24          	mov    (%rsp),%r11d
0x4a0:	48 83 c4 10          	add    $0x10,%rsp
0x4a4:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x4a8:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x4ac:	48 83 ec 10          	sub    $0x10,%rsp
0x4b0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4b4:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x4b8:	48 83 ec 10          	sub    $0x10,%rsp
0x4bc:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4c0:	48 8b 3c 24          	mov    (%rsp),%rdi
0x4c4:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x4c8:	89 04 24             	mov    %eax,(%rsp)
0x4cb:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x4d0:	8b 04 24             	mov    (%rsp),%eax
0x4d3:	48 83 c4 20          	add    $0x20,%rsp
0x4d7:	44 3b d8             	cmp    %eax,%r11d
0x4da:	7c 33                	jl     0x50f
0x4dc:	48 8b 3d 6d f9 ff ff 	mov    -0x693(%rip),%rdi        # 0xfffffe50
0x4e3:	be 06 00 00 00       	mov    $0x6,%esi
0x4e8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4ec:	48 8b c8             	mov    %rax,%rcx
0x4ef:	48 63 f6             	movslq %esi,%rsi
0x4f2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4f7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4fd:	0f 8d 07 00 00 00    	jge    0x50a
0x503:	83 c1 01             	add    $0x1,%ecx
0x506:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x50a:	e9 ca 15 00 00       	jmpq   0x1ad9
0x50f:	48 8b 3d 42 f9 ff ff 	mov    -0x6be(%rip),%rdi        # 0xfffffe58
0x516:	be 07 00 00 00       	mov    $0x7,%esi
0x51b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x51f:	48 8b c8             	mov    %rax,%rcx
0x522:	48 63 f6             	movslq %esi,%rsi
0x525:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x52a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x530:	0f 8d 07 00 00 00    	jge    0x53d
0x536:	83 c1 01             	add    $0x1,%ecx
0x539:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x53d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x541:	48 83 ec 10          	sub    $0x10,%rsp
0x545:	4c 89 1c 24          	mov    %r11,(%rsp)
0x549:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x54d:	48 83 ec 10          	sub    $0x10,%rsp
0x551:	44 89 1c 24          	mov    %r11d,(%rsp)
0x555:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x55b:	48 83 ec 10          	sub    $0x10,%rsp
0x55f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x563:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x568:	40 8b 34 24          	rex mov (%rsp),%esi
0x56c:	03 fe                	add    %esi,%edi
0x56e:	48 8b c7             	mov    %rdi,%rax
0x571:	48 83 c4 10          	add    $0x10,%rsp
0x575:	89 04 24             	mov    %eax,(%rsp)
0x578:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x57d:	40 8b 34 24          	rex mov (%rsp),%esi
0x581:	48 8b c7             	mov    %rdi,%rax
0x584:	48 63 40 10          	movslq 0x10(%rax),%rax
0x588:	3b f0                	cmp    %eax,%esi
0x58a:	0f 82 0f 00 00 00    	jb     0x59f
0x590:	e8 00 00 00 00       	callq  0x595
0x595:	90                   	nop
0x596:	48 8b f8             	mov    %rax,%rdi
0x599:	e8 00 00 00 00       	callq  0x59e
0x59e:	90                   	nop
0x59f:	48 63 f6             	movslq %esi,%rsi
0x5a2:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x5a7:	48 83 c4 10          	add    $0x10,%rsp
0x5ab:	48 89 04 24          	mov    %rax,(%rsp)
0x5af:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5b3:	48 83 c4 10          	add    $0x10,%rsp
0x5b7:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x5bb:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x5bf:	48 83 ec 10          	sub    $0x10,%rsp
0x5c3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5c7:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x5cb:	48 83 ec 10          	sub    $0x10,%rsp
0x5cf:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5d3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5d8:	40 8b 34 24          	rex mov (%rsp),%esi
0x5dc:	48 8b c7             	mov    %rdi,%rax
0x5df:	48 63 40 10          	movslq 0x10(%rax),%rax
0x5e3:	3b f0                	cmp    %eax,%esi
0x5e5:	0f 82 0f 00 00 00    	jb     0x5fa
0x5eb:	e8 00 00 00 00       	callq  0x5f0
0x5f0:	90                   	nop
0x5f1:	48 8b f8             	mov    %rax,%rdi
0x5f4:	e8 00 00 00 00       	callq  0x5f9
0x5f9:	90                   	nop
0x5fa:	48 63 f6             	movslq %esi,%rsi
0x5fd:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x602:	48 83 c4 10          	add    $0x10,%rsp
0x606:	48 89 04 24          	mov    %rax,(%rsp)
0x60a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x60e:	48 83 c4 10          	add    $0x10,%rsp
0x612:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0x616:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x61a:	48 83 ec 10          	sub    $0x10,%rsp
0x61e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x622:	48 8b 3d 37 f8 ff ff 	mov    -0x7c9(%rip),%rdi        # 0xfffffe60
0x629:	be 20 00 00 00       	mov    $0x20,%esi
0x62e:	48 63 f6             	movslq %esi,%rsi
0x631:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x635:	48 83 ec 10          	sub    $0x10,%rsp
0x639:	48 89 04 24          	mov    %rax,(%rsp)
0x63d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x642:	48 8b 04 24          	mov    (%rsp),%rax
0x646:	48 83 c4 20          	add    $0x20,%rsp
0x64a:	4c 3b d8             	cmp    %rax,%r11
0x64d:	74 33                	je     0x682
0x64f:	48 8b 3d 12 f8 ff ff 	mov    -0x7ee(%rip),%rdi        # 0xfffffe68
0x656:	be 0a 00 00 00       	mov    $0xa,%esi
0x65b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x65f:	48 8b c8             	mov    %rax,%rcx
0x662:	48 63 f6             	movslq %esi,%rsi
0x665:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x66a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x670:	0f 8d 07 00 00 00    	jge    0x67d
0x676:	83 c1 01             	add    $0x1,%ecx
0x679:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x67d:	e9 97 01 00 00       	jmpq   0x819
0x682:	48 8b 3d e7 f7 ff ff 	mov    -0x819(%rip),%rdi        # 0xfffffe70
0x689:	be 0b 00 00 00       	mov    $0xb,%esi
0x68e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x692:	48 8b c8             	mov    %rax,%rcx
0x695:	48 63 f6             	movslq %esi,%rsi
0x698:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x69d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x6a3:	0f 8d 07 00 00 00    	jge    0x6b0
0x6a9:	83 c1 01             	add    $0x1,%ecx
0x6ac:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x6b0:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x6b4:	48 83 ec 10          	sub    $0x10,%rsp
0x6b8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6bc:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x6c0:	48 83 ec 10          	sub    $0x10,%rsp
0x6c4:	44 89 1c 24          	mov    %r11d,(%rsp)
0x6c8:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x6cc:	48 83 ec 10          	sub    $0x10,%rsp
0x6d0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6d4:	90                   	nop
0x6d5:	90                   	nop
0x6d6:	90                   	nop
0x6d7:	90                   	nop
0x6d8:	e8 00 00 00 00       	callq  0x6dd
0x6dd:	90                   	nop
0x6de:	48 83 ec 10          	sub    $0x10,%rsp
0x6e2:	48 89 04 24          	mov    %rax,(%rsp)
0x6e6:	90                   	nop
0x6e7:	90                   	nop
0x6e8:	e8 00 00 00 00       	callq  0x6ed
0x6ed:	90                   	nop
0x6ee:	48 83 ec 10          	sub    $0x10,%rsp
0x6f2:	48 89 04 24          	mov    %rax,(%rsp)
0x6f6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x6fb:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x700:	48 8b 14 24          	mov    (%rsp),%rdx
0x704:	48 8b ca             	mov    %rdx,%rcx
0x707:	48 8b c7             	mov    %rdi,%rax
0x70a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x70e:	3b f0                	cmp    %eax,%esi
0x710:	0f 83 b4 00 00 00    	jae    0x7ca
0x716:	4d 33 db             	xor    %r11,%r11
0x719:	49 3b cb             	cmp    %r11,%rcx
0x71c:	0f 84 b8 00 00 00    	je     0x7da
0x722:	48 8b c7             	mov    %rdi,%rax
0x725:	48 8b 00             	mov    (%rax),%rax
0x728:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x72c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x730:	4d 33 db             	xor    %r11,%r11
0x733:	49 3b cb             	cmp    %r11,%rcx
0x736:	0f 85 0a 00 00 00    	jne    0x746
0x73c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x741:	e9 66 00 00 00       	jmpq   0x7ac
0x746:	48 8b d1             	mov    %rcx,%rdx
0x749:	48 8b 1a             	mov    (%rdx),%rbx
0x74c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x750:	48 3b d0             	cmp    %rax,%rdx
0x753:	0f 85 0a 00 00 00    	jne    0x763
0x759:	bb 01 00 00 00       	mov    $0x1,%ebx
0x75e:	e9 49 00 00 00       	jmpq   0x7ac
0x763:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x76a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x76e:	49 8b c0             	mov    %r8,%rax
0x771:	99                   	cltd   
0x772:	41 f7 f9             	idiv   %r9d
0x775:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x779:	03 d0                	add    %eax,%edx
0x77b:	48 8b c3             	mov    %rbx,%rax
0x77e:	48 63 d2             	movslq %edx,%rdx
0x781:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x786:	48 63 c0             	movslq %eax,%rax
0x789:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x78e:	4d 63 c0             	movslq %r8d,%r8
0x791:	49 3b c0             	cmp    %r8,%rax
0x794:	0f 85 0a 00 00 00    	jne    0x7a4
0x79a:	b8 01 00 00 00       	mov    $0x1,%eax
0x79f:	e9 05 00 00 00       	jmpq   0x7a9
0x7a4:	b8 00 00 00 00       	mov    $0x0,%eax
0x7a9:	48 8b d8             	mov    %rax,%rbx
0x7ac:	83 fb 00             	cmp    $0x0,%ebx
0x7af:	0f 85 25 00 00 00    	jne    0x7da
0x7b5:	48 8b f1             	mov    %rcx,%rsi
0x7b8:	90                   	nop
0x7b9:	90                   	nop
0x7ba:	90                   	nop
0x7bb:	e8 00 00 00 00       	callq  0x7c0
0x7c0:	90                   	nop
0x7c1:	48 8b f8             	mov    %rax,%rdi
0x7c4:	e8 00 00 00 00       	callq  0x7c9
0x7c9:	90                   	nop
0x7ca:	90                   	nop
0x7cb:	e8 00 00 00 00       	callq  0x7d0
0x7d0:	90                   	nop
0x7d1:	48 8b f8             	mov    %rax,%rdi
0x7d4:	e8 00 00 00 00       	callq  0x7d9
0x7d9:	90                   	nop
0x7da:	48 63 f6             	movslq %esi,%rsi
0x7dd:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x7e2:	48 83 c4 30          	add    $0x30,%rsp
0x7e6:	48 8b 3d 8b f6 ff ff 	mov    -0x975(%rip),%rdi        # 0xfffffe78
0x7ed:	be 0f 00 00 00       	mov    $0xf,%esi
0x7f2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x7f6:	48 8b c8             	mov    %rax,%rcx
0x7f9:	48 63 f6             	movslq %esi,%rsi
0x7fc:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x801:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x807:	0f 8d 07 00 00 00    	jge    0x814
0x80d:	83 c1 01             	add    $0x1,%ecx
0x810:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x814:	e9 6d 12 00 00       	jmpq   0x1a86
0x819:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x81d:	48 83 ec 10          	sub    $0x10,%rsp
0x821:	4c 89 1c 24          	mov    %r11,(%rsp)
0x825:	48 8b 3d 54 f6 ff ff 	mov    -0x9ac(%rip),%rdi        # 0xfffffe80
0x82c:	be 10 00 00 00       	mov    $0x10,%esi
0x831:	48 63 f6             	movslq %esi,%rsi
0x834:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x838:	48 83 ec 10          	sub    $0x10,%rsp
0x83c:	48 89 04 24          	mov    %rax,(%rsp)
0x840:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x845:	48 8b 04 24          	mov    (%rsp),%rax
0x849:	48 83 c4 20          	add    $0x20,%rsp
0x84d:	4c 3b d8             	cmp    %rax,%r11
0x850:	74 33                	je     0x885
0x852:	48 8b 3d 2f f6 ff ff 	mov    -0x9d1(%rip),%rdi        # 0xfffffe88
0x859:	be 10 00 00 00       	mov    $0x10,%esi
0x85e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x862:	48 8b c8             	mov    %rax,%rcx
0x865:	48 63 f6             	movslq %esi,%rsi
0x868:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x86d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x873:	0f 8d 07 00 00 00    	jge    0x880
0x879:	83 c1 01             	add    $0x1,%ecx
0x87c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x880:	e9 94 01 00 00       	jmpq   0xa19
0x885:	48 8b 3d 04 f6 ff ff 	mov    -0x9fc(%rip),%rdi        # 0xfffffe90
0x88c:	be 11 00 00 00       	mov    $0x11,%esi
0x891:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x895:	48 8b c8             	mov    %rax,%rcx
0x898:	48 63 f6             	movslq %esi,%rsi
0x89b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x8a0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x8a6:	0f 8d 07 00 00 00    	jge    0x8b3
0x8ac:	83 c1 01             	add    $0x1,%ecx
0x8af:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x8b3:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x8b7:	48 83 ec 10          	sub    $0x10,%rsp
0x8bb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8bf:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x8c3:	48 83 ec 10          	sub    $0x10,%rsp
0x8c7:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8cb:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x8cf:	48 83 ec 10          	sub    $0x10,%rsp
0x8d3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8d7:	90                   	nop
0x8d8:	e8 00 00 00 00       	callq  0x8dd
0x8dd:	90                   	nop
0x8de:	48 83 ec 10          	sub    $0x10,%rsp
0x8e2:	48 89 04 24          	mov    %rax,(%rsp)
0x8e6:	90                   	nop
0x8e7:	90                   	nop
0x8e8:	e8 00 00 00 00       	callq  0x8ed
0x8ed:	90                   	nop
0x8ee:	48 83 ec 10          	sub    $0x10,%rsp
0x8f2:	48 89 04 24          	mov    %rax,(%rsp)
0x8f6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x8fb:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x900:	48 8b 14 24          	mov    (%rsp),%rdx
0x904:	48 8b ca             	mov    %rdx,%rcx
0x907:	48 8b c7             	mov    %rdi,%rax
0x90a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x90e:	3b f0                	cmp    %eax,%esi
0x910:	0f 83 b4 00 00 00    	jae    0x9ca
0x916:	4d 33 db             	xor    %r11,%r11
0x919:	49 3b cb             	cmp    %r11,%rcx
0x91c:	0f 84 b8 00 00 00    	je     0x9da
0x922:	48 8b c7             	mov    %rdi,%rax
0x925:	48 8b 00             	mov    (%rax),%rax
0x928:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x92c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x930:	4d 33 db             	xor    %r11,%r11
0x933:	49 3b cb             	cmp    %r11,%rcx
0x936:	0f 85 0a 00 00 00    	jne    0x946
0x93c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x941:	e9 66 00 00 00       	jmpq   0x9ac
0x946:	48 8b d1             	mov    %rcx,%rdx
0x949:	48 8b 1a             	mov    (%rdx),%rbx
0x94c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x950:	48 3b d0             	cmp    %rax,%rdx
0x953:	0f 85 0a 00 00 00    	jne    0x963
0x959:	bb 01 00 00 00       	mov    $0x1,%ebx
0x95e:	e9 49 00 00 00       	jmpq   0x9ac
0x963:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x96a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x96e:	49 8b c0             	mov    %r8,%rax
0x971:	99                   	cltd   
0x972:	41 f7 f9             	idiv   %r9d
0x975:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x979:	03 d0                	add    %eax,%edx
0x97b:	48 8b c3             	mov    %rbx,%rax
0x97e:	48 63 d2             	movslq %edx,%rdx
0x981:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x986:	48 63 c0             	movslq %eax,%rax
0x989:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x98e:	4d 63 c0             	movslq %r8d,%r8
0x991:	49 3b c0             	cmp    %r8,%rax
0x994:	0f 85 0a 00 00 00    	jne    0x9a4
0x99a:	b8 01 00 00 00       	mov    $0x1,%eax
0x99f:	e9 05 00 00 00       	jmpq   0x9a9
0x9a4:	b8 00 00 00 00       	mov    $0x0,%eax
0x9a9:	48 8b d8             	mov    %rax,%rbx
0x9ac:	83 fb 00             	cmp    $0x0,%ebx
0x9af:	0f 85 25 00 00 00    	jne    0x9da
0x9b5:	48 8b f1             	mov    %rcx,%rsi
0x9b8:	90                   	nop
0x9b9:	90                   	nop
0x9ba:	90                   	nop
0x9bb:	e8 00 00 00 00       	callq  0x9c0
0x9c0:	90                   	nop
0x9c1:	48 8b f8             	mov    %rax,%rdi
0x9c4:	e8 00 00 00 00       	callq  0x9c9
0x9c9:	90                   	nop
0x9ca:	90                   	nop
0x9cb:	e8 00 00 00 00       	callq  0x9d0
0x9d0:	90                   	nop
0x9d1:	48 8b f8             	mov    %rax,%rdi
0x9d4:	e8 00 00 00 00       	callq  0x9d9
0x9d9:	90                   	nop
0x9da:	48 63 f6             	movslq %esi,%rsi
0x9dd:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x9e2:	48 83 c4 30          	add    $0x30,%rsp
0x9e6:	48 8b 3d ab f4 ff ff 	mov    -0xb55(%rip),%rdi        # 0xfffffe98
0x9ed:	be 15 00 00 00       	mov    $0x15,%esi
0x9f2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x9f6:	48 8b c8             	mov    %rax,%rcx
0x9f9:	48 63 f6             	movslq %esi,%rsi
0x9fc:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa01:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xa07:	0f 8d 07 00 00 00    	jge    0xa14
0xa0d:	83 c1 01             	add    $0x1,%ecx
0xa10:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xa14:	e9 6d 10 00 00       	jmpq   0x1a86
0xa19:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0xa1d:	48 83 ec 10          	sub    $0x10,%rsp
0xa21:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa25:	48 8b 3d 74 f4 ff ff 	mov    -0xb8c(%rip),%rdi        # 0xfffffea0
0xa2c:	be 10 00 00 00       	mov    $0x10,%esi
0xa31:	48 63 f6             	movslq %esi,%rsi
0xa34:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xa38:	48 83 ec 10          	sub    $0x10,%rsp
0xa3c:	48 89 04 24          	mov    %rax,(%rsp)
0xa40:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa45:	48 8b 04 24          	mov    (%rsp),%rax
0xa49:	48 83 c4 20          	add    $0x20,%rsp
0xa4d:	4c 3b d8             	cmp    %rax,%r11
0xa50:	74 33                	je     0xa85
0xa52:	48 8b 3d 4f f4 ff ff 	mov    -0xbb1(%rip),%rdi        # 0xfffffea8
0xa59:	be 16 00 00 00       	mov    $0x16,%esi
0xa5e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa62:	48 8b c8             	mov    %rax,%rcx
0xa65:	48 63 f6             	movslq %esi,%rsi
0xa68:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa6d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xa73:	0f 8d 07 00 00 00    	jge    0xa80
0xa79:	83 c1 01             	add    $0x1,%ecx
0xa7c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xa80:	e9 ac 01 00 00       	jmpq   0xc31
0xa85:	48 8b 3d 24 f4 ff ff 	mov    -0xbdc(%rip),%rdi        # 0xfffffeb0
0xa8c:	be 17 00 00 00       	mov    $0x17,%esi
0xa91:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa95:	48 8b c8             	mov    %rax,%rcx
0xa98:	48 63 f6             	movslq %esi,%rsi
0xa9b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xaa0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xaa6:	0f 8d 07 00 00 00    	jge    0xab3
0xaac:	83 c1 01             	add    $0x1,%ecx
0xaaf:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xab3:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xab7:	48 83 ec 10          	sub    $0x10,%rsp
0xabb:	4c 89 1c 24          	mov    %r11,(%rsp)
0xabf:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xac3:	48 83 ec 10          	sub    $0x10,%rsp
0xac7:	44 89 1c 24          	mov    %r11d,(%rsp)
0xacb:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xacf:	48 83 ec 10          	sub    $0x10,%rsp
0xad3:	4c 89 1c 24          	mov    %r11,(%rsp)
0xad7:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xadd:	48 83 ec 10          	sub    $0x10,%rsp
0xae1:	44 89 1c 24          	mov    %r11d,(%rsp)
0xae5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xaea:	41 85 03             	test   %eax,(%r11)
0xaed:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xaf2:	e8 00 00 00 00       	callq  0xaf7
0xaf7:	90                   	nop
0xaf8:	48 83 ec 10          	sub    $0x10,%rsp
0xafc:	48 89 04 24          	mov    %rax,(%rsp)
0xb00:	e8 00 00 00 00       	callq  0xb05
0xb05:	90                   	nop
0xb06:	48 83 ec 10          	sub    $0x10,%rsp
0xb0a:	48 89 04 24          	mov    %rax,(%rsp)
0xb0e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xb13:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xb18:	48 8b 14 24          	mov    (%rsp),%rdx
0xb1c:	48 8b ca             	mov    %rdx,%rcx
0xb1f:	48 8b c7             	mov    %rdi,%rax
0xb22:	48 63 40 10          	movslq 0x10(%rax),%rax
0xb26:	3b f0                	cmp    %eax,%esi
0xb28:	0f 83 b4 00 00 00    	jae    0xbe2
0xb2e:	4d 33 db             	xor    %r11,%r11
0xb31:	49 3b cb             	cmp    %r11,%rcx
0xb34:	0f 84 b8 00 00 00    	je     0xbf2
0xb3a:	48 8b c7             	mov    %rdi,%rax
0xb3d:	48 8b 00             	mov    (%rax),%rax
0xb40:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xb44:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xb48:	4d 33 db             	xor    %r11,%r11
0xb4b:	49 3b cb             	cmp    %r11,%rcx
0xb4e:	0f 85 0a 00 00 00    	jne    0xb5e
0xb54:	bb 00 00 00 00       	mov    $0x0,%ebx
0xb59:	e9 66 00 00 00       	jmpq   0xbc4
0xb5e:	48 8b d1             	mov    %rcx,%rdx
0xb61:	48 8b 1a             	mov    (%rdx),%rbx
0xb64:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xb68:	48 3b d0             	cmp    %rax,%rdx
0xb6b:	0f 85 0a 00 00 00    	jne    0xb7b
0xb71:	bb 01 00 00 00       	mov    $0x1,%ebx
0xb76:	e9 49 00 00 00       	jmpq   0xbc4
0xb7b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xb82:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xb86:	49 8b c0             	mov    %r8,%rax
0xb89:	99                   	cltd   
0xb8a:	41 f7 f9             	idiv   %r9d
0xb8d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xb91:	03 d0                	add    %eax,%edx
0xb93:	48 8b c3             	mov    %rbx,%rax
0xb96:	48 63 d2             	movslq %edx,%rdx
0xb99:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xb9e:	48 63 c0             	movslq %eax,%rax
0xba1:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xba6:	4d 63 c0             	movslq %r8d,%r8
0xba9:	49 3b c0             	cmp    %r8,%rax
0xbac:	0f 85 0a 00 00 00    	jne    0xbbc
0xbb2:	b8 01 00 00 00       	mov    $0x1,%eax
0xbb7:	e9 05 00 00 00       	jmpq   0xbc1
0xbbc:	b8 00 00 00 00       	mov    $0x0,%eax
0xbc1:	48 8b d8             	mov    %rax,%rbx
0xbc4:	83 fb 00             	cmp    $0x0,%ebx
0xbc7:	0f 85 25 00 00 00    	jne    0xbf2
0xbcd:	48 8b f1             	mov    %rcx,%rsi
0xbd0:	90                   	nop
0xbd1:	90                   	nop
0xbd2:	90                   	nop
0xbd3:	e8 00 00 00 00       	callq  0xbd8
0xbd8:	90                   	nop
0xbd9:	48 8b f8             	mov    %rax,%rdi
0xbdc:	e8 00 00 00 00       	callq  0xbe1
0xbe1:	90                   	nop
0xbe2:	90                   	nop
0xbe3:	e8 00 00 00 00       	callq  0xbe8
0xbe8:	90                   	nop
0xbe9:	48 8b f8             	mov    %rax,%rdi
0xbec:	e8 00 00 00 00       	callq  0xbf1
0xbf1:	90                   	nop
0xbf2:	48 63 f6             	movslq %esi,%rsi
0xbf5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xbfa:	48 83 c4 30          	add    $0x30,%rsp
0xbfe:	48 8b 3d b3 f2 ff ff 	mov    -0xd4d(%rip),%rdi        # 0xfffffeb8
0xc05:	be 1b 00 00 00       	mov    $0x1b,%esi
0xc0a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xc0e:	48 8b c8             	mov    %rax,%rcx
0xc11:	48 63 f6             	movslq %esi,%rsi
0xc14:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xc19:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc1f:	0f 8d 07 00 00 00    	jge    0xc2c
0xc25:	83 c1 01             	add    $0x1,%ecx
0xc28:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc2c:	e9 55 0e 00 00       	jmpq   0x1a86
0xc31:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0xc35:	48 83 ec 10          	sub    $0x10,%rsp
0xc39:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc3d:	48 8b 3d 7c f2 ff ff 	mov    -0xd84(%rip),%rdi        # 0xfffffec0
0xc44:	be 10 00 00 00       	mov    $0x10,%esi
0xc49:	48 63 f6             	movslq %esi,%rsi
0xc4c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc50:	48 83 ec 10          	sub    $0x10,%rsp
0xc54:	48 89 04 24          	mov    %rax,(%rsp)
0xc58:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xc5d:	48 8b 04 24          	mov    (%rsp),%rax
0xc61:	48 83 c4 20          	add    $0x20,%rsp
0xc65:	4c 3b d8             	cmp    %rax,%r11
0xc68:	74 33                	je     0xc9d
0xc6a:	48 8b 3d 57 f2 ff ff 	mov    -0xda9(%rip),%rdi        # 0xfffffec8
0xc71:	be 1c 00 00 00       	mov    $0x1c,%esi
0xc76:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xc7a:	48 8b c8             	mov    %rax,%rcx
0xc7d:	48 63 f6             	movslq %esi,%rsi
0xc80:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xc85:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc8b:	0f 8d 07 00 00 00    	jge    0xc98
0xc91:	83 c1 01             	add    $0x1,%ecx
0xc94:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc98:	e9 94 01 00 00       	jmpq   0xe31
0xc9d:	48 8b 3d 2c f2 ff ff 	mov    -0xdd4(%rip),%rdi        # 0xfffffed0
0xca4:	be 1d 00 00 00       	mov    $0x1d,%esi
0xca9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xcad:	48 8b c8             	mov    %rax,%rcx
0xcb0:	48 63 f6             	movslq %esi,%rsi
0xcb3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xcb8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xcbe:	0f 8d 07 00 00 00    	jge    0xccb
0xcc4:	83 c1 01             	add    $0x1,%ecx
0xcc7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xccb:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xccf:	48 83 ec 10          	sub    $0x10,%rsp
0xcd3:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcd7:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xcdb:	48 83 ec 10          	sub    $0x10,%rsp
0xcdf:	44 89 1c 24          	mov    %r11d,(%rsp)
0xce3:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xce7:	48 83 ec 10          	sub    $0x10,%rsp
0xceb:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcef:	90                   	nop
0xcf0:	e8 00 00 00 00       	callq  0xcf5
0xcf5:	90                   	nop
0xcf6:	48 83 ec 10          	sub    $0x10,%rsp
0xcfa:	48 89 04 24          	mov    %rax,(%rsp)
0xcfe:	90                   	nop
0xcff:	90                   	nop
0xd00:	e8 00 00 00 00       	callq  0xd05
0xd05:	90                   	nop
0xd06:	48 83 ec 10          	sub    $0x10,%rsp
0xd0a:	48 89 04 24          	mov    %rax,(%rsp)
0xd0e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xd13:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xd18:	48 8b 14 24          	mov    (%rsp),%rdx
0xd1c:	48 8b ca             	mov    %rdx,%rcx
0xd1f:	48 8b c7             	mov    %rdi,%rax
0xd22:	48 63 40 10          	movslq 0x10(%rax),%rax
0xd26:	3b f0                	cmp    %eax,%esi
0xd28:	0f 83 b4 00 00 00    	jae    0xde2
0xd2e:	4d 33 db             	xor    %r11,%r11
0xd31:	49 3b cb             	cmp    %r11,%rcx
0xd34:	0f 84 b8 00 00 00    	je     0xdf2
0xd3a:	48 8b c7             	mov    %rdi,%rax
0xd3d:	48 8b 00             	mov    (%rax),%rax
0xd40:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xd44:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xd48:	4d 33 db             	xor    %r11,%r11
0xd4b:	49 3b cb             	cmp    %r11,%rcx
0xd4e:	0f 85 0a 00 00 00    	jne    0xd5e
0xd54:	bb 00 00 00 00       	mov    $0x0,%ebx
0xd59:	e9 66 00 00 00       	jmpq   0xdc4
0xd5e:	48 8b d1             	mov    %rcx,%rdx
0xd61:	48 8b 1a             	mov    (%rdx),%rbx
0xd64:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xd68:	48 3b d0             	cmp    %rax,%rdx
0xd6b:	0f 85 0a 00 00 00    	jne    0xd7b
0xd71:	bb 01 00 00 00       	mov    $0x1,%ebx
0xd76:	e9 49 00 00 00       	jmpq   0xdc4
0xd7b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xd82:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xd86:	49 8b c0             	mov    %r8,%rax
0xd89:	99                   	cltd   
0xd8a:	41 f7 f9             	idiv   %r9d
0xd8d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xd91:	03 d0                	add    %eax,%edx
0xd93:	48 8b c3             	mov    %rbx,%rax
0xd96:	48 63 d2             	movslq %edx,%rdx
0xd99:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xd9e:	48 63 c0             	movslq %eax,%rax
0xda1:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xda6:	4d 63 c0             	movslq %r8d,%r8
0xda9:	49 3b c0             	cmp    %r8,%rax
0xdac:	0f 85 0a 00 00 00    	jne    0xdbc
0xdb2:	b8 01 00 00 00       	mov    $0x1,%eax
0xdb7:	e9 05 00 00 00       	jmpq   0xdc1
0xdbc:	b8 00 00 00 00       	mov    $0x0,%eax
0xdc1:	48 8b d8             	mov    %rax,%rbx
0xdc4:	83 fb 00             	cmp    $0x0,%ebx
0xdc7:	0f 85 25 00 00 00    	jne    0xdf2
0xdcd:	48 8b f1             	mov    %rcx,%rsi
0xdd0:	90                   	nop
0xdd1:	90                   	nop
0xdd2:	90                   	nop
0xdd3:	e8 00 00 00 00       	callq  0xdd8
0xdd8:	90                   	nop
0xdd9:	48 8b f8             	mov    %rax,%rdi
0xddc:	e8 00 00 00 00       	callq  0xde1
0xde1:	90                   	nop
0xde2:	90                   	nop
0xde3:	e8 00 00 00 00       	callq  0xde8
0xde8:	90                   	nop
0xde9:	48 8b f8             	mov    %rax,%rdi
0xdec:	e8 00 00 00 00       	callq  0xdf1
0xdf1:	90                   	nop
0xdf2:	48 63 f6             	movslq %esi,%rsi
0xdf5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xdfa:	48 83 c4 30          	add    $0x30,%rsp
0xdfe:	48 8b 3d d3 f0 ff ff 	mov    -0xf2d(%rip),%rdi        # 0xfffffed8
0xe05:	be 21 00 00 00       	mov    $0x21,%esi
0xe0a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe0e:	48 8b c8             	mov    %rax,%rcx
0xe11:	48 63 f6             	movslq %esi,%rsi
0xe14:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe19:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xe1f:	0f 8d 07 00 00 00    	jge    0xe2c
0xe25:	83 c1 01             	add    $0x1,%ecx
0xe28:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe2c:	e9 55 0c 00 00       	jmpq   0x1a86
0xe31:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0xe35:	48 83 ec 10          	sub    $0x10,%rsp
0xe39:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe3d:	48 8b 3d 9c f0 ff ff 	mov    -0xf64(%rip),%rdi        # 0xfffffee0
0xe44:	be 20 00 00 00       	mov    $0x20,%esi
0xe49:	48 63 f6             	movslq %esi,%rsi
0xe4c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xe50:	48 83 ec 10          	sub    $0x10,%rsp
0xe54:	48 89 04 24          	mov    %rax,(%rsp)
0xe58:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xe5d:	48 8b 04 24          	mov    (%rsp),%rax
0xe61:	48 83 c4 20          	add    $0x20,%rsp
0xe65:	4c 3b d8             	cmp    %rax,%r11
0xe68:	74 33                	je     0xe9d
0xe6a:	48 8b 3d 77 f0 ff ff 	mov    -0xf89(%rip),%rdi        # 0xfffffee8
0xe71:	be 22 00 00 00       	mov    $0x22,%esi
0xe76:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe7a:	48 8b c8             	mov    %rax,%rcx
0xe7d:	48 63 f6             	movslq %esi,%rsi
0xe80:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe85:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xe8b:	0f 8d 07 00 00 00    	jge    0xe98
0xe91:	83 c1 01             	add    $0x1,%ecx
0xe94:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe98:	e9 94 01 00 00       	jmpq   0x1031
0xe9d:	48 8b 3d 4c f0 ff ff 	mov    -0xfb4(%rip),%rdi        # 0xfffffef0
0xea4:	be 23 00 00 00       	mov    $0x23,%esi
0xea9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xead:	48 8b c8             	mov    %rax,%rcx
0xeb0:	48 63 f6             	movslq %esi,%rsi
0xeb3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xeb8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xebe:	0f 8d 07 00 00 00    	jge    0xecb
0xec4:	83 c1 01             	add    $0x1,%ecx
0xec7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xecb:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xecf:	48 83 ec 10          	sub    $0x10,%rsp
0xed3:	4c 89 1c 24          	mov    %r11,(%rsp)
0xed7:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xedb:	48 83 ec 10          	sub    $0x10,%rsp
0xedf:	44 89 1c 24          	mov    %r11d,(%rsp)
0xee3:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xee7:	48 83 ec 10          	sub    $0x10,%rsp
0xeeb:	4c 89 1c 24          	mov    %r11,(%rsp)
0xeef:	90                   	nop
0xef0:	e8 00 00 00 00       	callq  0xef5
0xef5:	90                   	nop
0xef6:	48 83 ec 20          	sub    $0x20,%rsp
0xefa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xeff:	90                   	nop
0xf00:	e8 00 00 00 00       	callq  0xf05
0xf05:	90                   	nop
0xf06:	48 83 ec 10          	sub    $0x10,%rsp
0xf0a:	48 89 04 24          	mov    %rax,(%rsp)
0xf0e:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xf13:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0xf18:	48 8b 14 24          	mov    (%rsp),%rdx
0xf1c:	48 8b ca             	mov    %rdx,%rcx
0xf1f:	48 8b c7             	mov    %rdi,%rax
0xf22:	48 63 40 10          	movslq 0x10(%rax),%rax
0xf26:	3b f0                	cmp    %eax,%esi
0xf28:	0f 83 b4 00 00 00    	jae    0xfe2
0xf2e:	4d 33 db             	xor    %r11,%r11
0xf31:	49 3b cb             	cmp    %r11,%rcx
0xf34:	0f 84 b8 00 00 00    	je     0xff2
0xf3a:	48 8b c7             	mov    %rdi,%rax
0xf3d:	48 8b 00             	mov    (%rax),%rax
0xf40:	48 8b 50 30          	mov    0x30(%rax),%rdx
0xf44:	48 8b 42 70          	mov    0x70(%rdx),%rax
0xf48:	4d 33 db             	xor    %r11,%r11
0xf4b:	49 3b cb             	cmp    %r11,%rcx
0xf4e:	0f 85 0a 00 00 00    	jne    0xf5e
0xf54:	bb 00 00 00 00       	mov    $0x0,%ebx
0xf59:	e9 66 00 00 00       	jmpq   0xfc4
0xf5e:	48 8b d1             	mov    %rcx,%rdx
0xf61:	48 8b 1a             	mov    (%rdx),%rbx
0xf64:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0xf68:	48 3b d0             	cmp    %rax,%rdx
0xf6b:	0f 85 0a 00 00 00    	jne    0xf7b
0xf71:	bb 01 00 00 00       	mov    $0x1,%ebx
0xf76:	e9 49 00 00 00       	jmpq   0xfc4
0xf7b:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0xf82:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0xf86:	49 8b c0             	mov    %r8,%rax
0xf89:	99                   	cltd   
0xf8a:	41 f7 f9             	idiv   %r9d
0xf8d:	48 63 43 58          	movslq 0x58(%rbx),%rax
0xf91:	03 d0                	add    %eax,%edx
0xf93:	48 8b c3             	mov    %rbx,%rax
0xf96:	48 63 d2             	movslq %edx,%rdx
0xf99:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0xf9e:	48 63 c0             	movslq %eax,%rax
0xfa1:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0xfa6:	4d 63 c0             	movslq %r8d,%r8
0xfa9:	49 3b c0             	cmp    %r8,%rax
0xfac:	0f 85 0a 00 00 00    	jne    0xfbc
0xfb2:	b8 01 00 00 00       	mov    $0x1,%eax
0xfb7:	e9 05 00 00 00       	jmpq   0xfc1
0xfbc:	b8 00 00 00 00       	mov    $0x0,%eax
0xfc1:	48 8b d8             	mov    %rax,%rbx
0xfc4:	83 fb 00             	cmp    $0x0,%ebx
0xfc7:	0f 85 25 00 00 00    	jne    0xff2
0xfcd:	48 8b f1             	mov    %rcx,%rsi
0xfd0:	90                   	nop
0xfd1:	90                   	nop
0xfd2:	90                   	nop
0xfd3:	e8 00 00 00 00       	callq  0xfd8
0xfd8:	90                   	nop
0xfd9:	48 8b f8             	mov    %rax,%rdi
0xfdc:	e8 00 00 00 00       	callq  0xfe1
0xfe1:	90                   	nop
0xfe2:	90                   	nop
0xfe3:	e8 00 00 00 00       	callq  0xfe8
0xfe8:	90                   	nop
0xfe9:	48 8b f8             	mov    %rax,%rdi
0xfec:	e8 00 00 00 00       	callq  0xff1
0xff1:	90                   	nop
0xff2:	48 63 f6             	movslq %esi,%rsi
0xff5:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xffa:	48 83 c4 30          	add    $0x30,%rsp
0xffe:	48 8b 3d f3 ee ff ff 	mov    -0x110d(%rip),%rdi        # 0xfffffef8
0x1005:	be 27 00 00 00       	mov    $0x27,%esi
0x100a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x100e:	48 8b c8             	mov    %rax,%rcx
0x1011:	48 63 f6             	movslq %esi,%rsi
0x1014:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1019:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x101f:	0f 8d 07 00 00 00    	jge    0x102c
0x1025:	83 c1 01             	add    $0x1,%ecx
0x1028:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x102c:	e9 55 0a 00 00       	jmpq   0x1a86
0x1031:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x1035:	48 83 ec 10          	sub    $0x10,%rsp
0x1039:	4c 89 1c 24          	mov    %r11,(%rsp)
0x103d:	48 83 ec 10          	sub    $0x10,%rsp
0x1041:	4c 8b 1d b8 ee ff ff 	mov    -0x1148(%rip),%r11        # 0xffffff00
0x1048:	4c 89 1c 24          	mov    %r11,(%rsp)
0x104c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1051:	48 8b 04 24          	mov    (%rsp),%rax
0x1055:	48 83 c4 20          	add    $0x20,%rsp
0x1059:	4c 3b d8             	cmp    %rax,%r11
0x105c:	74 33                	je     0x1091
0x105e:	48 8b 3d a3 ee ff ff 	mov    -0x115d(%rip),%rdi        # 0xffffff08
0x1065:	be 28 00 00 00       	mov    $0x28,%esi
0x106a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x106e:	48 8b c8             	mov    %rax,%rcx
0x1071:	48 63 f6             	movslq %esi,%rsi
0x1074:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1079:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x107f:	0f 8d 07 00 00 00    	jge    0x108c
0x1085:	83 c1 01             	add    $0x1,%ecx
0x1088:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x108c:	e9 36 02 00 00       	jmpq   0x12c7
0x1091:	48 8b 3d 78 ee ff ff 	mov    -0x1188(%rip),%rdi        # 0xffffff10
0x1098:	be 29 00 00 00       	mov    $0x29,%esi
0x109d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x10a1:	48 8b c8             	mov    %rax,%rcx
0x10a4:	48 63 f6             	movslq %esi,%rsi
0x10a7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x10ac:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x10b2:	0f 8d 07 00 00 00    	jge    0x10bf
0x10b8:	83 c1 01             	add    $0x1,%ecx
0x10bb:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x10bf:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x10c3:	48 83 ec 10          	sub    $0x10,%rsp
0x10c7:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10cb:	4c 8b 1d 46 ee ff ff 	mov    -0x11ba(%rip),%r11        # 0xffffff18
0x10d2:	48 83 ec 10          	sub    $0x10,%rsp
0x10d6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10da:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x10df:	41 85 03             	test   %eax,(%r11)
0x10e2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x10e7:	90                   	nop
0x10e8:	e8 00 00 00 00       	callq  0x10ed
0x10ed:	90                   	nop
0x10ee:	48 83 ec 10          	sub    $0x10,%rsp
0x10f2:	48 89 04 24          	mov    %rax,(%rsp)
0x10f6:	44 8b 1c 24          	mov    (%rsp),%r11d
0x10fa:	b8 00 00 00 00       	mov    $0x0,%eax
0x10ff:	48 83 c4 10          	add    $0x10,%rsp
0x1103:	44 3b d8             	cmp    %eax,%r11d
0x1106:	75 33                	jne    0x113b
0x1108:	48 8b 3d 11 ee ff ff 	mov    -0x11ef(%rip),%rdi        # 0xffffff20
0x110f:	be 2b 00 00 00       	mov    $0x2b,%esi
0x1114:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1118:	48 8b c8             	mov    %rax,%rcx
0x111b:	48 63 f6             	movslq %esi,%rsi
0x111e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1123:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1129:	0f 8d 07 00 00 00    	jge    0x1136
0x112f:	83 c1 01             	add    $0x1,%ecx
0x1132:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1136:	e9 45 00 00 00       	jmpq   0x1180
0x113b:	48 8b 3d e6 ed ff ff 	mov    -0x121a(%rip),%rdi        # 0xffffff28
0x1142:	be 2c 00 00 00       	mov    $0x2c,%esi
0x1147:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x114b:	48 8b c8             	mov    %rax,%rcx
0x114e:	48 63 f6             	movslq %esi,%rsi
0x1151:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1156:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x115c:	0f 8d 07 00 00 00    	jge    0x1169
0x1162:	83 c1 01             	add    $0x1,%ecx
0x1165:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1169:	4d 33 db             	xor    %r11,%r11
0x116c:	48 83 ec 10          	sub    $0x10,%rsp
0x1170:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1174:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1178:	48 83 c4 10          	add    $0x10,%rsp
0x117c:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x1180:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1184:	48 83 ec 10          	sub    $0x10,%rsp
0x1188:	4c 89 1c 24          	mov    %r11,(%rsp)
0x118c:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1190:	48 83 ec 10          	sub    $0x10,%rsp
0x1194:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1198:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x119c:	48 83 ec 10          	sub    $0x10,%rsp
0x11a0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11a4:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x11a9:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x11ae:	48 8b 14 24          	mov    (%rsp),%rdx
0x11b2:	48 8b ca             	mov    %rdx,%rcx
0x11b5:	48 8b c7             	mov    %rdi,%rax
0x11b8:	48 63 40 10          	movslq 0x10(%rax),%rax
0x11bc:	3b f0                	cmp    %eax,%esi
0x11be:	0f 83 b4 00 00 00    	jae    0x1278
0x11c4:	4d 33 db             	xor    %r11,%r11
0x11c7:	49 3b cb             	cmp    %r11,%rcx
0x11ca:	0f 84 b8 00 00 00    	je     0x1288
0x11d0:	48 8b c7             	mov    %rdi,%rax
0x11d3:	48 8b 00             	mov    (%rax),%rax
0x11d6:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x11da:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x11de:	4d 33 db             	xor    %r11,%r11
0x11e1:	49 3b cb             	cmp    %r11,%rcx
0x11e4:	0f 85 0a 00 00 00    	jne    0x11f4
0x11ea:	bb 00 00 00 00       	mov    $0x0,%ebx
0x11ef:	e9 66 00 00 00       	jmpq   0x125a
0x11f4:	48 8b d1             	mov    %rcx,%rdx
0x11f7:	48 8b 1a             	mov    (%rdx),%rbx
0x11fa:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x11fe:	48 3b d0             	cmp    %rax,%rdx
0x1201:	0f 85 0a 00 00 00    	jne    0x1211
0x1207:	bb 01 00 00 00       	mov    $0x1,%ebx
0x120c:	e9 49 00 00 00       	jmpq   0x125a
0x1211:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x1218:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x121c:	49 8b c0             	mov    %r8,%rax
0x121f:	99                   	cltd   
0x1220:	41 f7 f9             	idiv   %r9d
0x1223:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1227:	03 d0                	add    %eax,%edx
0x1229:	48 8b c3             	mov    %rbx,%rax
0x122c:	48 63 d2             	movslq %edx,%rdx
0x122f:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1234:	48 63 c0             	movslq %eax,%rax
0x1237:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x123c:	4d 63 c0             	movslq %r8d,%r8
0x123f:	49 3b c0             	cmp    %r8,%rax
0x1242:	0f 85 0a 00 00 00    	jne    0x1252
0x1248:	b8 01 00 00 00       	mov    $0x1,%eax
0x124d:	e9 05 00 00 00       	jmpq   0x1257
0x1252:	b8 00 00 00 00       	mov    $0x0,%eax
0x1257:	48 8b d8             	mov    %rax,%rbx
0x125a:	83 fb 00             	cmp    $0x0,%ebx
0x125d:	0f 85 25 00 00 00    	jne    0x1288
0x1263:	48 8b f1             	mov    %rcx,%rsi
0x1266:	90                   	nop
0x1267:	90                   	nop
0x1268:	90                   	nop
0x1269:	e8 00 00 00 00       	callq  0x126e
0x126e:	90                   	nop
0x126f:	48 8b f8             	mov    %rax,%rdi
0x1272:	e8 00 00 00 00       	callq  0x1277
0x1277:	90                   	nop
0x1278:	90                   	nop
0x1279:	e8 00 00 00 00       	callq  0x127e
0x127e:	90                   	nop
0x127f:	48 8b f8             	mov    %rax,%rdi
0x1282:	e8 00 00 00 00       	callq  0x1287
0x1287:	90                   	nop
0x1288:	48 63 f6             	movslq %esi,%rsi
0x128b:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1290:	48 83 c4 30          	add    $0x30,%rsp
0x1294:	48 8b 3d 95 ec ff ff 	mov    -0x136b(%rip),%rdi        # 0xffffff30
0x129b:	be 2e 00 00 00       	mov    $0x2e,%esi
0x12a0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x12a4:	48 8b c8             	mov    %rax,%rcx
0x12a7:	48 63 f6             	movslq %esi,%rsi
0x12aa:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x12af:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x12b5:	0f 8d 07 00 00 00    	jge    0x12c2
0x12bb:	83 c1 01             	add    $0x1,%ecx
0x12be:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x12c2:	e9 bf 07 00 00       	jmpq   0x1a86
0x12c7:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x12cb:	48 83 ec 10          	sub    $0x10,%rsp
0x12cf:	4c 89 1c 24          	mov    %r11,(%rsp)
0x12d3:	48 83 ec 10          	sub    $0x10,%rsp
0x12d7:	4c 8b 1d 5a ec ff ff 	mov    -0x13a6(%rip),%r11        # 0xffffff38
0x12de:	4c 89 1c 24          	mov    %r11,(%rsp)
0x12e2:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x12e7:	48 8b 04 24          	mov    (%rsp),%rax
0x12eb:	48 83 c4 20          	add    $0x20,%rsp
0x12ef:	4c 3b d8             	cmp    %rax,%r11
0x12f2:	74 33                	je     0x1327
0x12f4:	48 8b 3d 45 ec ff ff 	mov    -0x13bb(%rip),%rdi        # 0xffffff40
0x12fb:	be 2f 00 00 00       	mov    $0x2f,%esi
0x1300:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1304:	48 8b c8             	mov    %rax,%rcx
0x1307:	48 63 f6             	movslq %esi,%rsi
0x130a:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x130f:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1315:	0f 8d 07 00 00 00    	jge    0x1322
0x131b:	83 c1 01             	add    $0x1,%ecx
0x131e:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1322:	e9 75 01 00 00       	jmpq   0x149c
0x1327:	48 8b 3d 1a ec ff ff 	mov    -0x13e6(%rip),%rdi        # 0xffffff48
0x132e:	be 30 00 00 00       	mov    $0x30,%esi
0x1333:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1337:	48 8b c8             	mov    %rax,%rcx
0x133a:	48 63 f6             	movslq %esi,%rsi
0x133d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1342:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1348:	0f 8d 07 00 00 00    	jge    0x1355
0x134e:	83 c1 01             	add    $0x1,%ecx
0x1351:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1355:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1359:	48 83 ec 10          	sub    $0x10,%rsp
0x135d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1361:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1365:	48 83 ec 10          	sub    $0x10,%rsp
0x1369:	44 89 1c 24          	mov    %r11d,(%rsp)
0x136d:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1371:	48 83 ec 10          	sub    $0x10,%rsp
0x1375:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1379:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x137e:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x1383:	48 8b 14 24          	mov    (%rsp),%rdx
0x1387:	48 8b ca             	mov    %rdx,%rcx
0x138a:	48 8b c7             	mov    %rdi,%rax
0x138d:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1391:	3b f0                	cmp    %eax,%esi
0x1393:	0f 83 b4 00 00 00    	jae    0x144d
0x1399:	4d 33 db             	xor    %r11,%r11
0x139c:	49 3b cb             	cmp    %r11,%rcx
0x139f:	0f 84 b8 00 00 00    	je     0x145d
0x13a5:	48 8b c7             	mov    %rdi,%rax
0x13a8:	48 8b 00             	mov    (%rax),%rax
0x13ab:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x13af:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x13b3:	4d 33 db             	xor    %r11,%r11
0x13b6:	49 3b cb             	cmp    %r11,%rcx
0x13b9:	0f 85 0a 00 00 00    	jne    0x13c9
0x13bf:	bb 00 00 00 00       	mov    $0x0,%ebx
0x13c4:	e9 66 00 00 00       	jmpq   0x142f
0x13c9:	48 8b d1             	mov    %rcx,%rdx
0x13cc:	48 8b 1a             	mov    (%rdx),%rbx
0x13cf:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x13d3:	48 3b d0             	cmp    %rax,%rdx
0x13d6:	0f 85 0a 00 00 00    	jne    0x13e6
0x13dc:	bb 01 00 00 00       	mov    $0x1,%ebx
0x13e1:	e9 49 00 00 00       	jmpq   0x142f
0x13e6:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x13ed:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x13f1:	49 8b c0             	mov    %r8,%rax
0x13f4:	99                   	cltd   
0x13f5:	41 f7 f9             	idiv   %r9d
0x13f8:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x13fc:	03 d0                	add    %eax,%edx
0x13fe:	48 8b c3             	mov    %rbx,%rax
0x1401:	48 63 d2             	movslq %edx,%rdx
0x1404:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1409:	48 63 c0             	movslq %eax,%rax
0x140c:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x1411:	4d 63 c0             	movslq %r8d,%r8
0x1414:	49 3b c0             	cmp    %r8,%rax
0x1417:	0f 85 0a 00 00 00    	jne    0x1427
0x141d:	b8 01 00 00 00       	mov    $0x1,%eax
0x1422:	e9 05 00 00 00       	jmpq   0x142c
0x1427:	b8 00 00 00 00       	mov    $0x0,%eax
0x142c:	48 8b d8             	mov    %rax,%rbx
0x142f:	83 fb 00             	cmp    $0x0,%ebx
0x1432:	0f 85 25 00 00 00    	jne    0x145d
0x1438:	48 8b f1             	mov    %rcx,%rsi
0x143b:	90                   	nop
0x143c:	90                   	nop
0x143d:	90                   	nop
0x143e:	e8 00 00 00 00       	callq  0x1443
0x1443:	90                   	nop
0x1444:	48 8b f8             	mov    %rax,%rdi
0x1447:	e8 00 00 00 00       	callq  0x144c
0x144c:	90                   	nop
0x144d:	90                   	nop
0x144e:	e8 00 00 00 00       	callq  0x1453
0x1453:	90                   	nop
0x1454:	48 8b f8             	mov    %rax,%rdi
0x1457:	e8 00 00 00 00       	callq  0x145c
0x145c:	90                   	nop
0x145d:	48 63 f6             	movslq %esi,%rsi
0x1460:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1465:	48 83 c4 30          	add    $0x30,%rsp
0x1469:	48 8b 3d e0 ea ff ff 	mov    -0x1520(%rip),%rdi        # 0xffffff50
0x1470:	be 32 00 00 00       	mov    $0x32,%esi
0x1475:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1479:	48 8b c8             	mov    %rax,%rcx
0x147c:	48 63 f6             	movslq %esi,%rsi
0x147f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1484:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x148a:	0f 8d 07 00 00 00    	jge    0x1497
0x1490:	83 c1 01             	add    $0x1,%ecx
0x1493:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1497:	e9 ea 05 00 00       	jmpq   0x1a86
0x149c:	48 83 ec 10          	sub    $0x10,%rsp
0x14a0:	4c 8b 1d b1 ea ff ff 	mov    -0x154f(%rip),%r11        # 0xffffff58
0x14a7:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14ab:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x14af:	48 83 ec 10          	sub    $0x10,%rsp
0x14b3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14b7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x14bc:	41 85 03             	test   %eax,(%r11)
0x14bf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x14c4:	90                   	nop
0x14c5:	90                   	nop
0x14c6:	90                   	nop
0x14c7:	90                   	nop
0x14c8:	e8 00 00 00 00       	callq  0x14cd
0x14cd:	90                   	nop
0x14ce:	48 83 ec 10          	sub    $0x10,%rsp
0x14d2:	48 89 04 24          	mov    %rax,(%rsp)
0x14d6:	44 8b 1c 24          	mov    (%rsp),%r11d
0x14da:	b8 00 00 00 00       	mov    $0x0,%eax
0x14df:	48 83 c4 10          	add    $0x10,%rsp
0x14e3:	44 3b d8             	cmp    %eax,%r11d
0x14e6:	75 33                	jne    0x151b
0x14e8:	48 8b 3d 71 ea ff ff 	mov    -0x158f(%rip),%rdi        # 0xffffff60
0x14ef:	be 34 00 00 00       	mov    $0x34,%esi
0x14f4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x14f8:	48 8b c8             	mov    %rax,%rcx
0x14fb:	48 63 f6             	movslq %esi,%rsi
0x14fe:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1503:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1509:	0f 8d 07 00 00 00    	jge    0x1516
0x150f:	83 c1 01             	add    $0x1,%ecx
0x1512:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1516:	e9 9f 01 00 00       	jmpq   0x16ba
0x151b:	48 8b 3d 46 ea ff ff 	mov    -0x15ba(%rip),%rdi        # 0xffffff68
0x1522:	be 35 00 00 00       	mov    $0x35,%esi
0x1527:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x152b:	48 8b c8             	mov    %rax,%rcx
0x152e:	48 63 f6             	movslq %esi,%rsi
0x1531:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1536:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x153c:	0f 8d 07 00 00 00    	jge    0x1549
0x1542:	83 c1 01             	add    $0x1,%ecx
0x1545:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1549:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x154d:	48 83 ec 10          	sub    $0x10,%rsp
0x1551:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1555:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1559:	48 83 ec 10          	sub    $0x10,%rsp
0x155d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1561:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1565:	48 83 ec 10          	sub    $0x10,%rsp
0x1569:	4c 89 1c 24          	mov    %r11,(%rsp)
0x156d:	90                   	nop
0x156e:	90                   	nop
0x156f:	90                   	nop
0x1570:	e8 00 00 00 00       	callq  0x1575
0x1575:	90                   	nop
0x1576:	48 83 ec 10          	sub    $0x10,%rsp
0x157a:	48 89 04 24          	mov    %rax,(%rsp)
0x157e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1582:	41 85 03             	test   %eax,(%r11)
0x1585:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1589:	e8 00 00 00 00       	callq  0x158e
0x158e:	90                   	nop
0x158f:	48 83 ec 10          	sub    $0x10,%rsp
0x1593:	48 89 04 24          	mov    %rax,(%rsp)
0x1597:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x159c:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x15a1:	48 8b 14 24          	mov    (%rsp),%rdx
0x15a5:	48 8b ca             	mov    %rdx,%rcx
0x15a8:	48 8b c7             	mov    %rdi,%rax
0x15ab:	48 63 40 10          	movslq 0x10(%rax),%rax
0x15af:	3b f0                	cmp    %eax,%esi
0x15b1:	0f 83 b4 00 00 00    	jae    0x166b
0x15b7:	4d 33 db             	xor    %r11,%r11
0x15ba:	49 3b cb             	cmp    %r11,%rcx
0x15bd:	0f 84 b8 00 00 00    	je     0x167b
0x15c3:	48 8b c7             	mov    %rdi,%rax
0x15c6:	48 8b 00             	mov    (%rax),%rax
0x15c9:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x15cd:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x15d1:	4d 33 db             	xor    %r11,%r11
0x15d4:	49 3b cb             	cmp    %r11,%rcx
0x15d7:	0f 85 0a 00 00 00    	jne    0x15e7
0x15dd:	bb 00 00 00 00       	mov    $0x0,%ebx
0x15e2:	e9 66 00 00 00       	jmpq   0x164d
0x15e7:	48 8b d1             	mov    %rcx,%rdx
0x15ea:	48 8b 1a             	mov    (%rdx),%rbx
0x15ed:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x15f1:	48 3b d0             	cmp    %rax,%rdx
0x15f4:	0f 85 0a 00 00 00    	jne    0x1604
0x15fa:	bb 01 00 00 00       	mov    $0x1,%ebx
0x15ff:	e9 49 00 00 00       	jmpq   0x164d
0x1604:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x160b:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x160f:	49 8b c0             	mov    %r8,%rax
0x1612:	99                   	cltd   
0x1613:	41 f7 f9             	idiv   %r9d
0x1616:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x161a:	03 d0                	add    %eax,%edx
0x161c:	48 8b c3             	mov    %rbx,%rax
0x161f:	48 63 d2             	movslq %edx,%rdx
0x1622:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1627:	48 63 c0             	movslq %eax,%rax
0x162a:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x162f:	4d 63 c0             	movslq %r8d,%r8
0x1632:	49 3b c0             	cmp    %r8,%rax
0x1635:	0f 85 0a 00 00 00    	jne    0x1645
0x163b:	b8 01 00 00 00       	mov    $0x1,%eax
0x1640:	e9 05 00 00 00       	jmpq   0x164a
0x1645:	b8 00 00 00 00       	mov    $0x0,%eax
0x164a:	48 8b d8             	mov    %rax,%rbx
0x164d:	83 fb 00             	cmp    $0x0,%ebx
0x1650:	0f 85 25 00 00 00    	jne    0x167b
0x1656:	48 8b f1             	mov    %rcx,%rsi
0x1659:	90                   	nop
0x165a:	90                   	nop
0x165b:	90                   	nop
0x165c:	e8 00 00 00 00       	callq  0x1661
0x1661:	90                   	nop
0x1662:	48 8b f8             	mov    %rax,%rdi
0x1665:	e8 00 00 00 00       	callq  0x166a
0x166a:	90                   	nop
0x166b:	90                   	nop
0x166c:	e8 00 00 00 00       	callq  0x1671
0x1671:	90                   	nop
0x1672:	48 8b f8             	mov    %rax,%rdi
0x1675:	e8 00 00 00 00       	callq  0x167a
0x167a:	90                   	nop
0x167b:	48 63 f6             	movslq %esi,%rsi
0x167e:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1683:	48 83 c4 30          	add    $0x30,%rsp
0x1687:	48 8b 3d e2 e8 ff ff 	mov    -0x171e(%rip),%rdi        # 0xffffff70
0x168e:	be 39 00 00 00       	mov    $0x39,%esi
0x1693:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1697:	48 8b c8             	mov    %rax,%rcx
0x169a:	48 63 f6             	movslq %esi,%rsi
0x169d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x16a2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x16a8:	0f 8d 07 00 00 00    	jge    0x16b5
0x16ae:	83 c1 01             	add    $0x1,%ecx
0x16b1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x16b5:	e9 cc 03 00 00       	jmpq   0x1a86
0x16ba:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x16be:	48 83 ec 10          	sub    $0x10,%rsp
0x16c2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x16c6:	48 8b 3d ab e8 ff ff 	mov    -0x1755(%rip),%rdi        # 0xffffff78
0x16cd:	be 10 00 00 00       	mov    $0x10,%esi
0x16d2:	48 63 f6             	movslq %esi,%rsi
0x16d5:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x16d9:	48 83 ec 10          	sub    $0x10,%rsp
0x16dd:	48 89 04 24          	mov    %rax,(%rsp)
0x16e1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x16e6:	48 8b 04 24          	mov    (%rsp),%rax
0x16ea:	48 83 c4 20          	add    $0x20,%rsp
0x16ee:	4c 3b d8             	cmp    %rax,%r11
0x16f1:	74 33                	je     0x1726
0x16f3:	48 8b 3d 86 e8 ff ff 	mov    -0x177a(%rip),%rdi        # 0xffffff80
0x16fa:	be 3a 00 00 00       	mov    $0x3a,%esi
0x16ff:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1703:	48 8b c8             	mov    %rax,%rcx
0x1706:	48 63 f6             	movslq %esi,%rsi
0x1709:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x170e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1714:	0f 8d 07 00 00 00    	jge    0x1721
0x171a:	83 c1 01             	add    $0x1,%ecx
0x171d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1721:	e9 93 01 00 00       	jmpq   0x18b9
0x1726:	48 8b 3d 5b e8 ff ff 	mov    -0x17a5(%rip),%rdi        # 0xffffff88
0x172d:	be 3b 00 00 00       	mov    $0x3b,%esi
0x1732:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1736:	48 8b c8             	mov    %rax,%rcx
0x1739:	48 63 f6             	movslq %esi,%rsi
0x173c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1741:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1747:	0f 8d 07 00 00 00    	jge    0x1754
0x174d:	83 c1 01             	add    $0x1,%ecx
0x1750:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1754:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1758:	48 83 ec 10          	sub    $0x10,%rsp
0x175c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1760:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1764:	48 83 ec 10          	sub    $0x10,%rsp
0x1768:	44 89 1c 24          	mov    %r11d,(%rsp)
0x176c:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1770:	48 83 ec 10          	sub    $0x10,%rsp
0x1774:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1778:	e8 00 00 00 00       	callq  0x177d
0x177d:	90                   	nop
0x177e:	48 83 ec 10          	sub    $0x10,%rsp
0x1782:	f3 0f 11 04 24       	movss  %xmm0,(%rsp)
0x1787:	90                   	nop
0x1788:	e8 00 00 00 00       	callq  0x178d
0x178d:	90                   	nop
0x178e:	48 83 ec 10          	sub    $0x10,%rsp
0x1792:	48 89 04 24          	mov    %rax,(%rsp)
0x1796:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x179b:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x17a0:	48 8b 14 24          	mov    (%rsp),%rdx
0x17a4:	48 8b ca             	mov    %rdx,%rcx
0x17a7:	48 8b c7             	mov    %rdi,%rax
0x17aa:	48 63 40 10          	movslq 0x10(%rax),%rax
0x17ae:	3b f0                	cmp    %eax,%esi
0x17b0:	0f 83 b4 00 00 00    	jae    0x186a
0x17b6:	4d 33 db             	xor    %r11,%r11
0x17b9:	49 3b cb             	cmp    %r11,%rcx
0x17bc:	0f 84 b8 00 00 00    	je     0x187a
0x17c2:	48 8b c7             	mov    %rdi,%rax
0x17c5:	48 8b 00             	mov    (%rax),%rax
0x17c8:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x17cc:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x17d0:	4d 33 db             	xor    %r11,%r11
0x17d3:	49 3b cb             	cmp    %r11,%rcx
0x17d6:	0f 85 0a 00 00 00    	jne    0x17e6
0x17dc:	bb 00 00 00 00       	mov    $0x0,%ebx
0x17e1:	e9 66 00 00 00       	jmpq   0x184c
0x17e6:	48 8b d1             	mov    %rcx,%rdx
0x17e9:	48 8b 1a             	mov    (%rdx),%rbx
0x17ec:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x17f0:	48 3b d0             	cmp    %rax,%rdx
0x17f3:	0f 85 0a 00 00 00    	jne    0x1803
0x17f9:	bb 01 00 00 00       	mov    $0x1,%ebx
0x17fe:	e9 49 00 00 00       	jmpq   0x184c
0x1803:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x180a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x180e:	49 8b c0             	mov    %r8,%rax
0x1811:	99                   	cltd   
0x1812:	41 f7 f9             	idiv   %r9d
0x1815:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1819:	03 d0                	add    %eax,%edx
0x181b:	48 8b c3             	mov    %rbx,%rax
0x181e:	48 63 d2             	movslq %edx,%rdx
0x1821:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1826:	48 63 c0             	movslq %eax,%rax
0x1829:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x182e:	4d 63 c0             	movslq %r8d,%r8
0x1831:	49 3b c0             	cmp    %r8,%rax
0x1834:	0f 85 0a 00 00 00    	jne    0x1844
0x183a:	b8 01 00 00 00       	mov    $0x1,%eax
0x183f:	e9 05 00 00 00       	jmpq   0x1849
0x1844:	b8 00 00 00 00       	mov    $0x0,%eax
0x1849:	48 8b d8             	mov    %rax,%rbx
0x184c:	83 fb 00             	cmp    $0x0,%ebx
0x184f:	0f 85 25 00 00 00    	jne    0x187a
0x1855:	48 8b f1             	mov    %rcx,%rsi
0x1858:	90                   	nop
0x1859:	90                   	nop
0x185a:	90                   	nop
0x185b:	e8 00 00 00 00       	callq  0x1860
0x1860:	90                   	nop
0x1861:	48 8b f8             	mov    %rax,%rdi
0x1864:	e8 00 00 00 00       	callq  0x1869
0x1869:	90                   	nop
0x186a:	90                   	nop
0x186b:	e8 00 00 00 00       	callq  0x1870
0x1870:	90                   	nop
0x1871:	48 8b f8             	mov    %rax,%rdi
0x1874:	e8 00 00 00 00       	callq  0x1879
0x1879:	90                   	nop
0x187a:	48 63 f6             	movslq %esi,%rsi
0x187d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1882:	48 83 c4 30          	add    $0x30,%rsp
0x1886:	48 8b 3d 03 e7 ff ff 	mov    -0x18fd(%rip),%rdi        # 0xffffff90
0x188d:	be 3f 00 00 00       	mov    $0x3f,%esi
0x1892:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1896:	48 8b c8             	mov    %rax,%rcx
0x1899:	48 63 f6             	movslq %esi,%rsi
0x189c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x18a1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x18a7:	0f 8d 07 00 00 00    	jge    0x18b4
0x18ad:	83 c1 01             	add    $0x1,%ecx
0x18b0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x18b4:	e9 cd 01 00 00       	jmpq   0x1a86
0x18b9:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x18bd:	48 83 ec 10          	sub    $0x10,%rsp
0x18c1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x18c5:	48 8b 3d cc e6 ff ff 	mov    -0x1934(%rip),%rdi        # 0xffffff98
0x18cc:	be 40 00 00 00       	mov    $0x40,%esi
0x18d1:	48 63 f6             	movslq %esi,%rsi
0x18d4:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x18d8:	48 83 ec 10          	sub    $0x10,%rsp
0x18dc:	48 89 04 24          	mov    %rax,(%rsp)
0x18e0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x18e5:	48 8b 04 24          	mov    (%rsp),%rax
0x18e9:	48 83 c4 20          	add    $0x20,%rsp
0x18ed:	4c 3b d8             	cmp    %rax,%r11
0x18f0:	74 33                	je     0x1925
0x18f2:	48 8b 3d a7 e6 ff ff 	mov    -0x1959(%rip),%rdi        # 0xffffffa0
0x18f9:	be 40 00 00 00       	mov    $0x40,%esi
0x18fe:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1902:	48 8b c8             	mov    %rax,%rcx
0x1905:	48 63 f6             	movslq %esi,%rsi
0x1908:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x190d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1913:	0f 8d 07 00 00 00    	jge    0x1920
0x1919:	83 c1 01             	add    $0x1,%ecx
0x191c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1920:	e9 61 01 00 00       	jmpq   0x1a86
0x1925:	48 8b 3d 7c e6 ff ff 	mov    -0x1984(%rip),%rdi        # 0xffffffa8
0x192c:	be 41 00 00 00       	mov    $0x41,%esi
0x1931:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1935:	48 8b c8             	mov    %rax,%rcx
0x1938:	48 63 f6             	movslq %esi,%rsi
0x193b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1940:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1946:	0f 8d 07 00 00 00    	jge    0x1953
0x194c:	83 c1 01             	add    $0x1,%ecx
0x194f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1953:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1957:	48 83 ec 10          	sub    $0x10,%rsp
0x195b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x195f:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1963:	48 83 ec 10          	sub    $0x10,%rsp
0x1967:	44 89 1c 24          	mov    %r11d,(%rsp)
0x196b:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x196f:	48 83 ec 10          	sub    $0x10,%rsp
0x1973:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1977:	90                   	nop
0x1978:	e8 00 00 00 00       	callq  0x197d
0x197d:	90                   	nop
0x197e:	48 83 ec 20          	sub    $0x20,%rsp
0x1982:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
0x1988:	e8 00 00 00 00       	callq  0x198d
0x198d:	90                   	nop
0x198e:	48 83 ec 10          	sub    $0x10,%rsp
0x1992:	48 89 04 24          	mov    %rax,(%rsp)
0x1996:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x199b:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x19a0:	48 8b 14 24          	mov    (%rsp),%rdx
0x19a4:	48 8b ca             	mov    %rdx,%rcx
0x19a7:	48 8b c7             	mov    %rdi,%rax
0x19aa:	48 63 40 10          	movslq 0x10(%rax),%rax
0x19ae:	3b f0                	cmp    %eax,%esi
0x19b0:	0f 83 b4 00 00 00    	jae    0x1a6a
0x19b6:	4d 33 db             	xor    %r11,%r11
0x19b9:	49 3b cb             	cmp    %r11,%rcx
0x19bc:	0f 84 b8 00 00 00    	je     0x1a7a
0x19c2:	48 8b c7             	mov    %rdi,%rax
0x19c5:	48 8b 00             	mov    (%rax),%rax
0x19c8:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x19cc:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x19d0:	4d 33 db             	xor    %r11,%r11
0x19d3:	49 3b cb             	cmp    %r11,%rcx
0x19d6:	0f 85 0a 00 00 00    	jne    0x19e6
0x19dc:	bb 00 00 00 00       	mov    $0x0,%ebx
0x19e1:	e9 66 00 00 00       	jmpq   0x1a4c
0x19e6:	48 8b d1             	mov    %rcx,%rdx
0x19e9:	48 8b 1a             	mov    (%rdx),%rbx
0x19ec:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x19f0:	48 3b d0             	cmp    %rax,%rdx
0x19f3:	0f 85 0a 00 00 00    	jne    0x1a03
0x19f9:	bb 01 00 00 00       	mov    $0x1,%ebx
0x19fe:	e9 49 00 00 00       	jmpq   0x1a4c
0x1a03:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x1a0a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x1a0e:	49 8b c0             	mov    %r8,%rax
0x1a11:	99                   	cltd   
0x1a12:	41 f7 f9             	idiv   %r9d
0x1a15:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1a19:	03 d0                	add    %eax,%edx
0x1a1b:	48 8b c3             	mov    %rbx,%rax
0x1a1e:	48 63 d2             	movslq %edx,%rdx
0x1a21:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1a26:	48 63 c0             	movslq %eax,%rax
0x1a29:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x1a2e:	4d 63 c0             	movslq %r8d,%r8
0x1a31:	49 3b c0             	cmp    %r8,%rax
0x1a34:	0f 85 0a 00 00 00    	jne    0x1a44
0x1a3a:	b8 01 00 00 00       	mov    $0x1,%eax
0x1a3f:	e9 05 00 00 00       	jmpq   0x1a49
0x1a44:	b8 00 00 00 00       	mov    $0x0,%eax
0x1a49:	48 8b d8             	mov    %rax,%rbx
0x1a4c:	83 fb 00             	cmp    $0x0,%ebx
0x1a4f:	0f 85 25 00 00 00    	jne    0x1a7a
0x1a55:	48 8b f1             	mov    %rcx,%rsi
0x1a58:	90                   	nop
0x1a59:	90                   	nop
0x1a5a:	90                   	nop
0x1a5b:	e8 00 00 00 00       	callq  0x1a60
0x1a60:	90                   	nop
0x1a61:	48 8b f8             	mov    %rax,%rdi
0x1a64:	e8 00 00 00 00       	callq  0x1a69
0x1a69:	90                   	nop
0x1a6a:	90                   	nop
0x1a6b:	e8 00 00 00 00       	callq  0x1a70
0x1a70:	90                   	nop
0x1a71:	48 8b f8             	mov    %rax,%rdi
0x1a74:	e8 00 00 00 00       	callq  0x1a79
0x1a79:	90                   	nop
0x1a7a:	48 63 f6             	movslq %esi,%rsi
0x1a7d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1a82:	48 83 c4 30          	add    $0x30,%rsp
0x1a86:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1a8a:	41 83 c3 01          	add    $0x1,%r11d
0x1a8e:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x1a92:	48 8b 3d 17 e5 ff ff 	mov    -0x1ae9(%rip),%rdi        # 0xffffffb0
0x1a99:	be 45 00 00 00       	mov    $0x45,%esi
0x1a9e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1aa2:	48 8b c8             	mov    %rax,%rcx
0x1aa5:	48 63 f6             	movslq %esi,%rsi
0x1aa8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1aad:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1ab3:	0f 8d 07 00 00 00    	jge    0x1ac0
0x1ab9:	83 c1 01             	add    $0x1,%ecx
0x1abc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1ac0:	48 8b 3d f1 e4 ff ff 	mov    -0x1b0f(%rip),%rdi        # 0xffffffb8
0x1ac7:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x1acb:	83 e8 01             	sub    $0x1,%eax
0x1ace:	89 47 30             	mov    %eax,0x30(%rdi)
0x1ad1:	4d 8b 36             	mov    (%r14),%r14
0x1ad4:	e9 cf e9 ff ff       	jmpq   0x4a8
0x1ad9:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1add:	48 83 ec 10          	sub    $0x10,%rsp
0x1ae1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ae5:	4d 33 db             	xor    %r11,%r11
0x1ae8:	48 83 ec 10          	sub    $0x10,%rsp
0x1aec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1af0:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1af4:	48 83 ec 10          	sub    $0x10,%rsp
0x1af8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1afc:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x1b01:	41 85 03             	test   %eax,(%r11)
0x1b04:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1b09:	e8 00 00 00 00       	callq  0x1b0e
0x1b0e:	90                   	nop
0x1b0f:	48 83 ec 10          	sub    $0x10,%rsp
0x1b13:	48 89 04 24          	mov    %rax,(%rsp)
0x1b17:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b1b:	48 83 c4 10          	add    $0x10,%rsp
0x1b1f:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x1b23:	48 8b 3d 96 e4 ff ff 	mov    -0x1b6a(%rip),%rdi        # 0xffffffc0
0x1b2a:	be 18 00 00 00       	mov    $0x18,%esi
0x1b2f:	48 63 f6             	movslq %esi,%rsi
0x1b32:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1b36:	48 83 ec 10          	sub    $0x10,%rsp
0x1b3a:	48 89 04 24          	mov    %rax,(%rsp)
0x1b3e:	48 8b 3d 83 e4 ff ff 	mov    -0x1b7d(%rip),%rdi        # 0xffffffc8
0x1b45:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x1b49:	48 8b 35 80 e4 ff ff 	mov    -0x1b80(%rip),%rsi        # 0xffffffd0
0x1b50:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1b54:	49 8b ce             	mov    %r14,%rcx
0x1b57:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1b5b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1b62:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x1b69:	48 8b d9             	mov    %rcx,%rbx
0x1b6c:	48 03 da             	add    %rdx,%rbx
0x1b6f:	4c 8b cb             	mov    %rbx,%r9
0x1b72:	4d 3b c8             	cmp    %r8,%r9
0x1b75:	0f 86 14 00 00 00    	jbe    0x1b8f
0x1b7b:	48 8b fe             	mov    %rsi,%rdi
0x1b7e:	48 8b f2             	mov    %rdx,%rsi
0x1b81:	48 8b d0             	mov    %rax,%rdx
0x1b84:	e8 00 00 00 00       	callq  0x1b89
0x1b89:	90                   	nop
0x1b8a:	e9 0a 00 00 00       	jmpq   0x1b99
0x1b8f:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1b96:	48 8b c1             	mov    %rcx,%rax
0x1b99:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1b9d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1ba1:	90                   	nop
0x1ba2:	90                   	nop
0x1ba3:	90                   	nop
0x1ba4:	e8 00 00 00 00       	callq  0x1ba9
0x1ba9:	90                   	nop
0x1baa:	90                   	nop
0x1bab:	90                   	nop
0x1bac:	e8 00 00 00 00       	callq  0x1bb1
0x1bb1:	90                   	nop
0x1bb2:	83 f8 00             	cmp    $0x0,%eax
0x1bb5:	0f 84 27 00 00 00    	je     0x1be2
0x1bbb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1bbf:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1bc3:	85 06                	test   %eax,(%rsi)
0x1bc5:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1bc9:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1bcd:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1bd1:	83 e2 ff             	and    $0xffffffff,%edx
0x1bd4:	48 8b fa             	mov    %rdx,%rdi
0x1bd7:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1bdb:	90                   	nop
0x1bdc:	e8 00 00 00 00       	callq  0x1be1
0x1be1:	90                   	nop
0x1be2:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1be6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1bea:	48 89 38             	mov    %rdi,(%rax)
0x1bed:	48 83 ec 10          	sub    $0x10,%rsp
0x1bf1:	48 89 04 24          	mov    %rax,(%rsp)
0x1bf5:	48 83 ec 10          	sub    $0x10,%rsp
0x1bf9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1bfe:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c02:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1c06:	41 85 03             	test   %eax,(%r11)
0x1c09:	e8 00 00 00 00       	callq  0x1c0e
0x1c0e:	90                   	nop
0x1c0f:	4c 8b 1d c2 e3 ff ff 	mov    -0x1c3e(%rip),%r11        # 0xffffffd8
0x1c16:	48 83 ec 10          	sub    $0x10,%rsp
0x1c1a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c1e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1c23:	41 85 03             	test   %eax,(%r11)
0x1c26:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1c2b:	e8 00 00 00 00       	callq  0x1c30
0x1c30:	90                   	nop
0x1c31:	48 83 ec 10          	sub    $0x10,%rsp
0x1c35:	48 89 04 24          	mov    %rax,(%rsp)
0x1c39:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x1c3d:	48 83 ec 10          	sub    $0x10,%rsp
0x1c41:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c45:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1c4a:	41 85 03             	test   %eax,(%r11)
0x1c4d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1c52:	e8 00 00 00 00       	callq  0x1c57
0x1c57:	90                   	nop
0x1c58:	48 83 ec 10          	sub    $0x10,%rsp
0x1c5c:	48 89 04 24          	mov    %rax,(%rsp)
0x1c60:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1c64:	41 85 03             	test   %eax,(%r11)
0x1c67:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1c6b:	e8 00 00 00 00       	callq  0x1c70
0x1c70:	90                   	nop
0x1c71:	48 83 ec 10          	sub    $0x10,%rsp
0x1c75:	48 89 04 24          	mov    %rax,(%rsp)
0x1c79:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1c7e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1c83:	48 8b 15 56 e3 ff ff 	mov    -0x1caa(%rip),%rdx        # 0xffffffe0
0x1c8a:	b9 4c 00 00 00       	mov    $0x4c,%ecx
0x1c8f:	48 8b c6             	mov    %rsi,%rax
0x1c92:	48 8b 00             	mov    (%rax),%rax
0x1c95:	48 63 ff             	movslq %edi,%rdi
0x1c98:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1c9d:	48 8b fa             	mov    %rdx,%rdi
0x1ca0:	48 8b d1             	mov    %rcx,%rdx
0x1ca3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1ca8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1cac:	90                   	nop
0x1cad:	90                   	nop
0x1cae:	e8 00 00 00 00       	callq  0x1cb3
0x1cb3:	90                   	nop
0x1cb4:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1cb8:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1cbc:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1cc1:	ff d0                	callq  *%rax
0x1cc3:	90                   	nop
0x1cc4:	48 83 c5 40          	add    $0x40,%rbp
0x1cc8:	c9                   	leaveq 
0x1cc9:	c2 10 00             	retq   $0x10

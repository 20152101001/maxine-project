0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 e0 00 00          	enterq $0xe0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 e8 e0 ff 	mov    %rax,-0x1f18(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 61 fd ff ff 	mov    %r11,-0x29f(%rip)        # 0xfffffd88
0x27:	48 8b 3d 62 fd ff ff 	mov    -0x29e(%rip),%rdi        # 0xfffffd90
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
0x53:	48 8b 3d 3e fd ff ff 	mov    -0x2c2(%rip),%rdi        # 0xfffffd98
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d 2b fd ff ff 	mov    -0x2d5(%rip),%r11        # 0xfffffda0
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 1a fd ff ff 	mov    -0x2e6(%rip),%rdx        # 0xfffffda8
0x8e:	b9 01 00 00 00       	mov    $0x1,%ecx
0x93:	48 8b c6             	mov    %rsi,%rax
0x96:	48 8b 00             	mov    (%rax),%rax
0x99:	48 63 ff             	movslq %edi,%rdi
0x9c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa1:	48 8b fa             	mov    %rdx,%rdi
0xa4:	48 8b d1             	mov    %rcx,%rdx
0xa7:	b9 03 00 00 00       	mov    $0x3,%ecx
0xac:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb0:	90                   	nop
0xb1:	90                   	nop
0xb2:	e8 00 00 00 00       	callq  0xb7
0xb7:	90                   	nop
0xb8:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbc:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xc0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xc5:	ff d0                	callq  *%rax
0xc7:	90                   	nop
0xc8:	48 8b 3d e1 fc ff ff 	mov    -0x31f(%rip),%rdi        # 0xfffffdb0
0xcf:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xd3:	48 8b 35 de fc ff ff 	mov    -0x322(%rip),%rsi        # 0xfffffdb8
0xda:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xde:	49 8b ce             	mov    %r14,%rcx
0xe1:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xe5:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xec:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xf3:	48 8b d9             	mov    %rcx,%rbx
0xf6:	48 03 da             	add    %rdx,%rbx
0xf9:	4c 8b cb             	mov    %rbx,%r9
0xfc:	4d 3b c8             	cmp    %r8,%r9
0xff:	0f 86 14 00 00 00    	jbe    0x119
0x105:	48 8b fe             	mov    %rsi,%rdi
0x108:	48 8b f2             	mov    %rdx,%rsi
0x10b:	48 8b d0             	mov    %rax,%rdx
0x10e:	e8 00 00 00 00       	callq  0x113
0x113:	90                   	nop
0x114:	e9 0a 00 00 00       	jmpq   0x123
0x119:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x120:	48 8b c1             	mov    %rcx,%rax
0x123:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x127:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x12b:	90                   	nop
0x12c:	90                   	nop
0x12d:	90                   	nop
0x12e:	e8 00 00 00 00       	callq  0x133
0x133:	90                   	nop
0x134:	90                   	nop
0x135:	90                   	nop
0x136:	e8 00 00 00 00       	callq  0x13b
0x13b:	90                   	nop
0x13c:	83 f8 00             	cmp    $0x0,%eax
0x13f:	0f 84 27 00 00 00    	je     0x16c
0x145:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x149:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x14d:	85 06                	test   %eax,(%rsi)
0x14f:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x153:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x157:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x15b:	83 e2 ff             	and    $0xffffffff,%edx
0x15e:	48 8b fa             	mov    %rdx,%rdi
0x161:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x165:	90                   	nop
0x166:	e8 00 00 00 00       	callq  0x16b
0x16b:	90                   	nop
0x16c:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x170:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x174:	48 89 38             	mov    %rdi,(%rax)
0x177:	48 83 ec 10          	sub    $0x10,%rsp
0x17b:	48 89 04 24          	mov    %rax,(%rsp)
0x17f:	48 83 ec 10          	sub    $0x10,%rsp
0x183:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x188:	4c 89 1c 24          	mov    %r11,(%rsp)
0x18c:	4c 8b 1d 2d fc ff ff 	mov    -0x3d3(%rip),%r11        # 0xfffffdc0
0x193:	48 83 ec 10          	sub    $0x10,%rsp
0x197:	4c 89 1c 24          	mov    %r11,(%rsp)
0x19b:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1a0:	41 85 03             	test   %eax,(%r11)
0x1a3:	e8 00 00 00 00       	callq  0x1a8
0x1a8:	90                   	nop
0x1a9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1ad:	48 83 c4 10          	add    $0x10,%rsp
0x1b1:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x1b5:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1b9:	48 83 ec 10          	sub    $0x10,%rsp
0x1bd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c1:	bf 33 00 00 00       	mov    $0x33,%edi
0x1c6:	48 8b 34 24          	mov    (%rsp),%rsi
0x1ca:	48 8b 15 f7 fb ff ff 	mov    -0x409(%rip),%rdx        # 0xfffffdc8
0x1d1:	b9 0b 00 00 00       	mov    $0xb,%ecx
0x1d6:	48 8b c6             	mov    %rsi,%rax
0x1d9:	48 8b 00             	mov    (%rax),%rax
0x1dc:	48 63 ff             	movslq %edi,%rdi
0x1df:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1e4:	48 8b fa             	mov    %rdx,%rdi
0x1e7:	48 8b d1             	mov    %rcx,%rdx
0x1ea:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1ef:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1f3:	90                   	nop
0x1f4:	90                   	nop
0x1f5:	e8 00 00 00 00       	callq  0x1fa
0x1fa:	90                   	nop
0x1fb:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1ff:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x203:	48 8b 3c 24          	mov    (%rsp),%rdi
0x207:	ff d0                	callq  *%rax
0x209:	90                   	nop
0x20a:	48 83 ec 10          	sub    $0x10,%rsp
0x20e:	48 89 04 24          	mov    %rax,(%rsp)
0x212:	48 83 c4 10          	add    $0x10,%rsp
0x216:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x21c:	48 83 ec 10          	sub    $0x10,%rsp
0x220:	44 89 1c 24          	mov    %r11d,(%rsp)
0x224:	44 8b 1c 24          	mov    (%rsp),%r11d
0x228:	48 83 c4 10          	add    $0x10,%rsp
0x22c:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x230:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x234:	48 83 ec 10          	sub    $0x10,%rsp
0x238:	44 89 1c 24          	mov    %r11d,(%rsp)
0x23c:	41 bb e8 03 00 00    	mov    $0x3e8,%r11d
0x242:	48 83 ec 10          	sub    $0x10,%rsp
0x246:	44 89 1c 24          	mov    %r11d,(%rsp)
0x24a:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x24f:	8b 04 24             	mov    (%rsp),%eax
0x252:	48 83 c4 20          	add    $0x20,%rsp
0x256:	44 3b d8             	cmp    %eax,%r11d
0x259:	7c 33                	jl     0x28e
0x25b:	48 8b 3d 6e fb ff ff 	mov    -0x492(%rip),%rdi        # 0xfffffdd0
0x262:	be 13 00 00 00       	mov    $0x13,%esi
0x267:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x26b:	48 8b c8             	mov    %rax,%rcx
0x26e:	48 63 f6             	movslq %esi,%rsi
0x271:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x276:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x27c:	0f 8d 07 00 00 00    	jge    0x289
0x282:	83 c1 01             	add    $0x1,%ecx
0x285:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x289:	e9 e9 04 00 00       	jmpq   0x777
0x28e:	48 8b 3d 43 fb ff ff 	mov    -0x4bd(%rip),%rdi        # 0xfffffdd8
0x295:	be 14 00 00 00       	mov    $0x14,%esi
0x29a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x29e:	48 8b c8             	mov    %rax,%rcx
0x2a1:	48 63 f6             	movslq %esi,%rsi
0x2a4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2a9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2af:	0f 8d 07 00 00 00    	jge    0x2bc
0x2b5:	83 c1 01             	add    $0x1,%ecx
0x2b8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2bc:	48 8b 3d 1d fb ff ff 	mov    -0x4e3(%rip),%rdi        # 0xfffffde0
0x2c3:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x2c7:	48 8b 35 1a fb ff ff 	mov    -0x4e6(%rip),%rsi        # 0xfffffde8
0x2ce:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2d2:	49 8b ce             	mov    %r14,%rcx
0x2d5:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x2d9:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x2e0:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x2e7:	48 8b d9             	mov    %rcx,%rbx
0x2ea:	48 03 da             	add    %rdx,%rbx
0x2ed:	4c 8b cb             	mov    %rbx,%r9
0x2f0:	4d 3b c8             	cmp    %r8,%r9
0x2f3:	0f 86 14 00 00 00    	jbe    0x30d
0x2f9:	48 8b fe             	mov    %rsi,%rdi
0x2fc:	48 8b f2             	mov    %rdx,%rsi
0x2ff:	48 8b d0             	mov    %rax,%rdx
0x302:	e8 00 00 00 00       	callq  0x307
0x307:	90                   	nop
0x308:	e9 0a 00 00 00       	jmpq   0x317
0x30d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x314:	48 8b c1             	mov    %rcx,%rax
0x317:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x31b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x31f:	90                   	nop
0x320:	90                   	nop
0x321:	90                   	nop
0x322:	e8 00 00 00 00       	callq  0x327
0x327:	90                   	nop
0x328:	90                   	nop
0x329:	90                   	nop
0x32a:	e8 00 00 00 00       	callq  0x32f
0x32f:	90                   	nop
0x330:	83 f8 00             	cmp    $0x0,%eax
0x333:	0f 84 27 00 00 00    	je     0x360
0x339:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x33d:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x341:	85 06                	test   %eax,(%rsi)
0x343:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x347:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x34b:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x34f:	83 e2 ff             	and    $0xffffffff,%edx
0x352:	48 8b fa             	mov    %rdx,%rdi
0x355:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x359:	90                   	nop
0x35a:	e8 00 00 00 00       	callq  0x35f
0x35f:	90                   	nop
0x360:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x364:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x368:	48 89 38             	mov    %rdi,(%rax)
0x36b:	48 83 ec 10          	sub    $0x10,%rsp
0x36f:	48 89 04 24          	mov    %rax,(%rsp)
0x373:	48 83 ec 10          	sub    $0x10,%rsp
0x377:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x37c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x380:	48 8b 3d 69 fa ff ff 	mov    -0x597(%rip),%rdi        # 0xfffffdf0
0x387:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x38b:	48 8b 35 66 fa ff ff 	mov    -0x59a(%rip),%rsi        # 0xfffffdf8
0x392:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x396:	49 8b ce             	mov    %r14,%rcx
0x399:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x39d:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x3a4:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x3ab:	48 8b d9             	mov    %rcx,%rbx
0x3ae:	48 03 da             	add    %rdx,%rbx
0x3b1:	4c 8b cb             	mov    %rbx,%r9
0x3b4:	4d 3b c8             	cmp    %r8,%r9
0x3b7:	0f 86 14 00 00 00    	jbe    0x3d1
0x3bd:	48 8b fe             	mov    %rsi,%rdi
0x3c0:	48 8b f2             	mov    %rdx,%rsi
0x3c3:	48 8b d0             	mov    %rax,%rdx
0x3c6:	e8 00 00 00 00       	callq  0x3cb
0x3cb:	90                   	nop
0x3cc:	e9 0a 00 00 00       	jmpq   0x3db
0x3d1:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x3d8:	48 8b c1             	mov    %rcx,%rax
0x3db:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3df:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3e3:	90                   	nop
0x3e4:	90                   	nop
0x3e5:	90                   	nop
0x3e6:	e8 00 00 00 00       	callq  0x3eb
0x3eb:	90                   	nop
0x3ec:	90                   	nop
0x3ed:	90                   	nop
0x3ee:	e8 00 00 00 00       	callq  0x3f3
0x3f3:	90                   	nop
0x3f4:	83 f8 00             	cmp    $0x0,%eax
0x3f7:	0f 84 27 00 00 00    	je     0x424
0x3fd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x401:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x405:	85 06                	test   %eax,(%rsi)
0x407:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x40b:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x40f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x413:	83 e2 ff             	and    $0xffffffff,%edx
0x416:	48 8b fa             	mov    %rdx,%rdi
0x419:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x41d:	90                   	nop
0x41e:	e8 00 00 00 00       	callq  0x423
0x423:	90                   	nop
0x424:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x428:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x42c:	48 89 38             	mov    %rdi,(%rax)
0x42f:	48 83 ec 10          	sub    $0x10,%rsp
0x433:	48 89 04 24          	mov    %rax,(%rsp)
0x437:	48 83 ec 10          	sub    $0x10,%rsp
0x43b:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x440:	4c 89 1c 24          	mov    %r11,(%rsp)
0x444:	48 8b 3d b5 f9 ff ff 	mov    -0x64b(%rip),%rdi        # 0xfffffe00
0x44b:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x44f:	48 8b 35 b2 f9 ff ff 	mov    -0x64e(%rip),%rsi        # 0xfffffe08
0x456:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x45a:	49 8b ce             	mov    %r14,%rcx
0x45d:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x461:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x468:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x46f:	48 8b d9             	mov    %rcx,%rbx
0x472:	48 03 da             	add    %rdx,%rbx
0x475:	4c 8b cb             	mov    %rbx,%r9
0x478:	4d 3b c8             	cmp    %r8,%r9
0x47b:	0f 86 14 00 00 00    	jbe    0x495
0x481:	48 8b fe             	mov    %rsi,%rdi
0x484:	48 8b f2             	mov    %rdx,%rsi
0x487:	48 8b d0             	mov    %rax,%rdx
0x48a:	e8 00 00 00 00       	callq  0x48f
0x48f:	90                   	nop
0x490:	e9 0a 00 00 00       	jmpq   0x49f
0x495:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x49c:	48 8b c1             	mov    %rcx,%rax
0x49f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4a3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4a7:	90                   	nop
0x4a8:	90                   	nop
0x4a9:	90                   	nop
0x4aa:	e8 00 00 00 00       	callq  0x4af
0x4af:	90                   	nop
0x4b0:	90                   	nop
0x4b1:	90                   	nop
0x4b2:	e8 00 00 00 00       	callq  0x4b7
0x4b7:	90                   	nop
0x4b8:	83 f8 00             	cmp    $0x0,%eax
0x4bb:	0f 84 27 00 00 00    	je     0x4e8
0x4c1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4c5:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x4c9:	85 06                	test   %eax,(%rsi)
0x4cb:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x4cf:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x4d3:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x4d7:	83 e2 ff             	and    $0xffffffff,%edx
0x4da:	48 8b fa             	mov    %rdx,%rdi
0x4dd:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x4e1:	90                   	nop
0x4e2:	e8 00 00 00 00       	callq  0x4e7
0x4e7:	90                   	nop
0x4e8:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x4ec:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4f0:	48 89 38             	mov    %rdi,(%rax)
0x4f3:	48 83 ec 10          	sub    $0x10,%rsp
0x4f7:	48 89 04 24          	mov    %rax,(%rsp)
0x4fb:	48 83 ec 10          	sub    $0x10,%rsp
0x4ff:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x504:	4c 89 1c 24          	mov    %r11,(%rsp)
0x508:	4c 8b 1c 24          	mov    (%rsp),%r11
0x50c:	41 85 03             	test   %eax,(%r11)
0x50f:	90                   	nop
0x510:	e8 00 00 00 00       	callq  0x515
0x515:	90                   	nop
0x516:	4c 8b 1d f3 f8 ff ff 	mov    -0x70d(%rip),%r11        # 0xfffffe10
0x51d:	48 83 ec 10          	sub    $0x10,%rsp
0x521:	4c 89 1c 24          	mov    %r11,(%rsp)
0x525:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x52a:	41 85 03             	test   %eax,(%r11)
0x52d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x532:	e8 00 00 00 00       	callq  0x537
0x537:	90                   	nop
0x538:	48 83 ec 10          	sub    $0x10,%rsp
0x53c:	48 89 04 24          	mov    %rax,(%rsp)
0x540:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x544:	48 83 ec 10          	sub    $0x10,%rsp
0x548:	44 89 1c 24          	mov    %r11d,(%rsp)
0x54c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x551:	41 85 03             	test   %eax,(%r11)
0x554:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x559:	e8 00 00 00 00       	callq  0x55e
0x55e:	90                   	nop
0x55f:	48 83 ec 10          	sub    $0x10,%rsp
0x563:	48 89 04 24          	mov    %rax,(%rsp)
0x567:	4c 8b 1c 24          	mov    (%rsp),%r11
0x56b:	41 85 03             	test   %eax,(%r11)
0x56e:	48 8b 3c 24          	mov    (%rsp),%rdi
0x572:	e8 00 00 00 00       	callq  0x577
0x577:	90                   	nop
0x578:	48 83 ec 10          	sub    $0x10,%rsp
0x57c:	48 89 04 24          	mov    %rax,(%rsp)
0x580:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x585:	41 85 03             	test   %eax,(%r11)
0x588:	e8 00 00 00 00       	callq  0x58d
0x58d:	90                   	nop
0x58e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x593:	41 85 03             	test   %eax,(%r11)
0x596:	90                   	nop
0x597:	90                   	nop
0x598:	e8 00 00 00 00       	callq  0x59d
0x59d:	90                   	nop
0x59e:	48 8b 3d 73 f8 ff ff 	mov    -0x78d(%rip),%rdi        # 0xfffffe18
0x5a5:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5a9:	48 8b 35 70 f8 ff ff 	mov    -0x790(%rip),%rsi        # 0xfffffe20
0x5b0:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x5b4:	49 8b ce             	mov    %r14,%rcx
0x5b7:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x5bb:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x5c2:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x5c9:	48 8b d9             	mov    %rcx,%rbx
0x5cc:	48 03 da             	add    %rdx,%rbx
0x5cf:	4c 8b cb             	mov    %rbx,%r9
0x5d2:	4d 3b c8             	cmp    %r8,%r9
0x5d5:	0f 86 14 00 00 00    	jbe    0x5ef
0x5db:	48 8b fe             	mov    %rsi,%rdi
0x5de:	48 8b f2             	mov    %rdx,%rsi
0x5e1:	48 8b d0             	mov    %rax,%rdx
0x5e4:	e8 00 00 00 00       	callq  0x5e9
0x5e9:	90                   	nop
0x5ea:	e9 0a 00 00 00       	jmpq   0x5f9
0x5ef:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x5f6:	48 8b c1             	mov    %rcx,%rax
0x5f9:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x5fd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x601:	90                   	nop
0x602:	90                   	nop
0x603:	90                   	nop
0x604:	e8 00 00 00 00       	callq  0x609
0x609:	90                   	nop
0x60a:	90                   	nop
0x60b:	90                   	nop
0x60c:	e8 00 00 00 00       	callq  0x611
0x611:	90                   	nop
0x612:	83 f8 00             	cmp    $0x0,%eax
0x615:	0f 84 27 00 00 00    	je     0x642
0x61b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x61f:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x623:	85 06                	test   %eax,(%rsi)
0x625:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x629:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x62d:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x631:	83 e2 ff             	and    $0xffffffff,%edx
0x634:	48 8b fa             	mov    %rdx,%rdi
0x637:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x63b:	90                   	nop
0x63c:	e8 00 00 00 00       	callq  0x641
0x641:	90                   	nop
0x642:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x646:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x64a:	48 89 38             	mov    %rdi,(%rax)
0x64d:	48 83 ec 10          	sub    $0x10,%rsp
0x651:	48 89 04 24          	mov    %rax,(%rsp)
0x655:	48 83 ec 10          	sub    $0x10,%rsp
0x659:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x65e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x662:	4c 8b 1c 24          	mov    (%rsp),%r11
0x666:	41 85 03             	test   %eax,(%r11)
0x669:	e8 00 00 00 00       	callq  0x66e
0x66e:	90                   	nop
0x66f:	4c 8b 1d b2 f7 ff ff 	mov    -0x84e(%rip),%r11        # 0xfffffe28
0x676:	48 83 ec 10          	sub    $0x10,%rsp
0x67a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x67e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x683:	41 85 03             	test   %eax,(%r11)
0x686:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x68b:	e8 00 00 00 00       	callq  0x690
0x690:	90                   	nop
0x691:	48 83 ec 10          	sub    $0x10,%rsp
0x695:	48 89 04 24          	mov    %rax,(%rsp)
0x699:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x69d:	48 83 ec 10          	sub    $0x10,%rsp
0x6a1:	44 89 1c 24          	mov    %r11d,(%rsp)
0x6a5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6aa:	41 85 03             	test   %eax,(%r11)
0x6ad:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6b2:	e8 00 00 00 00       	callq  0x6b7
0x6b7:	90                   	nop
0x6b8:	48 83 ec 10          	sub    $0x10,%rsp
0x6bc:	48 89 04 24          	mov    %rax,(%rsp)
0x6c0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6c4:	41 85 03             	test   %eax,(%r11)
0x6c7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6cb:	e8 00 00 00 00       	callq  0x6d0
0x6d0:	90                   	nop
0x6d1:	48 83 ec 10          	sub    $0x10,%rsp
0x6d5:	48 89 04 24          	mov    %rax,(%rsp)
0x6d9:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x6de:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x6e3:	48 8b 15 46 f7 ff ff 	mov    -0x8ba(%rip),%rdx        # 0xfffffe30
0x6ea:	b9 20 00 00 00       	mov    $0x20,%ecx
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
0x724:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x728:	41 83 c3 01          	add    $0x1,%r11d
0x72c:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x730:	48 8b 3d 01 f7 ff ff 	mov    -0x8ff(%rip),%rdi        # 0xfffffe38
0x737:	be 28 00 00 00       	mov    $0x28,%esi
0x73c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x740:	48 8b c8             	mov    %rax,%rcx
0x743:	48 63 f6             	movslq %esi,%rsi
0x746:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x74b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x751:	0f 8d 07 00 00 00    	jge    0x75e
0x757:	83 c1 01             	add    $0x1,%ecx
0x75a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x75e:	48 8b 3d db f6 ff ff 	mov    -0x925(%rip),%rdi        # 0xfffffe40
0x765:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x769:	83 e8 01             	sub    $0x1,%eax
0x76c:	89 47 30             	mov    %eax,0x30(%rdi)
0x76f:	4d 8b 36             	mov    (%r14),%r14
0x772:	e9 b9 fa ff ff       	jmpq   0x230
0x777:	48 8b 3d ca f6 ff ff 	mov    -0x936(%rip),%rdi        # 0xfffffe48
0x77e:	be 18 00 00 00       	mov    $0x18,%esi
0x783:	48 63 f6             	movslq %esi,%rsi
0x786:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x78a:	48 83 ec 10          	sub    $0x10,%rsp
0x78e:	48 89 04 24          	mov    %rax,(%rsp)
0x792:	4c 8b 1d b7 f6 ff ff 	mov    -0x949(%rip),%r11        # 0xfffffe50
0x799:	48 83 ec 10          	sub    $0x10,%rsp
0x79d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7a1:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x7a6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7ab:	48 8b 15 a6 f6 ff ff 	mov    -0x95a(%rip),%rdx        # 0xfffffe58
0x7b2:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0x7b7:	48 8b c6             	mov    %rsi,%rax
0x7ba:	48 8b 00             	mov    (%rax),%rax
0x7bd:	48 63 ff             	movslq %edi,%rdi
0x7c0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7c5:	48 8b fa             	mov    %rdx,%rdi
0x7c8:	48 8b d1             	mov    %rcx,%rdx
0x7cb:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7d0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7d4:	90                   	nop
0x7d5:	90                   	nop
0x7d6:	e8 00 00 00 00       	callq  0x7db
0x7db:	90                   	nop
0x7dc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7e0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7e9:	ff d0                	callq  *%rax
0x7eb:	90                   	nop
0x7ec:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7f0:	48 83 ec 10          	sub    $0x10,%rsp
0x7f4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7f8:	bf 2e 00 00 00       	mov    $0x2e,%edi
0x7fd:	48 8b 34 24          	mov    (%rsp),%rsi
0x801:	48 8b 15 58 f6 ff ff 	mov    -0x9a8(%rip),%rdx        # 0xfffffe60
0x808:	b9 33 00 00 00       	mov    $0x33,%ecx
0x80d:	48 8b c6             	mov    %rsi,%rax
0x810:	48 8b 00             	mov    (%rax),%rax
0x813:	48 63 ff             	movslq %edi,%rdi
0x816:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x81b:	48 8b fa             	mov    %rdx,%rdi
0x81e:	48 8b d1             	mov    %rcx,%rdx
0x821:	b9 03 00 00 00       	mov    $0x3,%ecx
0x826:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x82a:	90                   	nop
0x82b:	90                   	nop
0x82c:	e8 00 00 00 00       	callq  0x831
0x831:	90                   	nop
0x832:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x836:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x83a:	48 8b 3c 24          	mov    (%rsp),%rdi
0x83e:	ff d0                	callq  *%rax
0x840:	90                   	nop
0x841:	48 83 ec 10          	sub    $0x10,%rsp
0x845:	48 89 04 24          	mov    %rax,(%rsp)
0x849:	4c 8b 1c 24          	mov    (%rsp),%r11
0x84d:	48 83 c4 10          	add    $0x10,%rsp
0x851:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x855:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x859:	48 83 ec 10          	sub    $0x10,%rsp
0x85d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x861:	48 8b 3c 24          	mov    (%rsp),%rdi
0x865:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x869:	89 04 24             	mov    %eax,(%rsp)
0x86c:	44 8b 1c 24          	mov    (%rsp),%r11d
0x870:	48 83 c4 10          	add    $0x10,%rsp
0x874:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x878:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x87e:	48 83 ec 10          	sub    $0x10,%rsp
0x882:	44 89 1c 24          	mov    %r11d,(%rsp)
0x886:	44 8b 1c 24          	mov    (%rsp),%r11d
0x88a:	48 83 c4 10          	add    $0x10,%rsp
0x88e:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x892:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x896:	48 83 ec 10          	sub    $0x10,%rsp
0x89a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x89e:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x8a2:	48 83 ec 10          	sub    $0x10,%rsp
0x8a6:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8aa:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x8af:	8b 04 24             	mov    (%rsp),%eax
0x8b2:	48 83 c4 20          	add    $0x20,%rsp
0x8b6:	44 3b d8             	cmp    %eax,%r11d
0x8b9:	7c 33                	jl     0x8ee
0x8bb:	48 8b 3d a6 f5 ff ff 	mov    -0xa5a(%rip),%rdi        # 0xfffffe68
0x8c2:	be 3b 00 00 00       	mov    $0x3b,%esi
0x8c7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8cb:	48 8b c8             	mov    %rax,%rcx
0x8ce:	48 63 f6             	movslq %esi,%rsi
0x8d1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x8d6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x8dc:	0f 8d 07 00 00 00    	jge    0x8e9
0x8e2:	83 c1 01             	add    $0x1,%ecx
0x8e5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x8e9:	e9 1b 02 00 00       	jmpq   0xb09
0x8ee:	48 8b 3d 7b f5 ff ff 	mov    -0xa85(%rip),%rdi        # 0xfffffe70
0x8f5:	be 3c 00 00 00       	mov    $0x3c,%esi
0x8fa:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8fe:	48 8b c8             	mov    %rax,%rcx
0x901:	48 63 f6             	movslq %esi,%rsi
0x904:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x909:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x90f:	0f 8d 07 00 00 00    	jge    0x91c
0x915:	83 c1 01             	add    $0x1,%ecx
0x918:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x91c:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x920:	48 83 ec 10          	sub    $0x10,%rsp
0x924:	4c 89 1c 24          	mov    %r11,(%rsp)
0x928:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x92c:	48 83 ec 10          	sub    $0x10,%rsp
0x930:	44 89 1c 24          	mov    %r11d,(%rsp)
0x934:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x939:	40 8b 34 24          	rex mov (%rsp),%esi
0x93d:	48 8b c7             	mov    %rdi,%rax
0x940:	48 63 40 10          	movslq 0x10(%rax),%rax
0x944:	3b f0                	cmp    %eax,%esi
0x946:	0f 82 0f 00 00 00    	jb     0x95b
0x94c:	e8 00 00 00 00       	callq  0x951
0x951:	90                   	nop
0x952:	48 8b f8             	mov    %rax,%rdi
0x955:	e8 00 00 00 00       	callq  0x95a
0x95a:	90                   	nop
0x95b:	48 63 f6             	movslq %esi,%rsi
0x95e:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x963:	48 83 c4 10          	add    $0x10,%rsp
0x967:	48 89 04 24          	mov    %rax,(%rsp)
0x96b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x96f:	48 83 c4 10          	add    $0x10,%rsp
0x973:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x977:	48 8b 3d fa f4 ff ff 	mov    -0xb06(%rip),%rdi        # 0xfffffe78
0x97e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x982:	48 8b 35 f7 f4 ff ff 	mov    -0xb09(%rip),%rsi        # 0xfffffe80
0x989:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x98d:	49 8b ce             	mov    %r14,%rcx
0x990:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x994:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x99b:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x9a2:	48 8b d9             	mov    %rcx,%rbx
0x9a5:	48 03 da             	add    %rdx,%rbx
0x9a8:	4c 8b cb             	mov    %rbx,%r9
0x9ab:	4d 3b c8             	cmp    %r8,%r9
0x9ae:	0f 86 14 00 00 00    	jbe    0x9c8
0x9b4:	48 8b fe             	mov    %rsi,%rdi
0x9b7:	48 8b f2             	mov    %rdx,%rsi
0x9ba:	48 8b d0             	mov    %rax,%rdx
0x9bd:	e8 00 00 00 00       	callq  0x9c2
0x9c2:	90                   	nop
0x9c3:	e9 0a 00 00 00       	jmpq   0x9d2
0x9c8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x9cf:	48 8b c1             	mov    %rcx,%rax
0x9d2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x9d6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x9da:	90                   	nop
0x9db:	90                   	nop
0x9dc:	90                   	nop
0x9dd:	e8 00 00 00 00       	callq  0x9e2
0x9e2:	90                   	nop
0x9e3:	90                   	nop
0x9e4:	90                   	nop
0x9e5:	e8 00 00 00 00       	callq  0x9ea
0x9ea:	90                   	nop
0x9eb:	83 f8 00             	cmp    $0x0,%eax
0x9ee:	0f 84 27 00 00 00    	je     0xa1b
0x9f4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x9f8:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x9fc:	85 06                	test   %eax,(%rsi)
0x9fe:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xa02:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xa06:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xa0a:	83 e2 ff             	and    $0xffffffff,%edx
0xa0d:	48 8b fa             	mov    %rdx,%rdi
0xa10:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xa14:	90                   	nop
0xa15:	e8 00 00 00 00       	callq  0xa1a
0xa1a:	90                   	nop
0xa1b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xa1f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xa23:	48 89 38             	mov    %rdi,(%rax)
0xa26:	48 83 ec 10          	sub    $0x10,%rsp
0xa2a:	48 89 04 24          	mov    %rax,(%rsp)
0xa2e:	48 83 ec 10          	sub    $0x10,%rsp
0xa32:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa37:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa3b:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xa3f:	48 83 ec 10          	sub    $0x10,%rsp
0xa43:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa47:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xa4b:	48 83 ec 10          	sub    $0x10,%rsp
0xa4f:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa53:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xa58:	41 85 03             	test   %eax,(%r11)
0xa5b:	e8 00 00 00 00       	callq  0xa60
0xa60:	90                   	nop
0xa61:	bf 2c 00 00 00       	mov    $0x2c,%edi
0xa66:	48 8b 34 24          	mov    (%rsp),%rsi
0xa6a:	48 8b 15 17 f4 ff ff 	mov    -0xbe9(%rip),%rdx        # 0xfffffe88
0xa71:	b9 40 00 00 00       	mov    $0x40,%ecx
0xa76:	48 8b c6             	mov    %rsi,%rax
0xa79:	48 8b 00             	mov    (%rax),%rax
0xa7c:	48 63 ff             	movslq %edi,%rdi
0xa7f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa84:	48 8b fa             	mov    %rdx,%rdi
0xa87:	48 8b d1             	mov    %rcx,%rdx
0xa8a:	b9 03 00 00 00       	mov    $0x3,%ecx
0xa8f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xa93:	90                   	nop
0xa94:	90                   	nop
0xa95:	e8 00 00 00 00       	callq  0xa9a
0xa9a:	90                   	nop
0xa9b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xa9f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xaa3:	48 8b 3c 24          	mov    (%rsp),%rdi
0xaa7:	ff d0                	callq  *%rax
0xaa9:	90                   	nop
0xaaa:	48 83 ec 10          	sub    $0x10,%rsp
0xaae:	48 89 04 24          	mov    %rax,(%rsp)
0xab2:	48 83 c4 10          	add    $0x10,%rsp
0xab6:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xaba:	41 83 c3 01          	add    $0x1,%r11d
0xabe:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0xac2:	48 8b 3d c7 f3 ff ff 	mov    -0xc39(%rip),%rdi        # 0xfffffe90
0xac9:	be 48 00 00 00       	mov    $0x48,%esi
0xace:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xad2:	48 8b c8             	mov    %rax,%rcx
0xad5:	48 63 f6             	movslq %esi,%rsi
0xad8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xadd:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xae3:	0f 8d 07 00 00 00    	jge    0xaf0
0xae9:	83 c1 01             	add    $0x1,%ecx
0xaec:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xaf0:	48 8b 3d a1 f3 ff ff 	mov    -0xc5f(%rip),%rdi        # 0xfffffe98
0xaf7:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xafb:	83 e8 01             	sub    $0x1,%eax
0xafe:	89 47 30             	mov    %eax,0x30(%rdi)
0xb01:	4d 8b 36             	mov    (%r14),%r14
0xb04:	e9 89 fd ff ff       	jmpq   0x892
0xb09:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xb0d:	48 83 ec 10          	sub    $0x10,%rsp
0xb11:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb15:	bf 2c 00 00 00       	mov    $0x2c,%edi
0xb1a:	48 8b 34 24          	mov    (%rsp),%rsi
0xb1e:	48 8b 15 7b f3 ff ff 	mov    -0xc85(%rip),%rdx        # 0xfffffea0
0xb25:	b9 4a 00 00 00       	mov    $0x4a,%ecx
0xb2a:	48 8b c6             	mov    %rsi,%rax
0xb2d:	48 8b 00             	mov    (%rax),%rax
0xb30:	48 63 ff             	movslq %edi,%rdi
0xb33:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xb38:	48 8b fa             	mov    %rdx,%rdi
0xb3b:	48 8b d1             	mov    %rcx,%rdx
0xb3e:	b9 03 00 00 00       	mov    $0x3,%ecx
0xb43:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb47:	90                   	nop
0xb48:	90                   	nop
0xb49:	e8 00 00 00 00       	callq  0xb4e
0xb4e:	90                   	nop
0xb4f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xb53:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xb57:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb5b:	ff d0                	callq  *%rax
0xb5d:	90                   	nop
0xb5e:	48 83 ec 10          	sub    $0x10,%rsp
0xb62:	48 89 04 24          	mov    %rax,(%rsp)
0xb66:	48 83 c4 10          	add    $0x10,%rsp
0xb6a:	48 8b 3d 37 f3 ff ff 	mov    -0xcc9(%rip),%rdi        # 0xfffffea8
0xb71:	be 18 00 00 00       	mov    $0x18,%esi
0xb76:	48 63 f6             	movslq %esi,%rsi
0xb79:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xb7d:	48 83 ec 10          	sub    $0x10,%rsp
0xb81:	48 89 04 24          	mov    %rax,(%rsp)
0xb85:	4c 8b 1d 24 f3 ff ff 	mov    -0xcdc(%rip),%r11        # 0xfffffeb0
0xb8c:	48 83 ec 10          	sub    $0x10,%rsp
0xb90:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb94:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xb99:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xb9e:	48 8b 15 13 f3 ff ff 	mov    -0xced(%rip),%rdx        # 0xfffffeb8
0xba5:	b9 53 00 00 00       	mov    $0x53,%ecx
0xbaa:	48 8b c6             	mov    %rsi,%rax
0xbad:	48 8b 00             	mov    (%rax),%rax
0xbb0:	48 63 ff             	movslq %edi,%rdi
0xbb3:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xbb8:	48 8b fa             	mov    %rdx,%rdi
0xbbb:	48 8b d1             	mov    %rcx,%rdx
0xbbe:	b9 03 00 00 00       	mov    $0x3,%ecx
0xbc3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xbc7:	90                   	nop
0xbc8:	90                   	nop
0xbc9:	e8 00 00 00 00       	callq  0xbce
0xbce:	90                   	nop
0xbcf:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbd3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xbd7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xbdc:	ff d0                	callq  *%rax
0xbde:	90                   	nop
0xbdf:	48 8b 3d da f2 ff ff 	mov    -0xd26(%rip),%rdi        # 0xfffffec0
0xbe6:	be 5b 00 00 00       	mov    $0x5b,%esi
0xbeb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbef:	48 8b c8             	mov    %rax,%rcx
0xbf2:	48 63 f6             	movslq %esi,%rsi
0xbf5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xbfa:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc00:	0f 8d 07 00 00 00    	jge    0xc0d
0xc06:	83 c1 01             	add    $0x1,%ecx
0xc09:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc0d:	e9 a3 0a 00 00       	jmpq   0x16b5
0xc12:	49 8b fe             	mov    %r14,%rdi
0xc15:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0xc19:	85 07                	test   %eax,(%rdi)
0xc1b:	e8 00 00 00 00       	callq  0xc20
0xc20:	90                   	nop
0xc21:	48 83 ec 10          	sub    $0x10,%rsp
0xc25:	48 89 04 24          	mov    %rax,(%rsp)
0xc29:	4c 8b 1c 24          	mov    (%rsp),%r11
0xc2d:	48 83 c4 10          	add    $0x10,%rsp
0xc31:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xc35:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xc39:	48 83 ec 10          	sub    $0x10,%rsp
0xc3d:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc41:	48 8b 3d 80 f2 ff ff 	mov    -0xd80(%rip),%rdi        # 0xfffffec8
0xc48:	be 20 00 00 00       	mov    $0x20,%esi
0xc4d:	48 63 f6             	movslq %esi,%rsi
0xc50:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc54:	48 83 ec 10          	sub    $0x10,%rsp
0xc58:	48 89 04 24          	mov    %rax,(%rsp)
0xc5c:	bf 1b 00 00 00       	mov    $0x1b,%edi
0xc61:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xc66:	48 8b 15 63 f2 ff ff 	mov    -0xd9d(%rip),%rdx        # 0xfffffed0
0xc6d:	b9 5d 00 00 00       	mov    $0x5d,%ecx
0xc72:	48 8b c6             	mov    %rsi,%rax
0xc75:	48 8b 00             	mov    (%rax),%rax
0xc78:	48 63 ff             	movslq %edi,%rdi
0xc7b:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xc80:	48 8b fa             	mov    %rdx,%rdi
0xc83:	48 8b d1             	mov    %rcx,%rdx
0xc86:	b9 03 00 00 00       	mov    $0x3,%ecx
0xc8b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xc8f:	90                   	nop
0xc90:	90                   	nop
0xc91:	e8 00 00 00 00       	callq  0xc96
0xc96:	90                   	nop
0xc97:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xc9b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xc9f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xca4:	ff d0                	callq  *%rax
0xca6:	90                   	nop
0xca7:	48 8b 3d 2a f2 ff ff 	mov    -0xdd6(%rip),%rdi        # 0xfffffed8
0xcae:	be 18 00 00 00       	mov    $0x18,%esi
0xcb3:	48 63 f6             	movslq %esi,%rsi
0xcb6:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xcba:	48 83 ec 10          	sub    $0x10,%rsp
0xcbe:	48 89 04 24          	mov    %rax,(%rsp)
0xcc2:	4c 8b 1d 17 f2 ff ff 	mov    -0xde9(%rip),%r11        # 0xfffffee0
0xcc9:	48 83 ec 10          	sub    $0x10,%rsp
0xccd:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcd1:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xcd6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xcdb:	48 8b 15 06 f2 ff ff 	mov    -0xdfa(%rip),%rdx        # 0xfffffee8
0xce2:	b9 66 00 00 00       	mov    $0x66,%ecx
0xce7:	48 8b c6             	mov    %rsi,%rax
0xcea:	48 8b 00             	mov    (%rax),%rax
0xced:	48 63 ff             	movslq %edi,%rdi
0xcf0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xcf5:	48 8b fa             	mov    %rdx,%rdi
0xcf8:	48 8b d1             	mov    %rcx,%rdx
0xcfb:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd00:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd04:	90                   	nop
0xd05:	90                   	nop
0xd06:	e8 00 00 00 00       	callq  0xd0b
0xd0b:	90                   	nop
0xd0c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd10:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd14:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xd19:	ff d0                	callq  *%rax
0xd1b:	90                   	nop
0xd1c:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xd20:	48 83 ec 10          	sub    $0x10,%rsp
0xd24:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd28:	bf 2e 00 00 00       	mov    $0x2e,%edi
0xd2d:	48 8b 34 24          	mov    (%rsp),%rsi
0xd31:	48 8b 15 b8 f1 ff ff 	mov    -0xe48(%rip),%rdx        # 0xfffffef0
0xd38:	b9 6f 00 00 00       	mov    $0x6f,%ecx
0xd3d:	48 8b c6             	mov    %rsi,%rax
0xd40:	48 8b 00             	mov    (%rax),%rax
0xd43:	48 63 ff             	movslq %edi,%rdi
0xd46:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd4b:	48 8b fa             	mov    %rdx,%rdi
0xd4e:	48 8b d1             	mov    %rcx,%rdx
0xd51:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd56:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd5a:	90                   	nop
0xd5b:	90                   	nop
0xd5c:	e8 00 00 00 00       	callq  0xd61
0xd61:	90                   	nop
0xd62:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd66:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd6a:	48 8b 3c 24          	mov    (%rsp),%rdi
0xd6e:	ff d0                	callq  *%rax
0xd70:	90                   	nop
0xd71:	48 83 ec 10          	sub    $0x10,%rsp
0xd75:	48 89 04 24          	mov    %rax,(%rsp)
0xd79:	4c 8b 1c 24          	mov    (%rsp),%r11
0xd7d:	48 83 c4 10          	add    $0x10,%rsp
0xd81:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xd85:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xd89:	48 83 ec 10          	sub    $0x10,%rsp
0xd8d:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd91:	48 8b 3c 24          	mov    (%rsp),%rdi
0xd95:	48 63 47 10          	movslq 0x10(%rdi),%rax
0xd99:	89 04 24             	mov    %eax,(%rsp)
0xd9c:	44 8b 1c 24          	mov    (%rsp),%r11d
0xda0:	48 83 c4 10          	add    $0x10,%rsp
0xda4:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xda8:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xdae:	48 83 ec 10          	sub    $0x10,%rsp
0xdb2:	44 89 1c 24          	mov    %r11d,(%rsp)
0xdb6:	44 8b 1c 24          	mov    (%rsp),%r11d
0xdba:	48 83 c4 10          	add    $0x10,%rsp
0xdbe:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0xdc2:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xdc6:	48 83 ec 10          	sub    $0x10,%rsp
0xdca:	44 89 1c 24          	mov    %r11d,(%rsp)
0xdce:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0xdd2:	48 83 ec 10          	sub    $0x10,%rsp
0xdd6:	44 89 1c 24          	mov    %r11d,(%rsp)
0xdda:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xddf:	8b 04 24             	mov    (%rsp),%eax
0xde2:	48 83 c4 20          	add    $0x20,%rsp
0xde6:	44 3b d8             	cmp    %eax,%r11d
0xde9:	7c 33                	jl     0xe1e
0xdeb:	48 8b 3d 06 f1 ff ff 	mov    -0xefa(%rip),%rdi        # 0xfffffef8
0xdf2:	be 77 00 00 00       	mov    $0x77,%esi
0xdf7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdfb:	48 8b c8             	mov    %rax,%rcx
0xdfe:	48 63 f6             	movslq %esi,%rsi
0xe01:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe06:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xe0c:	0f 8d 07 00 00 00    	jge    0xe19
0xe12:	83 c1 01             	add    $0x1,%ecx
0xe15:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe19:	e9 1b 02 00 00       	jmpq   0x1039
0xe1e:	48 8b 3d db f0 ff ff 	mov    -0xf25(%rip),%rdi        # 0xffffff00
0xe25:	be 78 00 00 00       	mov    $0x78,%esi
0xe2a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe2e:	48 8b c8             	mov    %rax,%rcx
0xe31:	48 63 f6             	movslq %esi,%rsi
0xe34:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe39:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xe3f:	0f 8d 07 00 00 00    	jge    0xe4c
0xe45:	83 c1 01             	add    $0x1,%ecx
0xe48:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe4c:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xe50:	48 83 ec 10          	sub    $0x10,%rsp
0xe54:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe58:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xe5c:	48 83 ec 10          	sub    $0x10,%rsp
0xe60:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe64:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xe69:	40 8b 34 24          	rex mov (%rsp),%esi
0xe6d:	48 8b c7             	mov    %rdi,%rax
0xe70:	48 63 40 10          	movslq 0x10(%rax),%rax
0xe74:	3b f0                	cmp    %eax,%esi
0xe76:	0f 82 0f 00 00 00    	jb     0xe8b
0xe7c:	e8 00 00 00 00       	callq  0xe81
0xe81:	90                   	nop
0xe82:	48 8b f8             	mov    %rax,%rdi
0xe85:	e8 00 00 00 00       	callq  0xe8a
0xe8a:	90                   	nop
0xe8b:	48 63 f6             	movslq %esi,%rsi
0xe8e:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0xe93:	48 83 c4 10          	add    $0x10,%rsp
0xe97:	48 89 04 24          	mov    %rax,(%rsp)
0xe9b:	4c 8b 1c 24          	mov    (%rsp),%r11
0xe9f:	48 83 c4 10          	add    $0x10,%rsp
0xea3:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0xea7:	48 8b 3d 5a f0 ff ff 	mov    -0xfa6(%rip),%rdi        # 0xffffff08
0xeae:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xeb2:	48 8b 35 57 f0 ff ff 	mov    -0xfa9(%rip),%rsi        # 0xffffff10
0xeb9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xebd:	49 8b ce             	mov    %r14,%rcx
0xec0:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xec4:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xecb:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xed2:	48 8b d9             	mov    %rcx,%rbx
0xed5:	48 03 da             	add    %rdx,%rbx
0xed8:	4c 8b cb             	mov    %rbx,%r9
0xedb:	4d 3b c8             	cmp    %r8,%r9
0xede:	0f 86 14 00 00 00    	jbe    0xef8
0xee4:	48 8b fe             	mov    %rsi,%rdi
0xee7:	48 8b f2             	mov    %rdx,%rsi
0xeea:	48 8b d0             	mov    %rax,%rdx
0xeed:	e8 00 00 00 00       	callq  0xef2
0xef2:	90                   	nop
0xef3:	e9 0a 00 00 00       	jmpq   0xf02
0xef8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xeff:	48 8b c1             	mov    %rcx,%rax
0xf02:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xf06:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xf0a:	90                   	nop
0xf0b:	90                   	nop
0xf0c:	90                   	nop
0xf0d:	e8 00 00 00 00       	callq  0xf12
0xf12:	90                   	nop
0xf13:	90                   	nop
0xf14:	90                   	nop
0xf15:	e8 00 00 00 00       	callq  0xf1a
0xf1a:	90                   	nop
0xf1b:	83 f8 00             	cmp    $0x0,%eax
0xf1e:	0f 84 27 00 00 00    	je     0xf4b
0xf24:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xf28:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xf2c:	85 06                	test   %eax,(%rsi)
0xf2e:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xf32:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xf36:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xf3a:	83 e2 ff             	and    $0xffffffff,%edx
0xf3d:	48 8b fa             	mov    %rdx,%rdi
0xf40:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xf44:	90                   	nop
0xf45:	e8 00 00 00 00       	callq  0xf4a
0xf4a:	90                   	nop
0xf4b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xf4f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xf53:	48 89 38             	mov    %rdi,(%rax)
0xf56:	48 83 ec 10          	sub    $0x10,%rsp
0xf5a:	48 89 04 24          	mov    %rax,(%rsp)
0xf5e:	48 83 ec 10          	sub    $0x10,%rsp
0xf62:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xf67:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf6b:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xf6f:	48 83 ec 10          	sub    $0x10,%rsp
0xf73:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf77:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xf7b:	48 83 ec 10          	sub    $0x10,%rsp
0xf7f:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf83:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xf88:	41 85 03             	test   %eax,(%r11)
0xf8b:	e8 00 00 00 00       	callq  0xf90
0xf90:	90                   	nop
0xf91:	bf 2c 00 00 00       	mov    $0x2c,%edi
0xf96:	48 8b 34 24          	mov    (%rsp),%rsi
0xf9a:	48 8b 15 77 ef ff ff 	mov    -0x1089(%rip),%rdx        # 0xffffff18
0xfa1:	b9 7c 00 00 00       	mov    $0x7c,%ecx
0xfa6:	48 8b c6             	mov    %rsi,%rax
0xfa9:	48 8b 00             	mov    (%rax),%rax
0xfac:	48 63 ff             	movslq %edi,%rdi
0xfaf:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xfb4:	48 8b fa             	mov    %rdx,%rdi
0xfb7:	48 8b d1             	mov    %rcx,%rdx
0xfba:	b9 03 00 00 00       	mov    $0x3,%ecx
0xfbf:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xfc3:	90                   	nop
0xfc4:	90                   	nop
0xfc5:	e8 00 00 00 00       	callq  0xfca
0xfca:	90                   	nop
0xfcb:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xfcf:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xfd3:	48 8b 3c 24          	mov    (%rsp),%rdi
0xfd7:	ff d0                	callq  *%rax
0xfd9:	90                   	nop
0xfda:	48 83 ec 10          	sub    $0x10,%rsp
0xfde:	48 89 04 24          	mov    %rax,(%rsp)
0xfe2:	48 83 c4 10          	add    $0x10,%rsp
0xfe6:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0xfea:	41 83 c3 01          	add    $0x1,%r11d
0xfee:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0xff2:	48 8b 3d 27 ef ff ff 	mov    -0x10d9(%rip),%rdi        # 0xffffff20
0xff9:	be 84 00 00 00       	mov    $0x84,%esi
0xffe:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1002:	48 8b c8             	mov    %rax,%rcx
0x1005:	48 63 f6             	movslq %esi,%rsi
0x1008:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x100d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1013:	0f 8d 07 00 00 00    	jge    0x1020
0x1019:	83 c1 01             	add    $0x1,%ecx
0x101c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1020:	48 8b 3d 01 ef ff ff 	mov    -0x10ff(%rip),%rdi        # 0xffffff28
0x1027:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x102b:	83 e8 01             	sub    $0x1,%eax
0x102e:	89 47 30             	mov    %eax,0x30(%rdi)
0x1031:	4d 8b 36             	mov    (%r14),%r14
0x1034:	e9 89 fd ff ff       	jmpq   0xdc2
0x1039:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x103d:	48 83 ec 10          	sub    $0x10,%rsp
0x1041:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1045:	bf 2c 00 00 00       	mov    $0x2c,%edi
0x104a:	48 8b 34 24          	mov    (%rsp),%rsi
0x104e:	48 8b 15 db ee ff ff 	mov    -0x1125(%rip),%rdx        # 0xffffff30
0x1055:	b9 86 00 00 00       	mov    $0x86,%ecx
0x105a:	48 8b c6             	mov    %rsi,%rax
0x105d:	48 8b 00             	mov    (%rax),%rax
0x1060:	48 63 ff             	movslq %edi,%rdi
0x1063:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1068:	48 8b fa             	mov    %rdx,%rdi
0x106b:	48 8b d1             	mov    %rcx,%rdx
0x106e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1073:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1077:	90                   	nop
0x1078:	90                   	nop
0x1079:	e8 00 00 00 00       	callq  0x107e
0x107e:	90                   	nop
0x107f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1083:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1087:	48 8b 3c 24          	mov    (%rsp),%rdi
0x108b:	ff d0                	callq  *%rax
0x108d:	90                   	nop
0x108e:	48 83 ec 10          	sub    $0x10,%rsp
0x1092:	48 89 04 24          	mov    %rax,(%rsp)
0x1096:	48 83 c4 10          	add    $0x10,%rsp
0x109a:	48 8b 3d 97 ee ff ff 	mov    -0x1169(%rip),%rdi        # 0xffffff38
0x10a1:	be 18 00 00 00       	mov    $0x18,%esi
0x10a6:	48 63 f6             	movslq %esi,%rsi
0x10a9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x10ad:	48 83 ec 10          	sub    $0x10,%rsp
0x10b1:	48 89 04 24          	mov    %rax,(%rsp)
0x10b5:	4c 8b 1d 84 ee ff ff 	mov    -0x117c(%rip),%r11        # 0xffffff40
0x10bc:	48 83 ec 10          	sub    $0x10,%rsp
0x10c0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10c4:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x10c9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x10ce:	48 8b 15 73 ee ff ff 	mov    -0x118d(%rip),%rdx        # 0xffffff48
0x10d5:	b9 8f 00 00 00       	mov    $0x8f,%ecx
0x10da:	48 8b c6             	mov    %rsi,%rax
0x10dd:	48 8b 00             	mov    (%rax),%rax
0x10e0:	48 63 ff             	movslq %edi,%rdi
0x10e3:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x10e8:	48 8b fa             	mov    %rdx,%rdi
0x10eb:	48 8b d1             	mov    %rcx,%rdx
0x10ee:	b9 03 00 00 00       	mov    $0x3,%ecx
0x10f3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x10f7:	90                   	nop
0x10f8:	90                   	nop
0x10f9:	e8 00 00 00 00       	callq  0x10fe
0x10fe:	90                   	nop
0x10ff:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1103:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1107:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x110c:	ff d0                	callq  *%rax
0x110e:	90                   	nop
0x110f:	48 8b 3d 3a ee ff ff 	mov    -0x11c6(%rip),%rdi        # 0xffffff50
0x1116:	be 97 00 00 00       	mov    $0x97,%esi
0x111b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x111f:	48 8b c8             	mov    %rax,%rcx
0x1122:	48 63 f6             	movslq %esi,%rsi
0x1125:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x112a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1130:	0f 8d 07 00 00 00    	jge    0x113d
0x1136:	83 c1 01             	add    $0x1,%ecx
0x1139:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x113d:	e9 73 05 00 00       	jmpq   0x16b5
0x1142:	49 8b fe             	mov    %r14,%rdi
0x1145:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x1149:	85 07                	test   %eax,(%rdi)
0x114b:	e8 00 00 00 00       	callq  0x1150
0x1150:	90                   	nop
0x1151:	48 83 ec 10          	sub    $0x10,%rsp
0x1155:	48 89 04 24          	mov    %rax,(%rsp)
0x1159:	4c 8b 1c 24          	mov    (%rsp),%r11
0x115d:	48 83 c4 10          	add    $0x10,%rsp
0x1161:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0x1165:	48 8b 3d ec ed ff ff 	mov    -0x1214(%rip),%rdi        # 0xffffff58
0x116c:	be 18 00 00 00       	mov    $0x18,%esi
0x1171:	48 63 f6             	movslq %esi,%rsi
0x1174:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1178:	48 83 ec 10          	sub    $0x10,%rsp
0x117c:	48 89 04 24          	mov    %rax,(%rsp)
0x1180:	4c 8b 1d d9 ed ff ff 	mov    -0x1227(%rip),%r11        # 0xffffff60
0x1187:	48 83 ec 10          	sub    $0x10,%rsp
0x118b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x118f:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1194:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1199:	48 8b 15 c8 ed ff ff 	mov    -0x1238(%rip),%rdx        # 0xffffff68
0x11a0:	b9 99 00 00 00       	mov    $0x99,%ecx
0x11a5:	48 8b c6             	mov    %rsi,%rax
0x11a8:	48 8b 00             	mov    (%rax),%rax
0x11ab:	48 63 ff             	movslq %edi,%rdi
0x11ae:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x11b3:	48 8b fa             	mov    %rdx,%rdi
0x11b6:	48 8b d1             	mov    %rcx,%rdx
0x11b9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x11be:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x11c2:	90                   	nop
0x11c3:	90                   	nop
0x11c4:	e8 00 00 00 00       	callq  0x11c9
0x11c9:	90                   	nop
0x11ca:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x11ce:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x11d2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x11d7:	ff d0                	callq  *%rax
0x11d9:	90                   	nop
0x11da:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x11de:	48 83 ec 10          	sub    $0x10,%rsp
0x11e2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11e6:	bf 2e 00 00 00       	mov    $0x2e,%edi
0x11eb:	48 8b 34 24          	mov    (%rsp),%rsi
0x11ef:	48 8b 15 7a ed ff ff 	mov    -0x1286(%rip),%rdx        # 0xffffff70
0x11f6:	b9 a2 00 00 00       	mov    $0xa2,%ecx
0x11fb:	48 8b c6             	mov    %rsi,%rax
0x11fe:	48 8b 00             	mov    (%rax),%rax
0x1201:	48 63 ff             	movslq %edi,%rdi
0x1204:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1209:	48 8b fa             	mov    %rdx,%rdi
0x120c:	48 8b d1             	mov    %rcx,%rdx
0x120f:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1214:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1218:	90                   	nop
0x1219:	90                   	nop
0x121a:	e8 00 00 00 00       	callq  0x121f
0x121f:	90                   	nop
0x1220:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1224:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1228:	48 8b 3c 24          	mov    (%rsp),%rdi
0x122c:	ff d0                	callq  *%rax
0x122e:	90                   	nop
0x122f:	48 83 ec 10          	sub    $0x10,%rsp
0x1233:	48 89 04 24          	mov    %rax,(%rsp)
0x1237:	4c 8b 1c 24          	mov    (%rsp),%r11
0x123b:	48 83 c4 10          	add    $0x10,%rsp
0x123f:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
0x1243:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x1247:	48 83 ec 10          	sub    $0x10,%rsp
0x124b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x124f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1253:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x1257:	89 04 24             	mov    %eax,(%rsp)
0x125a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x125e:	48 83 c4 10          	add    $0x10,%rsp
0x1262:	44 89 5d 80          	mov    %r11d,-0x80(%rbp)
0x1266:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x126c:	48 83 ec 10          	sub    $0x10,%rsp
0x1270:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1274:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1278:	48 83 c4 10          	add    $0x10,%rsp
0x127c:	44 89 9d 70 ff ff ff 	mov    %r11d,-0x90(%rbp)
0x1283:	44 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11d
0x128a:	48 83 ec 10          	sub    $0x10,%rsp
0x128e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1292:	44 8b 5d 80          	mov    -0x80(%rbp),%r11d
0x1296:	48 83 ec 10          	sub    $0x10,%rsp
0x129a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x129e:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x12a3:	8b 04 24             	mov    (%rsp),%eax
0x12a6:	48 83 c4 20          	add    $0x20,%rsp
0x12aa:	44 3b d8             	cmp    %eax,%r11d
0x12ad:	7c 33                	jl     0x12e2
0x12af:	48 8b 3d c2 ec ff ff 	mov    -0x133e(%rip),%rdi        # 0xffffff78
0x12b6:	be aa 00 00 00       	mov    $0xaa,%esi
0x12bb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x12bf:	48 8b c8             	mov    %rax,%rcx
0x12c2:	48 63 f6             	movslq %esi,%rsi
0x12c5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x12ca:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x12d0:	0f 8d 07 00 00 00    	jge    0x12dd
0x12d6:	83 c1 01             	add    $0x1,%ecx
0x12d9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x12dd:	e9 2a 02 00 00       	jmpq   0x150c
0x12e2:	48 8b 3d 97 ec ff ff 	mov    -0x1369(%rip),%rdi        # 0xffffff80
0x12e9:	be ab 00 00 00       	mov    $0xab,%esi
0x12ee:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x12f2:	48 8b c8             	mov    %rax,%rcx
0x12f5:	48 63 f6             	movslq %esi,%rsi
0x12f8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x12fd:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1303:	0f 8d 07 00 00 00    	jge    0x1310
0x1309:	83 c1 01             	add    $0x1,%ecx
0x130c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1310:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x1314:	48 83 ec 10          	sub    $0x10,%rsp
0x1318:	4c 89 1c 24          	mov    %r11,(%rsp)
0x131c:	44 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11d
0x1323:	48 83 ec 10          	sub    $0x10,%rsp
0x1327:	44 89 1c 24          	mov    %r11d,(%rsp)
0x132b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1330:	40 8b 34 24          	rex mov (%rsp),%esi
0x1334:	48 8b c7             	mov    %rdi,%rax
0x1337:	48 63 40 10          	movslq 0x10(%rax),%rax
0x133b:	3b f0                	cmp    %eax,%esi
0x133d:	0f 82 0f 00 00 00    	jb     0x1352
0x1343:	e8 00 00 00 00       	callq  0x1348
0x1348:	90                   	nop
0x1349:	48 8b f8             	mov    %rax,%rdi
0x134c:	e8 00 00 00 00       	callq  0x1351
0x1351:	90                   	nop
0x1352:	48 63 f6             	movslq %esi,%rsi
0x1355:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x135a:	48 83 c4 10          	add    $0x10,%rsp
0x135e:	48 89 04 24          	mov    %rax,(%rsp)
0x1362:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1366:	48 83 c4 10          	add    $0x10,%rsp
0x136a:	4c 89 9d 60 ff ff ff 	mov    %r11,-0xa0(%rbp)
0x1371:	48 8b 3d 10 ec ff ff 	mov    -0x13f0(%rip),%rdi        # 0xffffff88
0x1378:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x137c:	48 8b 35 0d ec ff ff 	mov    -0x13f3(%rip),%rsi        # 0xffffff90
0x1383:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1387:	49 8b ce             	mov    %r14,%rcx
0x138a:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x138e:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1395:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x139c:	48 8b d9             	mov    %rcx,%rbx
0x139f:	48 03 da             	add    %rdx,%rbx
0x13a2:	4c 8b cb             	mov    %rbx,%r9
0x13a5:	4d 3b c8             	cmp    %r8,%r9
0x13a8:	0f 86 14 00 00 00    	jbe    0x13c2
0x13ae:	48 8b fe             	mov    %rsi,%rdi
0x13b1:	48 8b f2             	mov    %rdx,%rsi
0x13b4:	48 8b d0             	mov    %rax,%rdx
0x13b7:	e8 00 00 00 00       	callq  0x13bc
0x13bc:	90                   	nop
0x13bd:	e9 0a 00 00 00       	jmpq   0x13cc
0x13c2:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x13c9:	48 8b c1             	mov    %rcx,%rax
0x13cc:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x13d0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x13d4:	90                   	nop
0x13d5:	90                   	nop
0x13d6:	90                   	nop
0x13d7:	e8 00 00 00 00       	callq  0x13dc
0x13dc:	90                   	nop
0x13dd:	90                   	nop
0x13de:	90                   	nop
0x13df:	e8 00 00 00 00       	callq  0x13e4
0x13e4:	90                   	nop
0x13e5:	83 f8 00             	cmp    $0x0,%eax
0x13e8:	0f 84 27 00 00 00    	je     0x1415
0x13ee:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x13f2:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x13f6:	85 06                	test   %eax,(%rsi)
0x13f8:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x13fc:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1400:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1404:	83 e2 ff             	and    $0xffffffff,%edx
0x1407:	48 8b fa             	mov    %rdx,%rdi
0x140a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x140e:	90                   	nop
0x140f:	e8 00 00 00 00       	callq  0x1414
0x1414:	90                   	nop
0x1415:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1419:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x141d:	48 89 38             	mov    %rdi,(%rax)
0x1420:	48 83 ec 10          	sub    $0x10,%rsp
0x1424:	48 89 04 24          	mov    %rax,(%rsp)
0x1428:	48 83 ec 10          	sub    $0x10,%rsp
0x142c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1431:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1435:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1439:	48 83 ec 10          	sub    $0x10,%rsp
0x143d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1441:	4c 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%r11
0x1448:	48 83 ec 10          	sub    $0x10,%rsp
0x144c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1450:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x1455:	41 85 03             	test   %eax,(%r11)
0x1458:	e8 00 00 00 00       	callq  0x145d
0x145d:	90                   	nop
0x145e:	bf 2c 00 00 00       	mov    $0x2c,%edi
0x1463:	48 8b 34 24          	mov    (%rsp),%rsi
0x1467:	48 8b 15 2a eb ff ff 	mov    -0x14d6(%rip),%rdx        # 0xffffff98
0x146e:	b9 af 00 00 00       	mov    $0xaf,%ecx
0x1473:	48 8b c6             	mov    %rsi,%rax
0x1476:	48 8b 00             	mov    (%rax),%rax
0x1479:	48 63 ff             	movslq %edi,%rdi
0x147c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1481:	48 8b fa             	mov    %rdx,%rdi
0x1484:	48 8b d1             	mov    %rcx,%rdx
0x1487:	b9 03 00 00 00       	mov    $0x3,%ecx
0x148c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1490:	90                   	nop
0x1491:	90                   	nop
0x1492:	e8 00 00 00 00       	callq  0x1497
0x1497:	90                   	nop
0x1498:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x149c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x14a0:	48 8b 3c 24          	mov    (%rsp),%rdi
0x14a4:	ff d0                	callq  *%rax
0x14a6:	90                   	nop
0x14a7:	48 83 ec 10          	sub    $0x10,%rsp
0x14ab:	48 89 04 24          	mov    %rax,(%rsp)
0x14af:	48 83 c4 10          	add    $0x10,%rsp
0x14b3:	44 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11d
0x14ba:	41 83 c3 01          	add    $0x1,%r11d
0x14be:	44 89 9d 70 ff ff ff 	mov    %r11d,-0x90(%rbp)
0x14c5:	48 8b 3d d4 ea ff ff 	mov    -0x152c(%rip),%rdi        # 0xffffffa0
0x14cc:	be b7 00 00 00       	mov    $0xb7,%esi
0x14d1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x14d5:	48 8b c8             	mov    %rax,%rcx
0x14d8:	48 63 f6             	movslq %esi,%rsi
0x14db:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x14e0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x14e6:	0f 8d 07 00 00 00    	jge    0x14f3
0x14ec:	83 c1 01             	add    $0x1,%ecx
0x14ef:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x14f3:	48 8b 3d ae ea ff ff 	mov    -0x1552(%rip),%rdi        # 0xffffffa8
0x14fa:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x14fe:	83 e8 01             	sub    $0x1,%eax
0x1501:	89 47 30             	mov    %eax,0x30(%rdi)
0x1504:	4d 8b 36             	mov    (%r14),%r14
0x1507:	e9 77 fd ff ff       	jmpq   0x1283
0x150c:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1510:	48 83 ec 10          	sub    $0x10,%rsp
0x1514:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1518:	bf 2c 00 00 00       	mov    $0x2c,%edi
0x151d:	48 8b 34 24          	mov    (%rsp),%rsi
0x1521:	48 8b 15 88 ea ff ff 	mov    -0x1578(%rip),%rdx        # 0xffffffb0
0x1528:	b9 b9 00 00 00       	mov    $0xb9,%ecx
0x152d:	48 8b c6             	mov    %rsi,%rax
0x1530:	48 8b 00             	mov    (%rax),%rax
0x1533:	48 63 ff             	movslq %edi,%rdi
0x1536:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x153b:	48 8b fa             	mov    %rdx,%rdi
0x153e:	48 8b d1             	mov    %rcx,%rdx
0x1541:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1546:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x154a:	90                   	nop
0x154b:	90                   	nop
0x154c:	e8 00 00 00 00       	callq  0x1551
0x1551:	90                   	nop
0x1552:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1556:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x155a:	48 8b 3c 24          	mov    (%rsp),%rdi
0x155e:	ff d0                	callq  *%rax
0x1560:	90                   	nop
0x1561:	48 83 ec 10          	sub    $0x10,%rsp
0x1565:	48 89 04 24          	mov    %rax,(%rsp)
0x1569:	48 83 c4 10          	add    $0x10,%rsp
0x156d:	48 8b 3d 44 ea ff ff 	mov    -0x15bc(%rip),%rdi        # 0xffffffb8
0x1574:	be 18 00 00 00       	mov    $0x18,%esi
0x1579:	48 63 f6             	movslq %esi,%rsi
0x157c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1580:	48 83 ec 10          	sub    $0x10,%rsp
0x1584:	48 89 04 24          	mov    %rax,(%rsp)
0x1588:	4c 8b 1d 31 ea ff ff 	mov    -0x15cf(%rip),%r11        # 0xffffffc0
0x158f:	48 83 ec 10          	sub    $0x10,%rsp
0x1593:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1597:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x159c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x15a1:	48 8b 15 20 ea ff ff 	mov    -0x15e0(%rip),%rdx        # 0xffffffc8
0x15a8:	b9 c2 00 00 00       	mov    $0xc2,%ecx
0x15ad:	48 8b c6             	mov    %rsi,%rax
0x15b0:	48 8b 00             	mov    (%rax),%rax
0x15b3:	48 63 ff             	movslq %edi,%rdi
0x15b6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x15bb:	48 8b fa             	mov    %rdx,%rdi
0x15be:	48 8b d1             	mov    %rcx,%rdx
0x15c1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x15c6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x15ca:	90                   	nop
0x15cb:	90                   	nop
0x15cc:	e8 00 00 00 00       	callq  0x15d1
0x15d1:	90                   	nop
0x15d2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x15d6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x15da:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x15df:	ff d0                	callq  *%rax
0x15e1:	90                   	nop
0x15e2:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x15e6:	48 83 ec 10          	sub    $0x10,%rsp
0x15ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x15ee:	48 8b 3c 24          	mov    (%rsp),%rdi
0x15f2:	4d 33 db             	xor    %r11,%r11
0x15f5:	49 3b fb             	cmp    %r11,%rdi
0x15f8:	0f 84 62 00 00 00    	je     0x1660
0x15fe:	48 8b 0d cb e9 ff ff 	mov    -0x1635(%rip),%rcx        # 0xffffffd0
0x1605:	4d 33 db             	xor    %r11,%r11
0x1608:	49 3b fb             	cmp    %r11,%rdi
0x160b:	0f 84 41 00 00 00    	je     0x1652
0x1611:	48 8b 1f             	mov    (%rdi),%rbx
0x1614:	48 3b d9             	cmp    %rcx,%rbx
0x1617:	0f 84 2b 00 00 00    	je     0x1648
0x161d:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x1621:	b8 06 00 00 00       	mov    $0x6,%eax
0x1626:	99                   	cltd   
0x1627:	41 f7 f8             	idiv   %r8d
0x162a:	4c 8b ca             	mov    %rdx,%r9
0x162d:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x1631:	45 03 c8             	add    %r8d,%r9d
0x1634:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x1639:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x163e:	41 83 f9 06          	cmp    $0x6,%r9d
0x1642:	0f 85 0a 00 00 00    	jne    0x1652
0x1648:	be 01 00 00 00       	mov    $0x1,%esi
0x164d:	e9 05 00 00 00       	jmpq   0x1657
0x1652:	be 00 00 00 00       	mov    $0x0,%esi
0x1657:	83 fe 00             	cmp    $0x0,%esi
0x165a:	0f 84 44 00 00 00    	je     0x16a4
0x1660:	48 8b f4             	mov    %rsp,%rsi
0x1663:	48 8b d5             	mov    %rbp,%rdx
0x1666:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x1666
0x166d:	48 8b 05 64 e9 ff ff 	mov    -0x169c(%rip),%rax        # 0xffffffd8
0x1674:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x1678:	48 8b c1             	mov    %rcx,%rax
0x167b:	48 2b c3             	sub    %rbx,%rax
0x167e:	b9 01 00 00 00       	mov    $0x1,%ecx
0x1683:	48 d3 e0             	shl    %cl,%rax
0x1686:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x168d:	00 00 00 
0x1690:	49 0b c3             	or     %r11,%rax
0x1693:	48 8b c8             	mov    %rax,%rcx
0x1696:	90                   	nop
0x1697:	90                   	nop
0x1698:	90                   	nop
0x1699:	e8 00 00 00 00       	callq  0x169e
0x169e:	90                   	nop
0x169f:	e9 0d 00 00 00       	jmpq   0x16b1
0x16a4:	48 8b 3d 35 e9 ff ff 	mov    -0x16cb(%rip),%rdi        # 0xffffffe0
0x16ab:	e8 00 00 00 00       	callq  0x16b0
0x16b0:	90                   	nop
0x16b1:	48 83 c4 10          	add    $0x10,%rsp
0x16b5:	48 83 c5 40          	add    $0x40,%rbp
0x16b9:	c9                   	leaveq 
0x16ba:	c2 10 00             	retq   $0x10

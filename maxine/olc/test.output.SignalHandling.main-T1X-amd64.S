0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 90 00 00          	enterq $0x90,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 98 e0 ff 	mov    %rax,-0x1f68(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 89 fd ff ff 	mov    %r11,-0x277(%rip)        # 0xfffffdb0
0x27:	48 8b 3d 8a fd ff ff 	mov    -0x276(%rip),%rdi        # 0xfffffdb8
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
0x53:	41 bb e8 03 00 00    	mov    $0x3e8,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7d:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x81:	89 04 24             	mov    %eax,(%rsp)
0x84:	44 8b 1c 24          	mov    (%rsp),%r11d
0x88:	b8 00 00 00 00       	mov    $0x0,%eax
0x8d:	48 83 c4 10          	add    $0x10,%rsp
0x91:	44 3b d8             	cmp    %eax,%r11d
0x94:	7f 33                	jg     0xc9
0x96:	48 8b 3d 23 fd ff ff 	mov    -0x2dd(%rip),%rdi        # 0xfffffdc0
0x9d:	be 00 00 00 00       	mov    $0x0,%esi
0xa2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6:	48 8b c8             	mov    %rax,%rcx
0xa9:	48 63 f6             	movslq %esi,%rsi
0xac:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb7:	0f 8d 07 00 00 00    	jge    0xc4
0xbd:	83 c1 01             	add    $0x1,%ecx
0xc0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc4:	e9 99 00 00 00       	jmpq   0x162
0xc9:	48 8b 3d f8 fc ff ff 	mov    -0x308(%rip),%rdi        # 0xfffffdc8
0xd0:	be 01 00 00 00       	mov    $0x1,%esi
0xd5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xd9:	48 8b c8             	mov    %rax,%rcx
0xdc:	48 63 f6             	movslq %esi,%rsi
0xdf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xea:	0f 8d 07 00 00 00    	jge    0xf7
0xf0:	83 c1 01             	add    $0x1,%ecx
0xf3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf7:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xfb:	48 83 ec 10          	sub    $0x10,%rsp
0xff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x103:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x109:	48 83 ec 10          	sub    $0x10,%rsp
0x10d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x111:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x116:	40 8b 34 24          	rex mov (%rsp),%esi
0x11a:	48 8b c7             	mov    %rdi,%rax
0x11d:	48 63 40 10          	movslq 0x10(%rax),%rax
0x121:	3b f0                	cmp    %eax,%esi
0x123:	0f 82 0f 00 00 00    	jb     0x138
0x129:	e8 00 00 00 00       	callq  0x12e
0x12e:	90                   	nop
0x12f:	48 8b f8             	mov    %rax,%rdi
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 63 f6             	movslq %esi,%rsi
0x13b:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x140:	48 83 c4 10          	add    $0x10,%rsp
0x144:	48 89 04 24          	mov    %rax,(%rsp)
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	48 83 ec 10          	sub    $0x10,%rsp
0x152:	48 89 04 24          	mov    %rax,(%rsp)
0x156:	44 8b 1c 24          	mov    (%rsp),%r11d
0x15a:	48 83 c4 10          	add    $0x10,%rsp
0x15e:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x162:	48 8b 3d 67 fc ff ff 	mov    -0x399(%rip),%rdi        # 0xfffffdd0
0x169:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x16d:	48 8b 35 64 fc ff ff 	mov    -0x39c(%rip),%rsi        # 0xfffffdd8
0x174:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x178:	49 8b ce             	mov    %r14,%rcx
0x17b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x17f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x186:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x18d:	48 8b d9             	mov    %rcx,%rbx
0x190:	48 03 da             	add    %rdx,%rbx
0x193:	4c 8b cb             	mov    %rbx,%r9
0x196:	4d 3b c8             	cmp    %r8,%r9
0x199:	0f 86 14 00 00 00    	jbe    0x1b3
0x19f:	48 8b fe             	mov    %rsi,%rdi
0x1a2:	48 8b f2             	mov    %rdx,%rsi
0x1a5:	48 8b d0             	mov    %rax,%rdx
0x1a8:	e8 00 00 00 00       	callq  0x1ad
0x1ad:	90                   	nop
0x1ae:	e9 0a 00 00 00       	jmpq   0x1bd
0x1b3:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1ba:	48 8b c1             	mov    %rcx,%rax
0x1bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1c1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1c5:	90                   	nop
0x1c6:	90                   	nop
0x1c7:	90                   	nop
0x1c8:	e8 00 00 00 00       	callq  0x1cd
0x1cd:	90                   	nop
0x1ce:	90                   	nop
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	83 f8 00             	cmp    $0x0,%eax
0x1d9:	0f 84 27 00 00 00    	je     0x206
0x1df:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1e7:	85 06                	test   %eax,(%rsi)
0x1e9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1ed:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1f1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1f5:	83 e2 ff             	and    $0xffffffff,%edx
0x1f8:	48 8b fa             	mov    %rdx,%rdi
0x1fb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1ff:	90                   	nop
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x20a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x20e:	48 89 38             	mov    %rdi,(%rax)
0x211:	48 83 ec 10          	sub    $0x10,%rsp
0x215:	48 89 04 24          	mov    %rax,(%rsp)
0x219:	48 83 ec 10          	sub    $0x10,%rsp
0x21d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x222:	4c 89 1c 24          	mov    %r11,(%rsp)
0x226:	4c 8b 1c 24          	mov    (%rsp),%r11
0x22a:	41 85 03             	test   %eax,(%r11)
0x22d:	90                   	nop
0x22e:	90                   	nop
0x22f:	90                   	nop
0x230:	e8 00 00 00 00       	callq  0x235
0x235:	90                   	nop
0x236:	4c 8b 1c 24          	mov    (%rsp),%r11
0x23a:	48 83 c4 10          	add    $0x10,%rsp
0x23e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x242:	48 8b 3d 97 fb ff ff 	mov    -0x469(%rip),%rdi        # 0xfffffde0
0x249:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x24d:	48 8b 35 94 fb ff ff 	mov    -0x46c(%rip),%rsi        # 0xfffffde8
0x254:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x258:	49 8b ce             	mov    %r14,%rcx
0x25b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x25f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x266:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x26d:	48 8b d9             	mov    %rcx,%rbx
0x270:	48 03 da             	add    %rdx,%rbx
0x273:	4c 8b cb             	mov    %rbx,%r9
0x276:	4d 3b c8             	cmp    %r8,%r9
0x279:	0f 86 14 00 00 00    	jbe    0x293
0x27f:	48 8b fe             	mov    %rsi,%rdi
0x282:	48 8b f2             	mov    %rdx,%rsi
0x285:	48 8b d0             	mov    %rax,%rdx
0x288:	e8 00 00 00 00       	callq  0x28d
0x28d:	90                   	nop
0x28e:	e9 0a 00 00 00       	jmpq   0x29d
0x293:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x29a:	48 8b c1             	mov    %rcx,%rax
0x29d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2a1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2a5:	90                   	nop
0x2a6:	90                   	nop
0x2a7:	90                   	nop
0x2a8:	e8 00 00 00 00       	callq  0x2ad
0x2ad:	90                   	nop
0x2ae:	90                   	nop
0x2af:	90                   	nop
0x2b0:	e8 00 00 00 00       	callq  0x2b5
0x2b5:	90                   	nop
0x2b6:	83 f8 00             	cmp    $0x0,%eax
0x2b9:	0f 84 27 00 00 00    	je     0x2e6
0x2bf:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2c7:	85 06                	test   %eax,(%rsi)
0x2c9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2cd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2d1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2d5:	83 e2 ff             	and    $0xffffffff,%edx
0x2d8:	48 8b fa             	mov    %rdx,%rdi
0x2db:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2df:	90                   	nop
0x2e0:	e8 00 00 00 00       	callq  0x2e5
0x2e5:	90                   	nop
0x2e6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2ea:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2ee:	48 89 38             	mov    %rdi,(%rax)
0x2f1:	48 83 ec 10          	sub    $0x10,%rsp
0x2f5:	48 89 04 24          	mov    %rax,(%rsp)
0x2f9:	48 83 ec 10          	sub    $0x10,%rsp
0x2fd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x302:	4c 89 1c 24          	mov    %r11,(%rsp)
0x306:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x30a:	48 83 ec 10          	sub    $0x10,%rsp
0x30e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x312:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x317:	41 85 03             	test   %eax,(%r11)
0x31a:	e8 00 00 00 00       	callq  0x31f
0x31f:	90                   	nop
0x320:	4c 8b 1c 24          	mov    (%rsp),%r11
0x324:	48 83 c4 10          	add    $0x10,%rsp
0x328:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x32c:	48 8b 3d bd fa ff ff 	mov    -0x543(%rip),%rdi        # 0xfffffdf0
0x333:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x337:	48 8b 35 ba fa ff ff 	mov    -0x546(%rip),%rsi        # 0xfffffdf8
0x33e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x342:	49 8b ce             	mov    %r14,%rcx
0x345:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x349:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x350:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x357:	48 8b d9             	mov    %rcx,%rbx
0x35a:	48 03 da             	add    %rdx,%rbx
0x35d:	4c 8b cb             	mov    %rbx,%r9
0x360:	4d 3b c8             	cmp    %r8,%r9
0x363:	0f 86 14 00 00 00    	jbe    0x37d
0x369:	48 8b fe             	mov    %rsi,%rdi
0x36c:	48 8b f2             	mov    %rdx,%rsi
0x36f:	48 8b d0             	mov    %rax,%rdx
0x372:	e8 00 00 00 00       	callq  0x377
0x377:	90                   	nop
0x378:	e9 0a 00 00 00       	jmpq   0x387
0x37d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x384:	48 8b c1             	mov    %rcx,%rax
0x387:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x38b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x38f:	90                   	nop
0x390:	90                   	nop
0x391:	90                   	nop
0x392:	e8 00 00 00 00       	callq  0x397
0x397:	90                   	nop
0x398:	90                   	nop
0x399:	90                   	nop
0x39a:	e8 00 00 00 00       	callq  0x39f
0x39f:	90                   	nop
0x3a0:	83 f8 00             	cmp    $0x0,%eax
0x3a3:	0f 84 27 00 00 00    	je     0x3d0
0x3a9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3ad:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x3b1:	85 06                	test   %eax,(%rsi)
0x3b3:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x3b7:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x3bb:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3bf:	83 e2 ff             	and    $0xffffffff,%edx
0x3c2:	48 8b fa             	mov    %rdx,%rdi
0x3c5:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x3c9:	90                   	nop
0x3ca:	e8 00 00 00 00       	callq  0x3cf
0x3cf:	90                   	nop
0x3d0:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3d4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3d8:	48 89 38             	mov    %rdi,(%rax)
0x3db:	48 83 ec 10          	sub    $0x10,%rsp
0x3df:	48 89 04 24          	mov    %rax,(%rsp)
0x3e3:	48 83 ec 10          	sub    $0x10,%rsp
0x3e7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3f0:	48 8b 3d 09 fa ff ff 	mov    -0x5f7(%rip),%rdi        # 0xfffffe00
0x3f7:	be 10 00 00 00       	mov    $0x10,%esi
0x3fc:	48 63 f6             	movslq %esi,%rsi
0x3ff:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x403:	48 83 ec 10          	sub    $0x10,%rsp
0x407:	48 89 04 24          	mov    %rax,(%rsp)
0x40b:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x410:	41 85 03             	test   %eax,(%r11)
0x413:	e8 00 00 00 00       	callq  0x418
0x418:	90                   	nop
0x419:	4c 8b 1c 24          	mov    (%rsp),%r11
0x41d:	48 83 c4 10          	add    $0x10,%rsp
0x421:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x425:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x429:	48 83 ec 10          	sub    $0x10,%rsp
0x42d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x431:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x435:	48 83 ec 10          	sub    $0x10,%rsp
0x439:	4c 89 1c 24          	mov    %r11,(%rsp)
0x43d:	90                   	nop
0x43e:	90                   	nop
0x43f:	90                   	nop
0x440:	e8 00 00 00 00       	callq  0x445
0x445:	90                   	nop
0x446:	48 83 ec 10          	sub    $0x10,%rsp
0x44a:	48 89 04 24          	mov    %rax,(%rsp)
0x44e:	48 83 c4 10          	add    $0x10,%rsp
0x452:	48 8b 3d af f9 ff ff 	mov    -0x651(%rip),%rdi        # 0xfffffe08
0x459:	be 18 00 00 00       	mov    $0x18,%esi
0x45e:	48 63 f6             	movslq %esi,%rsi
0x461:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x465:	48 83 ec 10          	sub    $0x10,%rsp
0x469:	48 89 04 24          	mov    %rax,(%rsp)
0x46d:	48 8b 3d 9c f9 ff ff 	mov    -0x664(%rip),%rdi        # 0xfffffe10
0x474:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x478:	48 8b 35 99 f9 ff ff 	mov    -0x667(%rip),%rsi        # 0xfffffe18
0x47f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x483:	49 8b ce             	mov    %r14,%rcx
0x486:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x48a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x491:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x498:	48 8b d9             	mov    %rcx,%rbx
0x49b:	48 03 da             	add    %rdx,%rbx
0x49e:	4c 8b cb             	mov    %rbx,%r9
0x4a1:	4d 3b c8             	cmp    %r8,%r9
0x4a4:	0f 86 14 00 00 00    	jbe    0x4be
0x4aa:	48 8b fe             	mov    %rsi,%rdi
0x4ad:	48 8b f2             	mov    %rdx,%rsi
0x4b0:	48 8b d0             	mov    %rax,%rdx
0x4b3:	e8 00 00 00 00       	callq  0x4b8
0x4b8:	90                   	nop
0x4b9:	e9 0a 00 00 00       	jmpq   0x4c8
0x4be:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x4c5:	48 8b c1             	mov    %rcx,%rax
0x4c8:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4cc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4d0:	90                   	nop
0x4d1:	90                   	nop
0x4d2:	90                   	nop
0x4d3:	e8 00 00 00 00       	callq  0x4d8
0x4d8:	90                   	nop
0x4d9:	90                   	nop
0x4da:	90                   	nop
0x4db:	e8 00 00 00 00       	callq  0x4e0
0x4e0:	90                   	nop
0x4e1:	83 f8 00             	cmp    $0x0,%eax
0x4e4:	0f 84 27 00 00 00    	je     0x511
0x4ea:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4ee:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x4f2:	85 06                	test   %eax,(%rsi)
0x4f4:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x4f8:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x4fc:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x500:	83 e2 ff             	and    $0xffffffff,%edx
0x503:	48 8b fa             	mov    %rdx,%rdi
0x506:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x50a:	90                   	nop
0x50b:	e8 00 00 00 00       	callq  0x510
0x510:	90                   	nop
0x511:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x515:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x519:	48 89 38             	mov    %rdi,(%rax)
0x51c:	48 83 ec 10          	sub    $0x10,%rsp
0x520:	48 89 04 24          	mov    %rax,(%rsp)
0x524:	48 83 ec 10          	sub    $0x10,%rsp
0x528:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x52d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x531:	4c 8b 1c 24          	mov    (%rsp),%r11
0x535:	41 85 03             	test   %eax,(%r11)
0x538:	e8 00 00 00 00       	callq  0x53d
0x53d:	90                   	nop
0x53e:	4c 8b 1d db f8 ff ff 	mov    -0x725(%rip),%r11        # 0xfffffe20
0x545:	48 83 ec 10          	sub    $0x10,%rsp
0x549:	4c 89 1c 24          	mov    %r11,(%rsp)
0x54d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x552:	41 85 03             	test   %eax,(%r11)
0x555:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x55a:	e8 00 00 00 00       	callq  0x55f
0x55f:	90                   	nop
0x560:	48 83 ec 10          	sub    $0x10,%rsp
0x564:	48 89 04 24          	mov    %rax,(%rsp)
0x568:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x56c:	48 83 ec 10          	sub    $0x10,%rsp
0x570:	4c 89 1c 24          	mov    %r11,(%rsp)
0x574:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x579:	41 85 03             	test   %eax,(%r11)
0x57c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x581:	e8 00 00 00 00       	callq  0x586
0x586:	90                   	nop
0x587:	48 83 ec 10          	sub    $0x10,%rsp
0x58b:	48 89 04 24          	mov    %rax,(%rsp)
0x58f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x593:	41 85 03             	test   %eax,(%r11)
0x596:	48 8b 3c 24          	mov    (%rsp),%rdi
0x59a:	e8 00 00 00 00       	callq  0x59f
0x59f:	90                   	nop
0x5a0:	48 83 ec 10          	sub    $0x10,%rsp
0x5a4:	48 89 04 24          	mov    %rax,(%rsp)
0x5a8:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5ad:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5b2:	48 8b 15 6f f8 ff ff 	mov    -0x791(%rip),%rdx        # 0xfffffe28
0x5b9:	b9 0d 00 00 00       	mov    $0xd,%ecx
0x5be:	48 8b c6             	mov    %rsi,%rax
0x5c1:	48 8b 00             	mov    (%rax),%rax
0x5c4:	48 63 ff             	movslq %edi,%rdi
0x5c7:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5cc:	48 8b fa             	mov    %rdx,%rdi
0x5cf:	48 8b d1             	mov    %rcx,%rdx
0x5d2:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5d7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5db:	90                   	nop
0x5dc:	90                   	nop
0x5dd:	e8 00 00 00 00       	callq  0x5e2
0x5e2:	90                   	nop
0x5e3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5e7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5eb:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5f0:	ff d0                	callq  *%rax
0x5f2:	90                   	nop
0x5f3:	48 8b 3d 36 f8 ff ff 	mov    -0x7ca(%rip),%rdi        # 0xfffffe30
0x5fa:	be 1c 00 00 00       	mov    $0x1c,%esi
0x5ff:	48 63 f6             	movslq %esi,%rsi
0x602:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x606:	48 83 ec 10          	sub    $0x10,%rsp
0x60a:	89 04 24             	mov    %eax,(%rsp)
0x60d:	44 8b 1c 24          	mov    (%rsp),%r11d
0x611:	b8 00 00 00 00       	mov    $0x0,%eax
0x616:	48 83 c4 10          	add    $0x10,%rsp
0x61a:	44 3b d8             	cmp    %eax,%r11d
0x61d:	75 33                	jne    0x652
0x61f:	48 8b 3d 12 f8 ff ff 	mov    -0x7ee(%rip),%rdi        # 0xfffffe38
0x626:	be 15 00 00 00       	mov    $0x15,%esi
0x62b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x62f:	48 8b c8             	mov    %rax,%rcx
0x632:	48 63 f6             	movslq %esi,%rsi
0x635:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x63a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x640:	0f 8d 07 00 00 00    	jge    0x64d
0x646:	83 c1 01             	add    $0x1,%ecx
0x649:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x64d:	e9 3a 06 00 00       	jmpq   0xc8c
0x652:	48 8b 3d e7 f7 ff ff 	mov    -0x819(%rip),%rdi        # 0xfffffe40
0x659:	be 16 00 00 00       	mov    $0x16,%esi
0x65e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x662:	48 8b c8             	mov    %rax,%rcx
0x665:	48 63 f6             	movslq %esi,%rsi
0x668:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x66d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x673:	0f 8d 07 00 00 00    	jge    0x680
0x679:	83 c1 01             	add    $0x1,%ecx
0x67c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x680:	48 8b 3d c1 f7 ff ff 	mov    -0x83f(%rip),%rdi        # 0xfffffe48
0x687:	be 18 00 00 00       	mov    $0x18,%esi
0x68c:	48 63 f6             	movslq %esi,%rsi
0x68f:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x693:	48 83 ec 10          	sub    $0x10,%rsp
0x697:	48 89 04 24          	mov    %rax,(%rsp)
0x69b:	48 8b 3d ae f7 ff ff 	mov    -0x852(%rip),%rdi        # 0xfffffe50
0x6a2:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x6a6:	48 8b 35 ab f7 ff ff 	mov    -0x855(%rip),%rsi        # 0xfffffe58
0x6ad:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6b1:	49 8b ce             	mov    %r14,%rcx
0x6b4:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x6b8:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x6bf:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x6c6:	48 8b d9             	mov    %rcx,%rbx
0x6c9:	48 03 da             	add    %rdx,%rbx
0x6cc:	4c 8b cb             	mov    %rbx,%r9
0x6cf:	4d 3b c8             	cmp    %r8,%r9
0x6d2:	0f 86 14 00 00 00    	jbe    0x6ec
0x6d8:	48 8b fe             	mov    %rsi,%rdi
0x6db:	48 8b f2             	mov    %rdx,%rsi
0x6de:	48 8b d0             	mov    %rax,%rdx
0x6e1:	e8 00 00 00 00       	callq  0x6e6
0x6e6:	90                   	nop
0x6e7:	e9 0a 00 00 00       	jmpq   0x6f6
0x6ec:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x6f3:	48 8b c1             	mov    %rcx,%rax
0x6f6:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x6fa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6fe:	90                   	nop
0x6ff:	90                   	nop
0x700:	90                   	nop
0x701:	e8 00 00 00 00       	callq  0x706
0x706:	90                   	nop
0x707:	90                   	nop
0x708:	90                   	nop
0x709:	e8 00 00 00 00       	callq  0x70e
0x70e:	90                   	nop
0x70f:	83 f8 00             	cmp    $0x0,%eax
0x712:	0f 84 27 00 00 00    	je     0x73f
0x718:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x71c:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x720:	85 06                	test   %eax,(%rsi)
0x722:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x726:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x72a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x72e:	83 e2 ff             	and    $0xffffffff,%edx
0x731:	48 8b fa             	mov    %rdx,%rdi
0x734:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x738:	90                   	nop
0x739:	e8 00 00 00 00       	callq  0x73e
0x73e:	90                   	nop
0x73f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x743:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x747:	48 89 38             	mov    %rdi,(%rax)
0x74a:	48 83 ec 10          	sub    $0x10,%rsp
0x74e:	48 89 04 24          	mov    %rax,(%rsp)
0x752:	48 83 ec 10          	sub    $0x10,%rsp
0x756:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x75b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x75f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x763:	41 85 03             	test   %eax,(%r11)
0x766:	90                   	nop
0x767:	90                   	nop
0x768:	e8 00 00 00 00       	callq  0x76d
0x76d:	90                   	nop
0x76e:	4c 8b 1d eb f6 ff ff 	mov    -0x915(%rip),%r11        # 0xfffffe60
0x775:	48 83 ec 10          	sub    $0x10,%rsp
0x779:	4c 89 1c 24          	mov    %r11,(%rsp)
0x77d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x782:	41 85 03             	test   %eax,(%r11)
0x785:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x78a:	e8 00 00 00 00       	callq  0x78f
0x78f:	90                   	nop
0x790:	48 83 ec 10          	sub    $0x10,%rsp
0x794:	48 89 04 24          	mov    %rax,(%rsp)
0x798:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x79c:	48 83 ec 10          	sub    $0x10,%rsp
0x7a0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x7a4:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x7a9:	41 85 03             	test   %eax,(%r11)
0x7ac:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7b1:	e8 00 00 00 00       	callq  0x7b6
0x7b6:	90                   	nop
0x7b7:	48 83 ec 10          	sub    $0x10,%rsp
0x7bb:	48 89 04 24          	mov    %rax,(%rsp)
0x7bf:	4c 8b 1d a2 f6 ff ff 	mov    -0x95e(%rip),%r11        # 0xfffffe68
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
0x806:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x80b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x810:	48 8b 15 59 f6 ff ff 	mov    -0x9a7(%rip),%rdx        # 0xfffffe70
0x817:	b9 1d 00 00 00       	mov    $0x1d,%ecx
0x81c:	48 8b c6             	mov    %rsi,%rax
0x81f:	48 8b 00             	mov    (%rax),%rax
0x822:	48 63 ff             	movslq %edi,%rdi
0x825:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x82a:	48 8b fa             	mov    %rdx,%rdi
0x82d:	48 8b d1             	mov    %rcx,%rdx
0x830:	b9 03 00 00 00       	mov    $0x3,%ecx
0x835:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x839:	90                   	nop
0x83a:	90                   	nop
0x83b:	e8 00 00 00 00       	callq  0x840
0x840:	90                   	nop
0x841:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x845:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x849:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x84e:	ff d0                	callq  *%rax
0x850:	90                   	nop
0x851:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x857:	48 83 ec 10          	sub    $0x10,%rsp
0x85b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x85f:	44 8b 1c 24          	mov    (%rsp),%r11d
0x863:	48 83 c4 10          	add    $0x10,%rsp
0x867:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0x86b:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0x86f:	48 83 ec 10          	sub    $0x10,%rsp
0x873:	44 89 1c 24          	mov    %r11d,(%rsp)
0x877:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x87b:	48 83 ec 10          	sub    $0x10,%rsp
0x87f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x883:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x888:	8b 04 24             	mov    (%rsp),%eax
0x88b:	48 83 c4 20          	add    $0x20,%rsp
0x88f:	44 3b d8             	cmp    %eax,%r11d
0x892:	7c 33                	jl     0x8c7
0x894:	48 8b 3d dd f5 ff ff 	mov    -0xa23(%rip),%rdi        # 0xfffffe78
0x89b:	be 25 00 00 00       	mov    $0x25,%esi
0x8a0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8a4:	48 8b c8             	mov    %rax,%rcx
0x8a7:	48 63 f6             	movslq %esi,%rsi
0x8aa:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x8af:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x8b5:	0f 8d 07 00 00 00    	jge    0x8c2
0x8bb:	83 c1 01             	add    $0x1,%ecx
0x8be:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x8c2:	e9 92 03 00 00       	jmpq   0xc59
0x8c7:	48 8b 3d b2 f5 ff ff 	mov    -0xa4e(%rip),%rdi        # 0xfffffe80
0x8ce:	be 26 00 00 00       	mov    $0x26,%esi
0x8d3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8d7:	48 8b c8             	mov    %rax,%rcx
0x8da:	48 63 f6             	movslq %esi,%rsi
0x8dd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x8e2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x8e8:	0f 8d 07 00 00 00    	jge    0x8f5
0x8ee:	83 c1 01             	add    $0x1,%ecx
0x8f1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x8f5:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x8f9:	48 83 ec 10          	sub    $0x10,%rsp
0x8fd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x901:	e8 00 00 00 00       	callq  0x906
0x906:	90                   	nop
0x907:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0x90b:	48 83 ec 10          	sub    $0x10,%rsp
0x90f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x913:	41 bb e8 03 00 00    	mov    $0x3e8,%r11d
0x919:	48 83 ec 10          	sub    $0x10,%rsp
0x91d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x921:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x926:	40 8b 34 24          	rex mov (%rsp),%esi
0x92a:	48 8b c7             	mov    %rdi,%rax
0x92d:	99                   	cltd   
0x92e:	f7 fe                	idiv   %esi
0x930:	48 8b c2             	mov    %rdx,%rax
0x933:	48 83 c4 10          	add    $0x10,%rsp
0x937:	89 04 24             	mov    %eax,(%rsp)
0x93a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x93e:	b8 00 00 00 00       	mov    $0x0,%eax
0x943:	48 83 c4 10          	add    $0x10,%rsp
0x947:	44 3b d8             	cmp    %eax,%r11d
0x94a:	74 33                	je     0x97f
0x94c:	48 8b 3d 35 f5 ff ff 	mov    -0xacb(%rip),%rdi        # 0xfffffe88
0x953:	be 28 00 00 00       	mov    $0x28,%esi
0x958:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x95c:	48 8b c8             	mov    %rax,%rcx
0x95f:	48 63 f6             	movslq %esi,%rsi
0x962:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x967:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x96d:	0f 8d 07 00 00 00    	jge    0x97a
0x973:	83 c1 01             	add    $0x1,%ecx
0x976:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x97a:	e9 53 02 00 00       	jmpq   0xbd2
0x97f:	48 8b 3d 0a f5 ff ff 	mov    -0xaf6(%rip),%rdi        # 0xfffffe90
0x986:	be 29 00 00 00       	mov    $0x29,%esi
0x98b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x98f:	48 8b c8             	mov    %rax,%rcx
0x992:	48 63 f6             	movslq %esi,%rsi
0x995:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x99a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x9a0:	0f 8d 07 00 00 00    	jge    0x9ad
0x9a6:	83 c1 01             	add    $0x1,%ecx
0x9a9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x9ad:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0x9b1:	48 83 ec 10          	sub    $0x10,%rsp
0x9b5:	44 89 1c 24          	mov    %r11d,(%rsp)
0x9b9:	44 8b 1c 24          	mov    (%rsp),%r11d
0x9bd:	b8 00 00 00 00       	mov    $0x0,%eax
0x9c2:	48 83 c4 10          	add    $0x10,%rsp
0x9c6:	44 3b d8             	cmp    %eax,%r11d
0x9c9:	75 33                	jne    0x9fe
0x9cb:	48 8b 3d c6 f4 ff ff 	mov    -0xb3a(%rip),%rdi        # 0xfffffe98
0x9d2:	be 2a 00 00 00       	mov    $0x2a,%esi
0x9d7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x9db:	48 8b c8             	mov    %rax,%rcx
0x9de:	48 63 f6             	movslq %esi,%rsi
0x9e1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x9e6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x9ec:	0f 8d 07 00 00 00    	jge    0x9f9
0x9f2:	83 c1 01             	add    $0x1,%ecx
0x9f5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x9f9:	e9 d4 01 00 00       	jmpq   0xbd2
0x9fe:	48 8b 3d 9b f4 ff ff 	mov    -0xb65(%rip),%rdi        # 0xfffffea0
0xa05:	be 2b 00 00 00       	mov    $0x2b,%esi
0xa0a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa0e:	48 8b c8             	mov    %rax,%rcx
0xa11:	48 63 f6             	movslq %esi,%rsi
0xa14:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa19:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xa1f:	0f 8d 07 00 00 00    	jge    0xa2c
0xa25:	83 c1 01             	add    $0x1,%ecx
0xa28:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xa2c:	48 8b 3d 75 f4 ff ff 	mov    -0xb8b(%rip),%rdi        # 0xfffffea8
0xa33:	be 18 00 00 00       	mov    $0x18,%esi
0xa38:	48 63 f6             	movslq %esi,%rsi
0xa3b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xa3f:	48 83 ec 10          	sub    $0x10,%rsp
0xa43:	48 89 04 24          	mov    %rax,(%rsp)
0xa47:	48 8b 3d 62 f4 ff ff 	mov    -0xb9e(%rip),%rdi        # 0xfffffeb0
0xa4e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xa52:	48 8b 35 5f f4 ff ff 	mov    -0xba1(%rip),%rsi        # 0xfffffeb8
0xa59:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xa5d:	49 8b ce             	mov    %r14,%rcx
0xa60:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xa64:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xa6b:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xa72:	48 8b d9             	mov    %rcx,%rbx
0xa75:	48 03 da             	add    %rdx,%rbx
0xa78:	4c 8b cb             	mov    %rbx,%r9
0xa7b:	4d 3b c8             	cmp    %r8,%r9
0xa7e:	0f 86 14 00 00 00    	jbe    0xa98
0xa84:	48 8b fe             	mov    %rsi,%rdi
0xa87:	48 8b f2             	mov    %rdx,%rsi
0xa8a:	48 8b d0             	mov    %rax,%rdx
0xa8d:	e8 00 00 00 00       	callq  0xa92
0xa92:	90                   	nop
0xa93:	e9 0a 00 00 00       	jmpq   0xaa2
0xa98:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xa9f:	48 8b c1             	mov    %rcx,%rax
0xaa2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xaa6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xaaa:	90                   	nop
0xaab:	90                   	nop
0xaac:	90                   	nop
0xaad:	e8 00 00 00 00       	callq  0xab2
0xab2:	90                   	nop
0xab3:	90                   	nop
0xab4:	90                   	nop
0xab5:	e8 00 00 00 00       	callq  0xaba
0xaba:	90                   	nop
0xabb:	83 f8 00             	cmp    $0x0,%eax
0xabe:	0f 84 27 00 00 00    	je     0xaeb
0xac4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xac8:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xacc:	85 06                	test   %eax,(%rsi)
0xace:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xad2:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xad6:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xada:	83 e2 ff             	and    $0xffffffff,%edx
0xadd:	48 8b fa             	mov    %rdx,%rdi
0xae0:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xae4:	90                   	nop
0xae5:	e8 00 00 00 00       	callq  0xaea
0xaea:	90                   	nop
0xaeb:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xaef:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xaf3:	48 89 38             	mov    %rdi,(%rax)
0xaf6:	48 83 ec 10          	sub    $0x10,%rsp
0xafa:	48 89 04 24          	mov    %rax,(%rsp)
0xafe:	48 83 ec 10          	sub    $0x10,%rsp
0xb02:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb07:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb0b:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb0f:	41 85 03             	test   %eax,(%r11)
0xb12:	e8 00 00 00 00       	callq  0xb17
0xb17:	90                   	nop
0xb18:	4c 8b 1d a1 f3 ff ff 	mov    -0xc5f(%rip),%r11        # 0xfffffec0
0xb1f:	48 83 ec 10          	sub    $0x10,%rsp
0xb23:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb27:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb2c:	41 85 03             	test   %eax,(%r11)
0xb2f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb34:	90                   	nop
0xb35:	90                   	nop
0xb36:	90                   	nop
0xb37:	90                   	nop
0xb38:	e8 00 00 00 00       	callq  0xb3d
0xb3d:	90                   	nop
0xb3e:	48 83 ec 10          	sub    $0x10,%rsp
0xb42:	48 89 04 24          	mov    %rax,(%rsp)
0xb46:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0xb4a:	48 83 ec 10          	sub    $0x10,%rsp
0xb4e:	44 89 1c 24          	mov    %r11d,(%rsp)
0xb52:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb57:	41 85 03             	test   %eax,(%r11)
0xb5a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb5f:	90                   	nop
0xb60:	e8 00 00 00 00       	callq  0xb65
0xb65:	90                   	nop
0xb66:	48 83 ec 10          	sub    $0x10,%rsp
0xb6a:	48 89 04 24          	mov    %rax,(%rsp)
0xb6e:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb72:	41 85 03             	test   %eax,(%r11)
0xb75:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb79:	e8 00 00 00 00       	callq  0xb7e
0xb7e:	90                   	nop
0xb7f:	48 83 ec 10          	sub    $0x10,%rsp
0xb83:	48 89 04 24          	mov    %rax,(%rsp)
0xb87:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xb8c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xb91:	48 8b 15 30 f3 ff ff 	mov    -0xcd0(%rip),%rdx        # 0xfffffec8
0xb98:	b9 31 00 00 00       	mov    $0x31,%ecx
0xb9d:	48 8b c6             	mov    %rsi,%rax
0xba0:	48 8b 00             	mov    (%rax),%rax
0xba3:	48 63 ff             	movslq %edi,%rdi
0xba6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xbab:	48 8b fa             	mov    %rdx,%rdi
0xbae:	48 8b d1             	mov    %rcx,%rdx
0xbb1:	b9 03 00 00 00       	mov    $0x3,%ecx
0xbb6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xbba:	90                   	nop
0xbbb:	90                   	nop
0xbbc:	e8 00 00 00 00       	callq  0xbc1
0xbc1:	90                   	nop
0xbc2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbc6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xbca:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xbcf:	ff d0                	callq  *%rax
0xbd1:	90                   	nop
0xbd2:	48 8b 3d f7 f2 ff ff 	mov    -0xd09(%rip),%rdi        # 0xfffffed0
0xbd9:	be 1c 00 00 00       	mov    $0x1c,%esi
0xbde:	48 63 f6             	movslq %esi,%rsi
0xbe1:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xbe5:	48 83 ec 10          	sub    $0x10,%rsp
0xbe9:	89 04 24             	mov    %eax,(%rsp)
0xbec:	40 8b 3c 24          	rex mov (%rsp),%edi
0xbf0:	48 63 ff             	movslq %edi,%rdi
0xbf3:	48 8b c7             	mov    %rdi,%rax
0xbf6:	48 83 ec 10          	sub    $0x10,%rsp
0xbfa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xbff:	90                   	nop
0xc00:	e8 00 00 00 00       	callq  0xc05
0xc05:	90                   	nop
0xc06:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0xc0a:	41 83 c3 01          	add    $0x1,%r11d
0xc0e:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0xc12:	48 8b 3d bf f2 ff ff 	mov    -0xd41(%rip),%rdi        # 0xfffffed8
0xc19:	be 3a 00 00 00       	mov    $0x3a,%esi
0xc1e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xc22:	48 8b c8             	mov    %rax,%rcx
0xc25:	48 63 f6             	movslq %esi,%rsi
0xc28:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xc2d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc33:	0f 8d 07 00 00 00    	jge    0xc40
0xc39:	83 c1 01             	add    $0x1,%ecx
0xc3c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc40:	48 8b 3d 99 f2 ff ff 	mov    -0xd67(%rip),%rdi        # 0xfffffee0
0xc47:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xc4b:	83 e8 01             	sub    $0x1,%eax
0xc4e:	89 47 30             	mov    %eax,0x30(%rdi)
0xc51:	4d 8b 36             	mov    (%r14),%r14
0xc54:	e9 12 fc ff ff       	jmpq   0x86b
0xc59:	48 8b 3d 88 f2 ff ff 	mov    -0xd78(%rip),%rdi        # 0xfffffee8
0xc60:	be 3b 00 00 00       	mov    $0x3b,%esi
0xc65:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xc69:	48 8b c8             	mov    %rax,%rcx
0xc6c:	48 63 f6             	movslq %esi,%rsi
0xc6f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xc74:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc7a:	0f 8d 07 00 00 00    	jge    0xc87
0xc80:	83 c1 01             	add    $0x1,%ecx
0xc83:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc87:	e9 85 03 00 00       	jmpq   0x1011
0xc8c:	48 8b 3d 5d f2 ff ff 	mov    -0xda3(%rip),%rdi        # 0xfffffef0
0xc93:	be 18 00 00 00       	mov    $0x18,%esi
0xc98:	48 63 f6             	movslq %esi,%rsi
0xc9b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc9f:	48 83 ec 10          	sub    $0x10,%rsp
0xca3:	48 89 04 24          	mov    %rax,(%rsp)
0xca7:	48 8b 3d 4a f2 ff ff 	mov    -0xdb6(%rip),%rdi        # 0xfffffef8
0xcae:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xcb2:	48 8b 35 47 f2 ff ff 	mov    -0xdb9(%rip),%rsi        # 0xffffff00
0xcb9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xcbd:	49 8b ce             	mov    %r14,%rcx
0xcc0:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xcc4:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xccb:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xcd2:	48 8b d9             	mov    %rcx,%rbx
0xcd5:	48 03 da             	add    %rdx,%rbx
0xcd8:	4c 8b cb             	mov    %rbx,%r9
0xcdb:	4d 3b c8             	cmp    %r8,%r9
0xcde:	0f 86 14 00 00 00    	jbe    0xcf8
0xce4:	48 8b fe             	mov    %rsi,%rdi
0xce7:	48 8b f2             	mov    %rdx,%rsi
0xcea:	48 8b d0             	mov    %rax,%rdx
0xced:	e8 00 00 00 00       	callq  0xcf2
0xcf2:	90                   	nop
0xcf3:	e9 0a 00 00 00       	jmpq   0xd02
0xcf8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xcff:	48 8b c1             	mov    %rcx,%rax
0xd02:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xd06:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd0a:	90                   	nop
0xd0b:	90                   	nop
0xd0c:	90                   	nop
0xd0d:	e8 00 00 00 00       	callq  0xd12
0xd12:	90                   	nop
0xd13:	90                   	nop
0xd14:	90                   	nop
0xd15:	e8 00 00 00 00       	callq  0xd1a
0xd1a:	90                   	nop
0xd1b:	83 f8 00             	cmp    $0x0,%eax
0xd1e:	0f 84 27 00 00 00    	je     0xd4b
0xd24:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd28:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xd2c:	85 06                	test   %eax,(%rsi)
0xd2e:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xd32:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xd36:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xd3a:	83 e2 ff             	and    $0xffffffff,%edx
0xd3d:	48 8b fa             	mov    %rdx,%rdi
0xd40:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xd44:	90                   	nop
0xd45:	e8 00 00 00 00       	callq  0xd4a
0xd4a:	90                   	nop
0xd4b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xd4f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd53:	48 89 38             	mov    %rdi,(%rax)
0xd56:	48 83 ec 10          	sub    $0x10,%rsp
0xd5a:	48 89 04 24          	mov    %rax,(%rsp)
0xd5e:	48 83 ec 10          	sub    $0x10,%rsp
0xd62:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xd67:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd6b:	4c 8b 1c 24          	mov    (%rsp),%r11
0xd6f:	41 85 03             	test   %eax,(%r11)
0xd72:	e8 00 00 00 00       	callq  0xd77
0xd77:	90                   	nop
0xd78:	4c 8b 1d 89 f1 ff ff 	mov    -0xe77(%rip),%r11        # 0xffffff08
0xd7f:	48 83 ec 10          	sub    $0x10,%rsp
0xd83:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd87:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xd8c:	41 85 03             	test   %eax,(%r11)
0xd8f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xd94:	90                   	nop
0xd95:	90                   	nop
0xd96:	90                   	nop
0xd97:	90                   	nop
0xd98:	e8 00 00 00 00       	callq  0xd9d
0xd9d:	90                   	nop
0xd9e:	48 83 ec 10          	sub    $0x10,%rsp
0xda2:	48 89 04 24          	mov    %rax,(%rsp)
0xda6:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xdaa:	48 83 ec 10          	sub    $0x10,%rsp
0xdae:	44 89 1c 24          	mov    %r11d,(%rsp)
0xdb2:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xdb7:	41 85 03             	test   %eax,(%r11)
0xdba:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xdbf:	90                   	nop
0xdc0:	e8 00 00 00 00       	callq  0xdc5
0xdc5:	90                   	nop
0xdc6:	48 83 ec 10          	sub    $0x10,%rsp
0xdca:	48 89 04 24          	mov    %rax,(%rsp)
0xdce:	4c 8b 1d 3b f1 ff ff 	mov    -0xec5(%rip),%r11        # 0xffffff10
0xdd5:	48 83 ec 10          	sub    $0x10,%rsp
0xdd9:	4c 89 1c 24          	mov    %r11,(%rsp)
0xddd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xde2:	41 85 03             	test   %eax,(%r11)
0xde5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xdea:	e8 00 00 00 00       	callq  0xdef
0xdef:	90                   	nop
0xdf0:	48 83 ec 10          	sub    $0x10,%rsp
0xdf4:	48 89 04 24          	mov    %rax,(%rsp)
0xdf8:	4c 8b 1c 24          	mov    (%rsp),%r11
0xdfc:	41 85 03             	test   %eax,(%r11)
0xdff:	48 8b 3c 24          	mov    (%rsp),%rdi
0xe03:	e8 00 00 00 00       	callq  0xe08
0xe08:	90                   	nop
0xe09:	48 83 ec 10          	sub    $0x10,%rsp
0xe0d:	48 89 04 24          	mov    %rax,(%rsp)
0xe11:	bf 25 00 00 00       	mov    $0x25,%edi
0xe16:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xe1b:	48 8b 15 f6 f0 ff ff 	mov    -0xf0a(%rip),%rdx        # 0xffffff18
0xe22:	b9 42 00 00 00       	mov    $0x42,%ecx
0xe27:	48 8b c6             	mov    %rsi,%rax
0xe2a:	48 8b 00             	mov    (%rax),%rax
0xe2d:	48 63 ff             	movslq %edi,%rdi
0xe30:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xe35:	48 8b fa             	mov    %rdx,%rdi
0xe38:	48 8b d1             	mov    %rcx,%rdx
0xe3b:	b9 03 00 00 00       	mov    $0x3,%ecx
0xe40:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xe44:	90                   	nop
0xe45:	90                   	nop
0xe46:	e8 00 00 00 00       	callq  0xe4b
0xe4b:	90                   	nop
0xe4c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xe50:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xe54:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xe59:	ff d0                	callq  *%rax
0xe5b:	90                   	nop
0xe5c:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xe62:	48 83 ec 10          	sub    $0x10,%rsp
0xe66:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe6a:	44 8b 1c 24          	mov    (%rsp),%r11d
0xe6e:	48 83 c4 10          	add    $0x10,%rsp
0xe72:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0xe76:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0xe7a:	48 83 ec 10          	sub    $0x10,%rsp
0xe7e:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe82:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xe86:	48 83 ec 10          	sub    $0x10,%rsp
0xe8a:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe8e:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xe93:	8b 04 24             	mov    (%rsp),%eax
0xe96:	48 83 c4 20          	add    $0x20,%rsp
0xe9a:	44 3b d8             	cmp    %eax,%r11d
0xe9d:	7c 33                	jl     0xed2
0xe9f:	48 8b 3d 7a f0 ff ff 	mov    -0xf86(%rip),%rdi        # 0xffffff20
0xea6:	be 4a 00 00 00       	mov    $0x4a,%esi
0xeab:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xeaf:	48 8b c8             	mov    %rax,%rcx
0xeb2:	48 63 f6             	movslq %esi,%rsi
0xeb5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xeba:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xec0:	0f 8d 07 00 00 00    	jge    0xecd
0xec6:	83 c1 01             	add    $0x1,%ecx
0xec9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xecd:	e9 ca 00 00 00       	jmpq   0xf9c
0xed2:	48 8b 3d 4f f0 ff ff 	mov    -0xfb1(%rip),%rdi        # 0xffffff28
0xed9:	be 4b 00 00 00       	mov    $0x4b,%esi
0xede:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xee2:	48 8b c8             	mov    %rax,%rcx
0xee5:	48 63 f6             	movslq %esi,%rsi
0xee8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xeed:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xef3:	0f 8d 07 00 00 00    	jge    0xf00
0xef9:	83 c1 01             	add    $0x1,%ecx
0xefc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf00:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0xf04:	48 83 ec 10          	sub    $0x10,%rsp
0xf08:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf0c:	90                   	nop
0xf0d:	90                   	nop
0xf0e:	90                   	nop
0xf0f:	90                   	nop
0xf10:	e8 00 00 00 00       	callq  0xf15
0xf15:	90                   	nop
0xf16:	48 8b 3d 13 f0 ff ff 	mov    -0xfed(%rip),%rdi        # 0xffffff30
0xf1d:	be 1c 00 00 00       	mov    $0x1c,%esi
0xf22:	48 63 f6             	movslq %esi,%rsi
0xf25:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xf29:	48 83 ec 10          	sub    $0x10,%rsp
0xf2d:	89 04 24             	mov    %eax,(%rsp)
0xf30:	40 8b 3c 24          	rex mov (%rsp),%edi
0xf34:	48 63 ff             	movslq %edi,%rdi
0xf37:	48 8b c7             	mov    %rdi,%rax
0xf3a:	48 83 ec 10          	sub    $0x10,%rsp
0xf3e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xf43:	e8 00 00 00 00       	callq  0xf48
0xf48:	90                   	nop
0xf49:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0xf4d:	41 83 c3 01          	add    $0x1,%r11d
0xf51:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0xf55:	48 8b 3d dc ef ff ff 	mov    -0x1024(%rip),%rdi        # 0xffffff38
0xf5c:	be 4e 00 00 00       	mov    $0x4e,%esi
0xf61:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xf65:	48 8b c8             	mov    %rax,%rcx
0xf68:	48 63 f6             	movslq %esi,%rsi
0xf6b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf70:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf76:	0f 8d 07 00 00 00    	jge    0xf83
0xf7c:	83 c1 01             	add    $0x1,%ecx
0xf7f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf83:	48 8b 3d b6 ef ff ff 	mov    -0x104a(%rip),%rdi        # 0xffffff40
0xf8a:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xf8e:	83 e8 01             	sub    $0x1,%eax
0xf91:	89 47 30             	mov    %eax,0x30(%rdi)
0xf94:	4d 8b 36             	mov    (%r14),%r14
0xf97:	e9 da fe ff ff       	jmpq   0xe76
0xf9c:	48 8b 3d a5 ef ff ff 	mov    -0x105b(%rip),%rdi        # 0xffffff48
0xfa3:	be 18 00 00 00       	mov    $0x18,%esi
0xfa8:	48 63 f6             	movslq %esi,%rsi
0xfab:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xfaf:	48 83 ec 10          	sub    $0x10,%rsp
0xfb3:	48 89 04 24          	mov    %rax,(%rsp)
0xfb7:	4c 8b 1d 92 ef ff ff 	mov    -0x106e(%rip),%r11        # 0xffffff50
0xfbe:	48 83 ec 10          	sub    $0x10,%rsp
0xfc2:	4c 89 1c 24          	mov    %r11,(%rsp)
0xfc6:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xfcb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xfd0:	48 8b 15 81 ef ff ff 	mov    -0x107f(%rip),%rdx        # 0xffffff58
0xfd7:	b9 50 00 00 00       	mov    $0x50,%ecx
0xfdc:	48 8b c6             	mov    %rsi,%rax
0xfdf:	48 8b 00             	mov    (%rax),%rax
0xfe2:	48 63 ff             	movslq %edi,%rdi
0xfe5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xfea:	48 8b fa             	mov    %rdx,%rdi
0xfed:	48 8b d1             	mov    %rcx,%rdx
0xff0:	b9 03 00 00 00       	mov    $0x3,%ecx
0xff5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xff9:	90                   	nop
0xffa:	90                   	nop
0xffb:	e8 00 00 00 00       	callq  0x1000
0x1000:	90                   	nop
0x1001:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1005:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1009:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x100e:	ff d0                	callq  *%rax
0x1010:	90                   	nop
0x1011:	48 8b 3d 48 ef ff ff 	mov    -0x10b8(%rip),%rdi        # 0xffffff60
0x1018:	be 18 00 00 00       	mov    $0x18,%esi
0x101d:	48 63 f6             	movslq %esi,%rsi
0x1020:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1024:	48 83 ec 10          	sub    $0x10,%rsp
0x1028:	48 89 04 24          	mov    %rax,(%rsp)
0x102c:	48 8b 3d 35 ef ff ff 	mov    -0x10cb(%rip),%rdi        # 0xffffff68
0x1033:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x1037:	48 8b 35 32 ef ff ff 	mov    -0x10ce(%rip),%rsi        # 0xffffff70
0x103e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1042:	49 8b ce             	mov    %r14,%rcx
0x1045:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1049:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1050:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x1057:	48 8b d9             	mov    %rcx,%rbx
0x105a:	48 03 da             	add    %rdx,%rbx
0x105d:	4c 8b cb             	mov    %rbx,%r9
0x1060:	4d 3b c8             	cmp    %r8,%r9
0x1063:	0f 86 14 00 00 00    	jbe    0x107d
0x1069:	48 8b fe             	mov    %rsi,%rdi
0x106c:	48 8b f2             	mov    %rdx,%rsi
0x106f:	48 8b d0             	mov    %rax,%rdx
0x1072:	e8 00 00 00 00       	callq  0x1077
0x1077:	90                   	nop
0x1078:	e9 0a 00 00 00       	jmpq   0x1087
0x107d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1084:	48 8b c1             	mov    %rcx,%rax
0x1087:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x108b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x108f:	90                   	nop
0x1090:	90                   	nop
0x1091:	90                   	nop
0x1092:	e8 00 00 00 00       	callq  0x1097
0x1097:	90                   	nop
0x1098:	90                   	nop
0x1099:	90                   	nop
0x109a:	e8 00 00 00 00       	callq  0x109f
0x109f:	90                   	nop
0x10a0:	83 f8 00             	cmp    $0x0,%eax
0x10a3:	0f 84 27 00 00 00    	je     0x10d0
0x10a9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x10ad:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x10b1:	85 06                	test   %eax,(%rsi)
0x10b3:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x10b7:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x10bb:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x10bf:	83 e2 ff             	and    $0xffffffff,%edx
0x10c2:	48 8b fa             	mov    %rdx,%rdi
0x10c5:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x10c9:	90                   	nop
0x10ca:	e8 00 00 00 00       	callq  0x10cf
0x10cf:	90                   	nop
0x10d0:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x10d4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x10d8:	48 89 38             	mov    %rdi,(%rax)
0x10db:	48 83 ec 10          	sub    $0x10,%rsp
0x10df:	48 89 04 24          	mov    %rax,(%rsp)
0x10e3:	48 83 ec 10          	sub    $0x10,%rsp
0x10e7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x10ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10f0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x10f4:	41 85 03             	test   %eax,(%r11)
0x10f7:	90                   	nop
0x10f8:	e8 00 00 00 00       	callq  0x10fd
0x10fd:	90                   	nop
0x10fe:	4c 8b 1d 73 ee ff ff 	mov    -0x118d(%rip),%r11        # 0xffffff78
0x1105:	48 83 ec 10          	sub    $0x10,%rsp
0x1109:	4c 89 1c 24          	mov    %r11,(%rsp)
0x110d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1112:	41 85 03             	test   %eax,(%r11)
0x1115:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x111a:	e8 00 00 00 00       	callq  0x111f
0x111f:	90                   	nop
0x1120:	48 83 ec 10          	sub    $0x10,%rsp
0x1124:	48 89 04 24          	mov    %rax,(%rsp)
0x1128:	48 8b 3d 51 ee ff ff 	mov    -0x11af(%rip),%rdi        # 0xffffff80
0x112f:	be 20 00 00 00       	mov    $0x20,%esi
0x1134:	48 63 f6             	movslq %esi,%rsi
0x1137:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x113b:	48 83 ec 10          	sub    $0x10,%rsp
0x113f:	89 04 24             	mov    %eax,(%rsp)
0x1142:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1147:	41 85 03             	test   %eax,(%r11)
0x114a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x114f:	90                   	nop
0x1150:	e8 00 00 00 00       	callq  0x1155
0x1155:	90                   	nop
0x1156:	48 83 ec 10          	sub    $0x10,%rsp
0x115a:	48 89 04 24          	mov    %rax,(%rsp)
0x115e:	4c 8b 1d 23 ee ff ff 	mov    -0x11dd(%rip),%r11        # 0xffffff88
0x1165:	48 83 ec 10          	sub    $0x10,%rsp
0x1169:	4c 89 1c 24          	mov    %r11,(%rsp)
0x116d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1172:	41 85 03             	test   %eax,(%r11)
0x1175:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x117a:	e8 00 00 00 00       	callq  0x117f
0x117f:	90                   	nop
0x1180:	48 83 ec 10          	sub    $0x10,%rsp
0x1184:	48 89 04 24          	mov    %rax,(%rsp)
0x1188:	4c 8b 1c 24          	mov    (%rsp),%r11
0x118c:	41 85 03             	test   %eax,(%r11)
0x118f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1193:	e8 00 00 00 00       	callq  0x1198
0x1198:	90                   	nop
0x1199:	48 83 ec 10          	sub    $0x10,%rsp
0x119d:	48 89 04 24          	mov    %rax,(%rsp)
0x11a1:	bf 25 00 00 00       	mov    $0x25,%edi
0x11a6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x11ab:	48 8b 15 de ed ff ff 	mov    -0x1222(%rip),%rdx        # 0xffffff90
0x11b2:	b9 5e 00 00 00       	mov    $0x5e,%ecx
0x11b7:	48 8b c6             	mov    %rsi,%rax
0x11ba:	48 8b 00             	mov    (%rax),%rax
0x11bd:	48 63 ff             	movslq %edi,%rdi
0x11c0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x11c5:	48 8b fa             	mov    %rdx,%rdi
0x11c8:	48 8b d1             	mov    %rcx,%rdx
0x11cb:	b9 03 00 00 00       	mov    $0x3,%ecx
0x11d0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x11d4:	90                   	nop
0x11d5:	90                   	nop
0x11d6:	e8 00 00 00 00       	callq  0x11db
0x11db:	90                   	nop
0x11dc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x11e0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x11e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x11e9:	ff d0                	callq  *%rax
0x11eb:	90                   	nop
0x11ec:	48 8b 3d a5 ed ff ff 	mov    -0x125b(%rip),%rdi        # 0xffffff98
0x11f3:	be 20 00 00 00       	mov    $0x20,%esi
0x11f8:	48 63 f6             	movslq %esi,%rsi
0x11fb:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x11ff:	48 83 ec 10          	sub    $0x10,%rsp
0x1203:	89 04 24             	mov    %eax,(%rsp)
0x1206:	40 8b 3c 24          	rex mov (%rsp),%edi
0x120a:	48 63 ff             	movslq %edi,%rdi
0x120d:	48 8b c7             	mov    %rdi,%rax
0x1210:	48 83 ec 10          	sub    $0x10,%rsp
0x1214:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0x1219:	e8 00 00 00 00       	callq  0x121e
0x121e:	90                   	nop
0x121f:	48 8b 3d 7a ed ff ff 	mov    -0x1286(%rip),%rdi        # 0xffffffa0
0x1226:	be 18 00 00 00       	mov    $0x18,%esi
0x122b:	48 63 f6             	movslq %esi,%rsi
0x122e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1232:	48 83 ec 10          	sub    $0x10,%rsp
0x1236:	48 89 04 24          	mov    %rax,(%rsp)
0x123a:	4c 8b 1d 67 ed ff ff 	mov    -0x1299(%rip),%r11        # 0xffffffa8
0x1241:	48 83 ec 10          	sub    $0x10,%rsp
0x1245:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1249:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x124e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1253:	48 8b 15 56 ed ff ff 	mov    -0x12aa(%rip),%rdx        # 0xffffffb0
0x125a:	b9 68 00 00 00       	mov    $0x68,%ecx
0x125f:	48 8b c6             	mov    %rsi,%rax
0x1262:	48 8b 00             	mov    (%rax),%rax
0x1265:	48 63 ff             	movslq %edi,%rdi
0x1268:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x126d:	48 8b fa             	mov    %rdx,%rdi
0x1270:	48 8b d1             	mov    %rcx,%rdx
0x1273:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1278:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x127c:	90                   	nop
0x127d:	90                   	nop
0x127e:	e8 00 00 00 00       	callq  0x1283
0x1283:	90                   	nop
0x1284:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1288:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x128c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1291:	ff d0                	callq  *%rax
0x1293:	90                   	nop
0x1294:	48 8b 3d 1d ed ff ff 	mov    -0x12e3(%rip),%rdi        # 0xffffffb8
0x129b:	be 18 00 00 00       	mov    $0x18,%esi
0x12a0:	48 63 f6             	movslq %esi,%rsi
0x12a3:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x12a7:	48 83 ec 10          	sub    $0x10,%rsp
0x12ab:	48 89 04 24          	mov    %rax,(%rsp)
0x12af:	48 8b 3d 0a ed ff ff 	mov    -0x12f6(%rip),%rdi        # 0xffffffc0
0x12b6:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x12ba:	48 8b 35 07 ed ff ff 	mov    -0x12f9(%rip),%rsi        # 0xffffffc8
0x12c1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x12c5:	49 8b ce             	mov    %r14,%rcx
0x12c8:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x12cc:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x12d3:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x12da:	48 8b d9             	mov    %rcx,%rbx
0x12dd:	48 03 da             	add    %rdx,%rbx
0x12e0:	4c 8b cb             	mov    %rbx,%r9
0x12e3:	4d 3b c8             	cmp    %r8,%r9
0x12e6:	0f 86 14 00 00 00    	jbe    0x1300
0x12ec:	48 8b fe             	mov    %rsi,%rdi
0x12ef:	48 8b f2             	mov    %rdx,%rsi
0x12f2:	48 8b d0             	mov    %rax,%rdx
0x12f5:	e8 00 00 00 00       	callq  0x12fa
0x12fa:	90                   	nop
0x12fb:	e9 0a 00 00 00       	jmpq   0x130a
0x1300:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1307:	48 8b c1             	mov    %rcx,%rax
0x130a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x130e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1312:	90                   	nop
0x1313:	90                   	nop
0x1314:	90                   	nop
0x1315:	e8 00 00 00 00       	callq  0x131a
0x131a:	90                   	nop
0x131b:	90                   	nop
0x131c:	90                   	nop
0x131d:	e8 00 00 00 00       	callq  0x1322
0x1322:	90                   	nop
0x1323:	83 f8 00             	cmp    $0x0,%eax
0x1326:	0f 84 27 00 00 00    	je     0x1353
0x132c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1330:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1334:	85 06                	test   %eax,(%rsi)
0x1336:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x133a:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x133e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1342:	83 e2 ff             	and    $0xffffffff,%edx
0x1345:	48 8b fa             	mov    %rdx,%rdi
0x1348:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x134c:	90                   	nop
0x134d:	e8 00 00 00 00       	callq  0x1352
0x1352:	90                   	nop
0x1353:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1357:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x135b:	48 89 38             	mov    %rdi,(%rax)
0x135e:	48 83 ec 10          	sub    $0x10,%rsp
0x1362:	48 89 04 24          	mov    %rax,(%rsp)
0x1366:	48 83 ec 10          	sub    $0x10,%rsp
0x136a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x136f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1373:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1377:	41 85 03             	test   %eax,(%r11)
0x137a:	e8 00 00 00 00       	callq  0x137f
0x137f:	90                   	nop
0x1380:	4c 8b 1d 49 ec ff ff 	mov    -0x13b7(%rip),%r11        # 0xffffffd0
0x1387:	48 83 ec 10          	sub    $0x10,%rsp
0x138b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x138f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1394:	41 85 03             	test   %eax,(%r11)
0x1397:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x139c:	90                   	nop
0x139d:	90                   	nop
0x139e:	90                   	nop
0x139f:	90                   	nop
0x13a0:	e8 00 00 00 00       	callq  0x13a5
0x13a5:	90                   	nop
0x13a6:	48 83 ec 10          	sub    $0x10,%rsp
0x13aa:	48 89 04 24          	mov    %rax,(%rsp)
0x13ae:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x13b2:	48 83 ec 10          	sub    $0x10,%rsp
0x13b6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x13ba:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13be:	41 85 03             	test   %eax,(%r11)
0x13c1:	48 8b 3c 24          	mov    (%rsp),%rdi
0x13c5:	90                   	nop
0x13c6:	90                   	nop
0x13c7:	90                   	nop
0x13c8:	e8 00 00 00 00       	callq  0x13cd
0x13cd:	90                   	nop
0x13ce:	48 83 ec 10          	sub    $0x10,%rsp
0x13d2:	48 89 04 24          	mov    %rax,(%rsp)
0x13d6:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x13db:	41 85 03             	test   %eax,(%r11)
0x13de:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x13e3:	e8 00 00 00 00       	callq  0x13e8
0x13e8:	90                   	nop
0x13e9:	48 83 ec 10          	sub    $0x10,%rsp
0x13ed:	48 89 04 24          	mov    %rax,(%rsp)
0x13f1:	4c 8b 1d e0 eb ff ff 	mov    -0x1420(%rip),%r11        # 0xffffffd8
0x13f8:	48 83 ec 10          	sub    $0x10,%rsp
0x13fc:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1400:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1405:	41 85 03             	test   %eax,(%r11)
0x1408:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x140d:	90                   	nop
0x140e:	90                   	nop
0x140f:	90                   	nop
0x1410:	e8 00 00 00 00       	callq  0x1415
0x1415:	90                   	nop
0x1416:	48 83 ec 10          	sub    $0x10,%rsp
0x141a:	48 89 04 24          	mov    %rax,(%rsp)
0x141e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1422:	41 85 03             	test   %eax,(%r11)
0x1425:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1429:	e8 00 00 00 00       	callq  0x142e
0x142e:	90                   	nop
0x142f:	48 83 ec 10          	sub    $0x10,%rsp
0x1433:	48 89 04 24          	mov    %rax,(%rsp)
0x1437:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x143c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1441:	48 8b 15 98 eb ff ff 	mov    -0x1468(%rip),%rdx        # 0xffffffe0
0x1448:	b9 77 00 00 00       	mov    $0x77,%ecx
0x144d:	48 8b c6             	mov    %rsi,%rax
0x1450:	48 8b 00             	mov    (%rax),%rax
0x1453:	48 63 ff             	movslq %edi,%rdi
0x1456:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x145b:	48 8b fa             	mov    %rdx,%rdi
0x145e:	48 8b d1             	mov    %rcx,%rdx
0x1461:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1466:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x146a:	90                   	nop
0x146b:	90                   	nop
0x146c:	e8 00 00 00 00       	callq  0x1471
0x1471:	90                   	nop
0x1472:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1476:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x147a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x147f:	ff d0                	callq  *%rax
0x1481:	90                   	nop
0x1482:	48 83 c5 40          	add    $0x40,%rbp
0x1486:	c9                   	leaveq 
0x1487:	c2 10 00             	retq   $0x10

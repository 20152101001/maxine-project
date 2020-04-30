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
0x20:	4c 89 1d 31 ff ff ff 	mov    %r11,-0xcf(%rip)        # 0xffffff58
0x27:	48 8b 3d 32 ff ff ff 	mov    -0xce(%rip),%rdi        # 0xffffff60
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
0x61:	48 83 ec 10          	sub    $0x10,%rsp
0x65:	4c 8b 1d fc fe ff ff 	mov    -0x104(%rip),%r11        # 0xffffff68
0x6c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x70:	4c 8b 1d f9 fe ff ff 	mov    -0x107(%rip),%r11        # 0xffffff70
0x77:	48 83 ec 10          	sub    $0x10,%rsp
0x7b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7f:	48 83 ec 10          	sub    $0x10,%rsp
0x83:	4c 8b 1d ee fe ff ff 	mov    -0x112(%rip),%r11        # 0xffffff78
0x8a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8e:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0x93:	41 85 03             	test   %eax,(%r11)
0x96:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x9b:	e8 00 00 00 00       	callq  0xa0
0xa0:	90                   	nop
0xa1:	48 83 ec 10          	sub    $0x10,%rsp
0xa5:	48 89 04 24          	mov    %rax,(%rsp)
0xa9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xad:	48 83 c4 10          	add    $0x10,%rsp
0xb1:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0xb5:	90                   	nop
0xb6:	90                   	nop
0xb7:	90                   	nop
0xb8:	e8 00 00 00 00       	callq  0xbd
0xbd:	90                   	nop
0xbe:	48 83 ec 10          	sub    $0x10,%rsp
0xc2:	48 89 04 24          	mov    %rax,(%rsp)
0xc6:	48 83 ec 10          	sub    $0x10,%rsp
0xca:	4c 8b 1d af fe ff ff 	mov    -0x151(%rip),%r11        # 0xffffff80
0xd1:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd5:	4c 8b 1d ac fe ff ff 	mov    -0x154(%rip),%r11        # 0xffffff88
0xdc:	48 83 ec 10          	sub    $0x10,%rsp
0xe0:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe4:	48 83 ec 10          	sub    $0x10,%rsp
0xe8:	4c 8b 1d a1 fe ff ff 	mov    -0x15f(%rip),%r11        # 0xffffff90
0xef:	4c 89 1c 24          	mov    %r11,(%rsp)
0xf3:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xf8:	41 85 03             	test   %eax,(%r11)
0xfb:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x100:	e8 00 00 00 00       	callq  0x105
0x105:	90                   	nop
0x106:	48 83 ec 10          	sub    $0x10,%rsp
0x10a:	48 89 04 24          	mov    %rax,(%rsp)
0x10e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x112:	48 83 c4 10          	add    $0x10,%rsp
0x116:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x11a:	48 8b 3d 77 fe ff ff 	mov    -0x189(%rip),%rdi        # 0xffffff98
0x121:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x125:	48 8b 35 74 fe ff ff 	mov    -0x18c(%rip),%rsi        # 0xffffffa0
0x12c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x130:	49 8b ce             	mov    %r14,%rcx
0x133:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x137:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x13e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x145:	48 8b d9             	mov    %rcx,%rbx
0x148:	48 03 da             	add    %rdx,%rbx
0x14b:	4c 8b cb             	mov    %rbx,%r9
0x14e:	4d 3b c8             	cmp    %r8,%r9
0x151:	0f 86 14 00 00 00    	jbe    0x16b
0x157:	48 8b fe             	mov    %rsi,%rdi
0x15a:	48 8b f2             	mov    %rdx,%rsi
0x15d:	48 8b d0             	mov    %rax,%rdx
0x160:	e8 00 00 00 00       	callq  0x165
0x165:	90                   	nop
0x166:	e9 0a 00 00 00       	jmpq   0x175
0x16b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x172:	48 8b c1             	mov    %rcx,%rax
0x175:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x179:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x17d:	90                   	nop
0x17e:	90                   	nop
0x17f:	90                   	nop
0x180:	e8 00 00 00 00       	callq  0x185
0x185:	90                   	nop
0x186:	90                   	nop
0x187:	90                   	nop
0x188:	e8 00 00 00 00       	callq  0x18d
0x18d:	90                   	nop
0x18e:	83 f8 00             	cmp    $0x0,%eax
0x191:	0f 84 27 00 00 00    	je     0x1be
0x197:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x19b:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x19f:	85 06                	test   %eax,(%rsi)
0x1a1:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1a5:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1a9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1ad:	83 e2 ff             	and    $0xffffffff,%edx
0x1b0:	48 8b fa             	mov    %rdx,%rdi
0x1b3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1b7:	90                   	nop
0x1b8:	e8 00 00 00 00       	callq  0x1bd
0x1bd:	90                   	nop
0x1be:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1c2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1c6:	48 89 38             	mov    %rdi,(%rax)
0x1c9:	48 83 ec 10          	sub    $0x10,%rsp
0x1cd:	48 89 04 24          	mov    %rax,(%rsp)
0x1d1:	48 83 ec 10          	sub    $0x10,%rsp
0x1d5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1da:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1de:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1e2:	41 85 03             	test   %eax,(%r11)
0x1e5:	90                   	nop
0x1e6:	90                   	nop
0x1e7:	90                   	nop
0x1e8:	e8 00 00 00 00       	callq  0x1ed
0x1ed:	90                   	nop
0x1ee:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1f2:	48 83 c4 10          	add    $0x10,%rsp
0x1f6:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x1fa:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1fe:	48 83 ec 10          	sub    $0x10,%rsp
0x202:	4c 89 1c 24          	mov    %r11,(%rsp)
0x206:	48 8b 3d 9b fd ff ff 	mov    -0x265(%rip),%rdi        # 0xffffffa8
0x20d:	48 8b 34 24          	mov    (%rsp),%rsi
0x211:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x215:	4d 33 db             	xor    %r11,%r11
0x218:	49 3b c3             	cmp    %r11,%rax
0x21b:	0f 85 1d 00 00 00    	jne    0x23e
0x221:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x225:	48 8b c7             	mov    %rdi,%rax
0x228:	48 8b f8             	mov    %rax,%rdi
0x22b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x22f:	90                   	nop
0x230:	e8 00 00 00 00       	callq  0x235
0x235:	90                   	nop
0x236:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x23a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x23e:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x242:	48 8b 0e             	mov    (%rsi),%rcx
0x245:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x249:	48 63 d2             	movslq %edx,%rdx
0x24c:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x251:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x255:	48 8b 3c 24          	mov    (%rsp),%rdi
0x259:	ff d0                	callq  *%rax
0x25b:	90                   	nop
0x25c:	48 83 ec 10          	sub    $0x10,%rsp
0x260:	48 89 04 24          	mov    %rax,(%rsp)
0x264:	4c 8b 1c 24          	mov    (%rsp),%r11
0x268:	48 83 c4 10          	add    $0x10,%rsp
0x26c:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x270:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x274:	48 83 ec 10          	sub    $0x10,%rsp
0x278:	4c 89 1c 24          	mov    %r11,(%rsp)
0x27c:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x280:	48 83 ec 10          	sub    $0x10,%rsp
0x284:	4c 89 1c 24          	mov    %r11,(%rsp)
0x288:	48 8b 3d 21 fd ff ff 	mov    -0x2df(%rip),%rdi        # 0xffffffb0
0x28f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x294:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x298:	4d 33 db             	xor    %r11,%r11
0x29b:	49 3b c3             	cmp    %r11,%rax
0x29e:	0f 85 1d 00 00 00    	jne    0x2c1
0x2a4:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x2a8:	48 8b c7             	mov    %rdi,%rax
0x2ab:	48 8b f8             	mov    %rax,%rdi
0x2ae:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2b2:	90                   	nop
0x2b3:	e8 00 00 00 00       	callq  0x2b8
0x2b8:	90                   	nop
0x2b9:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x2bd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c1:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x2c5:	48 8b 0e             	mov    (%rsi),%rcx
0x2c8:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x2cc:	48 63 d2             	movslq %edx,%rdx
0x2cf:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x2d4:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2d8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2dd:	ff d0                	callq  *%rax
0x2df:	90                   	nop
0x2e0:	48 83 ec 10          	sub    $0x10,%rsp
0x2e4:	48 89 04 24          	mov    %rax,(%rsp)
0x2e8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2ec:	48 83 c4 10          	add    $0x10,%rsp
0x2f0:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x2f4:	48 8b 3d bd fc ff ff 	mov    -0x343(%rip),%rdi        # 0xffffffb8
0x2fb:	be 18 00 00 00       	mov    $0x18,%esi
0x300:	48 63 f6             	movslq %esi,%rsi
0x303:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x307:	48 83 ec 10          	sub    $0x10,%rsp
0x30b:	48 89 04 24          	mov    %rax,(%rsp)
0x30f:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x313:	48 83 ec 10          	sub    $0x10,%rsp
0x317:	4c 89 1c 24          	mov    %r11,(%rsp)
0x31b:	bf 25 00 00 00       	mov    $0x25,%edi
0x320:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x325:	48 8b 15 94 fc ff ff 	mov    -0x36c(%rip),%rdx        # 0xffffffc0
0x32c:	b9 08 00 00 00       	mov    $0x8,%ecx
0x331:	48 8b c6             	mov    %rsi,%rax
0x334:	48 8b 00             	mov    (%rax),%rax
0x337:	48 63 ff             	movslq %edi,%rdi
0x33a:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x33f:	48 8b fa             	mov    %rdx,%rdi
0x342:	48 8b d1             	mov    %rcx,%rdx
0x345:	b9 03 00 00 00       	mov    $0x3,%ecx
0x34a:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x34e:	90                   	nop
0x34f:	90                   	nop
0x350:	e8 00 00 00 00       	callq  0x355
0x355:	90                   	nop
0x356:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x35a:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x35e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x363:	ff d0                	callq  *%rax
0x365:	90                   	nop
0x366:	48 8b 3d 5b fc ff ff 	mov    -0x3a5(%rip),%rdi        # 0xffffffc8
0x36d:	be 18 00 00 00       	mov    $0x18,%esi
0x372:	48 63 f6             	movslq %esi,%rsi
0x375:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x379:	48 83 ec 10          	sub    $0x10,%rsp
0x37d:	48 89 04 24          	mov    %rax,(%rsp)
0x381:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x385:	48 83 ec 10          	sub    $0x10,%rsp
0x389:	4c 89 1c 24          	mov    %r11,(%rsp)
0x38d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x392:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x397:	48 8b 15 32 fc ff ff 	mov    -0x3ce(%rip),%rdx        # 0xffffffd0
0x39e:	b9 11 00 00 00       	mov    $0x11,%ecx
0x3a3:	48 8b c6             	mov    %rsi,%rax
0x3a6:	48 8b 00             	mov    (%rax),%rax
0x3a9:	48 63 ff             	movslq %edi,%rdi
0x3ac:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3b1:	48 8b fa             	mov    %rdx,%rdi
0x3b4:	48 8b d1             	mov    %rcx,%rdx
0x3b7:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3bc:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3c0:	90                   	nop
0x3c1:	90                   	nop
0x3c2:	e8 00 00 00 00       	callq  0x3c7
0x3c7:	90                   	nop
0x3c8:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3cc:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3d0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3d5:	ff d0                	callq  *%rax
0x3d7:	90                   	nop
0x3d8:	48 8b 3d f9 fb ff ff 	mov    -0x407(%rip),%rdi        # 0xffffffd8
0x3df:	be 19 00 00 00       	mov    $0x19,%esi
0x3e4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3e8:	48 8b c8             	mov    %rax,%rcx
0x3eb:	48 63 f6             	movslq %esi,%rsi
0x3ee:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3f3:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3f9:	0f 8d 07 00 00 00    	jge    0x406
0x3ff:	83 c1 01             	add    $0x1,%ecx
0x402:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x406:	e9 78 00 00 00       	jmpq   0x483
0x40b:	49 8b fe             	mov    %r14,%rdi
0x40e:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x412:	85 07                	test   %eax,(%rdi)
0x414:	e8 00 00 00 00       	callq  0x419
0x419:	90                   	nop
0x41a:	48 83 ec 10          	sub    $0x10,%rsp
0x41e:	48 89 04 24          	mov    %rax,(%rsp)
0x422:	4c 8b 1c 24          	mov    (%rsp),%r11
0x426:	48 83 c4 10          	add    $0x10,%rsp
0x42a:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x42e:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x432:	48 83 ec 10          	sub    $0x10,%rsp
0x436:	4c 89 1c 24          	mov    %r11,(%rsp)
0x43a:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x43f:	48 8b 34 24          	mov    (%rsp),%rsi
0x443:	48 8b 15 96 fb ff ff 	mov    -0x46a(%rip),%rdx        # 0xffffffe0
0x44a:	b9 1b 00 00 00       	mov    $0x1b,%ecx
0x44f:	48 8b c6             	mov    %rsi,%rax
0x452:	48 8b 00             	mov    (%rax),%rax
0x455:	48 63 ff             	movslq %edi,%rdi
0x458:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x45d:	48 8b fa             	mov    %rdx,%rdi
0x460:	48 8b d1             	mov    %rcx,%rdx
0x463:	b9 03 00 00 00       	mov    $0x3,%ecx
0x468:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x46c:	90                   	nop
0x46d:	90                   	nop
0x46e:	e8 00 00 00 00       	callq  0x473
0x473:	90                   	nop
0x474:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x478:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x47c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x480:	ff d0                	callq  *%rax
0x482:	90                   	nop
0x483:	48 83 c5 40          	add    $0x40,%rbp
0x487:	c9                   	leaveq 
0x488:	c2 10 00             	retq   $0x10

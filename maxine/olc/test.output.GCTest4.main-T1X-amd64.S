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
0x20:	4c 89 1d 29 ff ff ff 	mov    %r11,-0xd7(%rip)        # 0xffffff50
0x27:	48 8b 3d 2a ff ff ff 	mov    -0xd6(%rip),%rdi        # 0xffffff58
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
0x79:	48 8b 3d e0 fe ff ff 	mov    -0x120(%rip),%rdi        # 0xffffff60
0x80:	be 10 00 00 00       	mov    $0x10,%esi
0x85:	48 63 f6             	movslq %esi,%rsi
0x88:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x8c:	48 83 ec 10          	sub    $0x10,%rsp
0x90:	89 04 24             	mov    %eax,(%rsp)
0x93:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x98:	8b 04 24             	mov    (%rsp),%eax
0x9b:	48 83 c4 20          	add    $0x20,%rsp
0x9f:	44 3b d8             	cmp    %eax,%r11d
0xa2:	7c 33                	jl     0xd7
0xa4:	48 8b 3d bd fe ff ff 	mov    -0x143(%rip),%rdi        # 0xffffff68
0xab:	be 00 00 00 00       	mov    $0x0,%esi
0xb0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xb4:	48 8b c8             	mov    %rax,%rcx
0xb7:	48 63 f6             	movslq %esi,%rsi
0xba:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xbf:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc5:	0f 8d 07 00 00 00    	jge    0xd2
0xcb:	83 c1 01             	add    $0x1,%ecx
0xce:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xd2:	e9 5a 02 00 00       	jmpq   0x331
0xd7:	48 8b 3d 92 fe ff ff 	mov    -0x16e(%rip),%rdi        # 0xffffff70
0xde:	be 01 00 00 00       	mov    $0x1,%esi
0xe3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe7:	48 8b c8             	mov    %rax,%rcx
0xea:	48 63 f6             	movslq %esi,%rsi
0xed:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf8:	0f 8d 07 00 00 00    	jge    0x105
0xfe:	83 c1 01             	add    $0x1,%ecx
0x101:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x105:	48 8b 3d 6c fe ff ff 	mov    -0x194(%rip),%rdi        # 0xffffff78
0x10c:	be 18 00 00 00       	mov    $0x18,%esi
0x111:	48 63 f6             	movslq %esi,%rsi
0x114:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x118:	48 83 ec 10          	sub    $0x10,%rsp
0x11c:	48 89 04 24          	mov    %rax,(%rsp)
0x120:	48 8b 3d 59 fe ff ff 	mov    -0x1a7(%rip),%rdi        # 0xffffff80
0x127:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x12b:	48 8b 35 56 fe ff ff 	mov    -0x1aa(%rip),%rsi        # 0xffffff88
0x132:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x136:	49 8b ce             	mov    %r14,%rcx
0x139:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x13d:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x144:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x14b:	48 8b d9             	mov    %rcx,%rbx
0x14e:	48 03 da             	add    %rdx,%rbx
0x151:	4c 8b cb             	mov    %rbx,%r9
0x154:	4d 3b c8             	cmp    %r8,%r9
0x157:	0f 86 14 00 00 00    	jbe    0x171
0x15d:	48 8b fe             	mov    %rsi,%rdi
0x160:	48 8b f2             	mov    %rdx,%rsi
0x163:	48 8b d0             	mov    %rax,%rdx
0x166:	e8 00 00 00 00       	callq  0x16b
0x16b:	90                   	nop
0x16c:	e9 0a 00 00 00       	jmpq   0x17b
0x171:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x178:	48 8b c1             	mov    %rcx,%rax
0x17b:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x17f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x183:	90                   	nop
0x184:	90                   	nop
0x185:	90                   	nop
0x186:	e8 00 00 00 00       	callq  0x18b
0x18b:	90                   	nop
0x18c:	90                   	nop
0x18d:	90                   	nop
0x18e:	e8 00 00 00 00       	callq  0x193
0x193:	90                   	nop
0x194:	83 f8 00             	cmp    $0x0,%eax
0x197:	0f 84 27 00 00 00    	je     0x1c4
0x19d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1a1:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1a5:	85 06                	test   %eax,(%rsi)
0x1a7:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1ab:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1af:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1b3:	83 e2 ff             	and    $0xffffffff,%edx
0x1b6:	48 8b fa             	mov    %rdx,%rdi
0x1b9:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1bd:	90                   	nop
0x1be:	e8 00 00 00 00       	callq  0x1c3
0x1c3:	90                   	nop
0x1c4:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1c8:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1cc:	48 89 38             	mov    %rdi,(%rax)
0x1cf:	48 83 ec 10          	sub    $0x10,%rsp
0x1d3:	48 89 04 24          	mov    %rax,(%rsp)
0x1d7:	48 83 ec 10          	sub    $0x10,%rsp
0x1db:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1e0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1e4:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1e8:	41 85 03             	test   %eax,(%r11)
0x1eb:	e8 00 00 00 00       	callq  0x1f0
0x1f0:	90                   	nop
0x1f1:	4c 8b 1d 98 fd ff ff 	mov    -0x268(%rip),%r11        # 0xffffff90
0x1f8:	48 83 ec 10          	sub    $0x10,%rsp
0x1fc:	4c 89 1c 24          	mov    %r11,(%rsp)
0x200:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x205:	41 85 03             	test   %eax,(%r11)
0x208:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x20d:	90                   	nop
0x20e:	90                   	nop
0x20f:	90                   	nop
0x210:	e8 00 00 00 00       	callq  0x215
0x215:	90                   	nop
0x216:	48 83 ec 10          	sub    $0x10,%rsp
0x21a:	48 89 04 24          	mov    %rax,(%rsp)
0x21e:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x222:	48 83 ec 10          	sub    $0x10,%rsp
0x226:	44 89 1c 24          	mov    %r11d,(%rsp)
0x22a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x22f:	41 85 03             	test   %eax,(%r11)
0x232:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x237:	90                   	nop
0x238:	e8 00 00 00 00       	callq  0x23d
0x23d:	90                   	nop
0x23e:	48 83 ec 10          	sub    $0x10,%rsp
0x242:	48 89 04 24          	mov    %rax,(%rsp)
0x246:	4c 8b 1d 4b fd ff ff 	mov    -0x2b5(%rip),%r11        # 0xffffff98
0x24d:	48 83 ec 10          	sub    $0x10,%rsp
0x251:	4c 89 1c 24          	mov    %r11,(%rsp)
0x255:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x25a:	41 85 03             	test   %eax,(%r11)
0x25d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x262:	e8 00 00 00 00       	callq  0x267
0x267:	90                   	nop
0x268:	48 83 ec 10          	sub    $0x10,%rsp
0x26c:	48 89 04 24          	mov    %rax,(%rsp)
0x270:	4c 8b 1c 24          	mov    (%rsp),%r11
0x274:	41 85 03             	test   %eax,(%r11)
0x277:	48 8b 3c 24          	mov    (%rsp),%rdi
0x27b:	e8 00 00 00 00       	callq  0x280
0x280:	90                   	nop
0x281:	48 83 ec 10          	sub    $0x10,%rsp
0x285:	48 89 04 24          	mov    %rax,(%rsp)
0x289:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x28e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x293:	48 8b 15 06 fd ff ff 	mov    -0x2fa(%rip),%rdx        # 0xffffffa0
0x29a:	b9 08 00 00 00       	mov    $0x8,%ecx
0x29f:	48 8b c6             	mov    %rsi,%rax
0x2a2:	48 8b 00             	mov    (%rax),%rax
0x2a5:	48 63 ff             	movslq %edi,%rdi
0x2a8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2ad:	48 8b fa             	mov    %rdx,%rdi
0x2b0:	48 8b d1             	mov    %rcx,%rdx
0x2b3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2b8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2bc:	90                   	nop
0x2bd:	90                   	nop
0x2be:	e8 00 00 00 00       	callq  0x2c3
0x2c3:	90                   	nop
0x2c4:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2c8:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2cc:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2d1:	ff d0                	callq  *%rax
0x2d3:	90                   	nop
0x2d4:	90                   	nop
0x2d5:	90                   	nop
0x2d6:	90                   	nop
0x2d7:	90                   	nop
0x2d8:	e8 00 00 00 00       	callq  0x2dd
0x2dd:	90                   	nop
0x2de:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x2e2:	41 83 c3 01          	add    $0x1,%r11d
0x2e6:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x2ea:	48 8b 3d b7 fc ff ff 	mov    -0x349(%rip),%rdi        # 0xffffffa8
0x2f1:	be 11 00 00 00       	mov    $0x11,%esi
0x2f6:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2fa:	48 8b c8             	mov    %rax,%rcx
0x2fd:	48 63 f6             	movslq %esi,%rsi
0x300:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x305:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x30b:	0f 8d 07 00 00 00    	jge    0x318
0x311:	83 c1 01             	add    $0x1,%ecx
0x314:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x318:	48 8b 3d 91 fc ff ff 	mov    -0x36f(%rip),%rdi        # 0xffffffb0
0x31f:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x323:	83 e8 01             	sub    $0x1,%eax
0x326:	89 47 30             	mov    %eax,0x30(%rdi)
0x329:	4d 8b 36             	mov    (%r14),%r14
0x32c:	e9 3c fd ff ff       	jmpq   0x6d
0x331:	48 8b 3d 80 fc ff ff 	mov    -0x380(%rip),%rdi        # 0xffffffb8
0x338:	be 18 00 00 00       	mov    $0x18,%esi
0x33d:	48 63 f6             	movslq %esi,%rsi
0x340:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x344:	48 83 ec 10          	sub    $0x10,%rsp
0x348:	48 89 04 24          	mov    %rax,(%rsp)
0x34c:	48 8b 3d 6d fc ff ff 	mov    -0x393(%rip),%rdi        # 0xffffffc0
0x353:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x357:	48 8b 35 6a fc ff ff 	mov    -0x396(%rip),%rsi        # 0xffffffc8
0x35e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x362:	49 8b ce             	mov    %r14,%rcx
0x365:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x369:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x370:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x377:	48 8b d9             	mov    %rcx,%rbx
0x37a:	48 03 da             	add    %rdx,%rbx
0x37d:	4c 8b cb             	mov    %rbx,%r9
0x380:	4d 3b c8             	cmp    %r8,%r9
0x383:	0f 86 14 00 00 00    	jbe    0x39d
0x389:	48 8b fe             	mov    %rsi,%rdi
0x38c:	48 8b f2             	mov    %rdx,%rsi
0x38f:	48 8b d0             	mov    %rax,%rdx
0x392:	e8 00 00 00 00       	callq  0x397
0x397:	90                   	nop
0x398:	e9 0a 00 00 00       	jmpq   0x3a7
0x39d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x3a4:	48 8b c1             	mov    %rcx,%rax
0x3a7:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3ab:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3af:	90                   	nop
0x3b0:	90                   	nop
0x3b1:	90                   	nop
0x3b2:	e8 00 00 00 00       	callq  0x3b7
0x3b7:	90                   	nop
0x3b8:	90                   	nop
0x3b9:	90                   	nop
0x3ba:	e8 00 00 00 00       	callq  0x3bf
0x3bf:	90                   	nop
0x3c0:	83 f8 00             	cmp    $0x0,%eax
0x3c3:	0f 84 27 00 00 00    	je     0x3f0
0x3c9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3cd:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x3d1:	85 06                	test   %eax,(%rsi)
0x3d3:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x3d7:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x3db:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3df:	83 e2 ff             	and    $0xffffffff,%edx
0x3e2:	48 8b fa             	mov    %rdx,%rdi
0x3e5:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x3e9:	90                   	nop
0x3ea:	e8 00 00 00 00       	callq  0x3ef
0x3ef:	90                   	nop
0x3f0:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3f4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3f8:	48 89 38             	mov    %rdi,(%rax)
0x3fb:	48 83 ec 10          	sub    $0x10,%rsp
0x3ff:	48 89 04 24          	mov    %rax,(%rsp)
0x403:	48 83 ec 10          	sub    $0x10,%rsp
0x407:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x40c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x410:	4c 8b 1c 24          	mov    (%rsp),%r11
0x414:	41 85 03             	test   %eax,(%r11)
0x417:	90                   	nop
0x418:	e8 00 00 00 00       	callq  0x41d
0x41d:	90                   	nop
0x41e:	48 83 ec 10          	sub    $0x10,%rsp
0x422:	4c 8b 1d a7 fb ff ff 	mov    -0x459(%rip),%r11        # 0xffffffd0
0x429:	4c 89 1c 24          	mov    %r11,(%rsp)
0x42d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x431:	41 85 03             	test   %eax,(%r11)
0x434:	48 8b 3c 24          	mov    (%rsp),%rdi
0x438:	e8 00 00 00 00       	callq  0x43d
0x43d:	90                   	nop
0x43e:	48 83 ec 10          	sub    $0x10,%rsp
0x442:	48 89 04 24          	mov    %rax,(%rsp)
0x446:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x44b:	41 85 03             	test   %eax,(%r11)
0x44e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x453:	e8 00 00 00 00       	callq  0x458
0x458:	90                   	nop
0x459:	48 83 ec 10          	sub    $0x10,%rsp
0x45d:	48 89 04 24          	mov    %rax,(%rsp)
0x461:	4c 8b 1d 70 fb ff ff 	mov    -0x490(%rip),%r11        # 0xffffffd8
0x468:	48 83 ec 10          	sub    $0x10,%rsp
0x46c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x470:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x475:	41 85 03             	test   %eax,(%r11)
0x478:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x47d:	90                   	nop
0x47e:	90                   	nop
0x47f:	90                   	nop
0x480:	e8 00 00 00 00       	callq  0x485
0x485:	90                   	nop
0x486:	48 83 ec 10          	sub    $0x10,%rsp
0x48a:	48 89 04 24          	mov    %rax,(%rsp)
0x48e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x492:	41 85 03             	test   %eax,(%r11)
0x495:	48 8b 3c 24          	mov    (%rsp),%rdi
0x499:	e8 00 00 00 00       	callq  0x49e
0x49e:	90                   	nop
0x49f:	48 83 ec 10          	sub    $0x10,%rsp
0x4a3:	48 89 04 24          	mov    %rax,(%rsp)
0x4a7:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x4ac:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x4b1:	48 8b 15 28 fb ff ff 	mov    -0x4d8(%rip),%rdx        # 0xffffffe0
0x4b8:	b9 18 00 00 00       	mov    $0x18,%ecx
0x4bd:	48 8b c6             	mov    %rsi,%rax
0x4c0:	48 8b 00             	mov    (%rax),%rax
0x4c3:	48 63 ff             	movslq %edi,%rdi
0x4c6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4cb:	48 8b fa             	mov    %rdx,%rdi
0x4ce:	48 8b d1             	mov    %rcx,%rdx
0x4d1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4d6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4da:	90                   	nop
0x4db:	90                   	nop
0x4dc:	e8 00 00 00 00       	callq  0x4e1
0x4e1:	90                   	nop
0x4e2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4e6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4ea:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4ef:	ff d0                	callq  *%rax
0x4f1:	90                   	nop
0x4f2:	48 83 c5 40          	add    $0x40,%rbp
0x4f6:	c9                   	leaveq 
0x4f7:	c2 10 00             	retq   $0x10

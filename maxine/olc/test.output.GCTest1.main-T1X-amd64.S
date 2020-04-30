0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 40 00 00          	enterq $0x40,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 48 e0 ff 	mov    %rax,-0x1fb8(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 51 ff ff ff 	mov    %r11,-0xaf(%rip)        # 0xffffff78
0x27:	48 8b 3d 52 ff ff ff 	mov    -0xae(%rip),%rdi        # 0xffffff80
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
0x53:	48 8b 3d 2e ff ff ff 	mov    -0xd2(%rip),%rdi        # 0xffffff88
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	48 8b 3d 1b ff ff ff 	mov    -0xe5(%rip),%rdi        # 0xffffff90
0x75:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x79:	48 8b 35 18 ff ff ff 	mov    -0xe8(%rip),%rsi        # 0xffffff98
0x80:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x84:	49 8b ce             	mov    %r14,%rcx
0x87:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x8b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x92:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x99:	48 8b d9             	mov    %rcx,%rbx
0x9c:	48 03 da             	add    %rdx,%rbx
0x9f:	4c 8b cb             	mov    %rbx,%r9
0xa2:	4d 3b c8             	cmp    %r8,%r9
0xa5:	0f 86 14 00 00 00    	jbe    0xbf
0xab:	48 8b fe             	mov    %rsi,%rdi
0xae:	48 8b f2             	mov    %rdx,%rsi
0xb1:	48 8b d0             	mov    %rax,%rdx
0xb4:	e8 00 00 00 00       	callq  0xb9
0xb9:	90                   	nop
0xba:	e9 0a 00 00 00       	jmpq   0xc9
0xbf:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xc6:	48 8b c1             	mov    %rcx,%rax
0xc9:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xcd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd1:	90                   	nop
0xd2:	90                   	nop
0xd3:	90                   	nop
0xd4:	e8 00 00 00 00       	callq  0xd9
0xd9:	90                   	nop
0xda:	90                   	nop
0xdb:	90                   	nop
0xdc:	e8 00 00 00 00       	callq  0xe1
0xe1:	90                   	nop
0xe2:	83 f8 00             	cmp    $0x0,%eax
0xe5:	0f 84 27 00 00 00    	je     0x112
0xeb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xef:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xf3:	85 06                	test   %eax,(%rsi)
0xf5:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xf9:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xfd:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x101:	83 e2 ff             	and    $0xffffffff,%edx
0x104:	48 8b fa             	mov    %rdx,%rdi
0x107:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x10b:	90                   	nop
0x10c:	e8 00 00 00 00       	callq  0x111
0x111:	90                   	nop
0x112:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x116:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x11a:	48 89 38             	mov    %rdi,(%rax)
0x11d:	48 83 ec 10          	sub    $0x10,%rsp
0x121:	48 89 04 24          	mov    %rax,(%rsp)
0x125:	48 83 ec 10          	sub    $0x10,%rsp
0x129:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x12e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x132:	4c 8b 1c 24          	mov    (%rsp),%r11
0x136:	41 85 03             	test   %eax,(%r11)
0x139:	e8 00 00 00 00       	callq  0x13e
0x13e:	90                   	nop
0x13f:	48 83 ec 10          	sub    $0x10,%rsp
0x143:	4c 8b 1d 56 fe ff ff 	mov    -0x1aa(%rip),%r11        # 0xffffffa0
0x14a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x152:	41 85 03             	test   %eax,(%r11)
0x155:	48 8b 3c 24          	mov    (%rsp),%rdi
0x159:	e8 00 00 00 00       	callq  0x15e
0x15e:	90                   	nop
0x15f:	48 83 ec 10          	sub    $0x10,%rsp
0x163:	48 89 04 24          	mov    %rax,(%rsp)
0x167:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x16c:	41 85 03             	test   %eax,(%r11)
0x16f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x174:	90                   	nop
0x175:	90                   	nop
0x176:	90                   	nop
0x177:	90                   	nop
0x178:	e8 00 00 00 00       	callq  0x17d
0x17d:	90                   	nop
0x17e:	48 83 ec 10          	sub    $0x10,%rsp
0x182:	48 89 04 24          	mov    %rax,(%rsp)
0x186:	4c 8b 1d 1b fe ff ff 	mov    -0x1e5(%rip),%r11        # 0xffffffa8
0x18d:	48 83 ec 10          	sub    $0x10,%rsp
0x191:	4c 89 1c 24          	mov    %r11,(%rsp)
0x195:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x19a:	41 85 03             	test   %eax,(%r11)
0x19d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1a2:	e8 00 00 00 00       	callq  0x1a7
0x1a7:	90                   	nop
0x1a8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ac:	48 89 04 24          	mov    %rax,(%rsp)
0x1b0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b4:	41 85 03             	test   %eax,(%r11)
0x1b7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1bb:	e8 00 00 00 00       	callq  0x1c0
0x1c0:	90                   	nop
0x1c1:	48 83 ec 10          	sub    $0x10,%rsp
0x1c5:	48 89 04 24          	mov    %rax,(%rsp)
0x1c9:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1ce:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1d3:	48 8b 15 d6 fd ff ff 	mov    -0x22a(%rip),%rdx        # 0xffffffb0
0x1da:	b9 06 00 00 00       	mov    $0x6,%ecx
0x1df:	48 8b c6             	mov    %rsi,%rax
0x1e2:	48 8b 00             	mov    (%rax),%rax
0x1e5:	48 63 ff             	movslq %edi,%rdi
0x1e8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1ed:	48 8b fa             	mov    %rdx,%rdi
0x1f0:	48 8b d1             	mov    %rcx,%rdx
0x1f3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1f8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1fc:	90                   	nop
0x1fd:	90                   	nop
0x1fe:	e8 00 00 00 00       	callq  0x203
0x203:	90                   	nop
0x204:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x208:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x20c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x211:	ff d0                	callq  *%rax
0x213:	90                   	nop
0x214:	90                   	nop
0x215:	90                   	nop
0x216:	90                   	nop
0x217:	90                   	nop
0x218:	e8 00 00 00 00       	callq  0x21d
0x21d:	90                   	nop
0x21e:	48 8b 3d 93 fd ff ff 	mov    -0x26d(%rip),%rdi        # 0xffffffb8
0x225:	be 18 00 00 00       	mov    $0x18,%esi
0x22a:	48 63 f6             	movslq %esi,%rsi
0x22d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x231:	48 83 ec 10          	sub    $0x10,%rsp
0x235:	48 89 04 24          	mov    %rax,(%rsp)
0x239:	48 8b 3d 80 fd ff ff 	mov    -0x280(%rip),%rdi        # 0xffffffc0
0x240:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x244:	48 8b 35 7d fd ff ff 	mov    -0x283(%rip),%rsi        # 0xffffffc8
0x24b:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x24f:	49 8b ce             	mov    %r14,%rcx
0x252:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x256:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x25d:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x264:	48 8b d9             	mov    %rcx,%rbx
0x267:	48 03 da             	add    %rdx,%rbx
0x26a:	4c 8b cb             	mov    %rbx,%r9
0x26d:	4d 3b c8             	cmp    %r8,%r9
0x270:	0f 86 14 00 00 00    	jbe    0x28a
0x276:	48 8b fe             	mov    %rsi,%rdi
0x279:	48 8b f2             	mov    %rdx,%rsi
0x27c:	48 8b d0             	mov    %rax,%rdx
0x27f:	e8 00 00 00 00       	callq  0x284
0x284:	90                   	nop
0x285:	e9 0a 00 00 00       	jmpq   0x294
0x28a:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x291:	48 8b c1             	mov    %rcx,%rax
0x294:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x298:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x29c:	90                   	nop
0x29d:	90                   	nop
0x29e:	90                   	nop
0x29f:	e8 00 00 00 00       	callq  0x2a4
0x2a4:	90                   	nop
0x2a5:	90                   	nop
0x2a6:	90                   	nop
0x2a7:	e8 00 00 00 00       	callq  0x2ac
0x2ac:	90                   	nop
0x2ad:	83 f8 00             	cmp    $0x0,%eax
0x2b0:	0f 84 27 00 00 00    	je     0x2dd
0x2b6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2ba:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2be:	85 06                	test   %eax,(%rsi)
0x2c0:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2c4:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2c8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2cc:	83 e2 ff             	and    $0xffffffff,%edx
0x2cf:	48 8b fa             	mov    %rdx,%rdi
0x2d2:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2d6:	90                   	nop
0x2d7:	e8 00 00 00 00       	callq  0x2dc
0x2dc:	90                   	nop
0x2dd:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2e1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2e5:	48 89 38             	mov    %rdi,(%rax)
0x2e8:	48 83 ec 10          	sub    $0x10,%rsp
0x2ec:	48 89 04 24          	mov    %rax,(%rsp)
0x2f0:	48 83 ec 10          	sub    $0x10,%rsp
0x2f4:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2f9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2fd:	4c 8b 1c 24          	mov    (%rsp),%r11
0x301:	41 85 03             	test   %eax,(%r11)
0x304:	90                   	nop
0x305:	90                   	nop
0x306:	90                   	nop
0x307:	90                   	nop
0x308:	e8 00 00 00 00       	callq  0x30d
0x30d:	90                   	nop
0x30e:	48 83 ec 10          	sub    $0x10,%rsp
0x312:	4c 8b 1d b7 fc ff ff 	mov    -0x349(%rip),%r11        # 0xffffffd0
0x319:	4c 89 1c 24          	mov    %r11,(%rsp)
0x31d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x321:	41 85 03             	test   %eax,(%r11)
0x324:	48 8b 3c 24          	mov    (%rsp),%rdi
0x328:	e8 00 00 00 00       	callq  0x32d
0x32d:	90                   	nop
0x32e:	48 83 ec 10          	sub    $0x10,%rsp
0x332:	48 89 04 24          	mov    %rax,(%rsp)
0x336:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x33b:	41 85 03             	test   %eax,(%r11)
0x33e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x343:	e8 00 00 00 00       	callq  0x348
0x348:	90                   	nop
0x349:	48 83 ec 10          	sub    $0x10,%rsp
0x34d:	48 89 04 24          	mov    %rax,(%rsp)
0x351:	4c 8b 1d 80 fc ff ff 	mov    -0x380(%rip),%r11        # 0xffffffd8
0x358:	48 83 ec 10          	sub    $0x10,%rsp
0x35c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x360:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x365:	41 85 03             	test   %eax,(%r11)
0x368:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x36d:	90                   	nop
0x36e:	90                   	nop
0x36f:	90                   	nop
0x370:	e8 00 00 00 00       	callq  0x375
0x375:	90                   	nop
0x376:	48 83 ec 10          	sub    $0x10,%rsp
0x37a:	48 89 04 24          	mov    %rax,(%rsp)
0x37e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x382:	41 85 03             	test   %eax,(%r11)
0x385:	48 8b 3c 24          	mov    (%rsp),%rdi
0x389:	e8 00 00 00 00       	callq  0x38e
0x38e:	90                   	nop
0x38f:	48 83 ec 10          	sub    $0x10,%rsp
0x393:	48 89 04 24          	mov    %rax,(%rsp)
0x397:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x39c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3a1:	48 8b 15 38 fc ff ff 	mov    -0x3c8(%rip),%rdx        # 0xffffffe0
0x3a8:	b9 15 00 00 00       	mov    $0x15,%ecx
0x3ad:	48 8b c6             	mov    %rsi,%rax
0x3b0:	48 8b 00             	mov    (%rax),%rax
0x3b3:	48 63 ff             	movslq %edi,%rdi
0x3b6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3bb:	48 8b fa             	mov    %rdx,%rdi
0x3be:	48 8b d1             	mov    %rcx,%rdx
0x3c1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3c6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3ca:	90                   	nop
0x3cb:	90                   	nop
0x3cc:	e8 00 00 00 00       	callq  0x3d1
0x3d1:	90                   	nop
0x3d2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3d6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3da:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3df:	ff d0                	callq  *%rax
0x3e1:	90                   	nop
0x3e2:	48 83 c5 40          	add    $0x40,%rbp
0x3e6:	c9                   	leaveq 
0x3e7:	c2 10 00             	retq   $0x10

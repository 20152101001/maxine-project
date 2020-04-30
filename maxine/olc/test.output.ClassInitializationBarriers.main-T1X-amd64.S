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
0x53:	e8 00 00 00 00       	callq  0x58
0x58:	90                   	nop
0x59:	e8 00 00 00 00       	callq  0x5e
0x5e:	90                   	nop
0x5f:	48 8b 3d 22 ff ff ff 	mov    -0xde(%rip),%rdi        # 0xffffff88
0x66:	be 18 00 00 00       	mov    $0x18,%esi
0x6b:	48 63 f6             	movslq %esi,%rsi
0x6e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x72:	48 83 ec 10          	sub    $0x10,%rsp
0x76:	48 89 04 24          	mov    %rax,(%rsp)
0x7a:	48 8b 3d 0f ff ff ff 	mov    -0xf1(%rip),%rdi        # 0xffffff90
0x81:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x85:	48 8b 35 0c ff ff ff 	mov    -0xf4(%rip),%rsi        # 0xffffff98
0x8c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x90:	49 8b ce             	mov    %r14,%rcx
0x93:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x97:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x9e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xa5:	48 8b d9             	mov    %rcx,%rbx
0xa8:	48 03 da             	add    %rdx,%rbx
0xab:	4c 8b cb             	mov    %rbx,%r9
0xae:	4d 3b c8             	cmp    %r8,%r9
0xb1:	0f 86 14 00 00 00    	jbe    0xcb
0xb7:	48 8b fe             	mov    %rsi,%rdi
0xba:	48 8b f2             	mov    %rdx,%rsi
0xbd:	48 8b d0             	mov    %rax,%rdx
0xc0:	e8 00 00 00 00       	callq  0xc5
0xc5:	90                   	nop
0xc6:	e9 0a 00 00 00       	jmpq   0xd5
0xcb:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xd2:	48 8b c1             	mov    %rcx,%rax
0xd5:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xd9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xdd:	90                   	nop
0xde:	90                   	nop
0xdf:	90                   	nop
0xe0:	e8 00 00 00 00       	callq  0xe5
0xe5:	90                   	nop
0xe6:	90                   	nop
0xe7:	90                   	nop
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	83 f8 00             	cmp    $0x0,%eax
0xf1:	0f 84 27 00 00 00    	je     0x11e
0xf7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xfb:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xff:	85 06                	test   %eax,(%rsi)
0x101:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x105:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x109:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x10d:	83 e2 ff             	and    $0xffffffff,%edx
0x110:	48 8b fa             	mov    %rdx,%rdi
0x113:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x117:	90                   	nop
0x118:	e8 00 00 00 00       	callq  0x11d
0x11d:	90                   	nop
0x11e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x122:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x126:	48 89 38             	mov    %rdi,(%rax)
0x129:	48 83 ec 10          	sub    $0x10,%rsp
0x12d:	48 89 04 24          	mov    %rax,(%rsp)
0x131:	48 83 ec 10          	sub    $0x10,%rsp
0x135:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x13a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x13e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x142:	41 85 03             	test   %eax,(%r11)
0x145:	90                   	nop
0x146:	90                   	nop
0x147:	90                   	nop
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	4c 8b 1d 4b fe ff ff 	mov    -0x1b5(%rip),%r11        # 0xffffffa0
0x155:	48 83 ec 10          	sub    $0x10,%rsp
0x159:	4c 89 1c 24          	mov    %r11,(%rsp)
0x15d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x162:	41 85 03             	test   %eax,(%r11)
0x165:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x16a:	e8 00 00 00 00       	callq  0x16f
0x16f:	90                   	nop
0x170:	48 83 ec 10          	sub    $0x10,%rsp
0x174:	48 89 04 24          	mov    %rax,(%rsp)
0x178:	48 8b 3d 29 fe ff ff 	mov    -0x1d7(%rip),%rdi        # 0xffffffa8
0x17f:	be 10 00 00 00       	mov    $0x10,%esi
0x184:	48 63 f6             	movslq %esi,%rsi
0x187:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x18b:	48 83 ec 10          	sub    $0x10,%rsp
0x18f:	89 04 24             	mov    %eax,(%rsp)
0x192:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x197:	41 85 03             	test   %eax,(%r11)
0x19a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x19f:	90                   	nop
0x1a0:	e8 00 00 00 00       	callq  0x1a5
0x1a5:	90                   	nop
0x1a6:	48 83 ec 10          	sub    $0x10,%rsp
0x1aa:	48 89 04 24          	mov    %rax,(%rsp)
0x1ae:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b2:	41 85 03             	test   %eax,(%r11)
0x1b5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1b9:	e8 00 00 00 00       	callq  0x1be
0x1be:	90                   	nop
0x1bf:	48 83 ec 10          	sub    $0x10,%rsp
0x1c3:	48 89 04 24          	mov    %rax,(%rsp)
0x1c7:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1cc:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1d1:	48 8b 15 d8 fd ff ff 	mov    -0x228(%rip),%rdx        # 0xffffffb0
0x1d8:	b9 07 00 00 00       	mov    $0x7,%ecx
0x1dd:	48 8b c6             	mov    %rsi,%rax
0x1e0:	48 8b 00             	mov    (%rax),%rax
0x1e3:	48 63 ff             	movslq %edi,%rdi
0x1e6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1eb:	48 8b fa             	mov    %rdx,%rdi
0x1ee:	48 8b d1             	mov    %rcx,%rdx
0x1f1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1f6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1fa:	90                   	nop
0x1fb:	90                   	nop
0x1fc:	e8 00 00 00 00       	callq  0x201
0x201:	90                   	nop
0x202:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x206:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x20a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x20f:	ff d0                	callq  *%rax
0x211:	90                   	nop
0x212:	48 8b 3d 9f fd ff ff 	mov    -0x261(%rip),%rdi        # 0xffffffb8
0x219:	be 18 00 00 00       	mov    $0x18,%esi
0x21e:	48 63 f6             	movslq %esi,%rsi
0x221:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x225:	48 83 ec 10          	sub    $0x10,%rsp
0x229:	48 89 04 24          	mov    %rax,(%rsp)
0x22d:	48 8b 3d 8c fd ff ff 	mov    -0x274(%rip),%rdi        # 0xffffffc0
0x234:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x238:	48 8b 35 89 fd ff ff 	mov    -0x277(%rip),%rsi        # 0xffffffc8
0x23f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x243:	49 8b ce             	mov    %r14,%rcx
0x246:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x24a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x251:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x258:	48 8b d9             	mov    %rcx,%rbx
0x25b:	48 03 da             	add    %rdx,%rbx
0x25e:	4c 8b cb             	mov    %rbx,%r9
0x261:	4d 3b c8             	cmp    %r8,%r9
0x264:	0f 86 14 00 00 00    	jbe    0x27e
0x26a:	48 8b fe             	mov    %rsi,%rdi
0x26d:	48 8b f2             	mov    %rdx,%rsi
0x270:	48 8b d0             	mov    %rax,%rdx
0x273:	e8 00 00 00 00       	callq  0x278
0x278:	90                   	nop
0x279:	e9 0a 00 00 00       	jmpq   0x288
0x27e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x285:	48 8b c1             	mov    %rcx,%rax
0x288:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x28c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x290:	90                   	nop
0x291:	90                   	nop
0x292:	90                   	nop
0x293:	e8 00 00 00 00       	callq  0x298
0x298:	90                   	nop
0x299:	90                   	nop
0x29a:	90                   	nop
0x29b:	e8 00 00 00 00       	callq  0x2a0
0x2a0:	90                   	nop
0x2a1:	83 f8 00             	cmp    $0x0,%eax
0x2a4:	0f 84 27 00 00 00    	je     0x2d1
0x2aa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2ae:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2b2:	85 06                	test   %eax,(%rsi)
0x2b4:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2b8:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2bc:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2c0:	83 e2 ff             	and    $0xffffffff,%edx
0x2c3:	48 8b fa             	mov    %rdx,%rdi
0x2c6:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2ca:	90                   	nop
0x2cb:	e8 00 00 00 00       	callq  0x2d0
0x2d0:	90                   	nop
0x2d1:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2d5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2d9:	48 89 38             	mov    %rdi,(%rax)
0x2dc:	48 83 ec 10          	sub    $0x10,%rsp
0x2e0:	48 89 04 24          	mov    %rax,(%rsp)
0x2e4:	48 83 ec 10          	sub    $0x10,%rsp
0x2e8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2ed:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2f1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2f5:	41 85 03             	test   %eax,(%r11)
0x2f8:	e8 00 00 00 00       	callq  0x2fd
0x2fd:	90                   	nop
0x2fe:	4c 8b 1d cb fc ff ff 	mov    -0x335(%rip),%r11        # 0xffffffd0
0x305:	48 83 ec 10          	sub    $0x10,%rsp
0x309:	4c 89 1c 24          	mov    %r11,(%rsp)
0x30d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x312:	41 85 03             	test   %eax,(%r11)
0x315:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x31a:	e8 00 00 00 00       	callq  0x31f
0x31f:	90                   	nop
0x320:	48 83 ec 10          	sub    $0x10,%rsp
0x324:	48 89 04 24          	mov    %rax,(%rsp)
0x328:	48 8b 3d a9 fc ff ff 	mov    -0x357(%rip),%rdi        # 0xffffffd8
0x32f:	be 14 00 00 00       	mov    $0x14,%esi
0x334:	48 63 f6             	movslq %esi,%rsi
0x337:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x33b:	48 83 ec 10          	sub    $0x10,%rsp
0x33f:	89 04 24             	mov    %eax,(%rsp)
0x342:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x347:	41 85 03             	test   %eax,(%r11)
0x34a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x34f:	90                   	nop
0x350:	e8 00 00 00 00       	callq  0x355
0x355:	90                   	nop
0x356:	48 83 ec 10          	sub    $0x10,%rsp
0x35a:	48 89 04 24          	mov    %rax,(%rsp)
0x35e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x362:	41 85 03             	test   %eax,(%r11)
0x365:	48 8b 3c 24          	mov    (%rsp),%rdi
0x369:	e8 00 00 00 00       	callq  0x36e
0x36e:	90                   	nop
0x36f:	48 83 ec 10          	sub    $0x10,%rsp
0x373:	48 89 04 24          	mov    %rax,(%rsp)
0x377:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x37c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x381:	48 8b 15 58 fc ff ff 	mov    -0x3a8(%rip),%rdx        # 0xffffffe0
0x388:	b9 14 00 00 00       	mov    $0x14,%ecx
0x38d:	48 8b c6             	mov    %rsi,%rax
0x390:	48 8b 00             	mov    (%rax),%rax
0x393:	48 63 ff             	movslq %edi,%rdi
0x396:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x39b:	48 8b fa             	mov    %rdx,%rdi
0x39e:	48 8b d1             	mov    %rcx,%rdx
0x3a1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3a6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3aa:	90                   	nop
0x3ab:	90                   	nop
0x3ac:	e8 00 00 00 00       	callq  0x3b1
0x3b1:	90                   	nop
0x3b2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3b6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3ba:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3bf:	ff d0                	callq  *%rax
0x3c1:	90                   	nop
0x3c2:	48 83 c5 40          	add    $0x40,%rbp
0x3c6:	c9                   	leaveq 
0x3c7:	c2 10 00             	retq   $0x10

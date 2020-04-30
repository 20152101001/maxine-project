0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 60 00 00          	enterq $0x60,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 68 e0 ff 	mov    %rax,-0x1f98(%rsp)
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
0x53:	48 83 ec 10          	sub    $0x10,%rsp
0x57:	4c 8b 1d 32 ff ff ff 	mov    -0xce(%rip),%r11        # 0xffffff90
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	4c 8b 1c 24          	mov    (%rsp),%r11
0x66:	41 85 03             	test   %eax,(%r11)
0x69:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6d:	90                   	nop
0x6e:	90                   	nop
0x6f:	90                   	nop
0x70:	e8 00 00 00 00       	callq  0x75
0x75:	90                   	nop
0x76:	48 83 ec 10          	sub    $0x10,%rsp
0x7a:	48 89 04 24          	mov    %rax,(%rsp)
0x7e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x82:	48 83 c4 10          	add    $0x10,%rsp
0x86:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x8a:	e8 00 00 00 00       	callq  0x8f
0x8f:	90                   	nop
0x90:	48 83 ec 10          	sub    $0x10,%rsp
0x94:	48 89 04 24          	mov    %rax,(%rsp)
0x98:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9c:	48 83 c4 10          	add    $0x10,%rsp
0xa0:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xa4:	48 8b 3d ed fe ff ff 	mov    -0x113(%rip),%rdi        # 0xffffff98
0xab:	be 18 00 00 00       	mov    $0x18,%esi
0xb0:	48 63 f6             	movslq %esi,%rsi
0xb3:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xb7:	48 83 ec 10          	sub    $0x10,%rsp
0xbb:	48 89 04 24          	mov    %rax,(%rsp)
0xbf:	48 8b 3d da fe ff ff 	mov    -0x126(%rip),%rdi        # 0xffffffa0
0xc6:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xca:	48 8b 35 d7 fe ff ff 	mov    -0x129(%rip),%rsi        # 0xffffffa8
0xd1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xd5:	49 8b ce             	mov    %r14,%rcx
0xd8:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xdc:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xe3:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xea:	48 8b d9             	mov    %rcx,%rbx
0xed:	48 03 da             	add    %rdx,%rbx
0xf0:	4c 8b cb             	mov    %rbx,%r9
0xf3:	4d 3b c8             	cmp    %r8,%r9
0xf6:	0f 86 14 00 00 00    	jbe    0x110
0xfc:	48 8b fe             	mov    %rsi,%rdi
0xff:	48 8b f2             	mov    %rdx,%rsi
0x102:	48 8b d0             	mov    %rax,%rdx
0x105:	e8 00 00 00 00       	callq  0x10a
0x10a:	90                   	nop
0x10b:	e9 0a 00 00 00       	jmpq   0x11a
0x110:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x117:	48 8b c1             	mov    %rcx,%rax
0x11a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x11e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x122:	90                   	nop
0x123:	90                   	nop
0x124:	90                   	nop
0x125:	e8 00 00 00 00       	callq  0x12a
0x12a:	90                   	nop
0x12b:	90                   	nop
0x12c:	90                   	nop
0x12d:	e8 00 00 00 00       	callq  0x132
0x132:	90                   	nop
0x133:	83 f8 00             	cmp    $0x0,%eax
0x136:	0f 84 27 00 00 00    	je     0x163
0x13c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x140:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x144:	85 06                	test   %eax,(%rsi)
0x146:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x14a:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x14e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x152:	83 e2 ff             	and    $0xffffffff,%edx
0x155:	48 8b fa             	mov    %rdx,%rdi
0x158:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x15c:	90                   	nop
0x15d:	e8 00 00 00 00       	callq  0x162
0x162:	90                   	nop
0x163:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x167:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x16b:	48 89 38             	mov    %rdi,(%rax)
0x16e:	48 83 ec 10          	sub    $0x10,%rsp
0x172:	48 89 04 24          	mov    %rax,(%rsp)
0x176:	48 83 ec 10          	sub    $0x10,%rsp
0x17a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x17f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x183:	4c 8b 1c 24          	mov    (%rsp),%r11
0x187:	41 85 03             	test   %eax,(%r11)
0x18a:	e8 00 00 00 00       	callq  0x18f
0x18f:	90                   	nop
0x190:	4c 8b 1d 19 fe ff ff 	mov    -0x1e7(%rip),%r11        # 0xffffffb0
0x197:	48 83 ec 10          	sub    $0x10,%rsp
0x19b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x19f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1a4:	41 85 03             	test   %eax,(%r11)
0x1a7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1ac:	90                   	nop
0x1ad:	90                   	nop
0x1ae:	90                   	nop
0x1af:	90                   	nop
0x1b0:	e8 00 00 00 00       	callq  0x1b5
0x1b5:	90                   	nop
0x1b6:	48 83 ec 10          	sub    $0x10,%rsp
0x1ba:	48 89 04 24          	mov    %rax,(%rsp)
0x1be:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1c2:	48 83 ec 10          	sub    $0x10,%rsp
0x1c6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ca:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x1ce:	48 83 ec 10          	sub    $0x10,%rsp
0x1d2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1d6:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1db:	48 8b 04 24          	mov    (%rsp),%rax
0x1df:	48 83 c4 20          	add    $0x20,%rsp
0x1e3:	4c 3b d8             	cmp    %rax,%r11
0x1e6:	74 33                	je     0x21b
0x1e8:	48 8b 3d c9 fd ff ff 	mov    -0x237(%rip),%rdi        # 0xffffffb8
0x1ef:	be 04 00 00 00       	mov    $0x4,%esi
0x1f4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1f8:	48 8b c8             	mov    %rax,%rcx
0x1fb:	48 63 f6             	movslq %esi,%rsi
0x1fe:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x203:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x209:	0f 8d 07 00 00 00    	jge    0x216
0x20f:	83 c1 01             	add    $0x1,%ecx
0x212:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x216:	e9 6f 00 00 00       	jmpq   0x28a
0x21b:	48 8b 3d 9e fd ff ff 	mov    -0x262(%rip),%rdi        # 0xffffffc0
0x222:	be 05 00 00 00       	mov    $0x5,%esi
0x227:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x22b:	48 8b c8             	mov    %rax,%rcx
0x22e:	48 63 f6             	movslq %esi,%rsi
0x231:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x236:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x23c:	0f 8d 07 00 00 00    	jge    0x249
0x242:	83 c1 01             	add    $0x1,%ecx
0x245:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x249:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x24f:	48 83 ec 10          	sub    $0x10,%rsp
0x253:	44 89 1c 24          	mov    %r11d,(%rsp)
0x257:	48 8b 3d 6a fd ff ff 	mov    -0x296(%rip),%rdi        # 0xffffffc8
0x25e:	be 06 00 00 00       	mov    $0x6,%esi
0x263:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x267:	48 8b c8             	mov    %rax,%rcx
0x26a:	48 63 f6             	movslq %esi,%rsi
0x26d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x272:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x278:	0f 8d 07 00 00 00    	jge    0x285
0x27e:	83 c1 01             	add    $0x1,%ecx
0x281:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x285:	e9 0e 00 00 00       	jmpq   0x298
0x28a:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x290:	48 83 ec 10          	sub    $0x10,%rsp
0x294:	44 89 1c 24          	mov    %r11d,(%rsp)
0x298:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x29d:	41 85 03             	test   %eax,(%r11)
0x2a0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2a5:	90                   	nop
0x2a6:	90                   	nop
0x2a7:	90                   	nop
0x2a8:	e8 00 00 00 00       	callq  0x2ad
0x2ad:	90                   	nop
0x2ae:	48 83 ec 10          	sub    $0x10,%rsp
0x2b2:	48 89 04 24          	mov    %rax,(%rsp)
0x2b6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2ba:	41 85 03             	test   %eax,(%r11)
0x2bd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2c1:	e8 00 00 00 00       	callq  0x2c6
0x2c6:	90                   	nop
0x2c7:	48 83 ec 10          	sub    $0x10,%rsp
0x2cb:	48 89 04 24          	mov    %rax,(%rsp)
0x2cf:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2d4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2d9:	48 8b 15 f0 fc ff ff 	mov    -0x310(%rip),%rdx        # 0xffffffd0
0x2e0:	b9 0a 00 00 00       	mov    $0xa,%ecx
0x2e5:	48 8b c6             	mov    %rsi,%rax
0x2e8:	48 8b 00             	mov    (%rax),%rax
0x2eb:	48 63 ff             	movslq %edi,%rdi
0x2ee:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2f3:	48 8b fa             	mov    %rdx,%rdi
0x2f6:	48 8b d1             	mov    %rcx,%rdx
0x2f9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2fe:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x302:	90                   	nop
0x303:	90                   	nop
0x304:	e8 00 00 00 00       	callq  0x309
0x309:	90                   	nop
0x30a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x30e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x312:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x317:	ff d0                	callq  *%rax
0x319:	90                   	nop
0x31a:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x31e:	48 83 ec 10          	sub    $0x10,%rsp
0x322:	4c 89 1c 24          	mov    %r11,(%rsp)
0x326:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x32a:	48 83 ec 10          	sub    $0x10,%rsp
0x32e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x332:	e8 00 00 00 00       	callq  0x337
0x337:	90                   	nop
0x338:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x33c:	48 83 ec 10          	sub    $0x10,%rsp
0x340:	4c 89 1c 24          	mov    %r11,(%rsp)
0x344:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x348:	48 83 ec 10          	sub    $0x10,%rsp
0x34c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x350:	e8 00 00 00 00       	callq  0x355
0x355:	90                   	nop
0x356:	48 8b 3d 7b fc ff ff 	mov    -0x385(%rip),%rdi        # 0xffffffd8
0x35d:	be 14 00 00 00       	mov    $0x14,%esi
0x362:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x366:	48 8b c8             	mov    %rax,%rcx
0x369:	48 63 f6             	movslq %esi,%rsi
0x36c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x371:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x377:	0f 8d 07 00 00 00    	jge    0x384
0x37d:	83 c1 01             	add    $0x1,%ecx
0x380:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x384:	e9 78 00 00 00       	jmpq   0x401
0x389:	49 8b fe             	mov    %r14,%rdi
0x38c:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x390:	85 07                	test   %eax,(%rdi)
0x392:	e8 00 00 00 00       	callq  0x397
0x397:	90                   	nop
0x398:	48 83 ec 10          	sub    $0x10,%rsp
0x39c:	48 89 04 24          	mov    %rax,(%rsp)
0x3a0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3a4:	48 83 c4 10          	add    $0x10,%rsp
0x3a8:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x3ac:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x3b0:	48 83 ec 10          	sub    $0x10,%rsp
0x3b4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3b8:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x3bd:	48 8b 34 24          	mov    (%rsp),%rsi
0x3c1:	48 8b 15 18 fc ff ff 	mov    -0x3e8(%rip),%rdx        # 0xffffffe0
0x3c8:	b9 16 00 00 00       	mov    $0x16,%ecx
0x3cd:	48 8b c6             	mov    %rsi,%rax
0x3d0:	48 8b 00             	mov    (%rax),%rax
0x3d3:	48 63 ff             	movslq %edi,%rdi
0x3d6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3db:	48 8b fa             	mov    %rdx,%rdi
0x3de:	48 8b d1             	mov    %rcx,%rdx
0x3e1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3e6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3ea:	90                   	nop
0x3eb:	90                   	nop
0x3ec:	e8 00 00 00 00       	callq  0x3f1
0x3f1:	90                   	nop
0x3f2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3f6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3fa:	48 8b 3c 24          	mov    (%rsp),%rdi
0x3fe:	ff d0                	callq  *%rax
0x400:	90                   	nop
0x401:	48 83 c5 40          	add    $0x40,%rbp
0x405:	c9                   	leaveq 
0x406:	c2 10 00             	retq   $0x10

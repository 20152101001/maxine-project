0x0:	e8 00 00 00 00       	callq  0x5
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	48 81 ec f8 00 00 00 	sub    $0xf8,%rsp
0xf:	48 89 84 24 f8 e0 ff 	mov    %rax,-0x1f08(%rsp)
0x16:	ff 
0x17:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
0x1c:	48 8b 05 5d ff ff ff 	mov    -0xa3(%rip),%rax        # 0xffffff80
0x23:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
0x28:	48 8b 35 59 ff ff ff 	mov    -0xa7(%rip),%rsi        # 0xffffff88
0x2f:	48 8b fe             	mov    %rsi,%rdi
0x32:	48 8b f0             	mov    %rax,%rsi
0x35:	90                   	nop
0x36:	90                   	nop
0x37:	e8 00 00 00 00       	callq  0x3c
0x3c:	90                   	nop
0x3d:	48 8b c8             	mov    %rax,%rcx
0x40:	48 8b 1d 49 ff ff ff 	mov    -0xb7(%rip),%rbx        # 0xffffff90
0x47:	4d 33 db             	xor    %r11,%r11
0x4a:	49 3b cb             	cmp    %r11,%rcx
0x4d:	0f 84 36 00 00 00    	je     0x89
0x53:	48 8b 31             	mov    (%rcx),%rsi
0x56:	48 3b f3             	cmp    %rbx,%rsi
0x59:	0f 84 2a 00 00 00    	je     0x89
0x5f:	48 63 7e 5c          	movslq 0x5c(%rsi),%rdi
0x63:	b8 25 00 00 00       	mov    $0x25,%eax
0x68:	99                   	cltd   
0x69:	f7 ff                	idiv   %edi
0x6b:	4c 8b c2             	mov    %rdx,%r8
0x6e:	48 63 7e 58          	movslq 0x58(%rsi),%rdi
0x72:	44 03 c7             	add    %edi,%r8d
0x75:	4e 63 44 86 18       	movslq 0x18(%rsi,%r8,4),%r8
0x7a:	4e 63 44 c6 18       	movslq 0x18(%rsi,%r8,8),%r8
0x7f:	41 83 f8 25          	cmp    $0x25,%r8d
0x83:	0f 85 47 04 00 00    	jne    0x4d0
0x89:	48 8b 41 20          	mov    0x20(%rcx),%rax
0x8d:	48 8b 0d 04 ff ff ff 	mov    -0xfc(%rip),%rcx        # 0xffffff98
0x94:	48 3b c1             	cmp    %rcx,%rax
0x97:	0f 85 25 00 00 00    	jne    0xc2
0x9d:	48 8b 0d fc fe ff ff 	mov    -0x104(%rip),%rcx        # 0xffffffa0
0xa4:	48 8b 51 18          	mov    0x18(%rcx),%rdx
0xa8:	48 8b 0d f9 fe ff ff 	mov    -0x107(%rip),%rcx        # 0xffffffa8
0xaf:	48 3b d1             	cmp    %rcx,%rdx
0xb2:	0f 85 0a 00 00 00    	jne    0xc2
0xb8:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
0xbf:	00 00 00 
0xc2:	4d 33 db             	xor    %r11,%r11
0xc5:	49 3b c3             	cmp    %r11,%rax
0xc8:	0f 85 0f 00 00 00    	jne    0xdd
0xce:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
0xd5:	00 00 00 
0xd8:	e9 10 01 00 00       	jmpq   0x1ed
0xdd:	48 8b 0d cc fe ff ff 	mov    -0x134(%rip),%rcx        # 0xffffffb0
0xe4:	48 8b 51 28          	mov    0x28(%rcx),%rdx
0xe8:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
0xed:	4d 33 db             	xor    %r11,%r11
0xf0:	49 3b d3             	cmp    %r11,%rdx
0xf3:	0f 84 f4 00 00 00    	je     0x1ed
0xf9:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
0xfe:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
0x103:	e8 00 00 00 00       	callq  0x108
0x108:	90                   	nop
0x109:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
0x10e:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
0x113:	48 8b 51 28          	mov    0x28(%rcx),%rdx
0x117:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
0x11c:	4d 33 db             	xor    %r11,%r11
0x11f:	49 3b d3             	cmp    %r11,%rdx
0x122:	0f 84 c0 00 00 00    	je     0x1e8
0x128:	4d 33 db             	xor    %r11,%r11
0x12b:	49 3b c3             	cmp    %r11,%rax
0x12e:	0f 85 0f 00 00 00    	jne    0x143
0x134:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
0x13b:	00 00 00 
0x13e:	e9 0d 00 00 00       	jmpq   0x150
0x143:	48 8b f8             	mov    %rax,%rdi
0x146:	90                   	nop
0x147:	e8 00 00 00 00       	callq  0x14c
0x14c:	90                   	nop
0x14d:	48 8b c8             	mov    %rax,%rcx
0x150:	48 3b 4c 24 30       	cmp    0x30(%rsp),%rcx
0x155:	0f 85 0f 00 00 00    	jne    0x16a
0x15b:	b8 00 00 00 00       	mov    $0x0,%eax
0x160:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
0x165:	e9 58 00 00 00       	jmpq   0x1c2
0x16a:	4d 33 db             	xor    %r11,%r11
0x16d:	49 3b cb             	cmp    %r11,%rcx
0x170:	0f 85 0f 00 00 00    	jne    0x185
0x176:	b8 00 00 00 00       	mov    $0x0,%eax
0x17b:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
0x180:	e9 3d 00 00 00       	jmpq   0x1c2
0x185:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
0x18a:	48 8b 38             	mov    (%rax),%rdi
0x18d:	48 8b 97 60 01 00 00 	mov    0x160(%rdi),%rdx
0x194:	48 8b f8             	mov    %rax,%rdi
0x197:	48 8b f1             	mov    %rcx,%rsi
0x19a:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
0x19f:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
0x1a4:	ff d2                	callq  *%rdx
0x1a6:	90                   	nop
0x1a7:	83 f8 00             	cmp    $0x0,%eax
0x1aa:	0f 85 0a 00 00 00    	jne    0x1ba
0x1b0:	bf 01 00 00 00       	mov    $0x1,%edi
0x1b5:	e9 05 00 00 00       	jmpq   0x1bf
0x1ba:	bf 00 00 00 00       	mov    $0x0,%edi
0x1bf:	48 8b c7             	mov    %rdi,%rax
0x1c2:	83 f8 00             	cmp    $0x0,%eax
0x1c5:	0f 84 1d 00 00 00    	je     0x1e8
0x1cb:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
0x1d0:	48 8b 35 e1 fd ff ff 	mov    -0x21f(%rip),%rsi        # 0xffffffb8
0x1d7:	48 8b 3a             	mov    (%rdx),%rdi
0x1da:	4c 8b 8f 10 01 00 00 	mov    0x110(%rdi),%r9
0x1e1:	48 8b fa             	mov    %rdx,%rdi
0x1e4:	41 ff d1             	callq  *%r9
0x1e7:	90                   	nop
0x1e8:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
0x1ed:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
0x1f2:	e8 00 00 00 00       	callq  0x1f7
0x1f7:	90                   	nop
0x1f8:	48 8b 05 c1 fd ff ff 	mov    -0x23f(%rip),%rax        # 0xffffffc0
0x1ff:	48 8b 48 18          	mov    0x18(%rax),%rcx
0x203:	4d 33 db             	xor    %r11,%r11
0x206:	49 3b cb             	cmp    %r11,%rcx
0x209:	0f 85 0f 00 00 00    	jne    0x21e
0x20f:	48 b8 00 00 00 00 00 	movabs $0x0,%rax
0x216:	00 00 00 
0x219:	e9 2e 01 00 00       	jmpq   0x34c
0x21e:	48 8b 0d 8b fd ff ff 	mov    -0x275(%rip),%rcx        # 0xffffffb0
0x225:	48 8b 51 28          	mov    0x28(%rcx),%rdx
0x229:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
0x22e:	4d 33 db             	xor    %r11,%r11
0x231:	49 3b d3             	cmp    %r11,%rdx
0x234:	0f 84 0b 01 00 00    	je     0x345
0x23a:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
0x23f:	48 8b 58 18          	mov    0x18(%rax),%rbx
0x243:	48 89 5c 24 68       	mov    %rbx,0x68(%rsp)
0x248:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
0x24d:	90                   	nop
0x24e:	90                   	nop
0x24f:	e8 00 00 00 00       	callq  0x254
0x254:	90                   	nop
0x255:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
0x25c:	00 
0x25d:	48 8b 4c 24 60       	mov    0x60(%rsp),%rcx
0x262:	48 8b 51 28          	mov    0x28(%rcx),%rdx
0x266:	48 89 94 24 80 00 00 	mov    %rdx,0x80(%rsp)
0x26d:	00 
0x26e:	4d 33 db             	xor    %r11,%r11
0x271:	49 3b d3             	cmp    %r11,%rdx
0x274:	0f 84 c6 00 00 00    	je     0x340
0x27a:	4d 33 db             	xor    %r11,%r11
0x27d:	49 3b c3             	cmp    %r11,%rax
0x280:	0f 85 0f 00 00 00    	jne    0x295
0x286:	48 b9 00 00 00 00 00 	movabs $0x0,%rcx
0x28d:	00 00 00 
0x290:	e9 0c 00 00 00       	jmpq   0x2a1
0x295:	48 8b f8             	mov    %rax,%rdi
0x298:	e8 00 00 00 00       	callq  0x29d
0x29d:	90                   	nop
0x29e:	48 8b c8             	mov    %rax,%rcx
0x2a1:	48 3b 4c 24 68       	cmp    0x68(%rsp),%rcx
0x2a6:	0f 85 12 00 00 00    	jne    0x2be
0x2ac:	b8 00 00 00 00       	mov    $0x0,%eax
0x2b1:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
0x2b8:	00 
0x2b9:	e9 59 00 00 00       	jmpq   0x317
0x2be:	4d 33 db             	xor    %r11,%r11
0x2c1:	49 3b cb             	cmp    %r11,%rcx
0x2c4:	0f 85 12 00 00 00    	jne    0x2dc
0x2ca:	b8 00 00 00 00       	mov    $0x0,%eax
0x2cf:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
0x2d6:	00 
0x2d7:	e9 3b 00 00 00       	jmpq   0x317
0x2dc:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
0x2e1:	48 8b 3b             	mov    (%rbx),%rdi
0x2e4:	48 8b 87 60 01 00 00 	mov    0x160(%rdi),%rax
0x2eb:	48 8b fb             	mov    %rbx,%rdi
0x2ee:	48 8b f1             	mov    %rcx,%rsi
0x2f1:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
0x2f8:	00 
0x2f9:	ff d0                	callq  *%rax
0x2fb:	90                   	nop
0x2fc:	83 f8 00             	cmp    $0x0,%eax
0x2ff:	0f 85 0a 00 00 00    	jne    0x30f
0x305:	bf 01 00 00 00       	mov    $0x1,%edi
0x30a:	e9 05 00 00 00       	jmpq   0x314
0x30f:	bf 00 00 00 00       	mov    $0x0,%edi
0x314:	48 8b c7             	mov    %rdi,%rax
0x317:	83 f8 00             	cmp    $0x0,%eax
0x31a:	0f 84 20 00 00 00    	je     0x340
0x320:	48 8b 94 24 80 00 00 	mov    0x80(%rsp),%rdx
0x327:	00 
0x328:	48 8b 35 89 fc ff ff 	mov    -0x377(%rip),%rsi        # 0xffffffb8
0x32f:	48 8b 3a             	mov    (%rdx),%rdi
0x332:	4c 8b 8f 10 01 00 00 	mov    0x110(%rdi),%r9
0x339:	48 8b fa             	mov    %rdx,%rdi
0x33c:	41 ff d1             	callq  *%r9
0x33f:	90                   	nop
0x340:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
0x345:	48 8b 78 18          	mov    0x18(%rax),%rdi
0x349:	48 8b c7             	mov    %rdi,%rax
0x34c:	48 89 84 24 98 00 00 	mov    %rax,0x98(%rsp)
0x353:	00 
0x354:	48 8b 3d 55 fc ff ff 	mov    -0x3ab(%rip),%rdi        # 0xffffffb0
0x35b:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x35f:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
0x366:	00 
0x367:	4c 8b 1d 5a fc ff ff 	mov    -0x3a6(%rip),%r11        # 0xffffffc8
0x36e:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
0x373:	e8 00 00 00 00       	callq  0x378
0x378:	90                   	nop
0x379:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
0x37e:	48 89 9c 24 a0 00 00 	mov    %rbx,0xa0(%rsp)
0x385:	00 
0x386:	bf 10 00 00 00       	mov    $0x10,%edi
0x38b:	4c 8b 1d 3e fc ff ff 	mov    -0x3c2(%rip),%r11        # 0xffffffd0
0x392:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
0x397:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
0x39c:	e8 00 00 00 00       	callq  0x3a1
0x3a1:	90                   	nop
0x3a2:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
0x3a7:	48 89 73 10          	mov    %rsi,0x10(%rbx)
0x3ab:	4c 8b 05 26 fc ff ff 	mov    -0x3da(%rip),%r8        # 0xffffffd8
0x3b2:	48 8b fb             	mov    %rbx,%rdi
0x3b5:	49 8b f0             	mov    %r8,%rsi
0x3b8:	4c 89 84 24 b0 00 00 	mov    %r8,0xb0(%rsp)
0x3bf:	00 
0x3c0:	e8 00 00 00 00       	callq  0x3c5
0x3c5:	90                   	nop
0x3c6:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
0x3cb:	48 3b 84 24 98 00 00 	cmp    0x98(%rsp),%rax
0x3d2:	00 
0x3d3:	0f 85 0a 00 00 00    	jne    0x3e3
0x3d9:	b9 01 00 00 00       	mov    $0x1,%ecx
0x3de:	e9 05 00 00 00       	jmpq   0x3e8
0x3e3:	b9 00 00 00 00       	mov    $0x0,%ecx
0x3e8:	48 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%rbx
0x3ef:	00 
0x3f0:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
0x3f5:	48 8b fb             	mov    %rbx,%rdi
0x3f8:	89 8c 24 b8 00 00 00 	mov    %ecx,0xb8(%rsp)
0x3ff:	40 8b b4 24 b8 00 00 	rex mov 0xb8(%rsp),%esi
0x406:	00 
0x407:	89 8c 24 c0 00 00 00 	mov    %ecx,0xc0(%rsp)
0x40e:	90                   	nop
0x40f:	e8 00 00 00 00       	callq  0x414
0x414:	90                   	nop
0x415:	4c 8b 1d c4 fb ff ff 	mov    -0x43c(%rip),%r11        # 0xffffffe0
0x41c:	4c 89 5c 24 08       	mov    %r11,0x8(%rsp)
0x421:	e8 00 00 00 00       	callq  0x426
0x426:	90                   	nop
0x427:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
0x42c:	48 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%rbx
0x433:	00 
0x434:	48 8b 73 10          	mov    0x10(%rbx),%rsi
0x438:	48 63 4b 18          	movslq 0x18(%rbx),%rcx
0x43c:	48 8b f8             	mov    %rax,%rdi
0x43f:	ba 00 00 00 00       	mov    $0x0,%edx
0x444:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
0x44b:	00 
0x44c:	90                   	nop
0x44d:	90                   	nop
0x44e:	90                   	nop
0x44f:	e8 00 00 00 00       	callq  0x454
0x454:	90                   	nop
0x455:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
0x45c:	00 
0x45d:	48 8b 3a             	mov    (%rdx),%rdi
0x460:	48 8b 87 90 01 00 00 	mov    0x190(%rdi),%rax
0x467:	48 8b fa             	mov    %rdx,%rdi
0x46a:	48 8b b4 24 c8 00 00 	mov    0xc8(%rsp),%rsi
0x471:	00 
0x472:	ff d0                	callq  *%rax
0x474:	90                   	nop
0x475:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
0x47a:	48 8b 74 24 58       	mov    0x58(%rsp),%rsi
0x47f:	e8 00 00 00 00       	callq  0x484
0x484:	90                   	nop
0x485:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
0x48a:	48 8b b4 24 98 00 00 	mov    0x98(%rsp),%rsi
0x491:	00 
0x492:	e8 00 00 00 00       	callq  0x497
0x497:	90                   	nop
0x498:	e9 26 00 00 00       	jmpq   0x4c3
0x49d:	4d 8b 36             	mov    (%r14),%r14
0x4a0:	e8 00 00 00 00       	callq  0x4a5
0x4a5:	90                   	nop
0x4a6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
0x4ab:	48 8b 38             	mov    (%rax),%rdi
0x4ae:	48 8b 8f e8 00 00 00 	mov    0xe8(%rdi),%rcx
0x4b5:	48 8b f8             	mov    %rax,%rdi
0x4b8:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
0x4bf:	00 
0x4c0:	ff d1                	callq  *%rcx
0x4c2:	90                   	nop
0x4c3:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
0x4c8:	48 81 c4 f8 00 00 00 	add    $0xf8,%rsp
0x4cf:	c3                   	retq   
0x4d0:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
0x4d5:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
0x4da:	e8 00 00 00 00       	callq  0x4df
0x4df:	90                   	nop
0x4e0:	90                   	nop

0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 80 00 00          	enterq $0x80,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 88 e0 ff 	mov    %rax,-0x1f78(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 11 ff ff ff 	mov    %r11,-0xef(%rip)        # 0xffffff38
0x27:	48 8b 3d 12 ff ff ff 	mov    -0xee(%rip),%rdi        # 0xffffff40
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
0x61:	4c 8b 1c 24          	mov    (%rsp),%r11
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6d:	48 83 ec 10          	sub    $0x10,%rsp
0x71:	4c 8b 1d d0 fe ff ff 	mov    -0x130(%rip),%r11        # 0xffffff48
0x78:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7c:	48 83 ec 10          	sub    $0x10,%rsp
0x80:	4c 8b 1d c9 fe ff ff 	mov    -0x137(%rip),%r11        # 0xffffff50
0x87:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8b:	e8 00 00 00 00       	callq  0x90
0x90:	90                   	nop
0x91:	48 83 ec 10          	sub    $0x10,%rsp
0x95:	48 89 04 24          	mov    %rax,(%rsp)
0x99:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9d:	48 83 c4 10          	add    $0x10,%rsp
0xa1:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xa5:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xa9:	48 83 ec 10          	sub    $0x10,%rsp
0xad:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb1:	48 83 ec 10          	sub    $0x10,%rsp
0xb5:	4c 8b 1d 9c fe ff ff 	mov    -0x164(%rip),%r11        # 0xffffff58
0xbc:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc0:	4c 8b 1d 99 fe ff ff 	mov    -0x167(%rip),%r11        # 0xffffff60
0xc7:	48 83 ec 10          	sub    $0x10,%rsp
0xcb:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcf:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xd3:	48 83 ec 10          	sub    $0x10,%rsp
0xd7:	4c 89 1c 24          	mov    %r11,(%rsp)
0xdb:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xe0:	41 85 03             	test   %eax,(%r11)
0xe3:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	48 89 04 24          	mov    %rax,(%rsp)
0xf6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xfa:	48 83 c4 10          	add    $0x10,%rsp
0xfe:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x102:	48 8b 3d 5f fe ff ff 	mov    -0x1a1(%rip),%rdi        # 0xffffff68
0x109:	be 10 00 00 00       	mov    $0x10,%esi
0x10e:	48 63 f6             	movslq %esi,%rsi
0x111:	0f be 04 37          	movsbl (%rdi,%rsi,1),%eax
0x115:	48 83 ec 10          	sub    $0x10,%rsp
0x119:	89 04 24             	mov    %eax,(%rsp)
0x11c:	44 8b 1c 24          	mov    (%rsp),%r11d
0x120:	b8 00 00 00 00       	mov    $0x0,%eax
0x125:	48 83 c4 10          	add    $0x10,%rsp
0x129:	44 3b d8             	cmp    %eax,%r11d
0x12c:	74 33                	je     0x161
0x12e:	48 8b 3d 3b fe ff ff 	mov    -0x1c5(%rip),%rdi        # 0xffffff70
0x135:	be 03 00 00 00       	mov    $0x3,%esi
0x13a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x13e:	48 8b c8             	mov    %rax,%rcx
0x141:	48 63 f6             	movslq %esi,%rsi
0x144:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x149:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x14f:	0f 8d 07 00 00 00    	jge    0x15c
0x155:	83 c1 01             	add    $0x1,%ecx
0x158:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x15c:	e9 96 02 00 00       	jmpq   0x3f7
0x161:	48 8b 3d 10 fe ff ff 	mov    -0x1f0(%rip),%rdi        # 0xffffff78
0x168:	be 04 00 00 00       	mov    $0x4,%esi
0x16d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x171:	48 8b c8             	mov    %rax,%rcx
0x174:	48 63 f6             	movslq %esi,%rsi
0x177:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x17c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x182:	0f 8d 07 00 00 00    	jge    0x18f
0x188:	83 c1 01             	add    $0x1,%ecx
0x18b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x18f:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x193:	48 83 ec 10          	sub    $0x10,%rsp
0x197:	4c 89 1c 24          	mov    %r11,(%rsp)
0x19b:	bf 22 00 00 00       	mov    $0x22,%edi
0x1a0:	48 8b 34 24          	mov    (%rsp),%rsi
0x1a4:	48 8b 15 d5 fd ff ff 	mov    -0x22b(%rip),%rdx        # 0xffffff80
0x1ab:	b9 06 00 00 00       	mov    $0x6,%ecx
0x1b0:	48 8b c6             	mov    %rsi,%rax
0x1b3:	48 8b 00             	mov    (%rax),%rax
0x1b6:	48 63 ff             	movslq %edi,%rdi
0x1b9:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1be:	48 8b fa             	mov    %rdx,%rdi
0x1c1:	48 8b d1             	mov    %rcx,%rdx
0x1c4:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1c9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1cd:	90                   	nop
0x1ce:	90                   	nop
0x1cf:	e8 00 00 00 00       	callq  0x1d4
0x1d4:	90                   	nop
0x1d5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1d9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1dd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1e1:	ff d0                	callq  *%rax
0x1e3:	90                   	nop
0x1e4:	48 83 ec 10          	sub    $0x10,%rsp
0x1e8:	48 89 04 24          	mov    %rax,(%rsp)
0x1ec:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1f0:	b8 00 00 00 00       	mov    $0x0,%eax
0x1f5:	48 83 c4 10          	add    $0x10,%rsp
0x1f9:	44 3b d8             	cmp    %eax,%r11d
0x1fc:	74 33                	je     0x231
0x1fe:	48 8b 3d 83 fd ff ff 	mov    -0x27d(%rip),%rdi        # 0xffffff88
0x205:	be 0e 00 00 00       	mov    $0xe,%esi
0x20a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x20e:	48 8b c8             	mov    %rax,%rcx
0x211:	48 63 f6             	movslq %esi,%rsi
0x214:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x219:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x21f:	0f 8d 07 00 00 00    	jge    0x22c
0x225:	83 c1 01             	add    $0x1,%ecx
0x228:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x22c:	e9 c6 01 00 00       	jmpq   0x3f7
0x231:	48 8b 3d 58 fd ff ff 	mov    -0x2a8(%rip),%rdi        # 0xffffff90
0x238:	be 0f 00 00 00       	mov    $0xf,%esi
0x23d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x241:	48 8b c8             	mov    %rax,%rcx
0x244:	48 63 f6             	movslq %esi,%rsi
0x247:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x24c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x252:	0f 8d 07 00 00 00    	jge    0x25f
0x258:	83 c1 01             	add    $0x1,%ecx
0x25b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x25f:	48 8b 3d 32 fd ff ff 	mov    -0x2ce(%rip),%rdi        # 0xffffff98
0x266:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x26a:	48 8b 35 2f fd ff ff 	mov    -0x2d1(%rip),%rsi        # 0xffffffa0
0x271:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x275:	49 8b ce             	mov    %r14,%rcx
0x278:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x27c:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x283:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x28a:	48 8b d9             	mov    %rcx,%rbx
0x28d:	48 03 da             	add    %rdx,%rbx
0x290:	4c 8b cb             	mov    %rbx,%r9
0x293:	4d 3b c8             	cmp    %r8,%r9
0x296:	0f 86 14 00 00 00    	jbe    0x2b0
0x29c:	48 8b fe             	mov    %rsi,%rdi
0x29f:	48 8b f2             	mov    %rdx,%rsi
0x2a2:	48 8b d0             	mov    %rax,%rdx
0x2a5:	e8 00 00 00 00       	callq  0x2aa
0x2aa:	90                   	nop
0x2ab:	e9 0a 00 00 00       	jmpq   0x2ba
0x2b0:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x2b7:	48 8b c1             	mov    %rcx,%rax
0x2ba:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2be:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c2:	90                   	nop
0x2c3:	90                   	nop
0x2c4:	90                   	nop
0x2c5:	e8 00 00 00 00       	callq  0x2ca
0x2ca:	90                   	nop
0x2cb:	90                   	nop
0x2cc:	90                   	nop
0x2cd:	e8 00 00 00 00       	callq  0x2d2
0x2d2:	90                   	nop
0x2d3:	83 f8 00             	cmp    $0x0,%eax
0x2d6:	0f 84 27 00 00 00    	je     0x303
0x2dc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2e0:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2e4:	85 06                	test   %eax,(%rsi)
0x2e6:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2ea:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2ee:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2f2:	83 e2 ff             	and    $0xffffffff,%edx
0x2f5:	48 8b fa             	mov    %rdx,%rdi
0x2f8:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2fc:	90                   	nop
0x2fd:	e8 00 00 00 00       	callq  0x302
0x302:	90                   	nop
0x303:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x307:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x30b:	48 89 38             	mov    %rdi,(%rax)
0x30e:	48 83 ec 10          	sub    $0x10,%rsp
0x312:	48 89 04 24          	mov    %rax,(%rsp)
0x316:	48 83 ec 10          	sub    $0x10,%rsp
0x31a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x31f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x323:	4c 8b 1c 24          	mov    (%rsp),%r11
0x327:	41 85 03             	test   %eax,(%r11)
0x32a:	e8 00 00 00 00       	callq  0x32f
0x32f:	90                   	nop
0x330:	48 8b 3c 24          	mov    (%rsp),%rdi
0x334:	4d 33 db             	xor    %r11,%r11
0x337:	49 3b fb             	cmp    %r11,%rdi
0x33a:	0f 84 62 00 00 00    	je     0x3a2
0x340:	48 8b 0d 61 fc ff ff 	mov    -0x39f(%rip),%rcx        # 0xffffffa8
0x347:	4d 33 db             	xor    %r11,%r11
0x34a:	49 3b fb             	cmp    %r11,%rdi
0x34d:	0f 84 41 00 00 00    	je     0x394
0x353:	48 8b 1f             	mov    (%rdi),%rbx
0x356:	48 3b d9             	cmp    %rcx,%rbx
0x359:	0f 84 2b 00 00 00    	je     0x38a
0x35f:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x363:	b8 06 00 00 00       	mov    $0x6,%eax
0x368:	99                   	cltd   
0x369:	41 f7 f8             	idiv   %r8d
0x36c:	4c 8b ca             	mov    %rdx,%r9
0x36f:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x373:	45 03 c8             	add    %r8d,%r9d
0x376:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x37b:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x380:	41 83 f9 06          	cmp    $0x6,%r9d
0x384:	0f 85 0a 00 00 00    	jne    0x394
0x38a:	be 01 00 00 00       	mov    $0x1,%esi
0x38f:	e9 05 00 00 00       	jmpq   0x399
0x394:	be 00 00 00 00       	mov    $0x0,%esi
0x399:	83 fe 00             	cmp    $0x0,%esi
0x39c:	0f 84 44 00 00 00    	je     0x3e6
0x3a2:	48 8b f4             	mov    %rsp,%rsi
0x3a5:	48 8b d5             	mov    %rbp,%rdx
0x3a8:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x3a8
0x3af:	48 8b 05 fa fb ff ff 	mov    -0x406(%rip),%rax        # 0xffffffb0
0x3b6:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x3ba:	48 8b c1             	mov    %rcx,%rax
0x3bd:	48 2b c3             	sub    %rbx,%rax
0x3c0:	b9 01 00 00 00       	mov    $0x1,%ecx
0x3c5:	48 d3 e0             	shl    %cl,%rax
0x3c8:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x3cf:	00 00 00 
0x3d2:	49 0b c3             	or     %r11,%rax
0x3d5:	48 8b c8             	mov    %rax,%rcx
0x3d8:	90                   	nop
0x3d9:	90                   	nop
0x3da:	90                   	nop
0x3db:	e8 00 00 00 00       	callq  0x3e0
0x3e0:	90                   	nop
0x3e1:	e9 0d 00 00 00       	jmpq   0x3f3
0x3e6:	48 8b 3d cb fb ff ff 	mov    -0x435(%rip),%rdi        # 0xffffffb8
0x3ed:	e8 00 00 00 00       	callq  0x3f2
0x3f2:	90                   	nop
0x3f3:	48 83 c4 10          	add    $0x10,%rsp
0x3f7:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x3fb:	48 83 ec 10          	sub    $0x10,%rsp
0x3ff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x403:	4c 8b 1d b6 fb ff ff 	mov    -0x44a(%rip),%r11        # 0xffffffc0
0x40a:	48 83 ec 10          	sub    $0x10,%rsp
0x40e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x412:	4c 8b 1d af fb ff ff 	mov    -0x451(%rip),%r11        # 0xffffffc8
0x419:	48 83 ec 10          	sub    $0x10,%rsp
0x41d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x421:	48 8b 3d a8 fb ff ff 	mov    -0x458(%rip),%rdi        # 0xffffffd0
0x428:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x42d:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x431:	4d 33 db             	xor    %r11,%r11
0x434:	49 3b c3             	cmp    %r11,%rax
0x437:	0f 85 1d 00 00 00    	jne    0x45a
0x43d:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x441:	48 8b c7             	mov    %rdi,%rax
0x444:	48 8b f8             	mov    %rax,%rdi
0x447:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x44b:	90                   	nop
0x44c:	e8 00 00 00 00       	callq  0x451
0x451:	90                   	nop
0x452:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x456:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x45a:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x45e:	48 8b 0e             	mov    (%rsi),%rcx
0x461:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x465:	48 63 d2             	movslq %edx,%rdx
0x468:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x46d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x471:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x476:	ff d0                	callq  *%rax
0x478:	90                   	nop
0x479:	48 83 ec 10          	sub    $0x10,%rsp
0x47d:	48 89 04 24          	mov    %rax,(%rsp)
0x481:	4c 8b 1c 24          	mov    (%rsp),%r11
0x485:	48 83 c4 10          	add    $0x10,%rsp
0x489:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x48d:	48 8b 3d 44 fb ff ff 	mov    -0x4bc(%rip),%rdi        # 0xffffffd8
0x494:	be 18 00 00 00       	mov    $0x18,%esi
0x499:	48 63 f6             	movslq %esi,%rsi
0x49c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4a0:	48 83 ec 10          	sub    $0x10,%rsp
0x4a4:	48 89 04 24          	mov    %rax,(%rsp)
0x4a8:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x4ac:	48 83 ec 10          	sub    $0x10,%rsp
0x4b0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4b4:	bf 30 00 00 00       	mov    $0x30,%edi
0x4b9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x4be:	48 8b 15 1b fb ff ff 	mov    -0x4e5(%rip),%rdx        # 0xffffffe0
0x4c5:	b9 13 00 00 00       	mov    $0x13,%ecx
0x4ca:	48 8b c6             	mov    %rsi,%rax
0x4cd:	48 8b 00             	mov    (%rax),%rax
0x4d0:	48 63 ff             	movslq %edi,%rdi
0x4d3:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4d8:	48 8b fa             	mov    %rdx,%rdi
0x4db:	48 8b d1             	mov    %rcx,%rdx
0x4de:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4e3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4e7:	90                   	nop
0x4e8:	90                   	nop
0x4e9:	e8 00 00 00 00       	callq  0x4ee
0x4ee:	90                   	nop
0x4ef:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4f3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4f7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4fc:	ff d0                	callq  *%rax
0x4fe:	90                   	nop
0x4ff:	48 83 c5 40          	add    $0x40,%rbp
0x503:	c9                   	leaveq 
0x504:	c2 10 00             	retq   $0x10

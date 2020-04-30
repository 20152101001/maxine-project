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
0x20:	4c 89 1d 69 ff ff ff 	mov    %r11,-0x97(%rip)        # 0xffffff90
0x27:	48 8b 3d 6a ff ff ff 	mov    -0x96(%rip),%rdi        # 0xffffff98
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
0x6d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	48 83 ec 10          	sub    $0x10,%rsp
0x7d:	4c 8b 1d 1c ff ff ff 	mov    -0xe4(%rip),%r11        # 0xffffffa0
0x84:	4c 89 1c 24          	mov    %r11,(%rsp)
0x88:	4c 8b 1d 19 ff ff ff 	mov    -0xe7(%rip),%r11        # 0xffffffa8
0x8f:	48 83 ec 10          	sub    $0x10,%rsp
0x93:	4c 89 1c 24          	mov    %r11,(%rsp)
0x97:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x9d:	48 83 ec 10          	sub    $0x10,%rsp
0xa1:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa5:	40 8b 34 24          	rex mov (%rsp),%esi
0xa9:	48 8b 3d 00 ff ff ff 	mov    -0x100(%rip),%rdi        # 0xffffffb0
0xb0:	83 fe 00             	cmp    $0x0,%esi
0xb3:	0f 8c fb 00 00 00    	jl     0x1b4
0xb9:	85 07                	test   %eax,(%rdi)
0xbb:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0xc2:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0xc6:	48 8b 3d eb fe ff ff 	mov    -0x115(%rip),%rdi        # 0xffffffb8
0xcd:	48 8b 43 30          	mov    0x30(%rbx),%rax
0xd1:	48 8b 50 70          	mov    0x70(%rax),%rdx
0xd5:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0xdc:	48 8b 50 48          	mov    0x48(%rax),%rdx
0xe0:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xe4:	48 63 c0             	movslq %eax,%rax
0xe7:	48 63 d6             	movslq %esi,%rdx
0xea:	48 0f af c2          	imul   %rdx,%rax
0xee:	48 83 c0 18          	add    $0x18,%rax
0xf2:	48 83 c0 07          	add    $0x7,%rax
0xf6:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xfd:	00 00 00 
0x100:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x107:	ff ff ff 
0x10a:	49 33 d3             	xor    %r11,%rdx
0x10d:	48 23 c2             	and    %rdx,%rax
0x110:	49 8b d6             	mov    %r14,%rdx
0x113:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x117:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x11e:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x125:	49 8b d0             	mov    %r8,%rdx
0x128:	48 03 d0             	add    %rax,%rdx
0x12b:	4c 8b d2             	mov    %rdx,%r10
0x12e:	4d 3b d1             	cmp    %r9,%r10
0x131:	0f 86 1f 00 00 00    	jbe    0x156
0x137:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x13b:	48 8b f0             	mov    %rax,%rsi
0x13e:	48 8b d1             	mov    %rcx,%rdx
0x141:	49 8b c8             	mov    %r8,%rcx
0x144:	4d 8b c1             	mov    %r9,%r8
0x147:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x14b:	e8 00 00 00 00       	callq  0x150
0x150:	90                   	nop
0x151:	e9 12 00 00 00       	jmpq   0x168
0x156:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x15a:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x15e:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x165:	49 8b c0             	mov    %r8,%rax
0x168:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x16c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x170:	e8 00 00 00 00       	callq  0x175
0x175:	90                   	nop
0x176:	90                   	nop
0x177:	e8 00 00 00 00       	callq  0x17c
0x17c:	90                   	nop
0x17d:	83 f8 00             	cmp    $0x0,%eax
0x180:	0f 84 40 00 00 00    	je     0x1c6
0x186:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x18a:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x18e:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x192:	85 07                	test   %eax,(%rdi)
0x194:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x198:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x19c:	83 e0 ff             	and    $0xffffffff,%eax
0x19f:	48 8b f8             	mov    %rax,%rdi
0x1a2:	48 8b f2             	mov    %rdx,%rsi
0x1a5:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1a9:	e8 00 00 00 00       	callq  0x1ae
0x1ae:	90                   	nop
0x1af:	e9 12 00 00 00       	jmpq   0x1c6
0x1b4:	48 8b fe             	mov    %rsi,%rdi
0x1b7:	e8 00 00 00 00       	callq  0x1bc
0x1bc:	90                   	nop
0x1bd:	48 8b f8             	mov    %rax,%rdi
0x1c0:	e8 00 00 00 00       	callq  0x1c5
0x1c5:	90                   	nop
0x1c6:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1ca:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1ce:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x1d2:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x1d6:	48 89 18             	mov    %rbx,(%rax)
0x1d9:	48 89 04 24          	mov    %rax,(%rsp)
0x1dd:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x1e2:	41 85 03             	test   %eax,(%r11)
0x1e5:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1ea:	e8 00 00 00 00       	callq  0x1ef
0x1ef:	90                   	nop
0x1f0:	48 83 ec 10          	sub    $0x10,%rsp
0x1f4:	48 89 04 24          	mov    %rax,(%rsp)
0x1f8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1fd:	41 85 03             	test   %eax,(%r11)
0x200:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x205:	90                   	nop
0x206:	90                   	nop
0x207:	90                   	nop
0x208:	e8 00 00 00 00       	callq  0x20d
0x20d:	90                   	nop
0x20e:	48 83 ec 10          	sub    $0x10,%rsp
0x212:	48 89 04 24          	mov    %rax,(%rsp)
0x216:	4c 8b 1c 24          	mov    (%rsp),%r11
0x21a:	48 83 c4 10          	add    $0x10,%rsp
0x21e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x222:	48 8b 3d 97 fd ff ff 	mov    -0x269(%rip),%rdi        # 0xffffffc0
0x229:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x22d:	48 8b 35 94 fd ff ff 	mov    -0x26c(%rip),%rsi        # 0xffffffc8
0x234:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x238:	49 8b ce             	mov    %r14,%rcx
0x23b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x23f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x246:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x24d:	48 8b d9             	mov    %rcx,%rbx
0x250:	48 03 da             	add    %rdx,%rbx
0x253:	4c 8b cb             	mov    %rbx,%r9
0x256:	4d 3b c8             	cmp    %r8,%r9
0x259:	0f 86 14 00 00 00    	jbe    0x273
0x25f:	48 8b fe             	mov    %rsi,%rdi
0x262:	48 8b f2             	mov    %rdx,%rsi
0x265:	48 8b d0             	mov    %rax,%rdx
0x268:	e8 00 00 00 00       	callq  0x26d
0x26d:	90                   	nop
0x26e:	e9 0a 00 00 00       	jmpq   0x27d
0x273:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x27a:	48 8b c1             	mov    %rcx,%rax
0x27d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x281:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x285:	90                   	nop
0x286:	90                   	nop
0x287:	90                   	nop
0x288:	e8 00 00 00 00       	callq  0x28d
0x28d:	90                   	nop
0x28e:	90                   	nop
0x28f:	90                   	nop
0x290:	e8 00 00 00 00       	callq  0x295
0x295:	90                   	nop
0x296:	83 f8 00             	cmp    $0x0,%eax
0x299:	0f 84 27 00 00 00    	je     0x2c6
0x29f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2a3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2a7:	85 06                	test   %eax,(%rsi)
0x2a9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2ad:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2b1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2b5:	83 e2 ff             	and    $0xffffffff,%edx
0x2b8:	48 8b fa             	mov    %rdx,%rdi
0x2bb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2bf:	90                   	nop
0x2c0:	e8 00 00 00 00       	callq  0x2c5
0x2c5:	90                   	nop
0x2c6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2ca:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2ce:	48 89 38             	mov    %rdi,(%rax)
0x2d1:	48 83 ec 10          	sub    $0x10,%rsp
0x2d5:	48 89 04 24          	mov    %rax,(%rsp)
0x2d9:	48 83 ec 10          	sub    $0x10,%rsp
0x2dd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2e2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2e6:	4d 33 db             	xor    %r11,%r11
0x2e9:	48 83 ec 10          	sub    $0x10,%rsp
0x2ed:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2f1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2f6:	41 85 03             	test   %eax,(%r11)
0x2f9:	e8 00 00 00 00       	callq  0x2fe
0x2fe:	90                   	nop
0x2ff:	4c 8b 1c 24          	mov    (%rsp),%r11
0x303:	48 83 c4 10          	add    $0x10,%rsp
0x307:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x30b:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x30f:	48 83 ec 10          	sub    $0x10,%rsp
0x313:	4c 89 1c 24          	mov    %r11,(%rsp)
0x317:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x31b:	48 83 ec 10          	sub    $0x10,%rsp
0x31f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x323:	48 8b 3d a6 fc ff ff 	mov    -0x35a(%rip),%rdi        # 0xffffffd0
0x32a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x32f:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x333:	4d 33 db             	xor    %r11,%r11
0x336:	49 3b c3             	cmp    %r11,%rax
0x339:	0f 85 1d 00 00 00    	jne    0x35c
0x33f:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x343:	48 8b c7             	mov    %rdi,%rax
0x346:	48 8b f8             	mov    %rax,%rdi
0x349:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x34d:	90                   	nop
0x34e:	e8 00 00 00 00       	callq  0x353
0x353:	90                   	nop
0x354:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x358:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x35c:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x360:	48 8b 0e             	mov    (%rsi),%rcx
0x363:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x367:	48 63 d2             	movslq %edx,%rdx
0x36a:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x36f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x373:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x378:	ff d0                	callq  *%rax
0x37a:	90                   	nop
0x37b:	48 8b 3d 56 fc ff ff 	mov    -0x3aa(%rip),%rdi        # 0xffffffd8
0x382:	be 05 00 00 00       	mov    $0x5,%esi
0x387:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x38b:	48 8b c8             	mov    %rax,%rcx
0x38e:	48 63 f6             	movslq %esi,%rsi
0x391:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x396:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x39c:	0f 8d 07 00 00 00    	jge    0x3a9
0x3a2:	83 c1 01             	add    $0x1,%ecx
0x3a5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3a9:	e9 78 00 00 00       	jmpq   0x426
0x3ae:	49 8b fe             	mov    %r14,%rdi
0x3b1:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x3b5:	85 07                	test   %eax,(%rdi)
0x3b7:	e8 00 00 00 00       	callq  0x3bc
0x3bc:	90                   	nop
0x3bd:	48 83 ec 10          	sub    $0x10,%rsp
0x3c1:	48 89 04 24          	mov    %rax,(%rsp)
0x3c5:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3c9:	48 83 c4 10          	add    $0x10,%rsp
0x3cd:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x3d1:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x3d5:	48 83 ec 10          	sub    $0x10,%rsp
0x3d9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3dd:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x3e2:	48 8b 34 24          	mov    (%rsp),%rsi
0x3e6:	48 8b 15 f3 fb ff ff 	mov    -0x40d(%rip),%rdx        # 0xffffffe0
0x3ed:	b9 07 00 00 00       	mov    $0x7,%ecx
0x3f2:	48 8b c6             	mov    %rsi,%rax
0x3f5:	48 8b 00             	mov    (%rax),%rax
0x3f8:	48 63 ff             	movslq %edi,%rdi
0x3fb:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x400:	48 8b fa             	mov    %rdx,%rdi
0x403:	48 8b d1             	mov    %rcx,%rdx
0x406:	b9 03 00 00 00       	mov    $0x3,%ecx
0x40b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x40f:	90                   	nop
0x410:	90                   	nop
0x411:	e8 00 00 00 00       	callq  0x416
0x416:	90                   	nop
0x417:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x41b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x41f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x423:	ff d0                	callq  *%rax
0x425:	90                   	nop
0x426:	48 83 c5 40          	add    $0x40,%rbp
0x42a:	c9                   	leaveq 
0x42b:	c2 10 00             	retq   $0x10

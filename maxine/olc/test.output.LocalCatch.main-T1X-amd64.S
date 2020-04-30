0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 70 00 00          	enterq $0x70,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 78 e0 ff 	mov    %rax,-0x1f88(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 21 ff ff ff 	mov    %r11,-0xdf(%rip)        # 0xffffff48
0x27:	48 8b 3d 22 ff ff ff 	mov    -0xde(%rip),%rdi        # 0xffffff50
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
0x53:	48 8b 3d fe fe ff ff 	mov    -0x102(%rip),%rdi        # 0xffffff58
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d eb fe ff ff 	mov    -0x115(%rip),%r11        # 0xffffff60
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 da fe ff ff 	mov    -0x126(%rip),%rdx        # 0xffffff68
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
0xc8:	48 8b 3d a1 fe ff ff 	mov    -0x15f(%rip),%rdi        # 0xffffff70
0xcf:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xd3:	48 8b 35 9e fe ff ff 	mov    -0x162(%rip),%rsi        # 0xffffff78
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
0x18c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x190:	41 85 03             	test   %eax,(%r11)
0x193:	e8 00 00 00 00       	callq  0x198
0x198:	90                   	nop
0x199:	4c 8b 1c 24          	mov    (%rsp),%r11
0x19d:	48 83 c4 10          	add    $0x10,%rsp
0x1a1:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x1a5:	4c 8b 1d d4 fd ff ff 	mov    -0x22c(%rip),%r11        # 0xffffff80
0x1ac:	48 83 ec 10          	sub    $0x10,%rsp
0x1b0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1b4:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b8:	48 83 c4 10          	add    $0x10,%rsp
0x1bc:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x1c0:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x1c6:	48 83 ec 10          	sub    $0x10,%rsp
0x1ca:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1ce:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1d2:	48 83 c4 10          	add    $0x10,%rsp
0x1d6:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x1da:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x1de:	48 83 ec 10          	sub    $0x10,%rsp
0x1e2:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1e6:	41 bb 10 27 00 00    	mov    $0x2710,%r11d
0x1ec:	48 83 ec 10          	sub    $0x10,%rsp
0x1f0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1f4:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x1f9:	8b 04 24             	mov    (%rsp),%eax
0x1fc:	48 83 c4 20          	add    $0x20,%rsp
0x200:	44 3b d8             	cmp    %eax,%r11d
0x203:	7c 33                	jl     0x238
0x205:	48 8b 3d 7c fd ff ff 	mov    -0x284(%rip),%rdi        # 0xffffff88
0x20c:	be 0a 00 00 00       	mov    $0xa,%esi
0x211:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x215:	48 8b c8             	mov    %rax,%rcx
0x218:	48 63 f6             	movslq %esi,%rsi
0x21b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x220:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x226:	0f 8d 07 00 00 00    	jge    0x233
0x22c:	83 c1 01             	add    $0x1,%ecx
0x22f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x233:	e9 16 02 00 00       	jmpq   0x44e
0x238:	48 8b 3d 51 fd ff ff 	mov    -0x2af(%rip),%rdi        # 0xffffff90
0x23f:	be 0b 00 00 00       	mov    $0xb,%esi
0x244:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x248:	48 8b c8             	mov    %rax,%rcx
0x24b:	48 63 f6             	movslq %esi,%rsi
0x24e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x253:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x259:	0f 8d 07 00 00 00    	jge    0x266
0x25f:	83 c1 01             	add    $0x1,%ecx
0x262:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x266:	48 8b 3d 2b fd ff ff 	mov    -0x2d5(%rip),%rdi        # 0xffffff98
0x26d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x271:	48 8b 35 28 fd ff ff 	mov    -0x2d8(%rip),%rsi        # 0xffffffa0
0x278:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x27c:	49 8b ce             	mov    %r14,%rcx
0x27f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x283:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x28a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x291:	48 8b d9             	mov    %rcx,%rbx
0x294:	48 03 da             	add    %rdx,%rbx
0x297:	4c 8b cb             	mov    %rbx,%r9
0x29a:	4d 3b c8             	cmp    %r8,%r9
0x29d:	0f 86 14 00 00 00    	jbe    0x2b7
0x2a3:	48 8b fe             	mov    %rsi,%rdi
0x2a6:	48 8b f2             	mov    %rdx,%rsi
0x2a9:	48 8b d0             	mov    %rax,%rdx
0x2ac:	e8 00 00 00 00       	callq  0x2b1
0x2b1:	90                   	nop
0x2b2:	e9 0a 00 00 00       	jmpq   0x2c1
0x2b7:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x2be:	48 8b c1             	mov    %rcx,%rax
0x2c1:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2c5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c9:	90                   	nop
0x2ca:	90                   	nop
0x2cb:	90                   	nop
0x2cc:	e8 00 00 00 00       	callq  0x2d1
0x2d1:	90                   	nop
0x2d2:	90                   	nop
0x2d3:	90                   	nop
0x2d4:	e8 00 00 00 00       	callq  0x2d9
0x2d9:	90                   	nop
0x2da:	83 f8 00             	cmp    $0x0,%eax
0x2dd:	0f 84 27 00 00 00    	je     0x30a
0x2e3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2e7:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2eb:	85 06                	test   %eax,(%rsi)
0x2ed:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2f1:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2f5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2f9:	83 e2 ff             	and    $0xffffffff,%edx
0x2fc:	48 8b fa             	mov    %rdx,%rdi
0x2ff:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x303:	90                   	nop
0x304:	e8 00 00 00 00       	callq  0x309
0x309:	90                   	nop
0x30a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x30e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x312:	48 89 38             	mov    %rdi,(%rax)
0x315:	48 83 ec 10          	sub    $0x10,%rsp
0x319:	48 89 04 24          	mov    %rax,(%rsp)
0x31d:	48 83 ec 10          	sub    $0x10,%rsp
0x321:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x326:	4c 89 1c 24          	mov    %r11,(%rsp)
0x32a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x32e:	41 85 03             	test   %eax,(%r11)
0x331:	e8 00 00 00 00       	callq  0x336
0x336:	90                   	nop
0x337:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x33b:	48 83 ec 10          	sub    $0x10,%rsp
0x33f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x343:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x348:	41 85 03             	test   %eax,(%r11)
0x34b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x350:	e8 00 00 00 00       	callq  0x355
0x355:	90                   	nop
0x356:	48 83 ec 10          	sub    $0x10,%rsp
0x35a:	48 89 04 24          	mov    %rax,(%rsp)
0x35e:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x362:	48 83 ec 10          	sub    $0x10,%rsp
0x366:	4c 89 1c 24          	mov    %r11,(%rsp)
0x36a:	bf 16 00 00 00       	mov    $0x16,%edi
0x36f:	48 8b 34 24          	mov    (%rsp),%rsi
0x373:	48 8b 15 2e fc ff ff 	mov    -0x3d2(%rip),%rdx        # 0xffffffa8
0x37a:	b9 0f 00 00 00       	mov    $0xf,%ecx
0x37f:	48 8b c6             	mov    %rsi,%rax
0x382:	48 8b 00             	mov    (%rax),%rax
0x385:	48 63 ff             	movslq %edi,%rdi
0x388:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x38d:	48 8b fa             	mov    %rdx,%rdi
0x390:	48 8b d1             	mov    %rcx,%rdx
0x393:	b9 03 00 00 00       	mov    $0x3,%ecx
0x398:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x39c:	90                   	nop
0x39d:	90                   	nop
0x39e:	e8 00 00 00 00       	callq  0x3a3
0x3a3:	90                   	nop
0x3a4:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3a8:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3ac:	48 8b 3c 24          	mov    (%rsp),%rdi
0x3b0:	ff d0                	callq  *%rax
0x3b2:	90                   	nop
0x3b3:	48 83 ec 10          	sub    $0x10,%rsp
0x3b7:	48 89 04 24          	mov    %rax,(%rsp)
0x3bb:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3c0:	41 85 03             	test   %eax,(%r11)
0x3c3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3c8:	e8 00 00 00 00       	callq  0x3cd
0x3cd:	90                   	nop
0x3ce:	48 83 ec 10          	sub    $0x10,%rsp
0x3d2:	48 89 04 24          	mov    %rax,(%rsp)
0x3d6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3da:	41 85 03             	test   %eax,(%r11)
0x3dd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x3e1:	e8 00 00 00 00       	callq  0x3e6
0x3e6:	90                   	nop
0x3e7:	48 83 ec 10          	sub    $0x10,%rsp
0x3eb:	48 89 04 24          	mov    %rax,(%rsp)
0x3ef:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3f3:	48 83 c4 10          	add    $0x10,%rsp
0x3f7:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x3fb:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x3ff:	41 83 c3 01          	add    $0x1,%r11d
0x403:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x407:	48 8b 3d a2 fb ff ff 	mov    -0x45e(%rip),%rdi        # 0xffffffb0
0x40e:	be 19 00 00 00       	mov    $0x19,%esi
0x413:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x417:	48 8b c8             	mov    %rax,%rcx
0x41a:	48 63 f6             	movslq %esi,%rsi
0x41d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x422:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x428:	0f 8d 07 00 00 00    	jge    0x435
0x42e:	83 c1 01             	add    $0x1,%ecx
0x431:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x435:	48 8b 3d 7c fb ff ff 	mov    -0x484(%rip),%rdi        # 0xffffffb8
0x43c:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x440:	83 e8 01             	sub    $0x1,%eax
0x443:	89 47 30             	mov    %eax,0x30(%rdi)
0x446:	4d 8b 36             	mov    (%r14),%r14
0x449:	e9 8c fd ff ff       	jmpq   0x1da
0x44e:	48 8b 3d 6b fb ff ff 	mov    -0x495(%rip),%rdi        # 0xffffffc0
0x455:	be 18 00 00 00       	mov    $0x18,%esi
0x45a:	48 63 f6             	movslq %esi,%rsi
0x45d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x461:	48 83 ec 10          	sub    $0x10,%rsp
0x465:	48 89 04 24          	mov    %rax,(%rsp)
0x469:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x46d:	48 83 ec 10          	sub    $0x10,%rsp
0x471:	4c 89 1c 24          	mov    %r11,(%rsp)
0x475:	4c 8b 1c 24          	mov    (%rsp),%r11
0x479:	41 85 03             	test   %eax,(%r11)
0x47c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x480:	e8 00 00 00 00       	callq  0x485
0x485:	90                   	nop
0x486:	48 83 ec 10          	sub    $0x10,%rsp
0x48a:	48 89 04 24          	mov    %rax,(%rsp)
0x48e:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x493:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x498:	48 8b 15 29 fb ff ff 	mov    -0x4d7(%rip),%rdx        # 0xffffffc8
0x49f:	b9 1c 00 00 00       	mov    $0x1c,%ecx
0x4a4:	48 8b c6             	mov    %rsi,%rax
0x4a7:	48 8b 00             	mov    (%rax),%rax
0x4aa:	48 63 ff             	movslq %edi,%rdi
0x4ad:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4b2:	48 8b fa             	mov    %rdx,%rdi
0x4b5:	48 8b d1             	mov    %rcx,%rdx
0x4b8:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4bd:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4c1:	90                   	nop
0x4c2:	90                   	nop
0x4c3:	e8 00 00 00 00       	callq  0x4c8
0x4c8:	90                   	nop
0x4c9:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4cd:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4d1:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4d6:	ff d0                	callq  *%rax
0x4d8:	90                   	nop
0x4d9:	48 8b 3d f0 fa ff ff 	mov    -0x510(%rip),%rdi        # 0xffffffd0
0x4e0:	be 18 00 00 00       	mov    $0x18,%esi
0x4e5:	48 63 f6             	movslq %esi,%rsi
0x4e8:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4ec:	48 83 ec 10          	sub    $0x10,%rsp
0x4f0:	48 89 04 24          	mov    %rax,(%rsp)
0x4f4:	4c 8b 1d dd fa ff ff 	mov    -0x523(%rip),%r11        # 0xffffffd8
0x4fb:	48 83 ec 10          	sub    $0x10,%rsp
0x4ff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x503:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x508:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x50d:	48 8b 15 cc fa ff ff 	mov    -0x534(%rip),%rdx        # 0xffffffe0
0x514:	b9 25 00 00 00       	mov    $0x25,%ecx
0x519:	48 8b c6             	mov    %rsi,%rax
0x51c:	48 8b 00             	mov    (%rax),%rax
0x51f:	48 63 ff             	movslq %edi,%rdi
0x522:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x527:	48 8b fa             	mov    %rdx,%rdi
0x52a:	48 8b d1             	mov    %rcx,%rdx
0x52d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x532:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x536:	90                   	nop
0x537:	90                   	nop
0x538:	e8 00 00 00 00       	callq  0x53d
0x53d:	90                   	nop
0x53e:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x542:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x546:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x54b:	ff d0                	callq  *%rax
0x54d:	90                   	nop
0x54e:	48 83 c5 40          	add    $0x40,%rbp
0x552:	c9                   	leaveq 
0x553:	c2 10 00             	retq   $0x10

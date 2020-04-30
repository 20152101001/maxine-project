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
0x20:	4c 89 1d f9 fe ff ff 	mov    %r11,-0x107(%rip)        # 0xffffff20
0x27:	48 8b 3d fa fe ff ff 	mov    -0x106(%rip),%rdi        # 0xffffff28
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
0x53:	48 8b 3d d6 fe ff ff 	mov    -0x12a(%rip),%rdi        # 0xffffff30
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d c3 fe ff ff 	mov    -0x13d(%rip),%r11        # 0xffffff38
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 b2 fe ff ff 	mov    -0x14e(%rip),%rdx        # 0xffffff40
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
0xc8:	e8 00 00 00 00       	callq  0xcd
0xcd:	90                   	nop
0xce:	48 83 ec 10          	sub    $0x10,%rsp
0xd2:	48 89 04 24          	mov    %rax,(%rsp)
0xd6:	bf 20 00 00 00       	mov    $0x20,%edi
0xdb:	48 8b 34 24          	mov    (%rsp),%rsi
0xdf:	48 8b 15 62 fe ff ff 	mov    -0x19e(%rip),%rdx        # 0xffffff48
0xe6:	b9 0b 00 00 00       	mov    $0xb,%ecx
0xeb:	48 8b c6             	mov    %rsi,%rax
0xee:	48 8b 00             	mov    (%rax),%rax
0xf1:	48 63 ff             	movslq %edi,%rdi
0xf4:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xf9:	48 8b fa             	mov    %rdx,%rdi
0xfc:	48 8b d1             	mov    %rcx,%rdx
0xff:	b9 03 00 00 00       	mov    $0x3,%ecx
0x104:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x108:	90                   	nop
0x109:	90                   	nop
0x10a:	e8 00 00 00 00       	callq  0x10f
0x10f:	90                   	nop
0x110:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x114:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x118:	48 8b 3c 24          	mov    (%rsp),%rdi
0x11c:	ff d0                	callq  *%rax
0x11e:	90                   	nop
0x11f:	48 83 ec 10          	sub    $0x10,%rsp
0x123:	48 89 04 24          	mov    %rax,(%rsp)
0x127:	44 8b 1c 24          	mov    (%rsp),%r11d
0x12b:	48 83 c4 10          	add    $0x10,%rsp
0x12f:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x133:	48 8b 3d 16 fe ff ff 	mov    -0x1ea(%rip),%rdi        # 0xffffff50
0x13a:	be 10 00 00 00       	mov    $0x10,%esi
0x13f:	48 63 f6             	movslq %esi,%rsi
0x142:	0f be 04 37          	movsbl (%rdi,%rsi,1),%eax
0x146:	48 83 ec 10          	sub    $0x10,%rsp
0x14a:	89 04 24             	mov    %eax,(%rsp)
0x14d:	44 8b 1c 24          	mov    (%rsp),%r11d
0x151:	b8 00 00 00 00       	mov    $0x0,%eax
0x156:	48 83 c4 10          	add    $0x10,%rsp
0x15a:	44 3b d8             	cmp    %eax,%r11d
0x15d:	74 33                	je     0x192
0x15f:	48 8b 3d f2 fd ff ff 	mov    -0x20e(%rip),%rdi        # 0xffffff58
0x166:	be 13 00 00 00       	mov    $0x13,%esi
0x16b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x16f:	48 8b c8             	mov    %rax,%rcx
0x172:	48 63 f6             	movslq %esi,%rsi
0x175:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x17a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x180:	0f 8d 07 00 00 00    	jge    0x18d
0x186:	83 c1 01             	add    $0x1,%ecx
0x189:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x18d:	e9 55 02 00 00       	jmpq   0x3e7
0x192:	48 8b 3d c7 fd ff ff 	mov    -0x239(%rip),%rdi        # 0xffffff60
0x199:	be 14 00 00 00       	mov    $0x14,%esi
0x19e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1a2:	48 8b c8             	mov    %rax,%rcx
0x1a5:	48 63 f6             	movslq %esi,%rsi
0x1a8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1ad:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1b3:	0f 8d 07 00 00 00    	jge    0x1c0
0x1b9:	83 c1 01             	add    $0x1,%ecx
0x1bc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1c0:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x1c4:	48 83 ec 10          	sub    $0x10,%rsp
0x1c8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1cc:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1d0:	b8 00 00 00 00       	mov    $0x0,%eax
0x1d5:	48 83 c4 10          	add    $0x10,%rsp
0x1d9:	44 3b d8             	cmp    %eax,%r11d
0x1dc:	7e 33                	jle    0x211
0x1de:	48 8b 3d 83 fd ff ff 	mov    -0x27d(%rip),%rdi        # 0xffffff68
0x1e5:	be 15 00 00 00       	mov    $0x15,%esi
0x1ea:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1ee:	48 8b c8             	mov    %rax,%rcx
0x1f1:	48 63 f6             	movslq %esi,%rsi
0x1f4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1f9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1ff:	0f 8d 07 00 00 00    	jge    0x20c
0x205:	83 c1 01             	add    $0x1,%ecx
0x208:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x20c:	e9 d6 01 00 00       	jmpq   0x3e7
0x211:	48 8b 3d 58 fd ff ff 	mov    -0x2a8(%rip),%rdi        # 0xffffff70
0x218:	be 16 00 00 00       	mov    $0x16,%esi
0x21d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x221:	48 8b c8             	mov    %rax,%rcx
0x224:	48 63 f6             	movslq %esi,%rsi
0x227:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x22c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x232:	0f 8d 07 00 00 00    	jge    0x23f
0x238:	83 c1 01             	add    $0x1,%ecx
0x23b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x23f:	48 8b 3d 32 fd ff ff 	mov    -0x2ce(%rip),%rdi        # 0xffffff78
0x246:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x24a:	48 8b 35 2f fd ff ff 	mov    -0x2d1(%rip),%rsi        # 0xffffff80
0x251:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x255:	49 8b ce             	mov    %r14,%rcx
0x258:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x25c:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x263:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x26a:	48 8b d9             	mov    %rcx,%rbx
0x26d:	48 03 da             	add    %rdx,%rbx
0x270:	4c 8b cb             	mov    %rbx,%r9
0x273:	4d 3b c8             	cmp    %r8,%r9
0x276:	0f 86 14 00 00 00    	jbe    0x290
0x27c:	48 8b fe             	mov    %rsi,%rdi
0x27f:	48 8b f2             	mov    %rdx,%rsi
0x282:	48 8b d0             	mov    %rax,%rdx
0x285:	e8 00 00 00 00       	callq  0x28a
0x28a:	90                   	nop
0x28b:	e9 0a 00 00 00       	jmpq   0x29a
0x290:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x297:	48 8b c1             	mov    %rcx,%rax
0x29a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x29e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2a2:	90                   	nop
0x2a3:	90                   	nop
0x2a4:	90                   	nop
0x2a5:	e8 00 00 00 00       	callq  0x2aa
0x2aa:	90                   	nop
0x2ab:	90                   	nop
0x2ac:	90                   	nop
0x2ad:	e8 00 00 00 00       	callq  0x2b2
0x2b2:	90                   	nop
0x2b3:	83 f8 00             	cmp    $0x0,%eax
0x2b6:	0f 84 27 00 00 00    	je     0x2e3
0x2bc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2c0:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2c4:	85 06                	test   %eax,(%rsi)
0x2c6:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2ca:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2ce:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2d2:	83 e2 ff             	and    $0xffffffff,%edx
0x2d5:	48 8b fa             	mov    %rdx,%rdi
0x2d8:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2dc:	90                   	nop
0x2dd:	e8 00 00 00 00       	callq  0x2e2
0x2e2:	90                   	nop
0x2e3:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2e7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2eb:	48 89 38             	mov    %rdi,(%rax)
0x2ee:	48 83 ec 10          	sub    $0x10,%rsp
0x2f2:	48 89 04 24          	mov    %rax,(%rsp)
0x2f6:	48 83 ec 10          	sub    $0x10,%rsp
0x2fa:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2ff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x303:	4c 8b 1d 7e fc ff ff 	mov    -0x382(%rip),%r11        # 0xffffff88
0x30a:	48 83 ec 10          	sub    $0x10,%rsp
0x30e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x312:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x317:	41 85 03             	test   %eax,(%r11)
0x31a:	e8 00 00 00 00       	callq  0x31f
0x31f:	90                   	nop
0x320:	48 8b 3c 24          	mov    (%rsp),%rdi
0x324:	4d 33 db             	xor    %r11,%r11
0x327:	49 3b fb             	cmp    %r11,%rdi
0x32a:	0f 84 62 00 00 00    	je     0x392
0x330:	48 8b 0d 59 fc ff ff 	mov    -0x3a7(%rip),%rcx        # 0xffffff90
0x337:	4d 33 db             	xor    %r11,%r11
0x33a:	49 3b fb             	cmp    %r11,%rdi
0x33d:	0f 84 41 00 00 00    	je     0x384
0x343:	48 8b 1f             	mov    (%rdi),%rbx
0x346:	48 3b d9             	cmp    %rcx,%rbx
0x349:	0f 84 2b 00 00 00    	je     0x37a
0x34f:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x353:	b8 06 00 00 00       	mov    $0x6,%eax
0x358:	99                   	cltd   
0x359:	41 f7 f8             	idiv   %r8d
0x35c:	4c 8b ca             	mov    %rdx,%r9
0x35f:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x363:	45 03 c8             	add    %r8d,%r9d
0x366:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x36b:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x370:	41 83 f9 06          	cmp    $0x6,%r9d
0x374:	0f 85 0a 00 00 00    	jne    0x384
0x37a:	be 01 00 00 00       	mov    $0x1,%esi
0x37f:	e9 05 00 00 00       	jmpq   0x389
0x384:	be 00 00 00 00       	mov    $0x0,%esi
0x389:	83 fe 00             	cmp    $0x0,%esi
0x38c:	0f 84 44 00 00 00    	je     0x3d6
0x392:	48 8b f4             	mov    %rsp,%rsi
0x395:	48 8b d5             	mov    %rbp,%rdx
0x398:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x398
0x39f:	48 8b 05 f2 fb ff ff 	mov    -0x40e(%rip),%rax        # 0xffffff98
0x3a6:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x3aa:	48 8b c1             	mov    %rcx,%rax
0x3ad:	48 2b c3             	sub    %rbx,%rax
0x3b0:	b9 01 00 00 00       	mov    $0x1,%ecx
0x3b5:	48 d3 e0             	shl    %cl,%rax
0x3b8:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x3bf:	00 00 00 
0x3c2:	49 0b c3             	or     %r11,%rax
0x3c5:	48 8b c8             	mov    %rax,%rcx
0x3c8:	90                   	nop
0x3c9:	90                   	nop
0x3ca:	90                   	nop
0x3cb:	e8 00 00 00 00       	callq  0x3d0
0x3d0:	90                   	nop
0x3d1:	e9 0d 00 00 00       	jmpq   0x3e3
0x3d6:	48 8b 3d c3 fb ff ff 	mov    -0x43d(%rip),%rdi        # 0xffffffa0
0x3dd:	e8 00 00 00 00       	callq  0x3e2
0x3e2:	90                   	nop
0x3e3:	48 83 c4 10          	add    $0x10,%rsp
0x3e7:	48 8b 3d ba fb ff ff 	mov    -0x446(%rip),%rdi        # 0xffffffa8
0x3ee:	be 18 00 00 00       	mov    $0x18,%esi
0x3f3:	48 63 f6             	movslq %esi,%rsi
0x3f6:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3fa:	48 83 ec 10          	sub    $0x10,%rsp
0x3fe:	48 89 04 24          	mov    %rax,(%rsp)
0x402:	48 8b 3d a7 fb ff ff 	mov    -0x459(%rip),%rdi        # 0xffffffb0
0x409:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x40d:	48 8b 35 a4 fb ff ff 	mov    -0x45c(%rip),%rsi        # 0xffffffb8
0x414:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x418:	49 8b ce             	mov    %r14,%rcx
0x41b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x41f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x426:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x42d:	48 8b d9             	mov    %rcx,%rbx
0x430:	48 03 da             	add    %rdx,%rbx
0x433:	4c 8b cb             	mov    %rbx,%r9
0x436:	4d 3b c8             	cmp    %r8,%r9
0x439:	0f 86 14 00 00 00    	jbe    0x453
0x43f:	48 8b fe             	mov    %rsi,%rdi
0x442:	48 8b f2             	mov    %rdx,%rsi
0x445:	48 8b d0             	mov    %rax,%rdx
0x448:	e8 00 00 00 00       	callq  0x44d
0x44d:	90                   	nop
0x44e:	e9 0a 00 00 00       	jmpq   0x45d
0x453:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x45a:	48 8b c1             	mov    %rcx,%rax
0x45d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x461:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x465:	90                   	nop
0x466:	90                   	nop
0x467:	90                   	nop
0x468:	e8 00 00 00 00       	callq  0x46d
0x46d:	90                   	nop
0x46e:	90                   	nop
0x46f:	90                   	nop
0x470:	e8 00 00 00 00       	callq  0x475
0x475:	90                   	nop
0x476:	83 f8 00             	cmp    $0x0,%eax
0x479:	0f 84 27 00 00 00    	je     0x4a6
0x47f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x483:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x487:	85 06                	test   %eax,(%rsi)
0x489:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x48d:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x491:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x495:	83 e2 ff             	and    $0xffffffff,%edx
0x498:	48 8b fa             	mov    %rdx,%rdi
0x49b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x49f:	90                   	nop
0x4a0:	e8 00 00 00 00       	callq  0x4a5
0x4a5:	90                   	nop
0x4a6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x4aa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4ae:	48 89 38             	mov    %rdi,(%rax)
0x4b1:	48 83 ec 10          	sub    $0x10,%rsp
0x4b5:	48 89 04 24          	mov    %rax,(%rsp)
0x4b9:	48 83 ec 10          	sub    $0x10,%rsp
0x4bd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4c2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4c6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4ca:	41 85 03             	test   %eax,(%r11)
0x4cd:	90                   	nop
0x4ce:	90                   	nop
0x4cf:	90                   	nop
0x4d0:	e8 00 00 00 00       	callq  0x4d5
0x4d5:	90                   	nop
0x4d6:	4c 8b 1d e3 fa ff ff 	mov    -0x51d(%rip),%r11        # 0xffffffc0
0x4dd:	48 83 ec 10          	sub    $0x10,%rsp
0x4e1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4e5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4ea:	41 85 03             	test   %eax,(%r11)
0x4ed:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4f2:	e8 00 00 00 00       	callq  0x4f7
0x4f7:	90                   	nop
0x4f8:	48 83 ec 10          	sub    $0x10,%rsp
0x4fc:	48 89 04 24          	mov    %rax,(%rsp)
0x500:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x504:	48 83 ec 10          	sub    $0x10,%rsp
0x508:	44 89 1c 24          	mov    %r11d,(%rsp)
0x50c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x511:	41 85 03             	test   %eax,(%r11)
0x514:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x519:	e8 00 00 00 00       	callq  0x51e
0x51e:	90                   	nop
0x51f:	48 83 ec 10          	sub    $0x10,%rsp
0x523:	48 89 04 24          	mov    %rax,(%rsp)
0x527:	4c 8b 1c 24          	mov    (%rsp),%r11
0x52b:	41 85 03             	test   %eax,(%r11)
0x52e:	48 8b 3c 24          	mov    (%rsp),%rdi
0x532:	e8 00 00 00 00       	callq  0x537
0x537:	90                   	nop
0x538:	48 83 ec 10          	sub    $0x10,%rsp
0x53c:	48 89 04 24          	mov    %rax,(%rsp)
0x540:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x545:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x54a:	48 8b 15 77 fa ff ff 	mov    -0x589(%rip),%rdx        # 0xffffffc8
0x551:	b9 1d 00 00 00       	mov    $0x1d,%ecx
0x556:	48 8b c6             	mov    %rsi,%rax
0x559:	48 8b 00             	mov    (%rax),%rax
0x55c:	48 63 ff             	movslq %edi,%rdi
0x55f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x564:	48 8b fa             	mov    %rdx,%rdi
0x567:	48 8b d1             	mov    %rcx,%rdx
0x56a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x56f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x573:	90                   	nop
0x574:	90                   	nop
0x575:	e8 00 00 00 00       	callq  0x57a
0x57a:	90                   	nop
0x57b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x57f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x583:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x588:	ff d0                	callq  *%rax
0x58a:	90                   	nop
0x58b:	48 8b 3d 3e fa ff ff 	mov    -0x5c2(%rip),%rdi        # 0xffffffd0
0x592:	be 18 00 00 00       	mov    $0x18,%esi
0x597:	48 63 f6             	movslq %esi,%rsi
0x59a:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x59e:	48 83 ec 10          	sub    $0x10,%rsp
0x5a2:	48 89 04 24          	mov    %rax,(%rsp)
0x5a6:	4c 8b 1d 2b fa ff ff 	mov    -0x5d5(%rip),%r11        # 0xffffffd8
0x5ad:	48 83 ec 10          	sub    $0x10,%rsp
0x5b1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5b5:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5ba:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5bf:	48 8b 15 1a fa ff ff 	mov    -0x5e6(%rip),%rdx        # 0xffffffe0
0x5c6:	b9 26 00 00 00       	mov    $0x26,%ecx
0x5cb:	48 8b c6             	mov    %rsi,%rax
0x5ce:	48 8b 00             	mov    (%rax),%rax
0x5d1:	48 63 ff             	movslq %edi,%rdi
0x5d4:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5d9:	48 8b fa             	mov    %rdx,%rdi
0x5dc:	48 8b d1             	mov    %rcx,%rdx
0x5df:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5e4:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5e8:	90                   	nop
0x5e9:	90                   	nop
0x5ea:	e8 00 00 00 00       	callq  0x5ef
0x5ef:	90                   	nop
0x5f0:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5f4:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5f8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5fd:	ff d0                	callq  *%rax
0x5ff:	90                   	nop
0x600:	48 83 c5 40          	add    $0x40,%rbp
0x604:	c9                   	leaveq 
0x605:	c2 10 00             	retq   $0x10

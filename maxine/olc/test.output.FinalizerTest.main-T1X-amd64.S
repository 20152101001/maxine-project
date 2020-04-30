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
0x20:	4c 89 1d e9 fe ff ff 	mov    %r11,-0x117(%rip)        # 0xffffff10
0x27:	48 8b 3d ea fe ff ff 	mov    -0x116(%rip),%rdi        # 0xffffff18
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
0x53:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	e8 00 00 00 00       	callq  0x66
0x66:	90                   	nop
0x67:	48 83 ec 10          	sub    $0x10,%rsp
0x6b:	48 89 04 24          	mov    %rax,(%rsp)
0x6f:	44 8b 1c 24          	mov    (%rsp),%r11d
0x73:	48 83 c4 10          	add    $0x10,%rsp
0x77:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x7b:	41 bb 05 00 00 00    	mov    $0x5,%r11d
0x81:	48 83 ec 10          	sub    $0x10,%rsp
0x85:	44 89 1c 24          	mov    %r11d,(%rsp)
0x89:	44 8b 1c 24          	mov    (%rsp),%r11d
0x8d:	48 83 c4 10          	add    $0x10,%rsp
0x91:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x95:	48 8b 3d 84 fe ff ff 	mov    -0x17c(%rip),%rdi        # 0xffffff20
0x9c:	be 18 00 00 00       	mov    $0x18,%esi
0xa1:	48 63 f6             	movslq %esi,%rsi
0xa4:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xa8:	48 83 ec 10          	sub    $0x10,%rsp
0xac:	48 89 04 24          	mov    %rax,(%rsp)
0xb0:	bf 17 00 00 00       	mov    $0x17,%edi
0xb5:	48 8b 34 24          	mov    (%rsp),%rsi
0xb9:	48 8b 15 68 fe ff ff 	mov    -0x198(%rip),%rdx        # 0xffffff28
0xc0:	b9 02 00 00 00       	mov    $0x2,%ecx
0xc5:	48 8b c6             	mov    %rsi,%rax
0xc8:	48 8b 00             	mov    (%rax),%rax
0xcb:	48 63 ff             	movslq %edi,%rdi
0xce:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd3:	48 8b fa             	mov    %rdx,%rdi
0xd6:	48 8b d1             	mov    %rcx,%rdx
0xd9:	b9 03 00 00 00       	mov    $0x3,%ecx
0xde:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xe2:	90                   	nop
0xe3:	90                   	nop
0xe4:	e8 00 00 00 00       	callq  0xe9
0xe9:	90                   	nop
0xea:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xee:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xf2:	48 8b 3c 24          	mov    (%rsp),%rdi
0xf6:	ff d0                	callq  *%rax
0xf8:	90                   	nop
0xf9:	48 83 ec 10          	sub    $0x10,%rsp
0xfd:	48 89 04 24          	mov    %rax,(%rsp)
0x101:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x105:	48 83 ec 10          	sub    $0x10,%rsp
0x109:	44 89 1c 24          	mov    %r11d,(%rsp)
0x10d:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x112:	8b 04 24             	mov    (%rsp),%eax
0x115:	48 83 c4 20          	add    $0x20,%rsp
0x119:	44 3b d8             	cmp    %eax,%r11d
0x11c:	75 33                	jne    0x151
0x11e:	48 8b 3d 0b fe ff ff 	mov    -0x1f5(%rip),%rdi        # 0xffffff30
0x125:	be 0a 00 00 00       	mov    $0xa,%esi
0x12a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x12e:	48 8b c8             	mov    %rax,%rcx
0x131:	48 63 f6             	movslq %esi,%rsi
0x134:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x139:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x13f:	0f 8d 07 00 00 00    	jge    0x14c
0x145:	83 c1 01             	add    $0x1,%ecx
0x148:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x14c:	e9 1f 01 00 00       	jmpq   0x270
0x151:	48 8b 3d e0 fd ff ff 	mov    -0x220(%rip),%rdi        # 0xffffff38
0x158:	be 0b 00 00 00       	mov    $0xb,%esi
0x15d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x161:	48 8b c8             	mov    %rax,%rcx
0x164:	48 63 f6             	movslq %esi,%rsi
0x167:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x16c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x172:	0f 8d 07 00 00 00    	jge    0x17f
0x178:	83 c1 01             	add    $0x1,%ecx
0x17b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x17f:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x183:	48 83 ec 10          	sub    $0x10,%rsp
0x187:	44 89 1c 24          	mov    %r11d,(%rsp)
0x18b:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x18f:	41 83 eb 01          	sub    $0x1,%r11d
0x193:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x197:	44 8b 1c 24          	mov    (%rsp),%r11d
0x19b:	b8 00 00 00 00       	mov    $0x0,%eax
0x1a0:	48 83 c4 10          	add    $0x10,%rsp
0x1a4:	44 3b d8             	cmp    %eax,%r11d
0x1a7:	7f 33                	jg     0x1dc
0x1a9:	48 8b 3d 90 fd ff ff 	mov    -0x270(%rip),%rdi        # 0xffffff40
0x1b0:	be 0c 00 00 00       	mov    $0xc,%esi
0x1b5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1b9:	48 8b c8             	mov    %rax,%rcx
0x1bc:	48 63 f6             	movslq %esi,%rsi
0x1bf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1c4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1ca:	0f 8d 07 00 00 00    	jge    0x1d7
0x1d0:	83 c1 01             	add    $0x1,%ecx
0x1d3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1d7:	e9 94 00 00 00       	jmpq   0x270
0x1dc:	48 8b 3d 65 fd ff ff 	mov    -0x29b(%rip),%rdi        # 0xffffff48
0x1e3:	be 0d 00 00 00       	mov    $0xd,%esi
0x1e8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1ec:	48 8b c8             	mov    %rax,%rcx
0x1ef:	48 63 f6             	movslq %esi,%rsi
0x1f2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1f7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1fd:	0f 8d 07 00 00 00    	jge    0x20a
0x203:	83 c1 01             	add    $0x1,%ecx
0x206:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x20a:	e8 00 00 00 00       	callq  0x20f
0x20f:	90                   	nop
0x210:	49 bb e8 03 00 00 00 	movabs $0x3e8,%r11
0x217:	00 00 00 
0x21a:	48 83 ec 20          	sub    $0x20,%rsp
0x21e:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x223:	e8 00 00 00 00       	callq  0x228
0x228:	90                   	nop
0x229:	48 8b 3d 20 fd ff ff 	mov    -0x2e0(%rip),%rdi        # 0xffffff50
0x230:	be 10 00 00 00       	mov    $0x10,%esi
0x235:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x239:	48 8b c8             	mov    %rax,%rcx
0x23c:	48 63 f6             	movslq %esi,%rsi
0x23f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x244:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x24a:	0f 8d 07 00 00 00    	jge    0x257
0x250:	83 c1 01             	add    $0x1,%ecx
0x253:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x257:	48 8b 3d fa fc ff ff 	mov    -0x306(%rip),%rdi        # 0xffffff58
0x25e:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x262:	83 e8 01             	sub    $0x1,%eax
0x265:	89 47 30             	mov    %eax,0x30(%rdi)
0x268:	4d 8b 36             	mov    (%r14),%r14
0x26b:	e9 25 fe ff ff       	jmpq   0x95
0x270:	48 8b 3d e9 fc ff ff 	mov    -0x317(%rip),%rdi        # 0xffffff60
0x277:	be 18 00 00 00       	mov    $0x18,%esi
0x27c:	48 63 f6             	movslq %esi,%rsi
0x27f:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x283:	48 83 ec 10          	sub    $0x10,%rsp
0x287:	48 89 04 24          	mov    %rax,(%rsp)
0x28b:	bf 16 00 00 00       	mov    $0x16,%edi
0x290:	48 8b 34 24          	mov    (%rsp),%rsi
0x294:	48 8b 15 cd fc ff ff 	mov    -0x333(%rip),%rdx        # 0xffffff68
0x29b:	b9 12 00 00 00       	mov    $0x12,%ecx
0x2a0:	48 8b c6             	mov    %rsi,%rax
0x2a3:	48 8b 00             	mov    (%rax),%rax
0x2a6:	48 63 ff             	movslq %edi,%rdi
0x2a9:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2ae:	48 8b fa             	mov    %rdx,%rdi
0x2b1:	48 8b d1             	mov    %rcx,%rdx
0x2b4:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2b9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2bd:	90                   	nop
0x2be:	90                   	nop
0x2bf:	e8 00 00 00 00       	callq  0x2c4
0x2c4:	90                   	nop
0x2c5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2c9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2cd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2d1:	ff d0                	callq  *%rax
0x2d3:	90                   	nop
0x2d4:	48 83 ec 10          	sub    $0x10,%rsp
0x2d8:	48 89 04 24          	mov    %rax,(%rsp)
0x2dc:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2e0:	48 83 c4 10          	add    $0x10,%rsp
0x2e4:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x2e8:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x2ec:	48 83 ec 10          	sub    $0x10,%rsp
0x2f0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2f4:	48 8b 3d 75 fc ff ff 	mov    -0x38b(%rip),%rdi        # 0xffffff70
0x2fb:	48 8b 34 24          	mov    (%rsp),%rsi
0x2ff:	48 8b 15 72 fc ff ff 	mov    -0x38e(%rip),%rdx        # 0xffffff78
0x306:	b9 1b 00 00 00       	mov    $0x1b,%ecx
0x30b:	48 8b da             	mov    %rdx,%rbx
0x30e:	48 8b c6             	mov    %rsi,%rax
0x311:	4c 8b 00             	mov    (%rax),%r8
0x314:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x318:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x31f:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x323:	48 8b c2             	mov    %rdx,%rax
0x326:	99                   	cltd   
0x327:	41 f7 f9             	idiv   %r9d
0x32a:	49 63 40 58          	movslq 0x58(%r8),%rax
0x32e:	03 d0                	add    %eax,%edx
0x330:	49 8b c0             	mov    %r8,%rax
0x333:	48 63 d2             	movslq %edx,%rdx
0x336:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x33b:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x342:	03 d0                	add    %eax,%edx
0x344:	48 63 d2             	movslq %edx,%rdx
0x347:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x34c:	48 8b fb             	mov    %rbx,%rdi
0x34f:	48 8b d1             	mov    %rcx,%rdx
0x352:	b9 03 00 00 00       	mov    $0x3,%ecx
0x357:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x35b:	e8 00 00 00 00       	callq  0x360
0x360:	90                   	nop
0x361:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x365:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x369:	48 8b 3c 24          	mov    (%rsp),%rdi
0x36d:	ff d0                	callq  *%rax
0x36f:	90                   	nop
0x370:	48 83 ec 10          	sub    $0x10,%rsp
0x374:	48 89 04 24          	mov    %rax,(%rsp)
0x378:	44 8b 1c 24          	mov    (%rsp),%r11d
0x37c:	b8 00 00 00 00       	mov    $0x0,%eax
0x381:	48 83 c4 10          	add    $0x10,%rsp
0x385:	44 3b d8             	cmp    %eax,%r11d
0x388:	75 33                	jne    0x3bd
0x38a:	48 8b 3d ef fb ff ff 	mov    -0x411(%rip),%rdi        # 0xffffff80
0x391:	be 23 00 00 00       	mov    $0x23,%esi
0x396:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x39a:	48 8b c8             	mov    %rax,%rcx
0x39d:	48 63 f6             	movslq %esi,%rsi
0x3a0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3a5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3ab:	0f 8d 07 00 00 00    	jge    0x3b8
0x3b1:	83 c1 01             	add    $0x1,%ecx
0x3b4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3b8:	e9 9c 03 00 00       	jmpq   0x759
0x3bd:	48 8b 3d c4 fb ff ff 	mov    -0x43c(%rip),%rdi        # 0xffffff88
0x3c4:	be 24 00 00 00       	mov    $0x24,%esi
0x3c9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3cd:	48 8b c8             	mov    %rax,%rcx
0x3d0:	48 63 f6             	movslq %esi,%rsi
0x3d3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3d8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3de:	0f 8d 07 00 00 00    	jge    0x3eb
0x3e4:	83 c1 01             	add    $0x1,%ecx
0x3e7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3eb:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x3ef:	48 83 ec 10          	sub    $0x10,%rsp
0x3f3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3f7:	48 8b 3d 92 fb ff ff 	mov    -0x46e(%rip),%rdi        # 0xffffff90
0x3fe:	48 8b 34 24          	mov    (%rsp),%rsi
0x402:	48 8b 15 8f fb ff ff 	mov    -0x471(%rip),%rdx        # 0xffffff98
0x409:	b9 26 00 00 00       	mov    $0x26,%ecx
0x40e:	48 8b da             	mov    %rdx,%rbx
0x411:	48 8b c6             	mov    %rsi,%rax
0x414:	4c 8b 00             	mov    (%rax),%r8
0x417:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x41b:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x422:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x426:	48 8b c2             	mov    %rdx,%rax
0x429:	99                   	cltd   
0x42a:	41 f7 f9             	idiv   %r9d
0x42d:	49 63 40 58          	movslq 0x58(%r8),%rax
0x431:	03 d0                	add    %eax,%edx
0x433:	49 8b c0             	mov    %r8,%rax
0x436:	48 63 d2             	movslq %edx,%rdx
0x439:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x43e:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x445:	03 d0                	add    %eax,%edx
0x447:	48 63 d2             	movslq %edx,%rdx
0x44a:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x44f:	48 8b fb             	mov    %rbx,%rdi
0x452:	48 8b d1             	mov    %rcx,%rdx
0x455:	b9 03 00 00 00       	mov    $0x3,%ecx
0x45a:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x45e:	e8 00 00 00 00       	callq  0x463
0x463:	90                   	nop
0x464:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x468:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x46c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x470:	ff d0                	callq  *%rax
0x472:	90                   	nop
0x473:	48 83 ec 10          	sub    $0x10,%rsp
0x477:	48 89 04 24          	mov    %rax,(%rsp)
0x47b:	48 8b 34 24          	mov    (%rsp),%rsi
0x47f:	48 8b 3d 1a fb ff ff 	mov    -0x4e6(%rip),%rdi        # 0xffffffa0
0x486:	48 8b 15 1b fb ff ff 	mov    -0x4e5(%rip),%rdx        # 0xffffffa8
0x48d:	b9 2e 00 00 00       	mov    $0x2e,%ecx
0x492:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x496:	48 8b fa             	mov    %rdx,%rdi
0x499:	48 8b de             	mov    %rsi,%rbx
0x49c:	48 8b f3             	mov    %rbx,%rsi
0x49f:	48 8b d1             	mov    %rcx,%rdx
0x4a2:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4a7:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x4ab:	e8 00 00 00 00       	callq  0x4b0
0x4b0:	90                   	nop
0x4b1:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x4b5:	4d 33 db             	xor    %r11,%r11
0x4b8:	49 3b f3             	cmp    %r11,%rsi
0x4bb:	0f 85 0e 00 00 00    	jne    0x4cf
0x4c1:	bf 01 00 00 00       	mov    $0x1,%edi
0x4c6:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x4ca:	e9 6f 00 00 00       	jmpq   0x53e
0x4cf:	48 8b c6             	mov    %rsi,%rax
0x4d2:	48 8b 38             	mov    (%rax),%rdi
0x4d5:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x4d9:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x4dd:	0f 85 0e 00 00 00    	jne    0x4f1
0x4e3:	bf 01 00 00 00       	mov    $0x1,%edi
0x4e8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x4ec:	e9 4d 00 00 00       	jmpq   0x53e
0x4f1:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x4f5:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x4fc:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x500:	48 8b c3             	mov    %rbx,%rax
0x503:	99                   	cltd   
0x504:	41 f7 f8             	idiv   %r8d
0x507:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x50b:	03 d0                	add    %eax,%edx
0x50d:	48 8b c7             	mov    %rdi,%rax
0x510:	48 63 d2             	movslq %edx,%rdx
0x513:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x518:	48 63 c0             	movslq %eax,%rax
0x51b:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x520:	48 63 db             	movslq %ebx,%rbx
0x523:	48 3b c3             	cmp    %rbx,%rax
0x526:	0f 85 0a 00 00 00    	jne    0x536
0x52c:	b8 01 00 00 00       	mov    $0x1,%eax
0x531:	e9 05 00 00 00       	jmpq   0x53b
0x536:	b8 00 00 00 00       	mov    $0x0,%eax
0x53b:	48 8b f8             	mov    %rax,%rdi
0x53e:	83 ff 00             	cmp    $0x0,%edi
0x541:	0f 85 12 00 00 00    	jne    0x559
0x547:	48 8b f9             	mov    %rcx,%rdi
0x54a:	e8 00 00 00 00       	callq  0x54f
0x54f:	90                   	nop
0x550:	48 8b f8             	mov    %rax,%rdi
0x553:	e8 00 00 00 00       	callq  0x558
0x558:	90                   	nop
0x559:	48 8b c6             	mov    %rsi,%rax
0x55c:	48 89 04 24          	mov    %rax,(%rsp)
0x560:	4c 8b 1c 24          	mov    (%rsp),%r11
0x564:	48 83 c4 10          	add    $0x10,%rsp
0x568:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x56c:	48 8b 3d 3d fa ff ff 	mov    -0x5c3(%rip),%rdi        # 0xffffffb0
0x573:	be 10 00 00 00       	mov    $0x10,%esi
0x578:	48 63 f6             	movslq %esi,%rsi
0x57b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x57f:	48 83 ec 10          	sub    $0x10,%rsp
0x583:	48 89 04 24          	mov    %rax,(%rsp)
0x587:	48 8b 3d 2a fa ff ff 	mov    -0x5d6(%rip),%rdi        # 0xffffffb8
0x58e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x592:	48 8b 35 27 fa ff ff 	mov    -0x5d9(%rip),%rsi        # 0xffffffc0
0x599:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x59d:	49 8b ce             	mov    %r14,%rcx
0x5a0:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x5a4:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x5ab:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x5b2:	48 8b d9             	mov    %rcx,%rbx
0x5b5:	48 03 da             	add    %rdx,%rbx
0x5b8:	4c 8b cb             	mov    %rbx,%r9
0x5bb:	4d 3b c8             	cmp    %r8,%r9
0x5be:	0f 86 14 00 00 00    	jbe    0x5d8
0x5c4:	48 8b fe             	mov    %rsi,%rdi
0x5c7:	48 8b f2             	mov    %rdx,%rsi
0x5ca:	48 8b d0             	mov    %rax,%rdx
0x5cd:	e8 00 00 00 00       	callq  0x5d2
0x5d2:	90                   	nop
0x5d3:	e9 0a 00 00 00       	jmpq   0x5e2
0x5d8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x5df:	48 8b c1             	mov    %rcx,%rax
0x5e2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x5e6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5ea:	90                   	nop
0x5eb:	90                   	nop
0x5ec:	90                   	nop
0x5ed:	e8 00 00 00 00       	callq  0x5f2
0x5f2:	90                   	nop
0x5f3:	90                   	nop
0x5f4:	90                   	nop
0x5f5:	e8 00 00 00 00       	callq  0x5fa
0x5fa:	90                   	nop
0x5fb:	83 f8 00             	cmp    $0x0,%eax
0x5fe:	0f 84 27 00 00 00    	je     0x62b
0x604:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x608:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x60c:	85 06                	test   %eax,(%rsi)
0x60e:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x612:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x616:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x61a:	83 e2 ff             	and    $0xffffffff,%edx
0x61d:	48 8b fa             	mov    %rdx,%rdi
0x620:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x624:	90                   	nop
0x625:	e8 00 00 00 00       	callq  0x62a
0x62a:	90                   	nop
0x62b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x62f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x633:	48 89 38             	mov    %rdi,(%rax)
0x636:	48 83 ec 10          	sub    $0x10,%rsp
0x63a:	48 89 04 24          	mov    %rax,(%rsp)
0x63e:	48 83 ec 10          	sub    $0x10,%rsp
0x642:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x647:	4c 89 1c 24          	mov    %r11,(%rsp)
0x64b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x64f:	41 85 03             	test   %eax,(%r11)
0x652:	e8 00 00 00 00       	callq  0x657
0x657:	90                   	nop
0x658:	4c 8b 1d 69 f9 ff ff 	mov    -0x697(%rip),%r11        # 0xffffffc8
0x65f:	48 83 ec 10          	sub    $0x10,%rsp
0x663:	4c 89 1c 24          	mov    %r11,(%rsp)
0x667:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x66c:	41 85 03             	test   %eax,(%r11)
0x66f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x674:	90                   	nop
0x675:	90                   	nop
0x676:	90                   	nop
0x677:	90                   	nop
0x678:	e8 00 00 00 00       	callq  0x67d
0x67d:	90                   	nop
0x67e:	48 83 ec 10          	sub    $0x10,%rsp
0x682:	48 89 04 24          	mov    %rax,(%rsp)
0x686:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x68a:	48 83 ec 10          	sub    $0x10,%rsp
0x68e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x692:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x697:	41 85 03             	test   %eax,(%r11)
0x69a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x69f:	90                   	nop
0x6a0:	e8 00 00 00 00       	callq  0x6a5
0x6a5:	90                   	nop
0x6a6:	48 83 ec 10          	sub    $0x10,%rsp
0x6aa:	48 89 04 24          	mov    %rax,(%rsp)
0x6ae:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6b2:	41 85 03             	test   %eax,(%r11)
0x6b5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6b9:	e8 00 00 00 00       	callq  0x6be
0x6be:	90                   	nop
0x6bf:	48 83 ec 10          	sub    $0x10,%rsp
0x6c3:	48 89 04 24          	mov    %rax,(%rsp)
0x6c7:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x6cc:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x6d1:	48 8b 15 f8 f8 ff ff 	mov    -0x708(%rip),%rdx        # 0xffffffd0
0x6d8:	b9 3b 00 00 00       	mov    $0x3b,%ecx
0x6dd:	48 8b c6             	mov    %rsi,%rax
0x6e0:	48 8b 00             	mov    (%rax),%rax
0x6e3:	48 63 ff             	movslq %edi,%rdi
0x6e6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x6eb:	48 8b fa             	mov    %rdx,%rdi
0x6ee:	48 8b d1             	mov    %rcx,%rdx
0x6f1:	b9 03 00 00 00       	mov    $0x3,%ecx
0x6f6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x6fa:	90                   	nop
0x6fb:	90                   	nop
0x6fc:	e8 00 00 00 00       	callq  0x701
0x701:	90                   	nop
0x702:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x706:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x70a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x70f:	ff d0                	callq  *%rax
0x711:	90                   	nop
0x712:	48 8b 3d bf f8 ff ff 	mov    -0x741(%rip),%rdi        # 0xffffffd8
0x719:	be 43 00 00 00       	mov    $0x43,%esi
0x71e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x722:	48 8b c8             	mov    %rax,%rcx
0x725:	48 63 f6             	movslq %esi,%rsi
0x728:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x72d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x733:	0f 8d 07 00 00 00    	jge    0x740
0x739:	83 c1 01             	add    $0x1,%ecx
0x73c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x740:	48 8b 3d 99 f8 ff ff 	mov    -0x767(%rip),%rdi        # 0xffffffe0
0x747:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x74b:	83 e8 01             	sub    $0x1,%eax
0x74e:	89 47 30             	mov    %eax,0x30(%rdi)
0x751:	4d 8b 36             	mov    (%r14),%r14
0x754:	e9 8f fb ff ff       	jmpq   0x2e8
0x759:	48 83 c5 40          	add    $0x40,%rbp
0x75d:	c9                   	leaveq 
0x75e:	c2 10 00             	retq   $0x10

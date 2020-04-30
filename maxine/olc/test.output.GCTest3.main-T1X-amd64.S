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
0x20:	4c 89 1d d1 fe ff ff 	mov    %r11,-0x12f(%rip)        # 0xfffffef8
0x27:	48 8b 3d d2 fe ff ff 	mov    -0x12e(%rip),%rdi        # 0xffffff00
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
0x53:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x57:	48 83 ec 10          	sub    $0x10,%rsp
0x5b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x63:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x67:	89 04 24             	mov    %eax,(%rsp)
0x6a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x6e:	b8 00 00 00 00       	mov    $0x0,%eax
0x73:	48 83 c4 10          	add    $0x10,%rsp
0x77:	44 3b d8             	cmp    %eax,%r11d
0x7a:	7f 33                	jg     0xaf
0x7c:	48 8b 3d 85 fe ff ff 	mov    -0x17b(%rip),%rdi        # 0xffffff08
0x83:	be 00 00 00 00       	mov    $0x0,%esi
0x88:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8c:	48 8b c8             	mov    %rax,%rcx
0x8f:	48 63 f6             	movslq %esi,%rsi
0x92:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x97:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x9d:	0f 8d 07 00 00 00    	jge    0xaa
0xa3:	83 c1 01             	add    $0x1,%ecx
0xa6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xaa:	e9 58 00 00 00       	jmpq   0x107
0xaf:	48 8b 3d 5a fe ff ff 	mov    -0x1a6(%rip),%rdi        # 0xffffff10
0xb6:	be 01 00 00 00       	mov    $0x1,%esi
0xbb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbf:	48 8b c8             	mov    %rax,%rcx
0xc2:	48 63 f6             	movslq %esi,%rsi
0xc5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xca:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xd0:	0f 8d 07 00 00 00    	jge    0xdd
0xd6:	83 c1 01             	add    $0x1,%ecx
0xd9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xdd:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xe3:	48 83 ec 10          	sub    $0x10,%rsp
0xe7:	44 89 1c 24          	mov    %r11d,(%rsp)
0xeb:	8b 14 24             	mov    (%rsp),%edx
0xee:	48 8b 3d 23 fe ff ff 	mov    -0x1dd(%rip),%rdi        # 0xffffff18
0xf5:	be 24 00 00 00       	mov    $0x24,%esi
0xfa:	0f be d2             	movsbl %dl,%edx
0xfd:	48 63 f6             	movslq %esi,%rsi
0x100:	88 14 37             	mov    %dl,(%rdi,%rsi,1)
0x103:	48 83 c4 10          	add    $0x10,%rsp
0x107:	48 8b 3d 12 fe ff ff 	mov    -0x1ee(%rip),%rdi        # 0xffffff20
0x10e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x112:	48 8b 35 0f fe ff ff 	mov    -0x1f1(%rip),%rsi        # 0xffffff28
0x119:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x11d:	49 8b ce             	mov    %r14,%rcx
0x120:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x124:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x12b:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x132:	48 8b d9             	mov    %rcx,%rbx
0x135:	48 03 da             	add    %rdx,%rbx
0x138:	4c 8b cb             	mov    %rbx,%r9
0x13b:	4d 3b c8             	cmp    %r8,%r9
0x13e:	0f 86 14 00 00 00    	jbe    0x158
0x144:	48 8b fe             	mov    %rsi,%rdi
0x147:	48 8b f2             	mov    %rdx,%rsi
0x14a:	48 8b d0             	mov    %rax,%rdx
0x14d:	e8 00 00 00 00       	callq  0x152
0x152:	90                   	nop
0x153:	e9 0a 00 00 00       	jmpq   0x162
0x158:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x15f:	48 8b c1             	mov    %rcx,%rax
0x162:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x166:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x16a:	90                   	nop
0x16b:	90                   	nop
0x16c:	90                   	nop
0x16d:	e8 00 00 00 00       	callq  0x172
0x172:	90                   	nop
0x173:	90                   	nop
0x174:	90                   	nop
0x175:	e8 00 00 00 00       	callq  0x17a
0x17a:	90                   	nop
0x17b:	83 f8 00             	cmp    $0x0,%eax
0x17e:	0f 84 27 00 00 00    	je     0x1ab
0x184:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x188:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x18c:	85 06                	test   %eax,(%rsi)
0x18e:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x192:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x196:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x19a:	83 e2 ff             	and    $0xffffffff,%edx
0x19d:	48 8b fa             	mov    %rdx,%rdi
0x1a0:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1a4:	90                   	nop
0x1a5:	e8 00 00 00 00       	callq  0x1aa
0x1aa:	90                   	nop
0x1ab:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1af:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1b3:	48 89 38             	mov    %rdi,(%rax)
0x1b6:	48 83 ec 10          	sub    $0x10,%rsp
0x1ba:	48 89 04 24          	mov    %rax,(%rsp)
0x1be:	48 83 ec 10          	sub    $0x10,%rsp
0x1c2:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1c7:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1cb:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1cf:	41 85 03             	test   %eax,(%r11)
0x1d2:	e8 00 00 00 00       	callq  0x1d7
0x1d7:	90                   	nop
0x1d8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1dc:	48 83 c4 10          	add    $0x10,%rsp
0x1e0:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x1e4:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x1ea:	48 83 ec 10          	sub    $0x10,%rsp
0x1ee:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1f2:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1f6:	48 83 c4 10          	add    $0x10,%rsp
0x1fa:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x1fe:	48 8b 3d 2b fd ff ff 	mov    -0x2d5(%rip),%rdi        # 0xffffff30
0x205:	be 18 00 00 00       	mov    $0x18,%esi
0x20a:	48 63 f6             	movslq %esi,%rsi
0x20d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x211:	48 83 ec 10          	sub    $0x10,%rsp
0x215:	48 89 04 24          	mov    %rax,(%rsp)
0x219:	4c 8b 1d 18 fd ff ff 	mov    -0x2e8(%rip),%r11        # 0xffffff38
0x220:	48 83 ec 10          	sub    $0x10,%rsp
0x224:	4c 89 1c 24          	mov    %r11,(%rsp)
0x228:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x22d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x232:	48 8b 15 07 fd ff ff 	mov    -0x2f9(%rip),%rdx        # 0xffffff40
0x239:	b9 04 00 00 00       	mov    $0x4,%ecx
0x23e:	48 8b c6             	mov    %rsi,%rax
0x241:	48 8b 00             	mov    (%rax),%rax
0x244:	48 63 ff             	movslq %edi,%rdi
0x247:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x24c:	48 8b fa             	mov    %rdx,%rdi
0x24f:	48 8b d1             	mov    %rcx,%rdx
0x252:	b9 03 00 00 00       	mov    $0x3,%ecx
0x257:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x25b:	90                   	nop
0x25c:	90                   	nop
0x25d:	e8 00 00 00 00       	callq  0x262
0x262:	90                   	nop
0x263:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x267:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x26b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x270:	ff d0                	callq  *%rax
0x272:	90                   	nop
0x273:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x277:	48 83 ec 10          	sub    $0x10,%rsp
0x27b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x27f:	41 bb 1e 00 00 00    	mov    $0x1e,%r11d
0x285:	48 83 ec 10          	sub    $0x10,%rsp
0x289:	44 89 1c 24          	mov    %r11d,(%rsp)
0x28d:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x292:	8b 04 24             	mov    (%rsp),%eax
0x295:	48 83 c4 20          	add    $0x20,%rsp
0x299:	44 3b d8             	cmp    %eax,%r11d
0x29c:	7c 33                	jl     0x2d1
0x29e:	48 8b 3d a3 fc ff ff 	mov    -0x35d(%rip),%rdi        # 0xffffff48
0x2a5:	be 0c 00 00 00       	mov    $0xc,%esi
0x2aa:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2ae:	48 8b c8             	mov    %rax,%rcx
0x2b1:	48 63 f6             	movslq %esi,%rsi
0x2b4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2b9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2bf:	0f 8d 07 00 00 00    	jge    0x2cc
0x2c5:	83 c1 01             	add    $0x1,%ecx
0x2c8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2cc:	e9 4a 03 00 00       	jmpq   0x61b
0x2d1:	48 8b 3d 78 fc ff ff 	mov    -0x388(%rip),%rdi        # 0xffffff50
0x2d8:	be 0d 00 00 00       	mov    $0xd,%esi
0x2dd:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2e1:	48 8b c8             	mov    %rax,%rcx
0x2e4:	48 63 f6             	movslq %esi,%rsi
0x2e7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2ec:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2f2:	0f 8d 07 00 00 00    	jge    0x2ff
0x2f8:	83 c1 01             	add    $0x1,%ecx
0x2fb:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2ff:	48 8b 3d 52 fc ff ff 	mov    -0x3ae(%rip),%rdi        # 0xffffff58
0x306:	be 18 00 00 00       	mov    $0x18,%esi
0x30b:	48 63 f6             	movslq %esi,%rsi
0x30e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x312:	48 83 ec 10          	sub    $0x10,%rsp
0x316:	48 89 04 24          	mov    %rax,(%rsp)
0x31a:	4c 8b 1d 3f fc ff ff 	mov    -0x3c1(%rip),%r11        # 0xffffff60
0x321:	48 83 ec 10          	sub    $0x10,%rsp
0x325:	4c 89 1c 24          	mov    %r11,(%rsp)
0x329:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x32e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x333:	48 8b 15 2e fc ff ff 	mov    -0x3d2(%rip),%rdx        # 0xffffff68
0x33a:	b9 0f 00 00 00       	mov    $0xf,%ecx
0x33f:	48 8b c6             	mov    %rsi,%rax
0x342:	48 8b 00             	mov    (%rax),%rax
0x345:	48 63 ff             	movslq %edi,%rdi
0x348:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x34d:	48 8b fa             	mov    %rdx,%rdi
0x350:	48 8b d1             	mov    %rcx,%rdx
0x353:	b9 03 00 00 00       	mov    $0x3,%ecx
0x358:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x35c:	90                   	nop
0x35d:	90                   	nop
0x35e:	e8 00 00 00 00       	callq  0x363
0x363:	90                   	nop
0x364:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x368:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x36c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x371:	ff d0                	callq  *%rax
0x373:	90                   	nop
0x374:	41 bb 12 00 00 00    	mov    $0x12,%r11d
0x37a:	48 83 ec 10          	sub    $0x10,%rsp
0x37e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x382:	e8 00 00 00 00       	callq  0x387
0x387:	90                   	nop
0x388:	48 83 ec 10          	sub    $0x10,%rsp
0x38c:	48 89 04 24          	mov    %rax,(%rsp)
0x390:	4c 8b 1c 24          	mov    (%rsp),%r11
0x394:	48 83 c4 10          	add    $0x10,%rsp
0x398:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x39c:	4d 33 db             	xor    %r11,%r11
0x39f:	48 83 ec 10          	sub    $0x10,%rsp
0x3a3:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3a7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3ab:	48 83 c4 10          	add    $0x10,%rsp
0x3af:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x3b3:	48 8b 3d b6 fb ff ff 	mov    -0x44a(%rip),%rdi        # 0xffffff70
0x3ba:	be 18 00 00 00       	mov    $0x18,%esi
0x3bf:	48 63 f6             	movslq %esi,%rsi
0x3c2:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3c6:	48 83 ec 10          	sub    $0x10,%rsp
0x3ca:	48 89 04 24          	mov    %rax,(%rsp)
0x3ce:	4c 8b 1d a3 fb ff ff 	mov    -0x45d(%rip),%r11        # 0xffffff78
0x3d5:	48 83 ec 10          	sub    $0x10,%rsp
0x3d9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3dd:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3e2:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3e7:	48 8b 15 92 fb ff ff 	mov    -0x46e(%rip),%rdx        # 0xffffff80
0x3ee:	b9 19 00 00 00       	mov    $0x19,%ecx
0x3f3:	48 8b c6             	mov    %rsi,%rax
0x3f6:	48 8b 00             	mov    (%rax),%rax
0x3f9:	48 63 ff             	movslq %edi,%rdi
0x3fc:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x401:	48 8b fa             	mov    %rdx,%rdi
0x404:	48 8b d1             	mov    %rcx,%rdx
0x407:	b9 03 00 00 00       	mov    $0x3,%ecx
0x40c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x410:	90                   	nop
0x411:	90                   	nop
0x412:	e8 00 00 00 00       	callq  0x417
0x417:	90                   	nop
0x418:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x41c:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x420:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x425:	ff d0                	callq  *%rax
0x427:	90                   	nop
0x428:	48 8b 3d 59 fb ff ff 	mov    -0x4a7(%rip),%rdi        # 0xffffff88
0x42f:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x433:	48 8b 35 56 fb ff ff 	mov    -0x4aa(%rip),%rsi        # 0xffffff90
0x43a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x43e:	49 8b ce             	mov    %r14,%rcx
0x441:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x445:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x44c:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x453:	48 8b d9             	mov    %rcx,%rbx
0x456:	48 03 da             	add    %rdx,%rbx
0x459:	4c 8b cb             	mov    %rbx,%r9
0x45c:	4d 3b c8             	cmp    %r8,%r9
0x45f:	0f 86 14 00 00 00    	jbe    0x479
0x465:	48 8b fe             	mov    %rsi,%rdi
0x468:	48 8b f2             	mov    %rdx,%rsi
0x46b:	48 8b d0             	mov    %rax,%rdx
0x46e:	e8 00 00 00 00       	callq  0x473
0x473:	90                   	nop
0x474:	e9 0a 00 00 00       	jmpq   0x483
0x479:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x480:	48 8b c1             	mov    %rcx,%rax
0x483:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x487:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x48b:	90                   	nop
0x48c:	90                   	nop
0x48d:	90                   	nop
0x48e:	e8 00 00 00 00       	callq  0x493
0x493:	90                   	nop
0x494:	90                   	nop
0x495:	90                   	nop
0x496:	e8 00 00 00 00       	callq  0x49b
0x49b:	90                   	nop
0x49c:	83 f8 00             	cmp    $0x0,%eax
0x49f:	0f 84 27 00 00 00    	je     0x4cc
0x4a5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4a9:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x4ad:	85 06                	test   %eax,(%rsi)
0x4af:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x4b3:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x4b7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x4bb:	83 e2 ff             	and    $0xffffffff,%edx
0x4be:	48 8b fa             	mov    %rdx,%rdi
0x4c1:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x4c5:	90                   	nop
0x4c6:	e8 00 00 00 00       	callq  0x4cb
0x4cb:	90                   	nop
0x4cc:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x4d0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4d4:	48 89 38             	mov    %rdi,(%rax)
0x4d7:	48 83 ec 10          	sub    $0x10,%rsp
0x4db:	48 89 04 24          	mov    %rax,(%rsp)
0x4df:	48 83 ec 10          	sub    $0x10,%rsp
0x4e3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4e8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4ec:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4f0:	41 85 03             	test   %eax,(%r11)
0x4f3:	e8 00 00 00 00       	callq  0x4f8
0x4f8:	90                   	nop
0x4f9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4fd:	48 83 c4 10          	add    $0x10,%rsp
0x501:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x505:	41 bb 10 00 00 00    	mov    $0x10,%r11d
0x50b:	48 83 ec 10          	sub    $0x10,%rsp
0x50f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x513:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x517:	48 83 ec 10          	sub    $0x10,%rsp
0x51b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x51f:	90                   	nop
0x520:	e8 00 00 00 00       	callq  0x525
0x525:	90                   	nop
0x526:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x52a:	48 83 ec 10          	sub    $0x10,%rsp
0x52e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x532:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x536:	48 83 ec 10          	sub    $0x10,%rsp
0x53a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x53e:	48 8b 3d 53 fa ff ff 	mov    -0x5ad(%rip),%rdi        # 0xffffff98
0x545:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x54a:	48 8b 15 4f fa ff ff 	mov    -0x5b1(%rip),%rdx        # 0xffffffa0
0x551:	b9 24 00 00 00       	mov    $0x24,%ecx
0x556:	48 8b da             	mov    %rdx,%rbx
0x559:	48 8b c6             	mov    %rsi,%rax
0x55c:	4c 8b 00             	mov    (%rax),%r8
0x55f:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x563:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x56a:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x56e:	48 8b c2             	mov    %rdx,%rax
0x571:	99                   	cltd   
0x572:	41 f7 f9             	idiv   %r9d
0x575:	49 63 40 58          	movslq 0x58(%r8),%rax
0x579:	03 d0                	add    %eax,%edx
0x57b:	49 8b c0             	mov    %r8,%rax
0x57e:	48 63 d2             	movslq %edx,%rdx
0x581:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x586:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x58d:	03 d0                	add    %eax,%edx
0x58f:	48 63 d2             	movslq %edx,%rdx
0x592:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x597:	48 8b fb             	mov    %rbx,%rdi
0x59a:	48 8b d1             	mov    %rcx,%rdx
0x59d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5a2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5a6:	e8 00 00 00 00       	callq  0x5ab
0x5ab:	90                   	nop
0x5ac:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5b0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5b4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5b9:	ff d0                	callq  *%rax
0x5bb:	90                   	nop
0x5bc:	48 83 ec 10          	sub    $0x10,%rsp
0x5c0:	48 89 04 24          	mov    %rax,(%rsp)
0x5c4:	48 83 c4 10          	add    $0x10,%rsp
0x5c8:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x5cc:	41 83 c3 01          	add    $0x1,%r11d
0x5d0:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x5d4:	48 8b 3d cd f9 ff ff 	mov    -0x633(%rip),%rdi        # 0xffffffa8
0x5db:	be 2c 00 00 00       	mov    $0x2c,%esi
0x5e0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5e4:	48 8b c8             	mov    %rax,%rcx
0x5e7:	48 63 f6             	movslq %esi,%rsi
0x5ea:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5ef:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5f5:	0f 8d 07 00 00 00    	jge    0x602
0x5fb:	83 c1 01             	add    $0x1,%ecx
0x5fe:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x602:	48 8b 3d a7 f9 ff ff 	mov    -0x659(%rip),%rdi        # 0xffffffb0
0x609:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x60d:	83 e8 01             	sub    $0x1,%eax
0x610:	89 47 30             	mov    %eax,0x30(%rdi)
0x613:	4d 8b 36             	mov    (%r14),%r14
0x616:	e9 58 fc ff ff       	jmpq   0x273
0x61b:	48 8b 3d 96 f9 ff ff 	mov    -0x66a(%rip),%rdi        # 0xffffffb8
0x622:	be 18 00 00 00       	mov    $0x18,%esi
0x627:	48 63 f6             	movslq %esi,%rsi
0x62a:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x62e:	48 83 ec 10          	sub    $0x10,%rsp
0x632:	48 89 04 24          	mov    %rax,(%rsp)
0x636:	48 8b 3d 83 f9 ff ff 	mov    -0x67d(%rip),%rdi        # 0xffffffc0
0x63d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x641:	48 8b 35 80 f9 ff ff 	mov    -0x680(%rip),%rsi        # 0xffffffc8
0x648:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x64c:	49 8b ce             	mov    %r14,%rcx
0x64f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x653:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x65a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x661:	48 8b d9             	mov    %rcx,%rbx
0x664:	48 03 da             	add    %rdx,%rbx
0x667:	4c 8b cb             	mov    %rbx,%r9
0x66a:	4d 3b c8             	cmp    %r8,%r9
0x66d:	0f 86 14 00 00 00    	jbe    0x687
0x673:	48 8b fe             	mov    %rsi,%rdi
0x676:	48 8b f2             	mov    %rdx,%rsi
0x679:	48 8b d0             	mov    %rax,%rdx
0x67c:	e8 00 00 00 00       	callq  0x681
0x681:	90                   	nop
0x682:	e9 0a 00 00 00       	jmpq   0x691
0x687:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x68e:	48 8b c1             	mov    %rcx,%rax
0x691:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x695:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x699:	90                   	nop
0x69a:	90                   	nop
0x69b:	90                   	nop
0x69c:	e8 00 00 00 00       	callq  0x6a1
0x6a1:	90                   	nop
0x6a2:	90                   	nop
0x6a3:	90                   	nop
0x6a4:	e8 00 00 00 00       	callq  0x6a9
0x6a9:	90                   	nop
0x6aa:	83 f8 00             	cmp    $0x0,%eax
0x6ad:	0f 84 27 00 00 00    	je     0x6da
0x6b3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6b7:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x6bb:	85 06                	test   %eax,(%rsi)
0x6bd:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x6c1:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x6c5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6c9:	83 e2 ff             	and    $0xffffffff,%edx
0x6cc:	48 8b fa             	mov    %rdx,%rdi
0x6cf:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x6d3:	90                   	nop
0x6d4:	e8 00 00 00 00       	callq  0x6d9
0x6d9:	90                   	nop
0x6da:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x6de:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6e2:	48 89 38             	mov    %rdi,(%rax)
0x6e5:	48 83 ec 10          	sub    $0x10,%rsp
0x6e9:	48 89 04 24          	mov    %rax,(%rsp)
0x6ed:	48 83 ec 10          	sub    $0x10,%rsp
0x6f1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6f6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6fa:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6fe:	41 85 03             	test   %eax,(%r11)
0x701:	e8 00 00 00 00       	callq  0x706
0x706:	90                   	nop
0x707:	48 83 ec 10          	sub    $0x10,%rsp
0x70b:	4c 8b 1d be f8 ff ff 	mov    -0x742(%rip),%r11        # 0xffffffd0
0x712:	4c 89 1c 24          	mov    %r11,(%rsp)
0x716:	4c 8b 1c 24          	mov    (%rsp),%r11
0x71a:	41 85 03             	test   %eax,(%r11)
0x71d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x721:	e8 00 00 00 00       	callq  0x726
0x726:	90                   	nop
0x727:	48 83 ec 10          	sub    $0x10,%rsp
0x72b:	48 89 04 24          	mov    %rax,(%rsp)
0x72f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x734:	41 85 03             	test   %eax,(%r11)
0x737:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x73c:	90                   	nop
0x73d:	90                   	nop
0x73e:	90                   	nop
0x73f:	90                   	nop
0x740:	e8 00 00 00 00       	callq  0x745
0x745:	90                   	nop
0x746:	48 83 ec 10          	sub    $0x10,%rsp
0x74a:	48 89 04 24          	mov    %rax,(%rsp)
0x74e:	4c 8b 1d 83 f8 ff ff 	mov    -0x77d(%rip),%r11        # 0xffffffd8
0x755:	48 83 ec 10          	sub    $0x10,%rsp
0x759:	4c 89 1c 24          	mov    %r11,(%rsp)
0x75d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x762:	41 85 03             	test   %eax,(%r11)
0x765:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x76a:	e8 00 00 00 00       	callq  0x76f
0x76f:	90                   	nop
0x770:	48 83 ec 10          	sub    $0x10,%rsp
0x774:	48 89 04 24          	mov    %rax,(%rsp)
0x778:	4c 8b 1c 24          	mov    (%rsp),%r11
0x77c:	41 85 03             	test   %eax,(%r11)
0x77f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x783:	e8 00 00 00 00       	callq  0x788
0x788:	90                   	nop
0x789:	48 83 ec 10          	sub    $0x10,%rsp
0x78d:	48 89 04 24          	mov    %rax,(%rsp)
0x791:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x796:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x79b:	48 8b 15 3e f8 ff ff 	mov    -0x7c2(%rip),%rdx        # 0xffffffe0
0x7a2:	b9 33 00 00 00       	mov    $0x33,%ecx
0x7a7:	48 8b c6             	mov    %rsi,%rax
0x7aa:	48 8b 00             	mov    (%rax),%rax
0x7ad:	48 63 ff             	movslq %edi,%rdi
0x7b0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7b5:	48 8b fa             	mov    %rdx,%rdi
0x7b8:	48 8b d1             	mov    %rcx,%rdx
0x7bb:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7c0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7c4:	90                   	nop
0x7c5:	90                   	nop
0x7c6:	e8 00 00 00 00       	callq  0x7cb
0x7cb:	90                   	nop
0x7cc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7d0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7d4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7d9:	ff d0                	callq  *%rax
0x7db:	90                   	nop
0x7dc:	48 83 c5 40          	add    $0x40,%rbp
0x7e0:	c9                   	leaveq 
0x7e1:	c2 10 00             	retq   $0x10

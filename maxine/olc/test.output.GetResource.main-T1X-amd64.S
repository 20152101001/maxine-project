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
0x20:	4c 89 1d f1 fe ff ff 	mov    %r11,-0x10f(%rip)        # 0xffffff18
0x27:	48 8b 3d f2 fe ff ff 	mov    -0x10e(%rip),%rdi        # 0xffffff20
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
0x57:	4c 8b 1d ca fe ff ff 	mov    -0x136(%rip),%r11        # 0xffffff28
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	4c 8b 1d c7 fe ff ff 	mov    -0x139(%rip),%r11        # 0xffffff30
0x69:	48 83 ec 10          	sub    $0x10,%rsp
0x6d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x71:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x76:	41 85 03             	test   %eax,(%r11)
0x79:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7e:	90                   	nop
0x7f:	90                   	nop
0x80:	e8 00 00 00 00       	callq  0x85
0x85:	90                   	nop
0x86:	48 83 ec 10          	sub    $0x10,%rsp
0x8a:	48 89 04 24          	mov    %rax,(%rsp)
0x8e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x92:	48 83 c4 10          	add    $0x10,%rsp
0x96:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x9a:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x9e:	48 83 ec 10          	sub    $0x10,%rsp
0xa2:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xaa:	48 33 c0             	xor    %rax,%rax
0xad:	48 83 c4 10          	add    $0x10,%rsp
0xb1:	4c 3b d8             	cmp    %rax,%r11
0xb4:	75 33                	jne    0xe9
0xb6:	48 8b 3d 7b fe ff ff 	mov    -0x185(%rip),%rdi        # 0xffffff38
0xbd:	be 01 00 00 00       	mov    $0x1,%esi
0xc2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xc6:	48 8b c8             	mov    %rax,%rcx
0xc9:	48 63 f6             	movslq %esi,%rsi
0xcc:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xd1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xd7:	0f 8d 07 00 00 00    	jge    0xe4
0xdd:	83 c1 01             	add    $0x1,%ecx
0xe0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe4:	e9 b7 04 00 00       	jmpq   0x5a0
0xe9:	48 8b 3d 50 fe ff ff 	mov    -0x1b0(%rip),%rdi        # 0xffffff40
0xf0:	be 02 00 00 00       	mov    $0x2,%esi
0xf5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xf9:	48 8b c8             	mov    %rax,%rcx
0xfc:	48 63 f6             	movslq %esi,%rsi
0xff:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x104:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x10a:	0f 8d 07 00 00 00    	jge    0x117
0x110:	83 c1 01             	add    $0x1,%ecx
0x113:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x117:	41 bb 80 00 00 00    	mov    $0x80,%r11d
0x11d:	48 83 ec 10          	sub    $0x10,%rsp
0x121:	44 89 1c 24          	mov    %r11d,(%rsp)
0x125:	40 8b 34 24          	rex mov (%rsp),%esi
0x129:	48 8b 3d 18 fe ff ff 	mov    -0x1e8(%rip),%rdi        # 0xffffff48
0x130:	83 fe 00             	cmp    $0x0,%esi
0x133:	0f 8c fb 00 00 00    	jl     0x234
0x139:	85 07                	test   %eax,(%rdi)
0x13b:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x142:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x146:	48 8b 3d 03 fe ff ff 	mov    -0x1fd(%rip),%rdi        # 0xffffff50
0x14d:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x151:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x155:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x15c:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x160:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x164:	48 63 c0             	movslq %eax,%rax
0x167:	48 63 d6             	movslq %esi,%rdx
0x16a:	48 0f af c2          	imul   %rdx,%rax
0x16e:	48 83 c0 18          	add    $0x18,%rax
0x172:	48 83 c0 07          	add    $0x7,%rax
0x176:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x17d:	00 00 00 
0x180:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x187:	ff ff ff 
0x18a:	49 33 d3             	xor    %r11,%rdx
0x18d:	48 23 c2             	and    %rdx,%rax
0x190:	49 8b d6             	mov    %r14,%rdx
0x193:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x197:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x19e:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x1a5:	49 8b d0             	mov    %r8,%rdx
0x1a8:	48 03 d0             	add    %rax,%rdx
0x1ab:	4c 8b d2             	mov    %rdx,%r10
0x1ae:	4d 3b d1             	cmp    %r9,%r10
0x1b1:	0f 86 1f 00 00 00    	jbe    0x1d6
0x1b7:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1bb:	48 8b f0             	mov    %rax,%rsi
0x1be:	48 8b d1             	mov    %rcx,%rdx
0x1c1:	49 8b c8             	mov    %r8,%rcx
0x1c4:	4d 8b c1             	mov    %r9,%r8
0x1c7:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1cb:	e8 00 00 00 00       	callq  0x1d0
0x1d0:	90                   	nop
0x1d1:	e9 12 00 00 00       	jmpq   0x1e8
0x1d6:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1da:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1de:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1e5:	49 8b c0             	mov    %r8,%rax
0x1e8:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1ec:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1f0:	e8 00 00 00 00       	callq  0x1f5
0x1f5:	90                   	nop
0x1f6:	90                   	nop
0x1f7:	e8 00 00 00 00       	callq  0x1fc
0x1fc:	90                   	nop
0x1fd:	83 f8 00             	cmp    $0x0,%eax
0x200:	0f 84 40 00 00 00    	je     0x246
0x206:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x20a:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x20e:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x212:	85 07                	test   %eax,(%rdi)
0x214:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x218:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x21c:	83 e0 ff             	and    $0xffffffff,%eax
0x21f:	48 8b f8             	mov    %rax,%rdi
0x222:	48 8b f2             	mov    %rdx,%rsi
0x225:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x229:	e8 00 00 00 00       	callq  0x22e
0x22e:	90                   	nop
0x22f:	e9 12 00 00 00       	jmpq   0x246
0x234:	48 8b fe             	mov    %rsi,%rdi
0x237:	e8 00 00 00 00       	callq  0x23c
0x23c:	90                   	nop
0x23d:	48 8b f8             	mov    %rax,%rdi
0x240:	e8 00 00 00 00       	callq  0x245
0x245:	90                   	nop
0x246:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x24a:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x24e:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x252:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x256:	48 89 18             	mov    %rbx,(%rax)
0x259:	48 89 04 24          	mov    %rax,(%rsp)
0x25d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x261:	48 83 c4 10          	add    $0x10,%rsp
0x265:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x269:	48 8b 3d e8 fc ff ff 	mov    -0x318(%rip),%rdi        # 0xffffff58
0x270:	be 18 00 00 00       	mov    $0x18,%esi
0x275:	48 63 f6             	movslq %esi,%rsi
0x278:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x27c:	48 83 ec 10          	sub    $0x10,%rsp
0x280:	48 89 04 24          	mov    %rax,(%rsp)
0x284:	4c 8b 1d d5 fc ff ff 	mov    -0x32b(%rip),%r11        # 0xffffff60
0x28b:	48 83 ec 10          	sub    $0x10,%rsp
0x28f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x293:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x298:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x29d:	48 8b 15 c4 fc ff ff 	mov    -0x33c(%rip),%rdx        # 0xffffff68
0x2a4:	b9 04 00 00 00       	mov    $0x4,%ecx
0x2a9:	48 8b c6             	mov    %rsi,%rax
0x2ac:	48 8b 00             	mov    (%rax),%rax
0x2af:	48 63 ff             	movslq %edi,%rdi
0x2b2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2b7:	48 8b fa             	mov    %rdx,%rdi
0x2ba:	48 8b d1             	mov    %rcx,%rdx
0x2bd:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2c2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2c6:	90                   	nop
0x2c7:	90                   	nop
0x2c8:	e8 00 00 00 00       	callq  0x2cd
0x2cd:	90                   	nop
0x2ce:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2d2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2d6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2db:	ff d0                	callq  *%rax
0x2dd:	90                   	nop
0x2de:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x2e2:	48 83 ec 10          	sub    $0x10,%rsp
0x2e6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ea:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x2ef:	48 8b 34 24          	mov    (%rsp),%rsi
0x2f3:	48 8b 15 76 fc ff ff 	mov    -0x38a(%rip),%rdx        # 0xffffff70
0x2fa:	b9 0d 00 00 00       	mov    $0xd,%ecx
0x2ff:	48 8b c6             	mov    %rsi,%rax
0x302:	48 8b 00             	mov    (%rax),%rax
0x305:	48 63 ff             	movslq %edi,%rdi
0x308:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x30d:	48 8b fa             	mov    %rdx,%rdi
0x310:	48 8b d1             	mov    %rcx,%rdx
0x313:	b9 03 00 00 00       	mov    $0x3,%ecx
0x318:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x31c:	90                   	nop
0x31d:	90                   	nop
0x31e:	e8 00 00 00 00       	callq  0x323
0x323:	90                   	nop
0x324:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x328:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x32c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x330:	ff d0                	callq  *%rax
0x332:	90                   	nop
0x333:	48 83 ec 10          	sub    $0x10,%rsp
0x337:	48 89 04 24          	mov    %rax,(%rsp)
0x33b:	44 8b 1c 24          	mov    (%rsp),%r11d
0x33f:	b8 00 00 00 00       	mov    $0x0,%eax
0x344:	48 83 c4 10          	add    $0x10,%rsp
0x348:	44 3b d8             	cmp    %eax,%r11d
0x34b:	7f 33                	jg     0x380
0x34d:	48 8b 3d 24 fc ff ff 	mov    -0x3dc(%rip),%rdi        # 0xffffff78
0x354:	be 15 00 00 00       	mov    $0x15,%esi
0x359:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x35d:	48 8b c8             	mov    %rax,%rcx
0x360:	48 63 f6             	movslq %esi,%rsi
0x363:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x368:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x36e:	0f 8d 07 00 00 00    	jge    0x37b
0x374:	83 c1 01             	add    $0x1,%ecx
0x377:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x37b:	e9 78 01 00 00       	jmpq   0x4f8
0x380:	48 8b 3d f9 fb ff ff 	mov    -0x407(%rip),%rdi        # 0xffffff80
0x387:	be 16 00 00 00       	mov    $0x16,%esi
0x38c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x390:	48 8b c8             	mov    %rax,%rcx
0x393:	48 63 f6             	movslq %esi,%rsi
0x396:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x39b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3a1:	0f 8d 07 00 00 00    	jge    0x3ae
0x3a7:	83 c1 01             	add    $0x1,%ecx
0x3aa:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3ae:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x3b2:	48 83 ec 10          	sub    $0x10,%rsp
0x3b6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3ba:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x3be:	48 83 ec 10          	sub    $0x10,%rsp
0x3c2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3c6:	bf 17 00 00 00       	mov    $0x17,%edi
0x3cb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3d0:	48 8b 15 b1 fb ff ff 	mov    -0x44f(%rip),%rdx        # 0xffffff88
0x3d7:	b9 18 00 00 00       	mov    $0x18,%ecx
0x3dc:	48 8b c6             	mov    %rsi,%rax
0x3df:	48 8b 00             	mov    (%rax),%rax
0x3e2:	48 63 ff             	movslq %edi,%rdi
0x3e5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3ea:	48 8b fa             	mov    %rdx,%rdi
0x3ed:	48 8b d1             	mov    %rcx,%rdx
0x3f0:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3f5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3f9:	90                   	nop
0x3fa:	90                   	nop
0x3fb:	e8 00 00 00 00       	callq  0x400
0x400:	90                   	nop
0x401:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x405:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x409:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x40e:	ff d0                	callq  *%rax
0x410:	90                   	nop
0x411:	48 83 ec 10          	sub    $0x10,%rsp
0x415:	48 89 04 24          	mov    %rax,(%rsp)
0x419:	44 8b 1c 24          	mov    (%rsp),%r11d
0x41d:	48 83 c4 10          	add    $0x10,%rsp
0x421:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x425:	48 8b 3d 64 fb ff ff 	mov    -0x49c(%rip),%rdi        # 0xffffff90
0x42c:	be 18 00 00 00       	mov    $0x18,%esi
0x431:	48 63 f6             	movslq %esi,%rsi
0x434:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x438:	48 83 ec 10          	sub    $0x10,%rsp
0x43c:	48 89 04 24          	mov    %rax,(%rsp)
0x440:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x444:	48 83 ec 10          	sub    $0x10,%rsp
0x448:	4c 89 1c 24          	mov    %r11,(%rsp)
0x44c:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x452:	48 83 ec 10          	sub    $0x10,%rsp
0x456:	44 89 1c 24          	mov    %r11d,(%rsp)
0x45a:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x45e:	48 83 ec 10          	sub    $0x10,%rsp
0x462:	44 89 1c 24          	mov    %r11d,(%rsp)
0x466:	bf 18 00 00 00       	mov    $0x18,%edi
0x46b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
0x470:	48 8b 15 21 fb ff ff 	mov    -0x4df(%rip),%rdx        # 0xffffff98
0x477:	b9 21 00 00 00       	mov    $0x21,%ecx
0x47c:	48 8b c6             	mov    %rsi,%rax
0x47f:	48 8b 00             	mov    (%rax),%rax
0x482:	48 63 ff             	movslq %edi,%rdi
0x485:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x48a:	48 8b fa             	mov    %rdx,%rdi
0x48d:	48 8b d1             	mov    %rcx,%rdx
0x490:	b9 03 00 00 00       	mov    $0x3,%ecx
0x495:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x499:	90                   	nop
0x49a:	90                   	nop
0x49b:	e8 00 00 00 00       	callq  0x4a0
0x4a0:	90                   	nop
0x4a1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4a5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4a9:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x4ae:	ff d0                	callq  *%rax
0x4b0:	90                   	nop
0x4b1:	48 8b 3d e8 fa ff ff 	mov    -0x518(%rip),%rdi        # 0xffffffa0
0x4b8:	be 29 00 00 00       	mov    $0x29,%esi
0x4bd:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4c1:	48 8b c8             	mov    %rax,%rcx
0x4c4:	48 63 f6             	movslq %esi,%rsi
0x4c7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4cc:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4d2:	0f 8d 07 00 00 00    	jge    0x4df
0x4d8:	83 c1 01             	add    $0x1,%ecx
0x4db:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4df:	48 8b 3d c2 fa ff ff 	mov    -0x53e(%rip),%rdi        # 0xffffffa8
0x4e6:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x4ea:	83 e8 01             	sub    $0x1,%eax
0x4ed:	89 47 30             	mov    %eax,0x30(%rdi)
0x4f0:	4d 8b 36             	mov    (%r14),%r14
0x4f3:	e9 e6 fd ff ff       	jmpq   0x2de
0x4f8:	48 8b 3d b1 fa ff ff 	mov    -0x54f(%rip),%rdi        # 0xffffffb0
0x4ff:	be 18 00 00 00       	mov    $0x18,%esi
0x504:	48 63 f6             	movslq %esi,%rsi
0x507:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x50b:	48 83 ec 10          	sub    $0x10,%rsp
0x50f:	48 89 04 24          	mov    %rax,(%rsp)
0x513:	4c 8b 1d 9e fa ff ff 	mov    -0x562(%rip),%r11        # 0xffffffb8
0x51a:	48 83 ec 10          	sub    $0x10,%rsp
0x51e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x522:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x527:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x52c:	48 8b 15 8d fa ff ff 	mov    -0x573(%rip),%rdx        # 0xffffffc0
0x533:	b9 2b 00 00 00       	mov    $0x2b,%ecx
0x538:	48 8b c6             	mov    %rsi,%rax
0x53b:	48 8b 00             	mov    (%rax),%rax
0x53e:	48 63 ff             	movslq %edi,%rdi
0x541:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x546:	48 8b fa             	mov    %rdx,%rdi
0x549:	48 8b d1             	mov    %rcx,%rdx
0x54c:	b9 03 00 00 00       	mov    $0x3,%ecx
0x551:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x555:	90                   	nop
0x556:	90                   	nop
0x557:	e8 00 00 00 00       	callq  0x55c
0x55c:	90                   	nop
0x55d:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x561:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x565:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x56a:	ff d0                	callq  *%rax
0x56c:	90                   	nop
0x56d:	48 8b 3d 54 fa ff ff 	mov    -0x5ac(%rip),%rdi        # 0xffffffc8
0x574:	be 33 00 00 00       	mov    $0x33,%esi
0x579:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x57d:	48 8b c8             	mov    %rax,%rcx
0x580:	48 63 f6             	movslq %esi,%rsi
0x583:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x588:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x58e:	0f 8d 07 00 00 00    	jge    0x59b
0x594:	83 c1 01             	add    $0x1,%ecx
0x597:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x59b:	e9 75 00 00 00       	jmpq   0x615
0x5a0:	48 8b 3d 29 fa ff ff 	mov    -0x5d7(%rip),%rdi        # 0xffffffd0
0x5a7:	be 18 00 00 00       	mov    $0x18,%esi
0x5ac:	48 63 f6             	movslq %esi,%rsi
0x5af:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5b3:	48 83 ec 10          	sub    $0x10,%rsp
0x5b7:	48 89 04 24          	mov    %rax,(%rsp)
0x5bb:	4c 8b 1d 16 fa ff ff 	mov    -0x5ea(%rip),%r11        # 0xffffffd8
0x5c2:	48 83 ec 10          	sub    $0x10,%rsp
0x5c6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5ca:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5cf:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5d4:	48 8b 15 05 fa ff ff 	mov    -0x5fb(%rip),%rdx        # 0xffffffe0
0x5db:	b9 35 00 00 00       	mov    $0x35,%ecx
0x5e0:	48 8b c6             	mov    %rsi,%rax
0x5e3:	48 8b 00             	mov    (%rax),%rax
0x5e6:	48 63 ff             	movslq %edi,%rdi
0x5e9:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5ee:	48 8b fa             	mov    %rdx,%rdi
0x5f1:	48 8b d1             	mov    %rcx,%rdx
0x5f4:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5f9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5fd:	90                   	nop
0x5fe:	90                   	nop
0x5ff:	e8 00 00 00 00       	callq  0x604
0x604:	90                   	nop
0x605:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x609:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x60d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x612:	ff d0                	callq  *%rax
0x614:	90                   	nop
0x615:	48 83 c5 40          	add    $0x40,%rbp
0x619:	c9                   	leaveq 
0x61a:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d 29 ff ff ff 	mov    %r11,-0xd7(%rip)        # 0xffffff50
0x27:	48 8b 3d 2a ff ff ff 	mov    -0xd6(%rip),%rdi        # 0xffffff58
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
0x53:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	40 8b 34 24          	rex mov (%rsp),%esi
0x65:	48 8b 3d f4 fe ff ff 	mov    -0x10c(%rip),%rdi        # 0xffffff60
0x6c:	83 fe 00             	cmp    $0x0,%esi
0x6f:	0f 8c fb 00 00 00    	jl     0x170
0x75:	85 07                	test   %eax,(%rdi)
0x77:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x7e:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x82:	48 8b 3d df fe ff ff 	mov    -0x121(%rip),%rdi        # 0xffffff68
0x89:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x8d:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x91:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x98:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x9c:	48 63 42 44          	movslq 0x44(%rdx),%rax
0xa0:	48 63 c0             	movslq %eax,%rax
0xa3:	48 63 d6             	movslq %esi,%rdx
0xa6:	48 0f af c2          	imul   %rdx,%rax
0xaa:	48 83 c0 18          	add    $0x18,%rax
0xae:	48 83 c0 07          	add    $0x7,%rax
0xb2:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0xb9:	00 00 00 
0xbc:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0xc3:	ff ff ff 
0xc6:	49 33 d3             	xor    %r11,%rdx
0xc9:	48 23 c2             	and    %rdx,%rax
0xcc:	49 8b d6             	mov    %r14,%rdx
0xcf:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0xd3:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0xda:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0xe1:	49 8b d0             	mov    %r8,%rdx
0xe4:	48 03 d0             	add    %rax,%rdx
0xe7:	4c 8b d2             	mov    %rdx,%r10
0xea:	4d 3b d1             	cmp    %r9,%r10
0xed:	0f 86 1f 00 00 00    	jbe    0x112
0xf3:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0xf7:	48 8b f0             	mov    %rax,%rsi
0xfa:	48 8b d1             	mov    %rcx,%rdx
0xfd:	49 8b c8             	mov    %r8,%rcx
0x100:	4d 8b c1             	mov    %r9,%r8
0x103:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x107:	e8 00 00 00 00       	callq  0x10c
0x10c:	90                   	nop
0x10d:	e9 12 00 00 00       	jmpq   0x124
0x112:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x116:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x11a:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x121:	49 8b c0             	mov    %r8,%rax
0x124:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x128:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x12c:	e8 00 00 00 00       	callq  0x131
0x131:	90                   	nop
0x132:	90                   	nop
0x133:	e8 00 00 00 00       	callq  0x138
0x138:	90                   	nop
0x139:	83 f8 00             	cmp    $0x0,%eax
0x13c:	0f 84 40 00 00 00    	je     0x182
0x142:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x146:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x14a:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x14e:	85 07                	test   %eax,(%rdi)
0x150:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x154:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x158:	83 e0 ff             	and    $0xffffffff,%eax
0x15b:	48 8b f8             	mov    %rax,%rdi
0x15e:	48 8b f2             	mov    %rdx,%rsi
0x161:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x165:	e8 00 00 00 00       	callq  0x16a
0x16a:	90                   	nop
0x16b:	e9 12 00 00 00       	jmpq   0x182
0x170:	48 8b fe             	mov    %rsi,%rdi
0x173:	e8 00 00 00 00       	callq  0x178
0x178:	90                   	nop
0x179:	48 8b f8             	mov    %rax,%rdi
0x17c:	e8 00 00 00 00       	callq  0x181
0x181:	90                   	nop
0x182:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x186:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x18a:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x18e:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x192:	48 89 18             	mov    %rbx,(%rax)
0x195:	48 89 04 24          	mov    %rax,(%rsp)
0x199:	e8 00 00 00 00       	callq  0x19e
0x19e:	90                   	nop
0x19f:	48 8b 3d ca fd ff ff 	mov    -0x236(%rip),%rdi        # 0xffffff70
0x1a6:	be 10 00 00 00       	mov    $0x10,%esi
0x1ab:	48 63 f6             	movslq %esi,%rsi
0x1ae:	0f be 04 37          	movsbl (%rdi,%rsi,1),%eax
0x1b2:	48 83 ec 10          	sub    $0x10,%rsp
0x1b6:	89 04 24             	mov    %eax,(%rsp)
0x1b9:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1bd:	b8 00 00 00 00       	mov    $0x0,%eax
0x1c2:	48 83 c4 10          	add    $0x10,%rsp
0x1c6:	44 3b d8             	cmp    %eax,%r11d
0x1c9:	74 33                	je     0x1fe
0x1cb:	48 8b 3d a6 fd ff ff 	mov    -0x25a(%rip),%rdi        # 0xffffff78
0x1d2:	be 01 00 00 00       	mov    $0x1,%esi
0x1d7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1db:	48 8b c8             	mov    %rax,%rcx
0x1de:	48 63 f6             	movslq %esi,%rsi
0x1e1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1e6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1ec:	0f 8d 07 00 00 00    	jge    0x1f9
0x1f2:	83 c1 01             	add    $0x1,%ecx
0x1f5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1f9:	e9 c7 01 00 00       	jmpq   0x3c5
0x1fe:	48 8b 3d 7b fd ff ff 	mov    -0x285(%rip),%rdi        # 0xffffff80
0x205:	be 02 00 00 00       	mov    $0x2,%esi
0x20a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x20e:	48 8b c8             	mov    %rax,%rcx
0x211:	48 63 f6             	movslq %esi,%rsi
0x214:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x219:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x21f:	0f 8d 07 00 00 00    	jge    0x22c
0x225:	83 c1 01             	add    $0x1,%ecx
0x228:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x22c:	48 8b 3d 55 fd ff ff 	mov    -0x2ab(%rip),%rdi        # 0xffffff88
0x233:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x237:	48 8b 35 52 fd ff ff 	mov    -0x2ae(%rip),%rsi        # 0xffffff90
0x23e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x242:	49 8b ce             	mov    %r14,%rcx
0x245:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x249:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x250:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x257:	48 8b d9             	mov    %rcx,%rbx
0x25a:	48 03 da             	add    %rdx,%rbx
0x25d:	4c 8b cb             	mov    %rbx,%r9
0x260:	4d 3b c8             	cmp    %r8,%r9
0x263:	0f 86 14 00 00 00    	jbe    0x27d
0x269:	48 8b fe             	mov    %rsi,%rdi
0x26c:	48 8b f2             	mov    %rdx,%rsi
0x26f:	48 8b d0             	mov    %rax,%rdx
0x272:	e8 00 00 00 00       	callq  0x277
0x277:	90                   	nop
0x278:	e9 0a 00 00 00       	jmpq   0x287
0x27d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x284:	48 8b c1             	mov    %rcx,%rax
0x287:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x28b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x28f:	90                   	nop
0x290:	90                   	nop
0x291:	90                   	nop
0x292:	e8 00 00 00 00       	callq  0x297
0x297:	90                   	nop
0x298:	90                   	nop
0x299:	90                   	nop
0x29a:	e8 00 00 00 00       	callq  0x29f
0x29f:	90                   	nop
0x2a0:	83 f8 00             	cmp    $0x0,%eax
0x2a3:	0f 84 27 00 00 00    	je     0x2d0
0x2a9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2ad:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2b1:	85 06                	test   %eax,(%rsi)
0x2b3:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2b7:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2bb:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2bf:	83 e2 ff             	and    $0xffffffff,%edx
0x2c2:	48 8b fa             	mov    %rdx,%rdi
0x2c5:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2c9:	90                   	nop
0x2ca:	e8 00 00 00 00       	callq  0x2cf
0x2cf:	90                   	nop
0x2d0:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2d4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2d8:	48 89 38             	mov    %rdi,(%rax)
0x2db:	48 83 ec 10          	sub    $0x10,%rsp
0x2df:	48 89 04 24          	mov    %rax,(%rsp)
0x2e3:	48 83 ec 10          	sub    $0x10,%rsp
0x2e7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2f0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2f4:	41 85 03             	test   %eax,(%r11)
0x2f7:	90                   	nop
0x2f8:	e8 00 00 00 00       	callq  0x2fd
0x2fd:	90                   	nop
0x2fe:	48 8b 3c 24          	mov    (%rsp),%rdi
0x302:	4d 33 db             	xor    %r11,%r11
0x305:	49 3b fb             	cmp    %r11,%rdi
0x308:	0f 84 62 00 00 00    	je     0x370
0x30e:	48 8b 0d 83 fc ff ff 	mov    -0x37d(%rip),%rcx        # 0xffffff98
0x315:	4d 33 db             	xor    %r11,%r11
0x318:	49 3b fb             	cmp    %r11,%rdi
0x31b:	0f 84 41 00 00 00    	je     0x362
0x321:	48 8b 1f             	mov    (%rdi),%rbx
0x324:	48 3b d9             	cmp    %rcx,%rbx
0x327:	0f 84 2b 00 00 00    	je     0x358
0x32d:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x331:	b8 06 00 00 00       	mov    $0x6,%eax
0x336:	99                   	cltd   
0x337:	41 f7 f8             	idiv   %r8d
0x33a:	4c 8b ca             	mov    %rdx,%r9
0x33d:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x341:	45 03 c8             	add    %r8d,%r9d
0x344:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x349:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x34e:	41 83 f9 06          	cmp    $0x6,%r9d
0x352:	0f 85 0a 00 00 00    	jne    0x362
0x358:	be 01 00 00 00       	mov    $0x1,%esi
0x35d:	e9 05 00 00 00       	jmpq   0x367
0x362:	be 00 00 00 00       	mov    $0x0,%esi
0x367:	83 fe 00             	cmp    $0x0,%esi
0x36a:	0f 84 44 00 00 00    	je     0x3b4
0x370:	48 8b f4             	mov    %rsp,%rsi
0x373:	48 8b d5             	mov    %rbp,%rdx
0x376:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x376
0x37d:	48 8b 05 1c fc ff ff 	mov    -0x3e4(%rip),%rax        # 0xffffffa0
0x384:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x388:	48 8b c1             	mov    %rcx,%rax
0x38b:	48 2b c3             	sub    %rbx,%rax
0x38e:	b9 01 00 00 00       	mov    $0x1,%ecx
0x393:	48 d3 e0             	shl    %cl,%rax
0x396:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x39d:	00 00 00 
0x3a0:	49 0b c3             	or     %r11,%rax
0x3a3:	48 8b c8             	mov    %rax,%rcx
0x3a6:	90                   	nop
0x3a7:	90                   	nop
0x3a8:	90                   	nop
0x3a9:	e8 00 00 00 00       	callq  0x3ae
0x3ae:	90                   	nop
0x3af:	e9 0d 00 00 00       	jmpq   0x3c1
0x3b4:	48 8b 3d ed fb ff ff 	mov    -0x413(%rip),%rdi        # 0xffffffa8
0x3bb:	e8 00 00 00 00       	callq  0x3c0
0x3c0:	90                   	nop
0x3c1:	48 83 c4 10          	add    $0x10,%rsp
0x3c5:	48 8b 3d e4 fb ff ff 	mov    -0x41c(%rip),%rdi        # 0xffffffb0
0x3cc:	be 18 00 00 00       	mov    $0x18,%esi
0x3d1:	48 63 f6             	movslq %esi,%rsi
0x3d4:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3d8:	48 83 ec 10          	sub    $0x10,%rsp
0x3dc:	48 89 04 24          	mov    %rax,(%rsp)
0x3e0:	4c 8b 1d d1 fb ff ff 	mov    -0x42f(%rip),%r11        # 0xffffffb8
0x3e7:	48 83 ec 10          	sub    $0x10,%rsp
0x3eb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3ef:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3f4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3f9:	48 8b 15 c0 fb ff ff 	mov    -0x440(%rip),%rdx        # 0xffffffc0
0x400:	b9 05 00 00 00       	mov    $0x5,%ecx
0x405:	48 8b c6             	mov    %rsi,%rax
0x408:	48 8b 00             	mov    (%rax),%rax
0x40b:	48 63 ff             	movslq %edi,%rdi
0x40e:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x413:	48 8b fa             	mov    %rdx,%rdi
0x416:	48 8b d1             	mov    %rcx,%rdx
0x419:	b9 03 00 00 00       	mov    $0x3,%ecx
0x41e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x422:	90                   	nop
0x423:	90                   	nop
0x424:	e8 00 00 00 00       	callq  0x429
0x429:	90                   	nop
0x42a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x42e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x432:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x437:	ff d0                	callq  *%rax
0x439:	90                   	nop
0x43a:	48 8b 3d 87 fb ff ff 	mov    -0x479(%rip),%rdi        # 0xffffffc8
0x441:	be 0d 00 00 00       	mov    $0xd,%esi
0x446:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x44a:	48 8b c8             	mov    %rax,%rcx
0x44d:	48 63 f6             	movslq %esi,%rsi
0x450:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x455:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x45b:	0f 8d 07 00 00 00    	jge    0x468
0x461:	83 c1 01             	add    $0x1,%ecx
0x464:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x468:	e9 98 00 00 00       	jmpq   0x505
0x46d:	49 8b fe             	mov    %r14,%rdi
0x470:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x474:	85 07                	test   %eax,(%rdi)
0x476:	e8 00 00 00 00       	callq  0x47b
0x47b:	90                   	nop
0x47c:	48 83 ec 10          	sub    $0x10,%rsp
0x480:	48 89 04 24          	mov    %rax,(%rsp)
0x484:	4c 8b 1c 24          	mov    (%rsp),%r11
0x488:	48 83 c4 10          	add    $0x10,%rsp
0x48c:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x490:	48 8b 3d 39 fb ff ff 	mov    -0x4c7(%rip),%rdi        # 0xffffffd0
0x497:	be 18 00 00 00       	mov    $0x18,%esi
0x49c:	48 63 f6             	movslq %esi,%rsi
0x49f:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4a3:	48 83 ec 10          	sub    $0x10,%rsp
0x4a7:	48 89 04 24          	mov    %rax,(%rsp)
0x4ab:	4c 8b 1d 26 fb ff ff 	mov    -0x4da(%rip),%r11        # 0xffffffd8
0x4b2:	48 83 ec 10          	sub    $0x10,%rsp
0x4b6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4ba:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x4bf:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x4c4:	48 8b 15 15 fb ff ff 	mov    -0x4eb(%rip),%rdx        # 0xffffffe0
0x4cb:	b9 0f 00 00 00       	mov    $0xf,%ecx
0x4d0:	48 8b c6             	mov    %rsi,%rax
0x4d3:	48 8b 00             	mov    (%rax),%rax
0x4d6:	48 63 ff             	movslq %edi,%rdi
0x4d9:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4de:	48 8b fa             	mov    %rdx,%rdi
0x4e1:	48 8b d1             	mov    %rcx,%rdx
0x4e4:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4e9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4ed:	90                   	nop
0x4ee:	90                   	nop
0x4ef:	e8 00 00 00 00       	callq  0x4f4
0x4f4:	90                   	nop
0x4f5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4f9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4fd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x502:	ff d0                	callq  *%rax
0x504:	90                   	nop
0x505:	48 83 c5 40          	add    $0x40,%rbp
0x509:	c9                   	leaveq 
0x50a:	c2 10 00             	retq   $0x10

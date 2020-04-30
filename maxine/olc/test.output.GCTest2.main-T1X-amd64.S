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
0x20:	4c 89 1d 71 fe ff ff 	mov    %r11,-0x18f(%rip)        # 0xfffffe98
0x27:	48 8b 3d 72 fe ff ff 	mov    -0x18e(%rip),%rdi        # 0xfffffea0
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
0x7c:	48 8b 3d 25 fe ff ff 	mov    -0x1db(%rip),%rdi        # 0xfffffea8
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
0xaf:	48 8b 3d fa fd ff ff 	mov    -0x206(%rip),%rdi        # 0xfffffeb0
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
0xee:	48 8b 3d c3 fd ff ff 	mov    -0x23d(%rip),%rdi        # 0xfffffeb8
0xf5:	be 24 00 00 00       	mov    $0x24,%esi
0xfa:	0f be d2             	movsbl %dl,%edx
0xfd:	48 63 f6             	movslq %esi,%rsi
0x100:	88 14 37             	mov    %dl,(%rdi,%rsi,1)
0x103:	48 83 c4 10          	add    $0x10,%rsp
0x107:	48 8b 3d b2 fd ff ff 	mov    -0x24e(%rip),%rdi        # 0xfffffec0
0x10e:	be 18 00 00 00       	mov    $0x18,%esi
0x113:	48 63 f6             	movslq %esi,%rsi
0x116:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x11a:	48 83 ec 10          	sub    $0x10,%rsp
0x11e:	48 89 04 24          	mov    %rax,(%rsp)
0x122:	4c 8b 1d 9f fd ff ff 	mov    -0x261(%rip),%r11        # 0xfffffec8
0x129:	48 83 ec 10          	sub    $0x10,%rsp
0x12d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x131:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x136:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x13b:	48 8b 15 8e fd ff ff 	mov    -0x272(%rip),%rdx        # 0xfffffed0
0x142:	b9 03 00 00 00       	mov    $0x3,%ecx
0x147:	48 8b c6             	mov    %rsi,%rax
0x14a:	48 8b 00             	mov    (%rax),%rax
0x14d:	48 63 ff             	movslq %edi,%rdi
0x150:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x155:	48 8b fa             	mov    %rdx,%rdi
0x158:	48 8b d1             	mov    %rcx,%rdx
0x15b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x160:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x164:	90                   	nop
0x165:	90                   	nop
0x166:	e8 00 00 00 00       	callq  0x16b
0x16b:	90                   	nop
0x16c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x170:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x174:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x179:	ff d0                	callq  *%rax
0x17b:	90                   	nop
0x17c:	48 8b 3d 55 fd ff ff 	mov    -0x2ab(%rip),%rdi        # 0xfffffed8
0x183:	be 18 00 00 00       	mov    $0x18,%esi
0x188:	48 63 f6             	movslq %esi,%rsi
0x18b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x18f:	48 83 ec 10          	sub    $0x10,%rsp
0x193:	48 89 04 24          	mov    %rax,(%rsp)
0x197:	4c 8b 1d 42 fd ff ff 	mov    -0x2be(%rip),%r11        # 0xfffffee0
0x19e:	48 83 ec 10          	sub    $0x10,%rsp
0x1a2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1a6:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1ab:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1b0:	48 8b 15 31 fd ff ff 	mov    -0x2cf(%rip),%rdx        # 0xfffffee8
0x1b7:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x1bc:	48 8b c6             	mov    %rsi,%rax
0x1bf:	48 8b 00             	mov    (%rax),%rax
0x1c2:	48 63 ff             	movslq %edi,%rdi
0x1c5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1ca:	48 8b fa             	mov    %rdx,%rdi
0x1cd:	48 8b d1             	mov    %rcx,%rdx
0x1d0:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1d5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1d9:	90                   	nop
0x1da:	90                   	nop
0x1db:	e8 00 00 00 00       	callq  0x1e0
0x1e0:	90                   	nop
0x1e1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1e5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1e9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1ee:	ff d0                	callq  *%rax
0x1f0:	90                   	nop
0x1f1:	41 bb 12 00 00 00    	mov    $0x12,%r11d
0x1f7:	48 83 ec 10          	sub    $0x10,%rsp
0x1fb:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1ff:	90                   	nop
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 83 ec 10          	sub    $0x10,%rsp
0x20a:	48 89 04 24          	mov    %rax,(%rsp)
0x20e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x212:	48 83 c4 10          	add    $0x10,%rsp
0x216:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x21a:	4d 33 db             	xor    %r11,%r11
0x21d:	48 83 ec 10          	sub    $0x10,%rsp
0x221:	4c 89 1c 24          	mov    %r11,(%rsp)
0x225:	4c 8b 1c 24          	mov    (%rsp),%r11
0x229:	48 83 c4 10          	add    $0x10,%rsp
0x22d:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x231:	48 8b 3d b8 fc ff ff 	mov    -0x348(%rip),%rdi        # 0xfffffef0
0x238:	be 18 00 00 00       	mov    $0x18,%esi
0x23d:	48 63 f6             	movslq %esi,%rsi
0x240:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x244:	48 83 ec 10          	sub    $0x10,%rsp
0x248:	48 89 04 24          	mov    %rax,(%rsp)
0x24c:	4c 8b 1d a5 fc ff ff 	mov    -0x35b(%rip),%r11        # 0xfffffef8
0x253:	48 83 ec 10          	sub    $0x10,%rsp
0x257:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25b:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x260:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x265:	48 8b 15 94 fc ff ff 	mov    -0x36c(%rip),%rdx        # 0xffffff00
0x26c:	b9 16 00 00 00       	mov    $0x16,%ecx
0x271:	48 8b c6             	mov    %rsi,%rax
0x274:	48 8b 00             	mov    (%rax),%rax
0x277:	48 63 ff             	movslq %edi,%rdi
0x27a:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x27f:	48 8b fa             	mov    %rdx,%rdi
0x282:	48 8b d1             	mov    %rcx,%rdx
0x285:	b9 03 00 00 00       	mov    $0x3,%ecx
0x28a:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x28e:	90                   	nop
0x28f:	90                   	nop
0x290:	e8 00 00 00 00       	callq  0x295
0x295:	90                   	nop
0x296:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x29a:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x29e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2a3:	ff d0                	callq  *%rax
0x2a5:	90                   	nop
0x2a6:	48 8b 3d 5b fc ff ff 	mov    -0x3a5(%rip),%rdi        # 0xffffff08
0x2ad:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x2b1:	48 8b 35 58 fc ff ff 	mov    -0x3a8(%rip),%rsi        # 0xffffff10
0x2b8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2bc:	49 8b ce             	mov    %r14,%rcx
0x2bf:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x2c3:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x2ca:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x2d1:	48 8b d9             	mov    %rcx,%rbx
0x2d4:	48 03 da             	add    %rdx,%rbx
0x2d7:	4c 8b cb             	mov    %rbx,%r9
0x2da:	4d 3b c8             	cmp    %r8,%r9
0x2dd:	0f 86 14 00 00 00    	jbe    0x2f7
0x2e3:	48 8b fe             	mov    %rsi,%rdi
0x2e6:	48 8b f2             	mov    %rdx,%rsi
0x2e9:	48 8b d0             	mov    %rax,%rdx
0x2ec:	e8 00 00 00 00       	callq  0x2f1
0x2f1:	90                   	nop
0x2f2:	e9 0a 00 00 00       	jmpq   0x301
0x2f7:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x2fe:	48 8b c1             	mov    %rcx,%rax
0x301:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x305:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x309:	90                   	nop
0x30a:	90                   	nop
0x30b:	90                   	nop
0x30c:	e8 00 00 00 00       	callq  0x311
0x311:	90                   	nop
0x312:	90                   	nop
0x313:	90                   	nop
0x314:	e8 00 00 00 00       	callq  0x319
0x319:	90                   	nop
0x31a:	83 f8 00             	cmp    $0x0,%eax
0x31d:	0f 84 27 00 00 00    	je     0x34a
0x323:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x327:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x32b:	85 06                	test   %eax,(%rsi)
0x32d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x331:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x335:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x339:	83 e2 ff             	and    $0xffffffff,%edx
0x33c:	48 8b fa             	mov    %rdx,%rdi
0x33f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x343:	90                   	nop
0x344:	e8 00 00 00 00       	callq  0x349
0x349:	90                   	nop
0x34a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x34e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x352:	48 89 38             	mov    %rdi,(%rax)
0x355:	48 83 ec 10          	sub    $0x10,%rsp
0x359:	48 89 04 24          	mov    %rax,(%rsp)
0x35d:	48 83 ec 10          	sub    $0x10,%rsp
0x361:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x366:	4c 89 1c 24          	mov    %r11,(%rsp)
0x36a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x36e:	41 85 03             	test   %eax,(%r11)
0x371:	e8 00 00 00 00       	callq  0x376
0x376:	90                   	nop
0x377:	4c 8b 1c 24          	mov    (%rsp),%r11
0x37b:	48 83 c4 10          	add    $0x10,%rsp
0x37f:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x383:	41 bb 10 00 00 00    	mov    $0x10,%r11d
0x389:	48 83 ec 10          	sub    $0x10,%rsp
0x38d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x391:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x395:	48 83 ec 10          	sub    $0x10,%rsp
0x399:	4c 89 1c 24          	mov    %r11,(%rsp)
0x39d:	90                   	nop
0x39e:	90                   	nop
0x39f:	90                   	nop
0x3a0:	e8 00 00 00 00       	callq  0x3a5
0x3a5:	90                   	nop
0x3a6:	48 8b 3d 6b fb ff ff 	mov    -0x495(%rip),%rdi        # 0xffffff18
0x3ad:	be 18 00 00 00       	mov    $0x18,%esi
0x3b2:	48 63 f6             	movslq %esi,%rsi
0x3b5:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3b9:	48 83 ec 10          	sub    $0x10,%rsp
0x3bd:	48 89 04 24          	mov    %rax,(%rsp)
0x3c1:	4c 8b 1d 58 fb ff ff 	mov    -0x4a8(%rip),%r11        # 0xffffff20
0x3c8:	48 83 ec 10          	sub    $0x10,%rsp
0x3cc:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3d0:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3d5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3da:	48 8b 15 47 fb ff ff 	mov    -0x4b9(%rip),%rdx        # 0xffffff28
0x3e1:	b9 21 00 00 00       	mov    $0x21,%ecx
0x3e6:	48 8b c6             	mov    %rsi,%rax
0x3e9:	48 8b 00             	mov    (%rax),%rax
0x3ec:	48 63 ff             	movslq %edi,%rdi
0x3ef:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3f4:	48 8b fa             	mov    %rdx,%rdi
0x3f7:	48 8b d1             	mov    %rcx,%rdx
0x3fa:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3ff:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x403:	90                   	nop
0x404:	90                   	nop
0x405:	e8 00 00 00 00       	callq  0x40a
0x40a:	90                   	nop
0x40b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x40f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x413:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x418:	ff d0                	callq  *%rax
0x41a:	90                   	nop
0x41b:	41 bb 20 a1 07 00    	mov    $0x7a120,%r11d
0x421:	48 83 ec 10          	sub    $0x10,%rsp
0x425:	44 89 1c 24          	mov    %r11d,(%rsp)
0x429:	40 8b 34 24          	rex mov (%rsp),%esi
0x42d:	48 8b 3d fc fa ff ff 	mov    -0x504(%rip),%rdi        # 0xffffff30
0x434:	83 fe 00             	cmp    $0x0,%esi
0x437:	0f 8c fb 00 00 00    	jl     0x538
0x43d:	85 07                	test   %eax,(%rdi)
0x43f:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x446:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x44a:	48 8b 3d e7 fa ff ff 	mov    -0x519(%rip),%rdi        # 0xffffff38
0x451:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x455:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x459:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x460:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x464:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x468:	48 63 c0             	movslq %eax,%rax
0x46b:	48 63 d6             	movslq %esi,%rdx
0x46e:	48 0f af c2          	imul   %rdx,%rax
0x472:	48 83 c0 18          	add    $0x18,%rax
0x476:	48 83 c0 07          	add    $0x7,%rax
0x47a:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x481:	00 00 00 
0x484:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x48b:	ff ff ff 
0x48e:	49 33 d3             	xor    %r11,%rdx
0x491:	48 23 c2             	and    %rdx,%rax
0x494:	49 8b d6             	mov    %r14,%rdx
0x497:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x49b:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x4a2:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x4a9:	49 8b d0             	mov    %r8,%rdx
0x4ac:	48 03 d0             	add    %rax,%rdx
0x4af:	4c 8b d2             	mov    %rdx,%r10
0x4b2:	4d 3b d1             	cmp    %r9,%r10
0x4b5:	0f 86 1f 00 00 00    	jbe    0x4da
0x4bb:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x4bf:	48 8b f0             	mov    %rax,%rsi
0x4c2:	48 8b d1             	mov    %rcx,%rdx
0x4c5:	49 8b c8             	mov    %r8,%rcx
0x4c8:	4d 8b c1             	mov    %r9,%r8
0x4cb:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4cf:	e8 00 00 00 00       	callq  0x4d4
0x4d4:	90                   	nop
0x4d5:	e9 12 00 00 00       	jmpq   0x4ec
0x4da:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4de:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x4e2:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x4e9:	49 8b c0             	mov    %r8,%rax
0x4ec:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x4f0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4f4:	e8 00 00 00 00       	callq  0x4f9
0x4f9:	90                   	nop
0x4fa:	90                   	nop
0x4fb:	e8 00 00 00 00       	callq  0x500
0x500:	90                   	nop
0x501:	83 f8 00             	cmp    $0x0,%eax
0x504:	0f 84 40 00 00 00    	je     0x54a
0x50a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x50e:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x512:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x516:	85 07                	test   %eax,(%rdi)
0x518:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x51c:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x520:	83 e0 ff             	and    $0xffffffff,%eax
0x523:	48 8b f8             	mov    %rax,%rdi
0x526:	48 8b f2             	mov    %rdx,%rsi
0x529:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x52d:	e8 00 00 00 00       	callq  0x532
0x532:	90                   	nop
0x533:	e9 12 00 00 00       	jmpq   0x54a
0x538:	48 8b fe             	mov    %rsi,%rdi
0x53b:	e8 00 00 00 00       	callq  0x540
0x540:	90                   	nop
0x541:	48 8b f8             	mov    %rax,%rdi
0x544:	e8 00 00 00 00       	callq  0x549
0x549:	90                   	nop
0x54a:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x54e:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x552:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x556:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x55a:	48 89 18             	mov    %rbx,(%rax)
0x55d:	48 89 04 24          	mov    %rax,(%rsp)
0x561:	4c 8b 1c 24          	mov    (%rsp),%r11
0x565:	48 83 c4 10          	add    $0x10,%rsp
0x569:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x56d:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x573:	48 83 ec 10          	sub    $0x10,%rsp
0x577:	44 89 1c 24          	mov    %r11d,(%rsp)
0x57b:	44 8b 1c 24          	mov    (%rsp),%r11d
0x57f:	48 83 c4 10          	add    $0x10,%rsp
0x583:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x587:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x58b:	48 83 ec 10          	sub    $0x10,%rsp
0x58f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x593:	41 bb 90 d0 03 00    	mov    $0x3d090,%r11d
0x599:	48 83 ec 10          	sub    $0x10,%rsp
0x59d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5a1:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x5a6:	8b 04 24             	mov    (%rsp),%eax
0x5a9:	48 83 c4 20          	add    $0x20,%rsp
0x5ad:	44 3b d8             	cmp    %eax,%r11d
0x5b0:	7c 33                	jl     0x5e5
0x5b2:	48 8b 3d 87 f9 ff ff 	mov    -0x679(%rip),%rdi        # 0xffffff40
0x5b9:	be 29 00 00 00       	mov    $0x29,%esi
0x5be:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5c2:	48 8b c8             	mov    %rax,%rcx
0x5c5:	48 63 f6             	movslq %esi,%rsi
0x5c8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5cd:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5d3:	0f 8d 07 00 00 00    	jge    0x5e0
0x5d9:	83 c1 01             	add    $0x1,%ecx
0x5dc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5e0:	e9 1f 01 00 00       	jmpq   0x704
0x5e5:	48 8b 3d 5c f9 ff ff 	mov    -0x6a4(%rip),%rdi        # 0xffffff48
0x5ec:	be 2a 00 00 00       	mov    $0x2a,%esi
0x5f1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5f5:	48 8b c8             	mov    %rax,%rcx
0x5f8:	48 63 f6             	movslq %esi,%rsi
0x5fb:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x600:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x606:	0f 8d 07 00 00 00    	jge    0x613
0x60c:	83 c1 01             	add    $0x1,%ecx
0x60f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x613:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x617:	48 83 ec 10          	sub    $0x10,%rsp
0x61b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x61f:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x623:	48 83 ec 10          	sub    $0x10,%rsp
0x627:	44 89 1c 24          	mov    %r11d,(%rsp)
0x62b:	49 bb 00 00 00 00 00 	movabs $0x3ff0000000000000,%r11
0x632:	00 f0 3f 
0x635:	48 83 ec 20          	sub    $0x20,%rsp
0x639:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x63e:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x642:	48 83 ec 10          	sub    $0x10,%rsp
0x646:	44 89 1c 24          	mov    %r11d,(%rsp)
0x64a:	40 8b 3c 24          	rex mov (%rsp),%edi
0x64e:	f2 0f 2a c7          	cvtsi2sd %edi,%xmm0
0x652:	48 83 ec 10          	sub    $0x10,%rsp
0x656:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
0x65c:	f2 0f 10 44 24 30    	movsd  0x30(%rsp),%xmm0
0x662:	f2 0f 10 4c 24 10    	movsd  0x10(%rsp),%xmm1
0x668:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
0x66c:	48 83 c4 20          	add    $0x20,%rsp
0x670:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
0x676:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x67b:	40 8b 74 24 20       	rex mov 0x20(%rsp),%esi
0x680:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
0x686:	48 8b c7             	mov    %rdi,%rax
0x689:	48 63 40 10          	movslq 0x10(%rax),%rax
0x68d:	3b f0                	cmp    %eax,%esi
0x68f:	0f 82 0f 00 00 00    	jb     0x6a4
0x695:	e8 00 00 00 00       	callq  0x69a
0x69a:	90                   	nop
0x69b:	48 8b f8             	mov    %rax,%rdi
0x69e:	e8 00 00 00 00       	callq  0x6a3
0x6a3:	90                   	nop
0x6a4:	48 63 f6             	movslq %esi,%rsi
0x6a7:	f2 0f 11 44 f7 18    	movsd  %xmm0,0x18(%rdi,%rsi,8)
0x6ad:	48 83 c4 40          	add    $0x40,%rsp
0x6b1:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x6b5:	41 83 c3 01          	add    $0x1,%r11d
0x6b9:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x6bd:	48 8b 3d 8c f8 ff ff 	mov    -0x774(%rip),%rdi        # 0xffffff50
0x6c4:	be 2c 00 00 00       	mov    $0x2c,%esi
0x6c9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x6cd:	48 8b c8             	mov    %rax,%rcx
0x6d0:	48 63 f6             	movslq %esi,%rsi
0x6d3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x6d8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x6de:	0f 8d 07 00 00 00    	jge    0x6eb
0x6e4:	83 c1 01             	add    $0x1,%ecx
0x6e7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x6eb:	48 8b 3d 66 f8 ff ff 	mov    -0x79a(%rip),%rdi        # 0xffffff58
0x6f2:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x6f6:	83 e8 01             	sub    $0x1,%eax
0x6f9:	89 47 30             	mov    %eax,0x30(%rdi)
0x6fc:	4d 8b 36             	mov    (%r14),%r14
0x6ff:	e9 83 fe ff ff       	jmpq   0x587
0x704:	41 bb 04 00 00 00    	mov    $0x4,%r11d
0x70a:	48 83 ec 10          	sub    $0x10,%rsp
0x70e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x712:	44 8b 1c 24          	mov    (%rsp),%r11d
0x716:	48 83 c4 10          	add    $0x10,%rsp
0x71a:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x71e:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x722:	48 83 ec 10          	sub    $0x10,%rsp
0x726:	44 89 1c 24          	mov    %r11d,(%rsp)
0x72a:	41 bb 10 00 00 00    	mov    $0x10,%r11d
0x730:	48 83 ec 10          	sub    $0x10,%rsp
0x734:	44 89 1c 24          	mov    %r11d,(%rsp)
0x738:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x73d:	8b 04 24             	mov    (%rsp),%eax
0x740:	48 83 c4 20          	add    $0x20,%rsp
0x744:	44 3b d8             	cmp    %eax,%r11d
0x747:	7e 33                	jle    0x77c
0x749:	48 8b 3d 10 f8 ff ff 	mov    -0x7f0(%rip),%rdi        # 0xffffff60
0x750:	be 2d 00 00 00       	mov    $0x2d,%esi
0x755:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x759:	48 8b c8             	mov    %rax,%rcx
0x75c:	48 63 f6             	movslq %esi,%rsi
0x75f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x764:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x76a:	0f 8d 07 00 00 00    	jge    0x777
0x770:	83 c1 01             	add    $0x1,%ecx
0x773:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x777:	e9 95 00 00 00       	jmpq   0x811
0x77c:	48 8b 3d e5 f7 ff ff 	mov    -0x81b(%rip),%rdi        # 0xffffff68
0x783:	be 2e 00 00 00       	mov    $0x2e,%esi
0x788:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x78c:	48 8b c8             	mov    %rax,%rcx
0x78f:	48 63 f6             	movslq %esi,%rsi
0x792:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x797:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x79d:	0f 8d 07 00 00 00    	jge    0x7aa
0x7a3:	83 c1 01             	add    $0x1,%ecx
0x7a6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7aa:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x7ae:	48 83 ec 10          	sub    $0x10,%rsp
0x7b2:	44 89 1c 24          	mov    %r11d,(%rsp)
0x7b6:	90                   	nop
0x7b7:	90                   	nop
0x7b8:	e8 00 00 00 00       	callq  0x7bd
0x7bd:	90                   	nop
0x7be:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x7c2:	41 83 c3 02          	add    $0x2,%r11d
0x7c6:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x7ca:	48 8b 3d 9f f7 ff ff 	mov    -0x861(%rip),%rdi        # 0xffffff70
0x7d1:	be 30 00 00 00       	mov    $0x30,%esi
0x7d6:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x7da:	48 8b c8             	mov    %rax,%rcx
0x7dd:	48 63 f6             	movslq %esi,%rsi
0x7e0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x7e5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x7eb:	0f 8d 07 00 00 00    	jge    0x7f8
0x7f1:	83 c1 01             	add    $0x1,%ecx
0x7f4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7f8:	48 8b 3d 79 f7 ff ff 	mov    -0x887(%rip),%rdi        # 0xffffff78
0x7ff:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x803:	83 e8 01             	sub    $0x1,%eax
0x806:	89 47 30             	mov    %eax,0x30(%rdi)
0x809:	4d 8b 36             	mov    (%r14),%r14
0x80c:	e9 0d ff ff ff       	jmpq   0x71e
0x811:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x815:	48 83 ec 10          	sub    $0x10,%rsp
0x819:	4c 89 1c 24          	mov    %r11,(%rsp)
0x81d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x821:	48 33 c0             	xor    %rax,%rax
0x824:	48 83 c4 10          	add    $0x10,%rsp
0x828:	4c 3b d8             	cmp    %rax,%r11
0x82b:	75 33                	jne    0x860
0x82d:	48 8b 3d 4c f7 ff ff 	mov    -0x8b4(%rip),%rdi        # 0xffffff80
0x834:	be 31 00 00 00       	mov    $0x31,%esi
0x839:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x83d:	48 8b c8             	mov    %rax,%rcx
0x840:	48 63 f6             	movslq %esi,%rsi
0x843:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x848:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x84e:	0f 8d 07 00 00 00    	jge    0x85b
0x854:	83 c1 01             	add    $0x1,%ecx
0x857:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x85b:	e9 3a 01 00 00       	jmpq   0x99a
0x860:	48 8b 3d 21 f7 ff ff 	mov    -0x8df(%rip),%rdi        # 0xffffff88
0x867:	be 32 00 00 00       	mov    $0x32,%esi
0x86c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x870:	48 8b c8             	mov    %rax,%rcx
0x873:	48 63 f6             	movslq %esi,%rsi
0x876:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x87b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x881:	0f 8d 07 00 00 00    	jge    0x88e
0x887:	83 c1 01             	add    $0x1,%ecx
0x88a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x88e:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x892:	48 83 ec 10          	sub    $0x10,%rsp
0x896:	4c 89 1c 24          	mov    %r11,(%rsp)
0x89a:	41 bb e8 03 00 00    	mov    $0x3e8,%r11d
0x8a0:	48 83 ec 10          	sub    $0x10,%rsp
0x8a4:	44 89 1c 24          	mov    %r11d,(%rsp)
0x8a8:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x8ad:	40 8b 34 24          	rex mov (%rsp),%esi
0x8b1:	48 8b c7             	mov    %rdi,%rax
0x8b4:	48 63 40 10          	movslq 0x10(%rax),%rax
0x8b8:	3b f0                	cmp    %eax,%esi
0x8ba:	0f 82 0f 00 00 00    	jb     0x8cf
0x8c0:	e8 00 00 00 00       	callq  0x8c5
0x8c5:	90                   	nop
0x8c6:	48 8b f8             	mov    %rax,%rdi
0x8c9:	e8 00 00 00 00       	callq  0x8ce
0x8ce:	90                   	nop
0x8cf:	48 63 f6             	movslq %esi,%rsi
0x8d2:	f2 0f 10 44 f7 18    	movsd  0x18(%rdi,%rsi,8),%xmm0
0x8d8:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
0x8de:	49 bb fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%r11
0x8e5:	62 50 3f 
0x8e8:	48 83 ec 20          	sub    $0x20,%rsp
0x8ec:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x8f1:	f2 0f 10 44 24 30    	movsd  0x30(%rsp),%xmm0
0x8f7:	f2 0f 10 4c 24 10    	movsd  0x10(%rsp),%xmm1
0x8fd:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
0x901:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
0x906:	0f 8a 14 00 00 00    	jp     0x920
0x90c:	0f 82 0e 00 00 00    	jb     0x920
0x912:	b8 00 00 00 00       	mov    $0x0,%eax
0x917:	0f 84 03 00 00 00    	je     0x920
0x91d:	83 c0 01             	add    $0x1,%eax
0x920:	48 83 c4 30          	add    $0x30,%rsp
0x924:	89 04 24             	mov    %eax,(%rsp)
0x927:	44 8b 1c 24          	mov    (%rsp),%r11d
0x92b:	b8 00 00 00 00       	mov    $0x0,%eax
0x930:	48 83 c4 10          	add    $0x10,%rsp
0x934:	44 3b d8             	cmp    %eax,%r11d
0x937:	75 33                	jne    0x96c
0x939:	48 8b 3d 50 f6 ff ff 	mov    -0x9b0(%rip),%rdi        # 0xffffff90
0x940:	be 34 00 00 00       	mov    $0x34,%esi
0x945:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x949:	48 8b c8             	mov    %rax,%rcx
0x94c:	48 63 f6             	movslq %esi,%rsi
0x94f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x954:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x95a:	0f 8d 07 00 00 00    	jge    0x967
0x960:	83 c1 01             	add    $0x1,%ecx
0x963:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x967:	e9 a3 00 00 00       	jmpq   0xa0f
0x96c:	48 8b 3d 25 f6 ff ff 	mov    -0x9db(%rip),%rdi        # 0xffffff98
0x973:	be 35 00 00 00       	mov    $0x35,%esi
0x978:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x97c:	48 8b c8             	mov    %rax,%rcx
0x97f:	48 63 f6             	movslq %esi,%rsi
0x982:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x987:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x98d:	0f 8d 07 00 00 00    	jge    0x99a
0x993:	83 c1 01             	add    $0x1,%ecx
0x996:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x99a:	48 8b 3d ff f5 ff ff 	mov    -0xa01(%rip),%rdi        # 0xffffffa0
0x9a1:	be 18 00 00 00       	mov    $0x18,%esi
0x9a6:	48 63 f6             	movslq %esi,%rsi
0x9a9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x9ad:	48 83 ec 10          	sub    $0x10,%rsp
0x9b1:	48 89 04 24          	mov    %rax,(%rsp)
0x9b5:	4c 8b 1d ec f5 ff ff 	mov    -0xa14(%rip),%r11        # 0xffffffa8
0x9bc:	48 83 ec 10          	sub    $0x10,%rsp
0x9c0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x9c4:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x9c9:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x9ce:	48 8b 15 db f5 ff ff 	mov    -0xa25(%rip),%rdx        # 0xffffffb0
0x9d5:	b9 37 00 00 00       	mov    $0x37,%ecx
0x9da:	48 8b c6             	mov    %rsi,%rax
0x9dd:	48 8b 00             	mov    (%rax),%rax
0x9e0:	48 63 ff             	movslq %edi,%rdi
0x9e3:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x9e8:	48 8b fa             	mov    %rdx,%rdi
0x9eb:	48 8b d1             	mov    %rcx,%rdx
0x9ee:	b9 03 00 00 00       	mov    $0x3,%ecx
0x9f3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x9f7:	90                   	nop
0x9f8:	90                   	nop
0x9f9:	e8 00 00 00 00       	callq  0x9fe
0x9fe:	90                   	nop
0x9ff:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xa03:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xa07:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xa0c:	ff d0                	callq  *%rax
0xa0e:	90                   	nop
0xa0f:	48 8b 3d a2 f5 ff ff 	mov    -0xa5e(%rip),%rdi        # 0xffffffb8
0xa16:	be 18 00 00 00       	mov    $0x18,%esi
0xa1b:	48 63 f6             	movslq %esi,%rsi
0xa1e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xa22:	48 83 ec 10          	sub    $0x10,%rsp
0xa26:	48 89 04 24          	mov    %rax,(%rsp)
0xa2a:	48 8b 3d 8f f5 ff ff 	mov    -0xa71(%rip),%rdi        # 0xffffffc0
0xa31:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xa35:	48 8b 35 8c f5 ff ff 	mov    -0xa74(%rip),%rsi        # 0xffffffc8
0xa3c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xa40:	49 8b ce             	mov    %r14,%rcx
0xa43:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xa47:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xa4e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xa55:	48 8b d9             	mov    %rcx,%rbx
0xa58:	48 03 da             	add    %rdx,%rbx
0xa5b:	4c 8b cb             	mov    %rbx,%r9
0xa5e:	4d 3b c8             	cmp    %r8,%r9
0xa61:	0f 86 14 00 00 00    	jbe    0xa7b
0xa67:	48 8b fe             	mov    %rsi,%rdi
0xa6a:	48 8b f2             	mov    %rdx,%rsi
0xa6d:	48 8b d0             	mov    %rax,%rdx
0xa70:	e8 00 00 00 00       	callq  0xa75
0xa75:	90                   	nop
0xa76:	e9 0a 00 00 00       	jmpq   0xa85
0xa7b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xa82:	48 8b c1             	mov    %rcx,%rax
0xa85:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xa89:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xa8d:	90                   	nop
0xa8e:	90                   	nop
0xa8f:	90                   	nop
0xa90:	e8 00 00 00 00       	callq  0xa95
0xa95:	90                   	nop
0xa96:	90                   	nop
0xa97:	90                   	nop
0xa98:	e8 00 00 00 00       	callq  0xa9d
0xa9d:	90                   	nop
0xa9e:	83 f8 00             	cmp    $0x0,%eax
0xaa1:	0f 84 27 00 00 00    	je     0xace
0xaa7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xaab:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xaaf:	85 06                	test   %eax,(%rsi)
0xab1:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xab5:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xab9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xabd:	83 e2 ff             	and    $0xffffffff,%edx
0xac0:	48 8b fa             	mov    %rdx,%rdi
0xac3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xac7:	90                   	nop
0xac8:	e8 00 00 00 00       	callq  0xacd
0xacd:	90                   	nop
0xace:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xad2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xad6:	48 89 38             	mov    %rdi,(%rax)
0xad9:	48 83 ec 10          	sub    $0x10,%rsp
0xadd:	48 89 04 24          	mov    %rax,(%rsp)
0xae1:	48 83 ec 10          	sub    $0x10,%rsp
0xae5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xaea:	4c 89 1c 24          	mov    %r11,(%rsp)
0xaee:	4c 8b 1c 24          	mov    (%rsp),%r11
0xaf2:	41 85 03             	test   %eax,(%r11)
0xaf5:	90                   	nop
0xaf6:	90                   	nop
0xaf7:	90                   	nop
0xaf8:	e8 00 00 00 00       	callq  0xafd
0xafd:	90                   	nop
0xafe:	48 83 ec 10          	sub    $0x10,%rsp
0xb02:	4c 8b 1d c7 f4 ff ff 	mov    -0xb39(%rip),%r11        # 0xffffffd0
0xb09:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb0d:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb11:	41 85 03             	test   %eax,(%r11)
0xb14:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb18:	e8 00 00 00 00       	callq  0xb1d
0xb1d:	90                   	nop
0xb1e:	48 83 ec 10          	sub    $0x10,%rsp
0xb22:	48 89 04 24          	mov    %rax,(%rsp)
0xb26:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb2b:	41 85 03             	test   %eax,(%r11)
0xb2e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb33:	e8 00 00 00 00       	callq  0xb38
0xb38:	90                   	nop
0xb39:	48 83 ec 10          	sub    $0x10,%rsp
0xb3d:	48 89 04 24          	mov    %rax,(%rsp)
0xb41:	4c 8b 1d 90 f4 ff ff 	mov    -0xb70(%rip),%r11        # 0xffffffd8
0xb48:	48 83 ec 10          	sub    $0x10,%rsp
0xb4c:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb50:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb55:	41 85 03             	test   %eax,(%r11)
0xb58:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb5d:	90                   	nop
0xb5e:	90                   	nop
0xb5f:	90                   	nop
0xb60:	e8 00 00 00 00       	callq  0xb65
0xb65:	90                   	nop
0xb66:	48 83 ec 10          	sub    $0x10,%rsp
0xb6a:	48 89 04 24          	mov    %rax,(%rsp)
0xb6e:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb72:	41 85 03             	test   %eax,(%r11)
0xb75:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb79:	e8 00 00 00 00       	callq  0xb7e
0xb7e:	90                   	nop
0xb7f:	48 83 ec 10          	sub    $0x10,%rsp
0xb83:	48 89 04 24          	mov    %rax,(%rsp)
0xb87:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xb8c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xb91:	48 8b 15 48 f4 ff ff 	mov    -0xbb8(%rip),%rdx        # 0xffffffe0
0xb98:	b9 45 00 00 00       	mov    $0x45,%ecx
0xb9d:	48 8b c6             	mov    %rsi,%rax
0xba0:	48 8b 00             	mov    (%rax),%rax
0xba3:	48 63 ff             	movslq %edi,%rdi
0xba6:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xbab:	48 8b fa             	mov    %rdx,%rdi
0xbae:	48 8b d1             	mov    %rcx,%rdx
0xbb1:	b9 03 00 00 00       	mov    $0x3,%ecx
0xbb6:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xbba:	90                   	nop
0xbbb:	90                   	nop
0xbbc:	e8 00 00 00 00       	callq  0xbc1
0xbc1:	90                   	nop
0xbc2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbc6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xbca:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xbcf:	ff d0                	callq  *%rax
0xbd1:	90                   	nop
0xbd2:	48 83 c5 40          	add    $0x40,%rbp
0xbd6:	c9                   	leaveq 
0xbd7:	c2 10 00             	retq   $0x10

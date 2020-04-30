0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 60 00 00          	enterq $0x60,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 68 e0 ff 	mov    %rax,-0x1f98(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 31 ff ff ff 	mov    %r11,-0xcf(%rip)        # 0xffffff58
0x27:	48 8b 3d 32 ff ff ff 	mov    -0xce(%rip),%rdi        # 0xffffff60
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
0x53:	48 8b 3d 0e ff ff ff 	mov    -0xf2(%rip),%rdi        # 0xffffff68
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 0b ff ff ff 	mov    -0xf5(%rip),%rsi        # 0xffffff70
0x65:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x69:	49 8b ce             	mov    %r14,%rcx
0x6c:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x70:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x77:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x7e:	48 8b d9             	mov    %rcx,%rbx
0x81:	48 03 da             	add    %rdx,%rbx
0x84:	4c 8b cb             	mov    %rbx,%r9
0x87:	4d 3b c8             	cmp    %r8,%r9
0x8a:	0f 86 14 00 00 00    	jbe    0xa4
0x90:	48 8b fe             	mov    %rsi,%rdi
0x93:	48 8b f2             	mov    %rdx,%rsi
0x96:	48 8b d0             	mov    %rax,%rdx
0x99:	e8 00 00 00 00       	callq  0x9e
0x9e:	90                   	nop
0x9f:	e9 0a 00 00 00       	jmpq   0xae
0xa4:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xab:	48 8b c1             	mov    %rcx,%rax
0xae:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb6:	90                   	nop
0xb7:	90                   	nop
0xb8:	90                   	nop
0xb9:	e8 00 00 00 00       	callq  0xbe
0xbe:	90                   	nop
0xbf:	90                   	nop
0xc0:	90                   	nop
0xc1:	e8 00 00 00 00       	callq  0xc6
0xc6:	90                   	nop
0xc7:	83 f8 00             	cmp    $0x0,%eax
0xca:	0f 84 27 00 00 00    	je     0xf7
0xd0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd4:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xd8:	85 06                	test   %eax,(%rsi)
0xda:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xde:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xe2:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xe6:	83 e2 ff             	and    $0xffffffff,%edx
0xe9:	48 8b fa             	mov    %rdx,%rdi
0xec:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xf0:	90                   	nop
0xf1:	e8 00 00 00 00       	callq  0xf6
0xf6:	90                   	nop
0xf7:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xfb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xff:	48 89 38             	mov    %rdi,(%rax)
0x102:	48 83 ec 10          	sub    $0x10,%rsp
0x106:	48 89 04 24          	mov    %rax,(%rsp)
0x10a:	48 83 ec 10          	sub    $0x10,%rsp
0x10e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x113:	4c 89 1c 24          	mov    %r11,(%rsp)
0x117:	4c 8b 1c 24          	mov    (%rsp),%r11
0x11b:	41 85 03             	test   %eax,(%r11)
0x11e:	90                   	nop
0x11f:	90                   	nop
0x120:	e8 00 00 00 00       	callq  0x125
0x125:	90                   	nop
0x126:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12a:	48 83 c4 10          	add    $0x10,%rsp
0x12e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x132:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x138:	48 83 ec 10          	sub    $0x10,%rsp
0x13c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x140:	44 8b 1c 24          	mov    (%rsp),%r11d
0x144:	48 83 c4 10          	add    $0x10,%rsp
0x148:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x14c:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x150:	48 83 ec 10          	sub    $0x10,%rsp
0x154:	44 89 1c 24          	mov    %r11d,(%rsp)
0x158:	41 bb 20 4e 00 00    	mov    $0x4e20,%r11d
0x15e:	48 83 ec 10          	sub    $0x10,%rsp
0x162:	44 89 1c 24          	mov    %r11d,(%rsp)
0x166:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x16b:	8b 04 24             	mov    (%rsp),%eax
0x16e:	48 83 c4 20          	add    $0x20,%rsp
0x172:	44 3b d8             	cmp    %eax,%r11d
0x175:	7c 33                	jl     0x1aa
0x177:	48 8b 3d fa fd ff ff 	mov    -0x206(%rip),%rdi        # 0xffffff78
0x17e:	be 01 00 00 00       	mov    $0x1,%esi
0x183:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x187:	48 8b c8             	mov    %rax,%rcx
0x18a:	48 63 f6             	movslq %esi,%rsi
0x18d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x192:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x198:	0f 8d 07 00 00 00    	jge    0x1a5
0x19e:	83 c1 01             	add    $0x1,%ecx
0x1a1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1a5:	e9 ce 00 00 00       	jmpq   0x278
0x1aa:	48 8b 3d cf fd ff ff 	mov    -0x231(%rip),%rdi        # 0xffffff80
0x1b1:	be 02 00 00 00       	mov    $0x2,%esi
0x1b6:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1ba:	48 8b c8             	mov    %rax,%rcx
0x1bd:	48 63 f6             	movslq %esi,%rsi
0x1c0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1c5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1cb:	0f 8d 07 00 00 00    	jge    0x1d8
0x1d1:	83 c1 01             	add    $0x1,%ecx
0x1d4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1d8:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1dc:	48 83 ec 10          	sub    $0x10,%rsp
0x1e0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1e4:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1e8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1f0:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x1f6:	48 83 ec 10          	sub    $0x10,%rsp
0x1fa:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1fe:	90                   	nop
0x1ff:	90                   	nop
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 83 ec 10          	sub    $0x10,%rsp
0x20a:	48 89 04 24          	mov    %rax,(%rsp)
0x20e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x213:	8b 14 24             	mov    (%rsp),%edx
0x216:	be 10 00 00 00       	mov    $0x10,%esi
0x21b:	48 63 f6             	movslq %esi,%rsi
0x21e:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x221:	48 83 c4 20          	add    $0x20,%rsp
0x225:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x229:	41 83 c3 01          	add    $0x1,%r11d
0x22d:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x231:	48 8b 3d 50 fd ff ff 	mov    -0x2b0(%rip),%rdi        # 0xffffff88
0x238:	be 05 00 00 00       	mov    $0x5,%esi
0x23d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x241:	48 8b c8             	mov    %rax,%rcx
0x244:	48 63 f6             	movslq %esi,%rsi
0x247:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x24c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x252:	0f 8d 07 00 00 00    	jge    0x25f
0x258:	83 c1 01             	add    $0x1,%ecx
0x25b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x25f:	48 8b 3d 2a fd ff ff 	mov    -0x2d6(%rip),%rdi        # 0xffffff90
0x266:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x26a:	83 e8 01             	sub    $0x1,%eax
0x26d:	89 47 30             	mov    %eax,0x30(%rdi)
0x270:	4d 8b 36             	mov    (%r14),%r14
0x273:	e9 d4 fe ff ff       	jmpq   0x14c
0x278:	48 8b 3d 19 fd ff ff 	mov    -0x2e7(%rip),%rdi        # 0xffffff98
0x27f:	be 18 00 00 00       	mov    $0x18,%esi
0x284:	48 63 f6             	movslq %esi,%rsi
0x287:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x28b:	48 83 ec 10          	sub    $0x10,%rsp
0x28f:	48 89 04 24          	mov    %rax,(%rsp)
0x293:	48 8b 3d 06 fd ff ff 	mov    -0x2fa(%rip),%rdi        # 0xffffffa0
0x29a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x29e:	48 8b 35 03 fd ff ff 	mov    -0x2fd(%rip),%rsi        # 0xffffffa8
0x2a5:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2a9:	49 8b ce             	mov    %r14,%rcx
0x2ac:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x2b0:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x2b7:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x2be:	48 8b d9             	mov    %rcx,%rbx
0x2c1:	48 03 da             	add    %rdx,%rbx
0x2c4:	4c 8b cb             	mov    %rbx,%r9
0x2c7:	4d 3b c8             	cmp    %r8,%r9
0x2ca:	0f 86 14 00 00 00    	jbe    0x2e4
0x2d0:	48 8b fe             	mov    %rsi,%rdi
0x2d3:	48 8b f2             	mov    %rdx,%rsi
0x2d6:	48 8b d0             	mov    %rax,%rdx
0x2d9:	e8 00 00 00 00       	callq  0x2de
0x2de:	90                   	nop
0x2df:	e9 0a 00 00 00       	jmpq   0x2ee
0x2e4:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x2eb:	48 8b c1             	mov    %rcx,%rax
0x2ee:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2f2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2f6:	90                   	nop
0x2f7:	90                   	nop
0x2f8:	90                   	nop
0x2f9:	e8 00 00 00 00       	callq  0x2fe
0x2fe:	90                   	nop
0x2ff:	90                   	nop
0x300:	90                   	nop
0x301:	e8 00 00 00 00       	callq  0x306
0x306:	90                   	nop
0x307:	83 f8 00             	cmp    $0x0,%eax
0x30a:	0f 84 27 00 00 00    	je     0x337
0x310:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x314:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x318:	85 06                	test   %eax,(%rsi)
0x31a:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x31e:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x322:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x326:	83 e2 ff             	and    $0xffffffff,%edx
0x329:	48 8b fa             	mov    %rdx,%rdi
0x32c:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x330:	90                   	nop
0x331:	e8 00 00 00 00       	callq  0x336
0x336:	90                   	nop
0x337:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x33b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x33f:	48 89 38             	mov    %rdi,(%rax)
0x342:	48 83 ec 10          	sub    $0x10,%rsp
0x346:	48 89 04 24          	mov    %rax,(%rsp)
0x34a:	48 83 ec 10          	sub    $0x10,%rsp
0x34e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x353:	4c 89 1c 24          	mov    %r11,(%rsp)
0x357:	4c 8b 1c 24          	mov    (%rsp),%r11
0x35b:	41 85 03             	test   %eax,(%r11)
0x35e:	90                   	nop
0x35f:	90                   	nop
0x360:	e8 00 00 00 00       	callq  0x365
0x365:	90                   	nop
0x366:	4c 8b 1d 43 fc ff ff 	mov    -0x3bd(%rip),%r11        # 0xffffffb0
0x36d:	48 83 ec 10          	sub    $0x10,%rsp
0x371:	4c 89 1c 24          	mov    %r11,(%rsp)
0x375:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x37a:	41 85 03             	test   %eax,(%r11)
0x37d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x382:	e8 00 00 00 00       	callq  0x387
0x387:	90                   	nop
0x388:	48 83 ec 10          	sub    $0x10,%rsp
0x38c:	48 89 04 24          	mov    %rax,(%rsp)
0x390:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x394:	48 83 ec 10          	sub    $0x10,%rsp
0x398:	4c 89 1c 24          	mov    %r11,(%rsp)
0x39c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3a1:	41 85 03             	test   %eax,(%r11)
0x3a4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3a9:	e8 00 00 00 00       	callq  0x3ae
0x3ae:	90                   	nop
0x3af:	48 83 ec 10          	sub    $0x10,%rsp
0x3b3:	48 89 04 24          	mov    %rax,(%rsp)
0x3b7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3bb:	41 85 03             	test   %eax,(%r11)
0x3be:	48 8b 3c 24          	mov    (%rsp),%rdi
0x3c2:	e8 00 00 00 00       	callq  0x3c7
0x3c7:	90                   	nop
0x3c8:	48 83 ec 10          	sub    $0x10,%rsp
0x3cc:	48 89 04 24          	mov    %rax,(%rsp)
0x3d0:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3d5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3da:	48 8b 15 d7 fb ff ff 	mov    -0x429(%rip),%rdx        # 0xffffffb8
0x3e1:	b9 0b 00 00 00       	mov    $0xb,%ecx
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
0x41b:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x41f:	48 83 ec 10          	sub    $0x10,%rsp
0x423:	4c 89 1c 24          	mov    %r11,(%rsp)
0x427:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x42b:	48 83 ec 10          	sub    $0x10,%rsp
0x42f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x433:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x439:	48 83 ec 10          	sub    $0x10,%rsp
0x43d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x441:	e8 00 00 00 00       	callq  0x446
0x446:	90                   	nop
0x447:	48 83 ec 10          	sub    $0x10,%rsp
0x44b:	48 89 04 24          	mov    %rax,(%rsp)
0x44f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x454:	8b 14 24             	mov    (%rsp),%edx
0x457:	be 10 00 00 00       	mov    $0x10,%esi
0x45c:	48 63 f6             	movslq %esi,%rsi
0x45f:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x462:	48 83 c4 20          	add    $0x20,%rsp
0x466:	48 8b 3d 53 fb ff ff 	mov    -0x4ad(%rip),%rdi        # 0xffffffc0
0x46d:	be 18 00 00 00       	mov    $0x18,%esi
0x472:	48 63 f6             	movslq %esi,%rsi
0x475:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x479:	48 83 ec 10          	sub    $0x10,%rsp
0x47d:	48 89 04 24          	mov    %rax,(%rsp)
0x481:	48 8b 3d 40 fb ff ff 	mov    -0x4c0(%rip),%rdi        # 0xffffffc8
0x488:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x48c:	48 8b 35 3d fb ff ff 	mov    -0x4c3(%rip),%rsi        # 0xffffffd0
0x493:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x497:	49 8b ce             	mov    %r14,%rcx
0x49a:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x49e:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x4a5:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x4ac:	48 8b d9             	mov    %rcx,%rbx
0x4af:	48 03 da             	add    %rdx,%rbx
0x4b2:	4c 8b cb             	mov    %rbx,%r9
0x4b5:	4d 3b c8             	cmp    %r8,%r9
0x4b8:	0f 86 14 00 00 00    	jbe    0x4d2
0x4be:	48 8b fe             	mov    %rsi,%rdi
0x4c1:	48 8b f2             	mov    %rdx,%rsi
0x4c4:	48 8b d0             	mov    %rax,%rdx
0x4c7:	e8 00 00 00 00       	callq  0x4cc
0x4cc:	90                   	nop
0x4cd:	e9 0a 00 00 00       	jmpq   0x4dc
0x4d2:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x4d9:	48 8b c1             	mov    %rcx,%rax
0x4dc:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4e0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4e4:	90                   	nop
0x4e5:	90                   	nop
0x4e6:	90                   	nop
0x4e7:	e8 00 00 00 00       	callq  0x4ec
0x4ec:	90                   	nop
0x4ed:	90                   	nop
0x4ee:	90                   	nop
0x4ef:	e8 00 00 00 00       	callq  0x4f4
0x4f4:	90                   	nop
0x4f5:	83 f8 00             	cmp    $0x0,%eax
0x4f8:	0f 84 27 00 00 00    	je     0x525
0x4fe:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x502:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x506:	85 06                	test   %eax,(%rsi)
0x508:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x50c:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x510:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x514:	83 e2 ff             	and    $0xffffffff,%edx
0x517:	48 8b fa             	mov    %rdx,%rdi
0x51a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x51e:	90                   	nop
0x51f:	e8 00 00 00 00       	callq  0x524
0x524:	90                   	nop
0x525:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x529:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x52d:	48 89 38             	mov    %rdi,(%rax)
0x530:	48 83 ec 10          	sub    $0x10,%rsp
0x534:	48 89 04 24          	mov    %rax,(%rsp)
0x538:	48 83 ec 10          	sub    $0x10,%rsp
0x53c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x541:	4c 89 1c 24          	mov    %r11,(%rsp)
0x545:	4c 8b 1c 24          	mov    (%rsp),%r11
0x549:	41 85 03             	test   %eax,(%r11)
0x54c:	90                   	nop
0x54d:	90                   	nop
0x54e:	90                   	nop
0x54f:	90                   	nop
0x550:	e8 00 00 00 00       	callq  0x555
0x555:	90                   	nop
0x556:	4c 8b 1d 7b fa ff ff 	mov    -0x585(%rip),%r11        # 0xffffffd8
0x55d:	48 83 ec 10          	sub    $0x10,%rsp
0x561:	4c 89 1c 24          	mov    %r11,(%rsp)
0x565:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x56a:	41 85 03             	test   %eax,(%r11)
0x56d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x572:	e8 00 00 00 00       	callq  0x577
0x577:	90                   	nop
0x578:	48 83 ec 10          	sub    $0x10,%rsp
0x57c:	48 89 04 24          	mov    %rax,(%rsp)
0x580:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x584:	48 83 ec 10          	sub    $0x10,%rsp
0x588:	4c 89 1c 24          	mov    %r11,(%rsp)
0x58c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x591:	41 85 03             	test   %eax,(%r11)
0x594:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x599:	e8 00 00 00 00       	callq  0x59e
0x59e:	90                   	nop
0x59f:	48 83 ec 10          	sub    $0x10,%rsp
0x5a3:	48 89 04 24          	mov    %rax,(%rsp)
0x5a7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5ab:	41 85 03             	test   %eax,(%r11)
0x5ae:	48 8b 3c 24          	mov    (%rsp),%rdi
0x5b2:	e8 00 00 00 00       	callq  0x5b7
0x5b7:	90                   	nop
0x5b8:	48 83 ec 10          	sub    $0x10,%rsp
0x5bc:	48 89 04 24          	mov    %rax,(%rsp)
0x5c0:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5c5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5ca:	48 8b 15 0f fa ff ff 	mov    -0x5f1(%rip),%rdx        # 0xffffffe0
0x5d1:	b9 1a 00 00 00       	mov    $0x1a,%ecx
0x5d6:	48 8b c6             	mov    %rsi,%rax
0x5d9:	48 8b 00             	mov    (%rax),%rax
0x5dc:	48 63 ff             	movslq %edi,%rdi
0x5df:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5e4:	48 8b fa             	mov    %rdx,%rdi
0x5e7:	48 8b d1             	mov    %rcx,%rdx
0x5ea:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5ef:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5f3:	90                   	nop
0x5f4:	90                   	nop
0x5f5:	e8 00 00 00 00       	callq  0x5fa
0x5fa:	90                   	nop
0x5fb:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5ff:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x603:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x608:	ff d0                	callq  *%rax
0x60a:	90                   	nop
0x60b:	48 83 c5 40          	add    $0x40,%rbp
0x60f:	c9                   	leaveq 
0x610:	c2 10 00             	retq   $0x10

0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 40 00 00          	enterq $0x40,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 48 e0 ff 	mov    %rax,-0x1fb8(%rsp)
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
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 fb fe ff ff 	mov    -0x105(%rip),%rsi        # 0xffffff60
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
0x126:	48 8b 14 24          	mov    (%rsp),%rdx
0x12a:	48 8b 3d 37 fe ff ff 	mov    -0x1c9(%rip),%rdi        # 0xffffff68
0x131:	be 18 00 00 00       	mov    $0x18,%esi
0x136:	e8 00 00 00 00       	callq  0x13b
0x13b:	90                   	nop
0x13c:	48 83 c4 10          	add    $0x10,%rsp
0x140:	48 8b 3d 29 fe ff ff 	mov    -0x1d7(%rip),%rdi        # 0xffffff70
0x147:	be 18 00 00 00       	mov    $0x18,%esi
0x14c:	48 63 f6             	movslq %esi,%rsi
0x14f:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x153:	48 83 ec 10          	sub    $0x10,%rsp
0x157:	48 89 04 24          	mov    %rax,(%rsp)
0x15b:	48 8b 3d 16 fe ff ff 	mov    -0x1ea(%rip),%rdi        # 0xffffff78
0x162:	be 20 00 00 00       	mov    $0x20,%esi
0x167:	48 63 f6             	movslq %esi,%rsi
0x16a:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x16e:	48 83 ec 10          	sub    $0x10,%rsp
0x172:	89 04 24             	mov    %eax,(%rsp)
0x175:	48 83 ec 10          	sub    $0x10,%rsp
0x179:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x17e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x182:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x188:	48 83 ec 10          	sub    $0x10,%rsp
0x18c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x190:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x195:	40 8b 34 24          	rex mov (%rsp),%esi
0x199:	03 fe                	add    %esi,%edi
0x19b:	48 8b c7             	mov    %rdi,%rax
0x19e:	48 83 c4 10          	add    $0x10,%rsp
0x1a2:	89 04 24             	mov    %eax,(%rsp)
0x1a5:	8b 14 24             	mov    (%rsp),%edx
0x1a8:	48 8b 3d d1 fd ff ff 	mov    -0x22f(%rip),%rdi        # 0xffffff80
0x1af:	be 20 00 00 00       	mov    $0x20,%esi
0x1b4:	48 63 f6             	movslq %esi,%rsi
0x1b7:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x1ba:	48 83 c4 10          	add    $0x10,%rsp
0x1be:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1c3:	8b 14 24             	mov    (%rsp),%edx
0x1c6:	be 20 00 00 00       	mov    $0x20,%esi
0x1cb:	48 63 f6             	movslq %esi,%rsi
0x1ce:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x1d1:	48 83 c4 20          	add    $0x20,%rsp
0x1d5:	48 8b 3d ac fd ff ff 	mov    -0x254(%rip),%rdi        # 0xffffff88
0x1dc:	be 18 00 00 00       	mov    $0x18,%esi
0x1e1:	48 63 f6             	movslq %esi,%rsi
0x1e4:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1e8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ec:	48 89 04 24          	mov    %rax,(%rsp)
0x1f0:	48 8b 14 24          	mov    (%rsp),%rdx
0x1f4:	48 8b 3d 95 fd ff ff 	mov    -0x26b(%rip),%rdi        # 0xffffff90
0x1fb:	be 10 00 00 00       	mov    $0x10,%esi
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 83 c4 10          	add    $0x10,%rsp
0x20a:	48 8b 3d 87 fd ff ff 	mov    -0x279(%rip),%rdi        # 0xffffff98
0x211:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x215:	48 8b 35 84 fd ff ff 	mov    -0x27c(%rip),%rsi        # 0xffffffa0
0x21c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x220:	49 8b ce             	mov    %r14,%rcx
0x223:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x227:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x22e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x235:	48 8b d9             	mov    %rcx,%rbx
0x238:	48 03 da             	add    %rdx,%rbx
0x23b:	4c 8b cb             	mov    %rbx,%r9
0x23e:	4d 3b c8             	cmp    %r8,%r9
0x241:	0f 86 14 00 00 00    	jbe    0x25b
0x247:	48 8b fe             	mov    %rsi,%rdi
0x24a:	48 8b f2             	mov    %rdx,%rsi
0x24d:	48 8b d0             	mov    %rax,%rdx
0x250:	e8 00 00 00 00       	callq  0x255
0x255:	90                   	nop
0x256:	e9 0a 00 00 00       	jmpq   0x265
0x25b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x262:	48 8b c1             	mov    %rcx,%rax
0x265:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x269:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x26d:	90                   	nop
0x26e:	90                   	nop
0x26f:	90                   	nop
0x270:	e8 00 00 00 00       	callq  0x275
0x275:	90                   	nop
0x276:	90                   	nop
0x277:	90                   	nop
0x278:	e8 00 00 00 00       	callq  0x27d
0x27d:	90                   	nop
0x27e:	83 f8 00             	cmp    $0x0,%eax
0x281:	0f 84 27 00 00 00    	je     0x2ae
0x287:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x28b:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x28f:	85 06                	test   %eax,(%rsi)
0x291:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x295:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x299:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x29d:	83 e2 ff             	and    $0xffffffff,%edx
0x2a0:	48 8b fa             	mov    %rdx,%rdi
0x2a3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2a7:	90                   	nop
0x2a8:	e8 00 00 00 00       	callq  0x2ad
0x2ad:	90                   	nop
0x2ae:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2b2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2b6:	48 89 38             	mov    %rdi,(%rax)
0x2b9:	48 83 ec 10          	sub    $0x10,%rsp
0x2bd:	48 89 04 24          	mov    %rax,(%rsp)
0x2c1:	48 83 ec 10          	sub    $0x10,%rsp
0x2c5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ce:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2d2:	41 85 03             	test   %eax,(%r11)
0x2d5:	90                   	nop
0x2d6:	90                   	nop
0x2d7:	90                   	nop
0x2d8:	e8 00 00 00 00       	callq  0x2dd
0x2dd:	90                   	nop
0x2de:	90                   	nop
0x2df:	90                   	nop
0x2e0:	e8 00 00 00 00       	callq  0x2e5
0x2e5:	90                   	nop
0x2e6:	48 8b 3d bb fc ff ff 	mov    -0x345(%rip),%rdi        # 0xffffffa8
0x2ed:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x2f1:	48 8b 35 b8 fc ff ff 	mov    -0x348(%rip),%rsi        # 0xffffffb0
0x2f8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2fc:	49 8b ce             	mov    %r14,%rcx
0x2ff:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x303:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x30a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x311:	48 8b d9             	mov    %rcx,%rbx
0x314:	48 03 da             	add    %rdx,%rbx
0x317:	4c 8b cb             	mov    %rbx,%r9
0x31a:	4d 3b c8             	cmp    %r8,%r9
0x31d:	0f 86 14 00 00 00    	jbe    0x337
0x323:	48 8b fe             	mov    %rsi,%rdi
0x326:	48 8b f2             	mov    %rdx,%rsi
0x329:	48 8b d0             	mov    %rax,%rdx
0x32c:	e8 00 00 00 00       	callq  0x331
0x331:	90                   	nop
0x332:	e9 0a 00 00 00       	jmpq   0x341
0x337:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x33e:	48 8b c1             	mov    %rcx,%rax
0x341:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x345:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x349:	90                   	nop
0x34a:	90                   	nop
0x34b:	90                   	nop
0x34c:	e8 00 00 00 00       	callq  0x351
0x351:	90                   	nop
0x352:	90                   	nop
0x353:	90                   	nop
0x354:	e8 00 00 00 00       	callq  0x359
0x359:	90                   	nop
0x35a:	83 f8 00             	cmp    $0x0,%eax
0x35d:	0f 84 27 00 00 00    	je     0x38a
0x363:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x367:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x36b:	85 06                	test   %eax,(%rsi)
0x36d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x371:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x375:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x379:	83 e2 ff             	and    $0xffffffff,%edx
0x37c:	48 8b fa             	mov    %rdx,%rdi
0x37f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x383:	90                   	nop
0x384:	e8 00 00 00 00       	callq  0x389
0x389:	90                   	nop
0x38a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x38e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x392:	48 89 38             	mov    %rdi,(%rax)
0x395:	48 83 ec 10          	sub    $0x10,%rsp
0x399:	48 89 04 24          	mov    %rax,(%rsp)
0x39d:	48 83 ec 10          	sub    $0x10,%rsp
0x3a1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3a6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3aa:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3ae:	41 85 03             	test   %eax,(%r11)
0x3b1:	e8 00 00 00 00       	callq  0x3b6
0x3b6:	90                   	nop
0x3b7:	90                   	nop
0x3b8:	e8 00 00 00 00       	callq  0x3bd
0x3bd:	90                   	nop
0x3be:	48 8b 3d f3 fb ff ff 	mov    -0x40d(%rip),%rdi        # 0xffffffb8
0x3c5:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x3c9:	48 8b 35 f0 fb ff ff 	mov    -0x410(%rip),%rsi        # 0xffffffc0
0x3d0:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3d4:	49 8b ce             	mov    %r14,%rcx
0x3d7:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x3db:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x3e2:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x3e9:	48 8b d9             	mov    %rcx,%rbx
0x3ec:	48 03 da             	add    %rdx,%rbx
0x3ef:	4c 8b cb             	mov    %rbx,%r9
0x3f2:	4d 3b c8             	cmp    %r8,%r9
0x3f5:	0f 86 14 00 00 00    	jbe    0x40f
0x3fb:	48 8b fe             	mov    %rsi,%rdi
0x3fe:	48 8b f2             	mov    %rdx,%rsi
0x401:	48 8b d0             	mov    %rax,%rdx
0x404:	e8 00 00 00 00       	callq  0x409
0x409:	90                   	nop
0x40a:	e9 0a 00 00 00       	jmpq   0x419
0x40f:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x416:	48 8b c1             	mov    %rcx,%rax
0x419:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x41d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x421:	90                   	nop
0x422:	90                   	nop
0x423:	90                   	nop
0x424:	e8 00 00 00 00       	callq  0x429
0x429:	90                   	nop
0x42a:	90                   	nop
0x42b:	90                   	nop
0x42c:	e8 00 00 00 00       	callq  0x431
0x431:	90                   	nop
0x432:	83 f8 00             	cmp    $0x0,%eax
0x435:	0f 84 27 00 00 00    	je     0x462
0x43b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x43f:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x443:	85 06                	test   %eax,(%rsi)
0x445:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x449:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x44d:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x451:	83 e2 ff             	and    $0xffffffff,%edx
0x454:	48 8b fa             	mov    %rdx,%rdi
0x457:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x45b:	90                   	nop
0x45c:	e8 00 00 00 00       	callq  0x461
0x461:	90                   	nop
0x462:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x466:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x46a:	48 89 38             	mov    %rdi,(%rax)
0x46d:	48 83 ec 10          	sub    $0x10,%rsp
0x471:	48 89 04 24          	mov    %rax,(%rsp)
0x475:	48 83 ec 10          	sub    $0x10,%rsp
0x479:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x47e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x482:	4c 8b 1c 24          	mov    (%rsp),%r11
0x486:	41 85 03             	test   %eax,(%r11)
0x489:	e8 00 00 00 00       	callq  0x48e
0x48e:	90                   	nop
0x48f:	90                   	nop
0x490:	e8 00 00 00 00       	callq  0x495
0x495:	90                   	nop
0x496:	48 8b 3d 2b fb ff ff 	mov    -0x4d5(%rip),%rdi        # 0xffffffc8
0x49d:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x4a1:	48 8b 35 28 fb ff ff 	mov    -0x4d8(%rip),%rsi        # 0xffffffd0
0x4a8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x4ac:	49 8b ce             	mov    %r14,%rcx
0x4af:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x4b3:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x4ba:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x4c1:	48 8b d9             	mov    %rcx,%rbx
0x4c4:	48 03 da             	add    %rdx,%rbx
0x4c7:	4c 8b cb             	mov    %rbx,%r9
0x4ca:	4d 3b c8             	cmp    %r8,%r9
0x4cd:	0f 86 14 00 00 00    	jbe    0x4e7
0x4d3:	48 8b fe             	mov    %rsi,%rdi
0x4d6:	48 8b f2             	mov    %rdx,%rsi
0x4d9:	48 8b d0             	mov    %rax,%rdx
0x4dc:	e8 00 00 00 00       	callq  0x4e1
0x4e1:	90                   	nop
0x4e2:	e9 0a 00 00 00       	jmpq   0x4f1
0x4e7:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x4ee:	48 8b c1             	mov    %rcx,%rax
0x4f1:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x4f5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x4f9:	90                   	nop
0x4fa:	90                   	nop
0x4fb:	90                   	nop
0x4fc:	e8 00 00 00 00       	callq  0x501
0x501:	90                   	nop
0x502:	90                   	nop
0x503:	90                   	nop
0x504:	e8 00 00 00 00       	callq  0x509
0x509:	90                   	nop
0x50a:	83 f8 00             	cmp    $0x0,%eax
0x50d:	0f 84 27 00 00 00    	je     0x53a
0x513:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x517:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x51b:	85 06                	test   %eax,(%rsi)
0x51d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x521:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x525:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x529:	83 e2 ff             	and    $0xffffffff,%edx
0x52c:	48 8b fa             	mov    %rdx,%rdi
0x52f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x533:	90                   	nop
0x534:	e8 00 00 00 00       	callq  0x539
0x539:	90                   	nop
0x53a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x53e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x542:	48 89 38             	mov    %rdi,(%rax)
0x545:	48 83 ec 10          	sub    $0x10,%rsp
0x549:	48 89 04 24          	mov    %rax,(%rsp)
0x54d:	48 83 ec 10          	sub    $0x10,%rsp
0x551:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x556:	4c 89 1c 24          	mov    %r11,(%rsp)
0x55a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x55e:	41 85 03             	test   %eax,(%r11)
0x561:	e8 00 00 00 00       	callq  0x566
0x566:	90                   	nop
0x567:	90                   	nop
0x568:	e8 00 00 00 00       	callq  0x56d
0x56d:	90                   	nop
0x56e:	48 8b 3d 63 fa ff ff 	mov    -0x59d(%rip),%rdi        # 0xffffffd8
0x575:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x579:	48 8b 35 60 fa ff ff 	mov    -0x5a0(%rip),%rsi        # 0xffffffe0
0x580:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x584:	49 8b ce             	mov    %r14,%rcx
0x587:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x58b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x592:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x599:	48 8b d9             	mov    %rcx,%rbx
0x59c:	48 03 da             	add    %rdx,%rbx
0x59f:	4c 8b cb             	mov    %rbx,%r9
0x5a2:	4d 3b c8             	cmp    %r8,%r9
0x5a5:	0f 86 14 00 00 00    	jbe    0x5bf
0x5ab:	48 8b fe             	mov    %rsi,%rdi
0x5ae:	48 8b f2             	mov    %rdx,%rsi
0x5b1:	48 8b d0             	mov    %rax,%rdx
0x5b4:	e8 00 00 00 00       	callq  0x5b9
0x5b9:	90                   	nop
0x5ba:	e9 0a 00 00 00       	jmpq   0x5c9
0x5bf:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x5c6:	48 8b c1             	mov    %rcx,%rax
0x5c9:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x5cd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5d1:	90                   	nop
0x5d2:	90                   	nop
0x5d3:	90                   	nop
0x5d4:	e8 00 00 00 00       	callq  0x5d9
0x5d9:	90                   	nop
0x5da:	90                   	nop
0x5db:	90                   	nop
0x5dc:	e8 00 00 00 00       	callq  0x5e1
0x5e1:	90                   	nop
0x5e2:	83 f8 00             	cmp    $0x0,%eax
0x5e5:	0f 84 27 00 00 00    	je     0x612
0x5eb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5ef:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x5f3:	85 06                	test   %eax,(%rsi)
0x5f5:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x5f9:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x5fd:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x601:	83 e2 ff             	and    $0xffffffff,%edx
0x604:	48 8b fa             	mov    %rdx,%rdi
0x607:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x60b:	90                   	nop
0x60c:	e8 00 00 00 00       	callq  0x611
0x611:	90                   	nop
0x612:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x616:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x61a:	48 89 38             	mov    %rdi,(%rax)
0x61d:	48 83 ec 10          	sub    $0x10,%rsp
0x621:	48 89 04 24          	mov    %rax,(%rsp)
0x625:	48 83 ec 10          	sub    $0x10,%rsp
0x629:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x62e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x632:	4c 8b 1c 24          	mov    (%rsp),%r11
0x636:	41 85 03             	test   %eax,(%r11)
0x639:	e8 00 00 00 00       	callq  0x63e
0x63e:	90                   	nop
0x63f:	90                   	nop
0x640:	e8 00 00 00 00       	callq  0x645
0x645:	90                   	nop
0x646:	90                   	nop
0x647:	90                   	nop
0x648:	e8 00 00 00 00       	callq  0x64d
0x64d:	90                   	nop
0x64e:	90                   	nop
0x64f:	90                   	nop
0x650:	e8 00 00 00 00       	callq  0x655
0x655:	90                   	nop
0x656:	48 83 c5 40          	add    $0x40,%rbp
0x65a:	c9                   	leaveq 
0x65b:	c2 10 00             	retq   $0x10

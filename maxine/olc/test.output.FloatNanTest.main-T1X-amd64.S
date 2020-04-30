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
0x53:	48 8b 3d ce fe ff ff 	mov    -0x132(%rip),%rdi        # 0xffffff28
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	90                   	nop
0x6f:	90                   	nop
0x70:	e8 00 00 00 00       	callq  0x75
0x75:	90                   	nop
0x76:	48 83 ec 10          	sub    $0x10,%rsp
0x7a:	48 89 04 24          	mov    %rax,(%rsp)
0x7e:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x83:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x88:	48 8b 15 a1 fe ff ff 	mov    -0x15f(%rip),%rdx        # 0xffffff30
0x8f:	b9 02 00 00 00       	mov    $0x2,%ecx
0x94:	48 8b c6             	mov    %rsi,%rax
0x97:	48 8b 00             	mov    (%rax),%rax
0x9a:	48 63 ff             	movslq %edi,%rdi
0x9d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa2:	48 8b fa             	mov    %rdx,%rdi
0xa5:	48 8b d1             	mov    %rcx,%rdx
0xa8:	b9 03 00 00 00       	mov    $0x3,%ecx
0xad:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb1:	90                   	nop
0xb2:	90                   	nop
0xb3:	e8 00 00 00 00       	callq  0xb8
0xb8:	90                   	nop
0xb9:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbd:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xc1:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xc6:	ff d0                	callq  *%rax
0xc8:	90                   	nop
0xc9:	48 8b 3d 68 fe ff ff 	mov    -0x198(%rip),%rdi        # 0xffffff38
0xd0:	be 18 00 00 00       	mov    $0x18,%esi
0xd5:	48 63 f6             	movslq %esi,%rsi
0xd8:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xdc:	48 83 ec 10          	sub    $0x10,%rsp
0xe0:	48 89 04 24          	mov    %rax,(%rsp)
0xe4:	90                   	nop
0xe5:	90                   	nop
0xe6:	90                   	nop
0xe7:	90                   	nop
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	48 89 04 24          	mov    %rax,(%rsp)
0xf6:	bf 2a 00 00 00       	mov    $0x2a,%edi
0xfb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x100:	48 8b 15 39 fe ff ff 	mov    -0x1c7(%rip),%rdx        # 0xffffff40
0x107:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x10c:	48 8b c6             	mov    %rsi,%rax
0x10f:	48 8b 00             	mov    (%rax),%rax
0x112:	48 63 ff             	movslq %edi,%rdi
0x115:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x11a:	48 8b fa             	mov    %rdx,%rdi
0x11d:	48 8b d1             	mov    %rcx,%rdx
0x120:	b9 03 00 00 00       	mov    $0x3,%ecx
0x125:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x129:	90                   	nop
0x12a:	90                   	nop
0x12b:	e8 00 00 00 00       	callq  0x130
0x130:	90                   	nop
0x131:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x135:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x139:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x13e:	ff d0                	callq  *%rax
0x140:	90                   	nop
0x141:	41 bb 00 00 c0 7f    	mov    $0x7fc00000,%r11d
0x147:	48 83 ec 10          	sub    $0x10,%rsp
0x14b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x14f:	90                   	nop
0x150:	e8 00 00 00 00       	callq  0x155
0x155:	90                   	nop
0x156:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x15c:	48 83 ec 10          	sub    $0x10,%rsp
0x160:	44 89 1c 24          	mov    %r11d,(%rsp)
0x164:	90                   	nop
0x165:	90                   	nop
0x166:	90                   	nop
0x167:	90                   	nop
0x168:	e8 00 00 00 00       	callq  0x16d
0x16d:	90                   	nop
0x16e:	41 bb 00 00 40 3f    	mov    $0x3f400000,%r11d
0x174:	48 83 ec 10          	sub    $0x10,%rsp
0x178:	44 89 1c 24          	mov    %r11d,(%rsp)
0x17c:	90                   	nop
0x17d:	90                   	nop
0x17e:	90                   	nop
0x17f:	90                   	nop
0x180:	e8 00 00 00 00       	callq  0x185
0x185:	90                   	nop
0x186:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
0x18d:	00 00 00 
0x190:	48 83 ec 20          	sub    $0x20,%rsp
0x194:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x199:	e8 00 00 00 00       	callq  0x19e
0x19e:	90                   	nop
0x19f:	48 8b 3d a2 fd ff ff 	mov    -0x25e(%rip),%rdi        # 0xffffff48
0x1a6:	be 18 00 00 00       	mov    $0x18,%esi
0x1ab:	48 63 f6             	movslq %esi,%rsi
0x1ae:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1b2:	48 83 ec 10          	sub    $0x10,%rsp
0x1b6:	48 89 04 24          	mov    %rax,(%rsp)
0x1ba:	4c 8b 1d 8f fd ff ff 	mov    -0x271(%rip),%r11        # 0xffffff50
0x1c1:	48 83 ec 10          	sub    $0x10,%rsp
0x1c5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c9:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1ce:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1d3:	48 8b 15 7e fd ff ff 	mov    -0x282(%rip),%rdx        # 0xffffff58
0x1da:	b9 19 00 00 00       	mov    $0x19,%ecx
0x1df:	48 8b c6             	mov    %rsi,%rax
0x1e2:	48 8b 00             	mov    (%rax),%rax
0x1e5:	48 63 ff             	movslq %edi,%rdi
0x1e8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1ed:	48 8b fa             	mov    %rdx,%rdi
0x1f0:	48 8b d1             	mov    %rcx,%rdx
0x1f3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1f8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1fc:	90                   	nop
0x1fd:	90                   	nop
0x1fe:	e8 00 00 00 00       	callq  0x203
0x203:	90                   	nop
0x204:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x208:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x20c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x211:	ff d0                	callq  *%rax
0x213:	90                   	nop
0x214:	48 8b 3d 45 fd ff ff 	mov    -0x2bb(%rip),%rdi        # 0xffffff60
0x21b:	be 18 00 00 00       	mov    $0x18,%esi
0x220:	48 63 f6             	movslq %esi,%rsi
0x223:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x227:	48 83 ec 10          	sub    $0x10,%rsp
0x22b:	48 89 04 24          	mov    %rax,(%rsp)
0x22f:	4c 8b 1d 32 fd ff ff 	mov    -0x2ce(%rip),%r11        # 0xffffff68
0x236:	48 83 ec 10          	sub    $0x10,%rsp
0x23a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x23e:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x243:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x248:	48 8b 15 21 fd ff ff 	mov    -0x2df(%rip),%rdx        # 0xffffff70
0x24f:	b9 22 00 00 00       	mov    $0x22,%ecx
0x254:	48 8b c6             	mov    %rsi,%rax
0x257:	48 8b 00             	mov    (%rax),%rax
0x25a:	48 63 ff             	movslq %edi,%rdi
0x25d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x262:	48 8b fa             	mov    %rdx,%rdi
0x265:	48 8b d1             	mov    %rcx,%rdx
0x268:	b9 03 00 00 00       	mov    $0x3,%ecx
0x26d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x271:	90                   	nop
0x272:	90                   	nop
0x273:	e8 00 00 00 00       	callq  0x278
0x278:	90                   	nop
0x279:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x27d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x281:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x286:	ff d0                	callq  *%rax
0x288:	90                   	nop
0x289:	48 8b 3d e8 fc ff ff 	mov    -0x318(%rip),%rdi        # 0xffffff78
0x290:	be 18 00 00 00       	mov    $0x18,%esi
0x295:	48 63 f6             	movslq %esi,%rsi
0x298:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x29c:	48 83 ec 10          	sub    $0x10,%rsp
0x2a0:	48 89 04 24          	mov    %rax,(%rsp)
0x2a4:	4c 8b 1d d5 fc ff ff 	mov    -0x32b(%rip),%r11        # 0xffffff80
0x2ab:	48 83 ec 10          	sub    $0x10,%rsp
0x2af:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2b3:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2b8:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2bd:	48 8b 15 c4 fc ff ff 	mov    -0x33c(%rip),%rdx        # 0xffffff88
0x2c4:	b9 2b 00 00 00       	mov    $0x2b,%ecx
0x2c9:	48 8b c6             	mov    %rsi,%rax
0x2cc:	48 8b 00             	mov    (%rax),%rax
0x2cf:	48 63 ff             	movslq %edi,%rdi
0x2d2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2d7:	48 8b fa             	mov    %rdx,%rdi
0x2da:	48 8b d1             	mov    %rcx,%rdx
0x2dd:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2e2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2e6:	90                   	nop
0x2e7:	90                   	nop
0x2e8:	e8 00 00 00 00       	callq  0x2ed
0x2ed:	90                   	nop
0x2ee:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2f2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2f6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2fb:	ff d0                	callq  *%rax
0x2fd:	90                   	nop
0x2fe:	48 8b 3d 8b fc ff ff 	mov    -0x375(%rip),%rdi        # 0xffffff90
0x305:	be 18 00 00 00       	mov    $0x18,%esi
0x30a:	48 63 f6             	movslq %esi,%rsi
0x30d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x311:	48 83 ec 10          	sub    $0x10,%rsp
0x315:	48 89 04 24          	mov    %rax,(%rsp)
0x319:	4c 8b 1d 78 fc ff ff 	mov    -0x388(%rip),%r11        # 0xffffff98
0x320:	48 83 ec 10          	sub    $0x10,%rsp
0x324:	4c 89 1c 24          	mov    %r11,(%rsp)
0x328:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x32d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x332:	48 8b 15 67 fc ff ff 	mov    -0x399(%rip),%rdx        # 0xffffffa0
0x339:	b9 34 00 00 00       	mov    $0x34,%ecx
0x33e:	48 8b c6             	mov    %rsi,%rax
0x341:	48 8b 00             	mov    (%rax),%rax
0x344:	48 63 ff             	movslq %edi,%rdi
0x347:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x34c:	48 8b fa             	mov    %rdx,%rdi
0x34f:	48 8b d1             	mov    %rcx,%rdx
0x352:	b9 03 00 00 00       	mov    $0x3,%ecx
0x357:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x35b:	90                   	nop
0x35c:	90                   	nop
0x35d:	e8 00 00 00 00       	callq  0x362
0x362:	90                   	nop
0x363:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x367:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x36b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x370:	ff d0                	callq  *%rax
0x372:	90                   	nop
0x373:	48 8b 3d 2e fc ff ff 	mov    -0x3d2(%rip),%rdi        # 0xffffffa8
0x37a:	be 18 00 00 00       	mov    $0x18,%esi
0x37f:	48 63 f6             	movslq %esi,%rsi
0x382:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x386:	48 83 ec 10          	sub    $0x10,%rsp
0x38a:	48 89 04 24          	mov    %rax,(%rsp)
0x38e:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
0x395:	00 00 00 
0x398:	48 83 ec 20          	sub    $0x20,%rsp
0x39c:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x3a1:	e8 00 00 00 00       	callq  0x3a6
0x3a6:	90                   	nop
0x3a7:	48 83 ec 10          	sub    $0x10,%rsp
0x3ab:	48 89 04 24          	mov    %rax,(%rsp)
0x3af:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x3b4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3b9:	48 8b 15 f0 fb ff ff 	mov    -0x410(%rip),%rdx        # 0xffffffb0
0x3c0:	b9 3e 00 00 00       	mov    $0x3e,%ecx
0x3c5:	48 8b c6             	mov    %rsi,%rax
0x3c8:	48 8b 00             	mov    (%rax),%rax
0x3cb:	48 63 ff             	movslq %edi,%rdi
0x3ce:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3d3:	48 8b fa             	mov    %rdx,%rdi
0x3d6:	48 8b d1             	mov    %rcx,%rdx
0x3d9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3de:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3e2:	90                   	nop
0x3e3:	90                   	nop
0x3e4:	e8 00 00 00 00       	callq  0x3e9
0x3e9:	90                   	nop
0x3ea:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3ee:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3f2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3f7:	ff d0                	callq  *%rax
0x3f9:	90                   	nop
0x3fa:	48 8b 3d b7 fb ff ff 	mov    -0x449(%rip),%rdi        # 0xffffffb8
0x401:	be 18 00 00 00       	mov    $0x18,%esi
0x406:	48 63 f6             	movslq %esi,%rsi
0x409:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x40d:	48 83 ec 10          	sub    $0x10,%rsp
0x411:	48 89 04 24          	mov    %rax,(%rsp)
0x415:	49 bb 00 00 00 00 00 	movabs $0x3ff0000000000000,%r11
0x41c:	00 f0 3f 
0x41f:	48 83 ec 20          	sub    $0x20,%rsp
0x423:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x428:	e8 00 00 00 00       	callq  0x42d
0x42d:	90                   	nop
0x42e:	48 83 ec 10          	sub    $0x10,%rsp
0x432:	48 89 04 24          	mov    %rax,(%rsp)
0x436:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x43b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x440:	48 8b 15 79 fb ff ff 	mov    -0x487(%rip),%rdx        # 0xffffffc0
0x447:	b9 48 00 00 00       	mov    $0x48,%ecx
0x44c:	48 8b c6             	mov    %rsi,%rax
0x44f:	48 8b 00             	mov    (%rax),%rax
0x452:	48 63 ff             	movslq %edi,%rdi
0x455:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x45a:	48 8b fa             	mov    %rdx,%rdi
0x45d:	48 8b d1             	mov    %rcx,%rdx
0x460:	b9 03 00 00 00       	mov    $0x3,%ecx
0x465:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x469:	90                   	nop
0x46a:	90                   	nop
0x46b:	e8 00 00 00 00       	callq  0x470
0x470:	90                   	nop
0x471:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x475:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x479:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x47e:	ff d0                	callq  *%rax
0x480:	90                   	nop
0x481:	48 8b 3d 40 fb ff ff 	mov    -0x4c0(%rip),%rdi        # 0xffffffc8
0x488:	be 18 00 00 00       	mov    $0x18,%esi
0x48d:	48 63 f6             	movslq %esi,%rsi
0x490:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x494:	48 83 ec 10          	sub    $0x10,%rsp
0x498:	48 89 04 24          	mov    %rax,(%rsp)
0x49c:	49 bb 00 00 00 00 00 	movabs $0x0,%r11
0x4a3:	00 00 00 
0x4a6:	48 83 ec 20          	sub    $0x20,%rsp
0x4aa:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x4af:	90                   	nop
0x4b0:	e8 00 00 00 00       	callq  0x4b5
0x4b5:	90                   	nop
0x4b6:	48 83 ec 10          	sub    $0x10,%rsp
0x4ba:	48 89 04 24          	mov    %rax,(%rsp)
0x4be:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x4c3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x4c8:	48 8b 15 01 fb ff ff 	mov    -0x4ff(%rip),%rdx        # 0xffffffd0
0x4cf:	b9 52 00 00 00       	mov    $0x52,%ecx
0x4d4:	48 8b c6             	mov    %rsi,%rax
0x4d7:	48 8b 00             	mov    (%rax),%rax
0x4da:	48 63 ff             	movslq %edi,%rdi
0x4dd:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4e2:	48 8b fa             	mov    %rdx,%rdi
0x4e5:	48 8b d1             	mov    %rcx,%rdx
0x4e8:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4ed:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4f1:	90                   	nop
0x4f2:	90                   	nop
0x4f3:	e8 00 00 00 00       	callq  0x4f8
0x4f8:	90                   	nop
0x4f9:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4fd:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x501:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x506:	ff d0                	callq  *%rax
0x508:	90                   	nop
0x509:	48 8b 3d c8 fa ff ff 	mov    -0x538(%rip),%rdi        # 0xffffffd8
0x510:	be 18 00 00 00       	mov    $0x18,%esi
0x515:	48 63 f6             	movslq %esi,%rsi
0x518:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x51c:	48 83 ec 10          	sub    $0x10,%rsp
0x520:	48 89 04 24          	mov    %rax,(%rsp)
0x524:	49 bb 00 00 00 00 00 	movabs $0x3ff0000000000000,%r11
0x52b:	00 f0 3f 
0x52e:	48 83 ec 20          	sub    $0x20,%rsp
0x532:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x537:	90                   	nop
0x538:	e8 00 00 00 00       	callq  0x53d
0x53d:	90                   	nop
0x53e:	48 83 ec 10          	sub    $0x10,%rsp
0x542:	48 89 04 24          	mov    %rax,(%rsp)
0x546:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x54b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x550:	48 8b 15 89 fa ff ff 	mov    -0x577(%rip),%rdx        # 0xffffffe0
0x557:	b9 5c 00 00 00       	mov    $0x5c,%ecx
0x55c:	48 8b c6             	mov    %rsi,%rax
0x55f:	48 8b 00             	mov    (%rax),%rax
0x562:	48 63 ff             	movslq %edi,%rdi
0x565:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x56a:	48 8b fa             	mov    %rdx,%rdi
0x56d:	48 8b d1             	mov    %rcx,%rdx
0x570:	b9 03 00 00 00       	mov    $0x3,%ecx
0x575:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x579:	90                   	nop
0x57a:	90                   	nop
0x57b:	e8 00 00 00 00       	callq  0x580
0x580:	90                   	nop
0x581:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x585:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x589:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x58e:	ff d0                	callq  *%rax
0x590:	90                   	nop
0x591:	48 83 c5 40          	add    $0x40,%rbp
0x595:	c9                   	leaveq 
0x596:	c2 10 00             	retq   $0x10

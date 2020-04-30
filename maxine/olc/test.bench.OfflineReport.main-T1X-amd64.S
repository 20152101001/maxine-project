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
0x20:	4c 89 1d 11 ff ff ff 	mov    %r11,-0xef(%rip)        # 0xffffff38
0x27:	48 8b 3d 12 ff ff ff 	mov    -0xee(%rip),%rdi        # 0xffffff40
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
0x53:	48 8b 3d ee fe ff ff 	mov    -0x112(%rip),%rdi        # 0xffffff48
0x5a:	be 10 00 00 00       	mov    $0x10,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x72:	48 83 ec 10          	sub    $0x10,%rsp
0x76:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7a:	bf 19 00 00 00       	mov    $0x19,%edi
0x7f:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x84:	48 8b 15 c5 fe ff ff 	mov    -0x13b(%rip),%rdx        # 0xffffff50
0x8b:	b9 01 00 00 00       	mov    $0x1,%ecx
0x90:	48 8b c6             	mov    %rsi,%rax
0x93:	48 8b 00             	mov    (%rax),%rax
0x96:	48 63 ff             	movslq %edi,%rdi
0x99:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x9e:	48 8b fa             	mov    %rdx,%rdi
0xa1:	48 8b d1             	mov    %rcx,%rdx
0xa4:	b9 03 00 00 00       	mov    $0x3,%ecx
0xa9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xad:	90                   	nop
0xae:	90                   	nop
0xaf:	e8 00 00 00 00       	callq  0xb4
0xb4:	90                   	nop
0xb5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xb9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xbd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xc2:	ff d0                	callq  *%rax
0xc4:	90                   	nop
0xc5:	48 83 ec 10          	sub    $0x10,%rsp
0xc9:	48 89 04 24          	mov    %rax,(%rsp)
0xcd:	bf 1a 00 00 00       	mov    $0x1a,%edi
0xd2:	48 8b 34 24          	mov    (%rsp),%rsi
0xd6:	48 8b 15 7b fe ff ff 	mov    -0x185(%rip),%rdx        # 0xffffff58
0xdd:	b9 0a 00 00 00       	mov    $0xa,%ecx
0xe2:	48 8b c6             	mov    %rsi,%rax
0xe5:	48 8b 00             	mov    (%rax),%rax
0xe8:	48 63 ff             	movslq %edi,%rdi
0xeb:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xf0:	48 8b fa             	mov    %rdx,%rdi
0xf3:	48 8b d1             	mov    %rcx,%rdx
0xf6:	b9 03 00 00 00       	mov    $0x3,%ecx
0xfb:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xff:	90                   	nop
0x100:	90                   	nop
0x101:	e8 00 00 00 00       	callq  0x106
0x106:	90                   	nop
0x107:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x10b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x10f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x113:	ff d0                	callq  *%rax
0x115:	90                   	nop
0x116:	48 83 ec 10          	sub    $0x10,%rsp
0x11a:	48 89 04 24          	mov    %rax,(%rsp)
0x11e:	48 83 c4 10          	add    $0x10,%rsp
0x122:	48 8b 3d 37 fe ff ff 	mov    -0x1c9(%rip),%rdi        # 0xffffff60
0x129:	be 18 00 00 00       	mov    $0x18,%esi
0x12e:	48 63 f6             	movslq %esi,%rsi
0x131:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x135:	48 83 ec 10          	sub    $0x10,%rsp
0x139:	48 89 04 24          	mov    %rax,(%rsp)
0x13d:	bf 19 00 00 00       	mov    $0x19,%edi
0x142:	48 8b 34 24          	mov    (%rsp),%rsi
0x146:	48 8b 15 1b fe ff ff 	mov    -0x1e5(%rip),%rdx        # 0xffffff68
0x14d:	b9 13 00 00 00       	mov    $0x13,%ecx
0x152:	48 8b c6             	mov    %rsi,%rax
0x155:	48 8b 00             	mov    (%rax),%rax
0x158:	48 63 ff             	movslq %edi,%rdi
0x15b:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x160:	48 8b fa             	mov    %rdx,%rdi
0x163:	48 8b d1             	mov    %rcx,%rdx
0x166:	b9 03 00 00 00       	mov    $0x3,%ecx
0x16b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x16f:	90                   	nop
0x170:	90                   	nop
0x171:	e8 00 00 00 00       	callq  0x176
0x176:	90                   	nop
0x177:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x17b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x17f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x183:	ff d0                	callq  *%rax
0x185:	90                   	nop
0x186:	48 83 ec 10          	sub    $0x10,%rsp
0x18a:	48 89 04 24          	mov    %rax,(%rsp)
0x18e:	48 8b 34 24          	mov    (%rsp),%rsi
0x192:	48 8b 3d d7 fd ff ff 	mov    -0x229(%rip),%rdi        # 0xffffff70
0x199:	48 8b 15 d8 fd ff ff 	mov    -0x228(%rip),%rdx        # 0xffffff78
0x1a0:	b9 1b 00 00 00       	mov    $0x1b,%ecx
0x1a5:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x1a9:	48 8b fa             	mov    %rdx,%rdi
0x1ac:	48 8b de             	mov    %rsi,%rbx
0x1af:	48 8b f3             	mov    %rbx,%rsi
0x1b2:	48 8b d1             	mov    %rcx,%rdx
0x1b5:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1ba:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x1be:	e8 00 00 00 00       	callq  0x1c3
0x1c3:	90                   	nop
0x1c4:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x1c8:	4d 33 db             	xor    %r11,%r11
0x1cb:	49 3b f3             	cmp    %r11,%rsi
0x1ce:	0f 85 0e 00 00 00    	jne    0x1e2
0x1d4:	bf 01 00 00 00       	mov    $0x1,%edi
0x1d9:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x1dd:	e9 6f 00 00 00       	jmpq   0x251
0x1e2:	48 8b c6             	mov    %rsi,%rax
0x1e5:	48 8b 38             	mov    (%rax),%rdi
0x1e8:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x1ec:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x1f0:	0f 85 0e 00 00 00    	jne    0x204
0x1f6:	bf 01 00 00 00       	mov    $0x1,%edi
0x1fb:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x1ff:	e9 4d 00 00 00       	jmpq   0x251
0x204:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x208:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x20f:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x213:	48 8b c3             	mov    %rbx,%rax
0x216:	99                   	cltd   
0x217:	41 f7 f8             	idiv   %r8d
0x21a:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x21e:	03 d0                	add    %eax,%edx
0x220:	48 8b c7             	mov    %rdi,%rax
0x223:	48 63 d2             	movslq %edx,%rdx
0x226:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x22b:	48 63 c0             	movslq %eax,%rax
0x22e:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x233:	48 63 db             	movslq %ebx,%rbx
0x236:	48 3b c3             	cmp    %rbx,%rax
0x239:	0f 85 0a 00 00 00    	jne    0x249
0x23f:	b8 01 00 00 00       	mov    $0x1,%eax
0x244:	e9 05 00 00 00       	jmpq   0x24e
0x249:	b8 00 00 00 00       	mov    $0x0,%eax
0x24e:	48 8b f8             	mov    %rax,%rdi
0x251:	83 ff 00             	cmp    $0x0,%edi
0x254:	0f 85 12 00 00 00    	jne    0x26c
0x25a:	48 8b f9             	mov    %rcx,%rdi
0x25d:	e8 00 00 00 00       	callq  0x262
0x262:	90                   	nop
0x263:	48 8b f8             	mov    %rax,%rdi
0x266:	e8 00 00 00 00       	callq  0x26b
0x26b:	90                   	nop
0x26c:	48 8b c6             	mov    %rsi,%rax
0x26f:	48 89 04 24          	mov    %rax,(%rsp)
0x273:	4c 8b 1c 24          	mov    (%rsp),%r11
0x277:	48 83 c4 10          	add    $0x10,%rsp
0x27b:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x27f:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x283:	48 83 ec 10          	sub    $0x10,%rsp
0x287:	4c 89 1c 24          	mov    %r11,(%rsp)
0x28b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x28f:	48 33 c0             	xor    %rax,%rax
0x292:	48 83 c4 10          	add    $0x10,%rsp
0x296:	4c 3b d8             	cmp    %rax,%r11
0x299:	74 33                	je     0x2ce
0x29b:	48 8b 3d de fc ff ff 	mov    -0x322(%rip),%rdi        # 0xffffff80
0x2a2:	be 23 00 00 00       	mov    $0x23,%esi
0x2a7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2ab:	48 8b c8             	mov    %rax,%rcx
0x2ae:	48 63 f6             	movslq %esi,%rsi
0x2b1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2b6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2bc:	0f 8d 07 00 00 00    	jge    0x2c9
0x2c2:	83 c1 01             	add    $0x1,%ecx
0x2c5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2c9:	e9 b8 00 00 00       	jmpq   0x386
0x2ce:	48 8b 3d b3 fc ff ff 	mov    -0x34d(%rip),%rdi        # 0xffffff88
0x2d5:	be 24 00 00 00       	mov    $0x24,%esi
0x2da:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2de:	48 8b c8             	mov    %rax,%rcx
0x2e1:	48 63 f6             	movslq %esi,%rsi
0x2e4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2e9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2ef:	0f 8d 07 00 00 00    	jge    0x2fc
0x2f5:	83 c1 01             	add    $0x1,%ecx
0x2f8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2fc:	48 8b 3d 8d fc ff ff 	mov    -0x373(%rip),%rdi        # 0xffffff90
0x303:	be 20 00 00 00       	mov    $0x20,%esi
0x308:	48 63 f6             	movslq %esi,%rsi
0x30b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x30f:	48 83 ec 10          	sub    $0x10,%rsp
0x313:	48 89 04 24          	mov    %rax,(%rsp)
0x317:	4c 8b 1d 7a fc ff ff 	mov    -0x386(%rip),%r11        # 0xffffff98
0x31e:	48 83 ec 10          	sub    $0x10,%rsp
0x322:	4c 89 1c 24          	mov    %r11,(%rsp)
0x326:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x32b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x330:	48 8b 15 69 fc ff ff 	mov    -0x397(%rip),%rdx        # 0xffffffa0
0x337:	b9 26 00 00 00       	mov    $0x26,%ecx
0x33c:	48 8b c6             	mov    %rsi,%rax
0x33f:	48 8b 00             	mov    (%rax),%rax
0x342:	48 63 ff             	movslq %edi,%rdi
0x345:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x34a:	48 8b fa             	mov    %rdx,%rdi
0x34d:	48 8b d1             	mov    %rcx,%rdx
0x350:	b9 03 00 00 00       	mov    $0x3,%ecx
0x355:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x359:	90                   	nop
0x35a:	90                   	nop
0x35b:	e8 00 00 00 00       	callq  0x360
0x360:	90                   	nop
0x361:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x365:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x369:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x36e:	ff d0                	callq  *%rax
0x370:	90                   	nop
0x371:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x377:	48 83 ec 10          	sub    $0x10,%rsp
0x37b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x37f:	90                   	nop
0x380:	e8 00 00 00 00       	callq  0x385
0x385:	90                   	nop
0x386:	4c 8b 1d 1b fc ff ff 	mov    -0x3e5(%rip),%r11        # 0xffffffa8
0x38d:	48 83 ec 10          	sub    $0x10,%rsp
0x391:	4c 89 1c 24          	mov    %r11,(%rsp)
0x395:	4c 8b 1d 14 fc ff ff 	mov    -0x3ec(%rip),%r11        # 0xffffffb0
0x39c:	48 83 ec 10          	sub    $0x10,%rsp
0x3a0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3a4:	90                   	nop
0x3a5:	90                   	nop
0x3a6:	90                   	nop
0x3a7:	90                   	nop
0x3a8:	e8 00 00 00 00       	callq  0x3ad
0x3ad:	90                   	nop
0x3ae:	48 83 ec 10          	sub    $0x10,%rsp
0x3b2:	48 89 04 24          	mov    %rax,(%rsp)
0x3b6:	48 83 c4 10          	add    $0x10,%rsp
0x3ba:	e8 00 00 00 00       	callq  0x3bf
0x3bf:	90                   	nop
0x3c0:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x3c4:	48 83 ec 10          	sub    $0x10,%rsp
0x3c8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3cc:	48 8b 3d e5 fb ff ff 	mov    -0x41b(%rip),%rdi        # 0xffffffb8
0x3d3:	be 10 00 00 00       	mov    $0x10,%esi
0x3d8:	48 63 f6             	movslq %esi,%rsi
0x3db:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3df:	48 83 ec 10          	sub    $0x10,%rsp
0x3e3:	48 89 04 24          	mov    %rax,(%rsp)
0x3e7:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x3ed:	48 83 ec 10          	sub    $0x10,%rsp
0x3f1:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3f5:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x3fb:	48 83 ec 10          	sub    $0x10,%rsp
0x3ff:	44 89 1c 24          	mov    %r11d,(%rsp)
0x403:	e8 00 00 00 00       	callq  0x408
0x408:	90                   	nop
0x409:	48 83 ec 10          	sub    $0x10,%rsp
0x40d:	48 89 04 24          	mov    %rax,(%rsp)
0x411:	4c 8b 1c 24          	mov    (%rsp),%r11
0x415:	48 83 c4 10          	add    $0x10,%rsp
0x419:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x41d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x421:	48 83 ec 10          	sub    $0x10,%rsp
0x425:	4c 89 1c 24          	mov    %r11,(%rsp)
0x429:	48 8b 3d 90 fb ff ff 	mov    -0x470(%rip),%rdi        # 0xffffffc0
0x430:	be 18 00 00 00       	mov    $0x18,%esi
0x435:	48 63 f6             	movslq %esi,%rsi
0x438:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x43c:	48 83 ec 10          	sub    $0x10,%rsp
0x440:	48 89 04 24          	mov    %rax,(%rsp)
0x444:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x44a:	48 83 ec 10          	sub    $0x10,%rsp
0x44e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x452:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x458:	48 83 ec 10          	sub    $0x10,%rsp
0x45c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x460:	e8 00 00 00 00       	callq  0x465
0x465:	90                   	nop
0x466:	48 83 ec 10          	sub    $0x10,%rsp
0x46a:	48 89 04 24          	mov    %rax,(%rsp)
0x46e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x472:	48 83 c4 10          	add    $0x10,%rsp
0x476:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x47a:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x47e:	48 83 ec 10          	sub    $0x10,%rsp
0x482:	4c 89 1c 24          	mov    %r11,(%rsp)
0x486:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x48a:	48 83 ec 10          	sub    $0x10,%rsp
0x48e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x492:	4c 8b 1d 2f fb ff ff 	mov    -0x4d1(%rip),%r11        # 0xffffffc8
0x499:	48 83 ec 10          	sub    $0x10,%rsp
0x49d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4a1:	e8 00 00 00 00       	callq  0x4a6
0x4a6:	90                   	nop
0x4a7:	48 8b 3d 22 fb ff ff 	mov    -0x4de(%rip),%rdi        # 0xffffffd0
0x4ae:	be 34 00 00 00       	mov    $0x34,%esi
0x4b3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4b7:	48 8b c8             	mov    %rax,%rcx
0x4ba:	48 63 f6             	movslq %esi,%rsi
0x4bd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4c2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4c8:	0f 8d 07 00 00 00    	jge    0x4d5
0x4ce:	83 c1 01             	add    $0x1,%ecx
0x4d1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4d5:	e9 95 00 00 00       	jmpq   0x56f
0x4da:	49 8b fe             	mov    %r14,%rdi
0x4dd:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x4e1:	85 07                	test   %eax,(%rdi)
0x4e3:	e8 00 00 00 00       	callq  0x4e8
0x4e8:	90                   	nop
0x4e9:	48 83 ec 10          	sub    $0x10,%rsp
0x4ed:	48 89 04 24          	mov    %rax,(%rsp)
0x4f1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4f5:	48 83 c4 10          	add    $0x10,%rsp
0x4f9:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x4fd:	48 8b 3d d4 fa ff ff 	mov    -0x52c(%rip),%rdi        # 0xffffffd8
0x504:	be 20 00 00 00       	mov    $0x20,%esi
0x509:	48 63 f6             	movslq %esi,%rsi
0x50c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x510:	48 83 ec 10          	sub    $0x10,%rsp
0x514:	48 89 04 24          	mov    %rax,(%rsp)
0x518:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x51c:	48 83 ec 10          	sub    $0x10,%rsp
0x520:	4c 89 1c 24          	mov    %r11,(%rsp)
0x524:	bf 30 00 00 00       	mov    $0x30,%edi
0x529:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x52e:	48 8b 15 ab fa ff ff 	mov    -0x555(%rip),%rdx        # 0xffffffe0
0x535:	b9 36 00 00 00       	mov    $0x36,%ecx
0x53a:	48 8b c6             	mov    %rsi,%rax
0x53d:	48 8b 00             	mov    (%rax),%rax
0x540:	48 63 ff             	movslq %edi,%rdi
0x543:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x548:	48 8b fa             	mov    %rdx,%rdi
0x54b:	48 8b d1             	mov    %rcx,%rdx
0x54e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x553:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x557:	90                   	nop
0x558:	90                   	nop
0x559:	e8 00 00 00 00       	callq  0x55e
0x55e:	90                   	nop
0x55f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x563:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x567:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x56c:	ff d0                	callq  *%rax
0x56e:	90                   	nop
0x56f:	48 83 c5 40          	add    $0x40,%rbp
0x573:	c9                   	leaveq 
0x574:	c2 10 00             	retq   $0x10

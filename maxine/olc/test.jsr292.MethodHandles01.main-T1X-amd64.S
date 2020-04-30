0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 b0 00 00          	enterq $0xb0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 b8 e0 ff 	mov    %rax,-0x1f48(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 41 ff ff ff 	mov    %r11,-0xbf(%rip)        # 0xffffff68
0x27:	48 8b 3d 42 ff ff ff 	mov    -0xbe(%rip),%rdi        # 0xffffff70
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
0x53:	e8 00 00 00 00       	callq  0x58
0x58:	90                   	nop
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	48 89 04 24          	mov    %rax,(%rsp)
0x61:	4c 8b 1c 24          	mov    (%rsp),%r11
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6d:	48 8b 3d 04 ff ff ff 	mov    -0xfc(%rip),%rdi        # 0xffffff78
0x74:	be 10 00 00 00       	mov    $0x10,%esi
0x79:	48 63 f6             	movslq %esi,%rsi
0x7c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x80:	48 83 ec 10          	sub    $0x10,%rsp
0x84:	48 89 04 24          	mov    %rax,(%rsp)
0x88:	e8 00 00 00 00       	callq  0x8d
0x8d:	90                   	nop
0x8e:	48 83 ec 10          	sub    $0x10,%rsp
0x92:	48 89 04 24          	mov    %rax,(%rsp)
0x96:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9a:	48 83 c4 10          	add    $0x10,%rsp
0x9e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xa2:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xa6:	48 83 ec 10          	sub    $0x10,%rsp
0xaa:	4c 89 1c 24          	mov    %r11,(%rsp)
0xae:	48 83 ec 10          	sub    $0x10,%rsp
0xb2:	4c 8b 1d c7 fe ff ff 	mov    -0x139(%rip),%r11        # 0xffffff80
0xb9:	4c 89 1c 24          	mov    %r11,(%rsp)
0xbd:	4c 8b 1d c4 fe ff ff 	mov    -0x13c(%rip),%r11        # 0xffffff88
0xc4:	48 83 ec 10          	sub    $0x10,%rsp
0xc8:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcc:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xd0:	48 83 ec 10          	sub    $0x10,%rsp
0xd4:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd8:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xdd:	41 85 03             	test   %eax,(%r11)
0xe0:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xe5:	90                   	nop
0xe6:	90                   	nop
0xe7:	90                   	nop
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	48 89 04 24          	mov    %rax,(%rsp)
0xf6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xfa:	48 83 c4 10          	add    $0x10,%rsp
0xfe:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x102:	48 8b 3d 87 fe ff ff 	mov    -0x179(%rip),%rdi        # 0xffffff90
0x109:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x10d:	48 8b 35 84 fe ff ff 	mov    -0x17c(%rip),%rsi        # 0xffffff98
0x114:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x118:	49 8b ce             	mov    %r14,%rcx
0x11b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x11f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x126:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x12d:	48 8b d9             	mov    %rcx,%rbx
0x130:	48 03 da             	add    %rdx,%rbx
0x133:	4c 8b cb             	mov    %rbx,%r9
0x136:	4d 3b c8             	cmp    %r8,%r9
0x139:	0f 86 14 00 00 00    	jbe    0x153
0x13f:	48 8b fe             	mov    %rsi,%rdi
0x142:	48 8b f2             	mov    %rdx,%rsi
0x145:	48 8b d0             	mov    %rax,%rdx
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	e9 0a 00 00 00       	jmpq   0x15d
0x153:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x15a:	48 8b c1             	mov    %rcx,%rax
0x15d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x161:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x165:	90                   	nop
0x166:	90                   	nop
0x167:	90                   	nop
0x168:	e8 00 00 00 00       	callq  0x16d
0x16d:	90                   	nop
0x16e:	90                   	nop
0x16f:	90                   	nop
0x170:	e8 00 00 00 00       	callq  0x175
0x175:	90                   	nop
0x176:	83 f8 00             	cmp    $0x0,%eax
0x179:	0f 84 27 00 00 00    	je     0x1a6
0x17f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x183:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x187:	85 06                	test   %eax,(%rsi)
0x189:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x18d:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x191:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x195:	83 e2 ff             	and    $0xffffffff,%edx
0x198:	48 8b fa             	mov    %rdx,%rdi
0x19b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x19f:	90                   	nop
0x1a0:	e8 00 00 00 00       	callq  0x1a5
0x1a5:	90                   	nop
0x1a6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1aa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1ae:	48 89 38             	mov    %rdi,(%rax)
0x1b1:	48 83 ec 10          	sub    $0x10,%rsp
0x1b5:	48 89 04 24          	mov    %rax,(%rsp)
0x1b9:	48 83 ec 10          	sub    $0x10,%rsp
0x1bd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1c2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1ca:	41 85 03             	test   %eax,(%r11)
0x1cd:	90                   	nop
0x1ce:	90                   	nop
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1da:	48 83 c4 10          	add    $0x10,%rsp
0x1de:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x1e2:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1e6:	48 83 ec 10          	sub    $0x10,%rsp
0x1ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ee:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x1f2:	48 83 ec 10          	sub    $0x10,%rsp
0x1f6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1fa:	48 8b 3d 9f fd ff ff 	mov    -0x261(%rip),%rdi        # 0xffffffa0
0x201:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x206:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x20a:	4d 33 db             	xor    %r11,%r11
0x20d:	49 3b c3             	cmp    %r11,%rax
0x210:	0f 85 1d 00 00 00    	jne    0x233
0x216:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x21a:	48 8b c7             	mov    %rdi,%rax
0x21d:	48 8b f8             	mov    %rax,%rdi
0x220:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x224:	90                   	nop
0x225:	e8 00 00 00 00       	callq  0x22a
0x22a:	90                   	nop
0x22b:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x22f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x233:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x237:	48 8b 0e             	mov    (%rsi),%rcx
0x23a:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x23e:	48 63 d2             	movslq %edx,%rdx
0x241:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x246:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x24a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x24f:	ff d0                	callq  *%rax
0x251:	90                   	nop
0x252:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x256:	48 83 ec 10          	sub    $0x10,%rsp
0x25a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25e:	48 83 ec 10          	sub    $0x10,%rsp
0x262:	4c 8b 1d 3f fd ff ff 	mov    -0x2c1(%rip),%r11        # 0xffffffa8
0x269:	4c 89 1c 24          	mov    %r11,(%rsp)
0x26d:	4c 8b 1d 3c fd ff ff 	mov    -0x2c4(%rip),%r11        # 0xffffffb0
0x274:	48 83 ec 10          	sub    $0x10,%rsp
0x278:	4c 89 1c 24          	mov    %r11,(%rsp)
0x27c:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x280:	48 83 ec 10          	sub    $0x10,%rsp
0x284:	4c 89 1c 24          	mov    %r11,(%rsp)
0x288:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0x28d:	41 85 03             	test   %eax,(%r11)
0x290:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x295:	90                   	nop
0x296:	90                   	nop
0x297:	90                   	nop
0x298:	e8 00 00 00 00       	callq  0x29d
0x29d:	90                   	nop
0x29e:	48 83 ec 10          	sub    $0x10,%rsp
0x2a2:	48 89 04 24          	mov    %rax,(%rsp)
0x2a6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2aa:	48 83 c4 10          	add    $0x10,%rsp
0x2ae:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x2b2:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x2b6:	48 83 ec 10          	sub    $0x10,%rsp
0x2ba:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2be:	48 8b 3d f3 fc ff ff 	mov    -0x30d(%rip),%rdi        # 0xffffffb8
0x2c5:	48 8b 34 24          	mov    (%rsp),%rsi
0x2c9:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x2cd:	4d 33 db             	xor    %r11,%r11
0x2d0:	49 3b c3             	cmp    %r11,%rax
0x2d3:	0f 85 1d 00 00 00    	jne    0x2f6
0x2d9:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x2dd:	48 8b c7             	mov    %rdi,%rax
0x2e0:	48 8b f8             	mov    %rax,%rdi
0x2e3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2e7:	90                   	nop
0x2e8:	e8 00 00 00 00       	callq  0x2ed
0x2ed:	90                   	nop
0x2ee:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x2f2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2f6:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x2fa:	48 8b 0e             	mov    (%rsi),%rcx
0x2fd:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x301:	48 63 d2             	movslq %edx,%rdx
0x304:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x309:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x30d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x311:	ff d0                	callq  *%rax
0x313:	90                   	nop
0x314:	48 8b 3d a5 fc ff ff 	mov    -0x35b(%rip),%rdi        # 0xffffffc0
0x31b:	be 10 00 00 00       	mov    $0x10,%esi
0x320:	48 63 f6             	movslq %esi,%rsi
0x323:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x327:	48 83 ec 10          	sub    $0x10,%rsp
0x32b:	48 89 04 24          	mov    %rax,(%rsp)
0x32f:	48 8b 3d 92 fc ff ff 	mov    -0x36e(%rip),%rdi        # 0xffffffc8
0x336:	be 10 00 00 00       	mov    $0x10,%esi
0x33b:	48 63 f6             	movslq %esi,%rsi
0x33e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x342:	48 83 ec 10          	sub    $0x10,%rsp
0x346:	48 89 04 24          	mov    %rax,(%rsp)
0x34a:	e8 00 00 00 00       	callq  0x34f
0x34f:	90                   	nop
0x350:	48 83 ec 10          	sub    $0x10,%rsp
0x354:	48 89 04 24          	mov    %rax,(%rsp)
0x358:	4c 8b 1c 24          	mov    (%rsp),%r11
0x35c:	48 83 c4 10          	add    $0x10,%rsp
0x360:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0x364:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x368:	48 83 ec 10          	sub    $0x10,%rsp
0x36c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x370:	48 83 ec 10          	sub    $0x10,%rsp
0x374:	4c 8b 1d 55 fc ff ff 	mov    -0x3ab(%rip),%r11        # 0xffffffd0
0x37b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x37f:	4c 8b 1d 52 fc ff ff 	mov    -0x3ae(%rip),%r11        # 0xffffffd8
0x386:	48 83 ec 10          	sub    $0x10,%rsp
0x38a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x38e:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x392:	48 83 ec 10          	sub    $0x10,%rsp
0x396:	4c 89 1c 24          	mov    %r11,(%rsp)
0x39a:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0x39f:	41 85 03             	test   %eax,(%r11)
0x3a2:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x3a7:	90                   	nop
0x3a8:	e8 00 00 00 00       	callq  0x3ad
0x3ad:	90                   	nop
0x3ae:	48 83 ec 10          	sub    $0x10,%rsp
0x3b2:	48 89 04 24          	mov    %rax,(%rsp)
0x3b6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3ba:	48 83 c4 10          	add    $0x10,%rsp
0x3be:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
0x3c2:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x3c6:	48 83 ec 10          	sub    $0x10,%rsp
0x3ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3ce:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x3d2:	48 83 ec 10          	sub    $0x10,%rsp
0x3d6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3da:	41 bb 17 00 00 00    	mov    $0x17,%r11d
0x3e0:	48 83 ec 10          	sub    $0x10,%rsp
0x3e4:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3e8:	48 8b 3d f1 fb ff ff 	mov    -0x40f(%rip),%rdi        # 0xffffffe0
0x3ef:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x3f4:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x3f8:	4d 33 db             	xor    %r11,%r11
0x3fb:	49 3b c3             	cmp    %r11,%rax
0x3fe:	0f 85 1d 00 00 00    	jne    0x421
0x404:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x408:	48 8b c7             	mov    %rdi,%rax
0x40b:	48 8b f8             	mov    %rax,%rdi
0x40e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x412:	90                   	nop
0x413:	e8 00 00 00 00       	callq  0x418
0x418:	90                   	nop
0x419:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x41d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x421:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x425:	48 8b 0e             	mov    (%rsi),%rcx
0x428:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x42c:	48 63 d2             	movslq %edx,%rdx
0x42f:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x434:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x438:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x43d:	ff d0                	callq  *%rax
0x43f:	90                   	nop
0x440:	48 83 c5 40          	add    $0x40,%rbp
0x444:	c9                   	leaveq 
0x445:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d b1 fe ff ff 	mov    %r11,-0x14f(%rip)        # 0xfffffed8
0x27:	48 8b 3d b2 fe ff ff 	mov    -0x14e(%rip),%rdi        # 0xfffffee0
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
0x53:	48 8b 3d 8e fe ff ff 	mov    -0x172(%rip),%rdi        # 0xfffffee8
0x5a:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x5e:	4d 33 db             	xor    %r11,%r11
0x61:	49 3b c3             	cmp    %r11,%rax
0x64:	0f 85 14 00 00 00    	jne    0x7e
0x6a:	48 8b c7             	mov    %rdi,%rax
0x6d:	48 8b f8             	mov    %rax,%rdi
0x70:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x74:	e8 00 00 00 00       	callq  0x79
0x79:	90                   	nop
0x7a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x7e:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x82:	48 8b 78 28          	mov    0x28(%rax),%rdi
0x86:	48 8b 8f 98 00 00 00 	mov    0x98(%rdi),%rcx
0x8d:	4d 33 db             	xor    %r11,%r11
0x90:	49 3b cb             	cmp    %r11,%rcx
0x93:	0f 84 15 00 00 00    	je     0xae
0x99:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x9d:	48 8b 0f             	mov    (%rdi),%rcx
0xa0:	48 8b 91 38 04 00 00 	mov    0x438(%rcx),%rdx
0xa7:	ff d2                	callq  *%rdx
0xa9:	90                   	nop
0xaa:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xae:	48 8b 0d 3b fe ff ff 	mov    -0x1c5(%rip),%rcx        # 0xfffffef0
0xb5:	48 8b f8             	mov    %rax,%rdi
0xb8:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
0xbf:	00 00 00 
0xc2:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%rbp)
0xc9:	8b 55 18             	mov    0x18(%rbp),%edx
0xcc:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
0xd0:	90                   	nop
0xd1:	e8 00 00 00 00       	callq  0xd6
0xd6:	90                   	nop
0xd7:	48 8b 38             	mov    (%rax),%rdi
0xda:	48 8b 8f 68 02 00 00 	mov    0x268(%rdi),%rcx
0xe1:	48 8b f8             	mov    %rax,%rdi
0xe4:	48 8b 75 20          	mov    0x20(%rbp),%rsi
0xe8:	ff d1                	callq  *%rcx
0xea:	90                   	nop
0xeb:	48 8b 0d 06 fe ff ff 	mov    -0x1fa(%rip),%rcx        # 0xfffffef8
0xf2:	48 8b 51 10          	mov    0x10(%rcx),%rdx
0xf6:	b9 01 00 00 00       	mov    $0x1,%ecx
0xfb:	48 d3 f8             	sar    %cl,%rax
0xfe:	48 03 d0             	add    %rax,%rdx
0x101:	48 8b c2             	mov    %rdx,%rax
0x104:	ff d0                	callq  *%rax
0x106:	90                   	nop
0x107:	48 83 ec 10          	sub    $0x10,%rsp
0x10b:	48 89 04 24          	mov    %rax,(%rsp)
0x10f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x113:	48 83 c4 10          	add    $0x10,%rsp
0x117:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x11b:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x11f:	48 83 ec 10          	sub    $0x10,%rsp
0x123:	4c 89 1c 24          	mov    %r11,(%rsp)
0x127:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12b:	41 85 03             	test   %eax,(%r11)
0x12e:	48 8b 3c 24          	mov    (%rsp),%rdi
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 83 ec 10          	sub    $0x10,%rsp
0x13c:	48 89 04 24          	mov    %rax,(%rsp)
0x140:	48 8b 3d b9 fd ff ff 	mov    -0x247(%rip),%rdi        # 0xffffff00
0x147:	48 8b 34 24          	mov    (%rsp),%rsi
0x14b:	48 8b 15 b6 fd ff ff 	mov    -0x24a(%rip),%rdx        # 0xffffff08
0x152:	b9 03 00 00 00       	mov    $0x3,%ecx
0x157:	48 8b da             	mov    %rdx,%rbx
0x15a:	48 8b c6             	mov    %rsi,%rax
0x15d:	4c 8b 00             	mov    (%rax),%r8
0x160:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x164:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x16b:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x16f:	48 8b c2             	mov    %rdx,%rax
0x172:	99                   	cltd   
0x173:	41 f7 f9             	idiv   %r9d
0x176:	49 63 40 58          	movslq 0x58(%r8),%rax
0x17a:	03 d0                	add    %eax,%edx
0x17c:	49 8b c0             	mov    %r8,%rax
0x17f:	48 63 d2             	movslq %edx,%rdx
0x182:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x187:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x18e:	03 d0                	add    %eax,%edx
0x190:	48 63 d2             	movslq %edx,%rdx
0x193:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x198:	48 8b fb             	mov    %rbx,%rdi
0x19b:	48 8b d1             	mov    %rcx,%rdx
0x19e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1a3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1a7:	e8 00 00 00 00       	callq  0x1ac
0x1ac:	90                   	nop
0x1ad:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1b1:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1b5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1b9:	ff d0                	callq  *%rax
0x1bb:	90                   	nop
0x1bc:	48 83 ec 10          	sub    $0x10,%rsp
0x1c0:	48 89 04 24          	mov    %rax,(%rsp)
0x1c4:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1c8:	48 83 c4 10          	add    $0x10,%rsp
0x1cc:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x1d0:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x1d4:	48 83 ec 10          	sub    $0x10,%rsp
0x1d8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1dc:	48 8b 3d 2d fd ff ff 	mov    -0x2d3(%rip),%rdi        # 0xffffff10
0x1e3:	48 8b 34 24          	mov    (%rsp),%rsi
0x1e7:	48 8b 15 2a fd ff ff 	mov    -0x2d6(%rip),%rdx        # 0xffffff18
0x1ee:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x1f3:	48 8b da             	mov    %rdx,%rbx
0x1f6:	48 8b c6             	mov    %rsi,%rax
0x1f9:	4c 8b 00             	mov    (%rax),%r8
0x1fc:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x200:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x207:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x20b:	48 8b c2             	mov    %rdx,%rax
0x20e:	99                   	cltd   
0x20f:	41 f7 f9             	idiv   %r9d
0x212:	49 63 40 58          	movslq 0x58(%r8),%rax
0x216:	03 d0                	add    %eax,%edx
0x218:	49 8b c0             	mov    %r8,%rax
0x21b:	48 63 d2             	movslq %edx,%rdx
0x21e:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x223:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x22a:	03 d0                	add    %eax,%edx
0x22c:	48 63 d2             	movslq %edx,%rdx
0x22f:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x234:	48 8b fb             	mov    %rbx,%rdi
0x237:	48 8b d1             	mov    %rcx,%rdx
0x23a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x23f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x243:	e8 00 00 00 00       	callq  0x248
0x248:	90                   	nop
0x249:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x24d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x251:	48 8b 3c 24          	mov    (%rsp),%rdi
0x255:	ff d0                	callq  *%rax
0x257:	90                   	nop
0x258:	48 83 ec 10          	sub    $0x10,%rsp
0x25c:	48 89 04 24          	mov    %rax,(%rsp)
0x260:	44 8b 1c 24          	mov    (%rsp),%r11d
0x264:	b8 00 00 00 00       	mov    $0x0,%eax
0x269:	48 83 c4 10          	add    $0x10,%rsp
0x26d:	44 3b d8             	cmp    %eax,%r11d
0x270:	75 33                	jne    0x2a5
0x272:	48 8b 3d a7 fc ff ff 	mov    -0x359(%rip),%rdi        # 0xffffff20
0x279:	be 14 00 00 00       	mov    $0x14,%esi
0x27e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x282:	48 8b c8             	mov    %rax,%rcx
0x285:	48 63 f6             	movslq %esi,%rsi
0x288:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x28d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x293:	0f 8d 07 00 00 00    	jge    0x2a0
0x299:	83 c1 01             	add    $0x1,%ecx
0x29c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2a0:	e9 68 02 00 00       	jmpq   0x50d
0x2a5:	48 8b 3d 7c fc ff ff 	mov    -0x384(%rip),%rdi        # 0xffffff28
0x2ac:	be 15 00 00 00       	mov    $0x15,%esi
0x2b1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2b5:	48 8b c8             	mov    %rax,%rcx
0x2b8:	48 63 f6             	movslq %esi,%rsi
0x2bb:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2c0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2c6:	0f 8d 07 00 00 00    	jge    0x2d3
0x2cc:	83 c1 01             	add    $0x1,%ecx
0x2cf:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2d3:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x2d7:	48 83 ec 10          	sub    $0x10,%rsp
0x2db:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2df:	48 8b 3d 4a fc ff ff 	mov    -0x3b6(%rip),%rdi        # 0xffffff30
0x2e6:	48 8b 34 24          	mov    (%rsp),%rsi
0x2ea:	48 8b 15 47 fc ff ff 	mov    -0x3b9(%rip),%rdx        # 0xffffff38
0x2f1:	b9 17 00 00 00       	mov    $0x17,%ecx
0x2f6:	48 8b da             	mov    %rdx,%rbx
0x2f9:	48 8b c6             	mov    %rsi,%rax
0x2fc:	4c 8b 00             	mov    (%rax),%r8
0x2ff:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x303:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x30a:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x30e:	48 8b c2             	mov    %rdx,%rax
0x311:	99                   	cltd   
0x312:	41 f7 f9             	idiv   %r9d
0x315:	49 63 40 58          	movslq 0x58(%r8),%rax
0x319:	03 d0                	add    %eax,%edx
0x31b:	49 8b c0             	mov    %r8,%rax
0x31e:	48 63 d2             	movslq %edx,%rdx
0x321:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x326:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x32d:	03 d0                	add    %eax,%edx
0x32f:	48 63 d2             	movslq %edx,%rdx
0x332:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x337:	48 8b fb             	mov    %rbx,%rdi
0x33a:	48 8b d1             	mov    %rcx,%rdx
0x33d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x342:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x346:	e8 00 00 00 00       	callq  0x34b
0x34b:	90                   	nop
0x34c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x350:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x354:	48 8b 3c 24          	mov    (%rsp),%rdi
0x358:	ff d0                	callq  *%rax
0x35a:	90                   	nop
0x35b:	48 83 ec 10          	sub    $0x10,%rsp
0x35f:	48 89 04 24          	mov    %rax,(%rsp)
0x363:	48 8b 34 24          	mov    (%rsp),%rsi
0x367:	48 8b 3d d2 fb ff ff 	mov    -0x42e(%rip),%rdi        # 0xffffff40
0x36e:	48 8b 15 d3 fb ff ff 	mov    -0x42d(%rip),%rdx        # 0xffffff48
0x375:	b9 1f 00 00 00       	mov    $0x1f,%ecx
0x37a:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x37e:	48 8b fa             	mov    %rdx,%rdi
0x381:	48 8b de             	mov    %rsi,%rbx
0x384:	48 8b f3             	mov    %rbx,%rsi
0x387:	48 8b d1             	mov    %rcx,%rdx
0x38a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x38f:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x393:	e8 00 00 00 00       	callq  0x398
0x398:	90                   	nop
0x399:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x39d:	4d 33 db             	xor    %r11,%r11
0x3a0:	49 3b f3             	cmp    %r11,%rsi
0x3a3:	0f 85 0e 00 00 00    	jne    0x3b7
0x3a9:	bf 01 00 00 00       	mov    $0x1,%edi
0x3ae:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x3b2:	e9 6f 00 00 00       	jmpq   0x426
0x3b7:	48 8b c6             	mov    %rsi,%rax
0x3ba:	48 8b 38             	mov    (%rax),%rdi
0x3bd:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x3c1:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x3c5:	0f 85 0e 00 00 00    	jne    0x3d9
0x3cb:	bf 01 00 00 00       	mov    $0x1,%edi
0x3d0:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x3d4:	e9 4d 00 00 00       	jmpq   0x426
0x3d9:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x3dd:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x3e4:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x3e8:	48 8b c3             	mov    %rbx,%rax
0x3eb:	99                   	cltd   
0x3ec:	41 f7 f8             	idiv   %r8d
0x3ef:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x3f3:	03 d0                	add    %eax,%edx
0x3f5:	48 8b c7             	mov    %rdi,%rax
0x3f8:	48 63 d2             	movslq %edx,%rdx
0x3fb:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x400:	48 63 c0             	movslq %eax,%rax
0x403:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x408:	48 63 db             	movslq %ebx,%rbx
0x40b:	48 3b c3             	cmp    %rbx,%rax
0x40e:	0f 85 0a 00 00 00    	jne    0x41e
0x414:	b8 01 00 00 00       	mov    $0x1,%eax
0x419:	e9 05 00 00 00       	jmpq   0x423
0x41e:	b8 00 00 00 00       	mov    $0x0,%eax
0x423:	48 8b f8             	mov    %rax,%rdi
0x426:	83 ff 00             	cmp    $0x0,%edi
0x429:	0f 85 12 00 00 00    	jne    0x441
0x42f:	48 8b f9             	mov    %rcx,%rdi
0x432:	e8 00 00 00 00       	callq  0x437
0x437:	90                   	nop
0x438:	48 8b f8             	mov    %rax,%rdi
0x43b:	e8 00 00 00 00       	callq  0x440
0x440:	90                   	nop
0x441:	48 8b c6             	mov    %rsi,%rax
0x444:	48 89 04 24          	mov    %rax,(%rsp)
0x448:	4c 8b 1c 24          	mov    (%rsp),%r11
0x44c:	48 83 c4 10          	add    $0x10,%rsp
0x450:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x454:	48 8b 3d f5 fa ff ff 	mov    -0x50b(%rip),%rdi        # 0xffffff50
0x45b:	be 18 00 00 00       	mov    $0x18,%esi
0x460:	48 63 f6             	movslq %esi,%rsi
0x463:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x467:	48 83 ec 10          	sub    $0x10,%rsp
0x46b:	48 89 04 24          	mov    %rax,(%rsp)
0x46f:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x473:	48 83 ec 10          	sub    $0x10,%rsp
0x477:	4c 89 1c 24          	mov    %r11,(%rsp)
0x47b:	bf 30 00 00 00       	mov    $0x30,%edi
0x480:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x485:	48 8b 15 cc fa ff ff 	mov    -0x534(%rip),%rdx        # 0xffffff58
0x48c:	b9 28 00 00 00       	mov    $0x28,%ecx
0x491:	48 8b c6             	mov    %rsi,%rax
0x494:	48 8b 00             	mov    (%rax),%rax
0x497:	48 63 ff             	movslq %edi,%rdi
0x49a:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x49f:	48 8b fa             	mov    %rdx,%rdi
0x4a2:	48 8b d1             	mov    %rcx,%rdx
0x4a5:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4aa:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4ae:	90                   	nop
0x4af:	90                   	nop
0x4b0:	e8 00 00 00 00       	callq  0x4b5
0x4b5:	90                   	nop
0x4b6:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4ba:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4be:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4c3:	ff d0                	callq  *%rax
0x4c5:	90                   	nop
0x4c6:	48 8b 3d 93 fa ff ff 	mov    -0x56d(%rip),%rdi        # 0xffffff60
0x4cd:	be 30 00 00 00       	mov    $0x30,%esi
0x4d2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4d6:	48 8b c8             	mov    %rax,%rcx
0x4d9:	48 63 f6             	movslq %esi,%rsi
0x4dc:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4e1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4e7:	0f 8d 07 00 00 00    	jge    0x4f4
0x4ed:	83 c1 01             	add    $0x1,%ecx
0x4f0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4f4:	48 8b 3d 6d fa ff ff 	mov    -0x593(%rip),%rdi        # 0xffffff68
0x4fb:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x4ff:	83 e8 01             	sub    $0x1,%eax
0x502:	89 47 30             	mov    %eax,0x30(%rdi)
0x505:	4d 8b 36             	mov    (%r14),%r14
0x508:	e9 c3 fc ff ff       	jmpq   0x1d0
0x50d:	4c 8b 1d 5c fa ff ff 	mov    -0x5a4(%rip),%r11        # 0xffffff70
0x514:	48 83 ec 10          	sub    $0x10,%rsp
0x518:	4c 89 1c 24          	mov    %r11,(%rsp)
0x51c:	4c 8b 1d 55 fa ff ff 	mov    -0x5ab(%rip),%r11        # 0xffffff78
0x523:	48 83 ec 10          	sub    $0x10,%rsp
0x527:	4c 89 1c 24          	mov    %r11,(%rsp)
0x52b:	e8 00 00 00 00       	callq  0x530
0x530:	90                   	nop
0x531:	48 83 ec 10          	sub    $0x10,%rsp
0x535:	48 89 04 24          	mov    %rax,(%rsp)
0x539:	4c 8b 1c 24          	mov    (%rsp),%r11
0x53d:	48 83 c4 10          	add    $0x10,%rsp
0x541:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x545:	48 8b 3d 34 fa ff ff 	mov    -0x5cc(%rip),%rdi        # 0xffffff80
0x54c:	be 18 00 00 00       	mov    $0x18,%esi
0x551:	48 63 f6             	movslq %esi,%rsi
0x554:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x558:	48 83 ec 10          	sub    $0x10,%rsp
0x55c:	48 89 04 24          	mov    %rax,(%rsp)
0x560:	48 8b 3d 21 fa ff ff 	mov    -0x5df(%rip),%rdi        # 0xffffff88
0x567:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x56b:	48 8b 35 1e fa ff ff 	mov    -0x5e2(%rip),%rsi        # 0xffffff90
0x572:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x576:	49 8b ce             	mov    %r14,%rcx
0x579:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x57d:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x584:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x58b:	48 8b d9             	mov    %rcx,%rbx
0x58e:	48 03 da             	add    %rdx,%rbx
0x591:	4c 8b cb             	mov    %rbx,%r9
0x594:	4d 3b c8             	cmp    %r8,%r9
0x597:	0f 86 14 00 00 00    	jbe    0x5b1
0x59d:	48 8b fe             	mov    %rsi,%rdi
0x5a0:	48 8b f2             	mov    %rdx,%rsi
0x5a3:	48 8b d0             	mov    %rax,%rdx
0x5a6:	e8 00 00 00 00       	callq  0x5ab
0x5ab:	90                   	nop
0x5ac:	e9 0a 00 00 00       	jmpq   0x5bb
0x5b1:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x5b8:	48 8b c1             	mov    %rcx,%rax
0x5bb:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x5bf:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5c3:	90                   	nop
0x5c4:	90                   	nop
0x5c5:	90                   	nop
0x5c6:	e8 00 00 00 00       	callq  0x5cb
0x5cb:	90                   	nop
0x5cc:	90                   	nop
0x5cd:	90                   	nop
0x5ce:	e8 00 00 00 00       	callq  0x5d3
0x5d3:	90                   	nop
0x5d4:	83 f8 00             	cmp    $0x0,%eax
0x5d7:	0f 84 27 00 00 00    	je     0x604
0x5dd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5e1:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x5e5:	85 06                	test   %eax,(%rsi)
0x5e7:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x5eb:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x5ef:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x5f3:	83 e2 ff             	and    $0xffffffff,%edx
0x5f6:	48 8b fa             	mov    %rdx,%rdi
0x5f9:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x5fd:	90                   	nop
0x5fe:	e8 00 00 00 00       	callq  0x603
0x603:	90                   	nop
0x604:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x608:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x60c:	48 89 38             	mov    %rdi,(%rax)
0x60f:	48 83 ec 10          	sub    $0x10,%rsp
0x613:	48 89 04 24          	mov    %rax,(%rsp)
0x617:	48 83 ec 10          	sub    $0x10,%rsp
0x61b:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x620:	4c 89 1c 24          	mov    %r11,(%rsp)
0x624:	4c 8b 1c 24          	mov    (%rsp),%r11
0x628:	41 85 03             	test   %eax,(%r11)
0x62b:	e8 00 00 00 00       	callq  0x630
0x630:	90                   	nop
0x631:	4c 8b 1d 60 f9 ff ff 	mov    -0x6a0(%rip),%r11        # 0xffffff98
0x638:	48 83 ec 10          	sub    $0x10,%rsp
0x63c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x640:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x645:	41 85 03             	test   %eax,(%r11)
0x648:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x64d:	90                   	nop
0x64e:	90                   	nop
0x64f:	90                   	nop
0x650:	e8 00 00 00 00       	callq  0x655
0x655:	90                   	nop
0x656:	48 83 ec 10          	sub    $0x10,%rsp
0x65a:	48 89 04 24          	mov    %rax,(%rsp)
0x65e:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x662:	48 83 ec 10          	sub    $0x10,%rsp
0x666:	4c 89 1c 24          	mov    %r11,(%rsp)
0x66a:	48 8b 3d 2f f9 ff ff 	mov    -0x6d1(%rip),%rdi        # 0xffffffa0
0x671:	48 8b 34 24          	mov    (%rsp),%rsi
0x675:	48 8b 15 2c f9 ff ff 	mov    -0x6d4(%rip),%rdx        # 0xffffffa8
0x67c:	b9 35 00 00 00       	mov    $0x35,%ecx
0x681:	48 8b da             	mov    %rdx,%rbx
0x684:	48 8b c6             	mov    %rsi,%rax
0x687:	4c 8b 00             	mov    (%rax),%r8
0x68a:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x68e:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x695:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x699:	48 8b c2             	mov    %rdx,%rax
0x69c:	99                   	cltd   
0x69d:	41 f7 f9             	idiv   %r9d
0x6a0:	49 63 40 58          	movslq 0x58(%r8),%rax
0x6a4:	03 d0                	add    %eax,%edx
0x6a6:	49 8b c0             	mov    %r8,%rax
0x6a9:	48 63 d2             	movslq %edx,%rdx
0x6ac:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x6b1:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x6b8:	03 d0                	add    %eax,%edx
0x6ba:	48 63 d2             	movslq %edx,%rdx
0x6bd:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x6c2:	48 8b fb             	mov    %rbx,%rdi
0x6c5:	48 8b d1             	mov    %rcx,%rdx
0x6c8:	b9 03 00 00 00       	mov    $0x3,%ecx
0x6cd:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x6d1:	e8 00 00 00 00       	callq  0x6d6
0x6d6:	90                   	nop
0x6d7:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x6db:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x6df:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6e3:	ff d0                	callq  *%rax
0x6e5:	90                   	nop
0x6e6:	48 83 ec 10          	sub    $0x10,%rsp
0x6ea:	48 89 04 24          	mov    %rax,(%rsp)
0x6ee:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6f3:	41 85 03             	test   %eax,(%r11)
0x6f6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6fb:	e8 00 00 00 00       	callq  0x700
0x700:	90                   	nop
0x701:	48 83 ec 10          	sub    $0x10,%rsp
0x705:	48 89 04 24          	mov    %rax,(%rsp)
0x709:	4c 8b 1c 24          	mov    (%rsp),%r11
0x70d:	41 85 03             	test   %eax,(%r11)
0x710:	48 8b 3c 24          	mov    (%rsp),%rdi
0x714:	90                   	nop
0x715:	90                   	nop
0x716:	90                   	nop
0x717:	90                   	nop
0x718:	e8 00 00 00 00       	callq  0x71d
0x71d:	90                   	nop
0x71e:	48 83 ec 10          	sub    $0x10,%rsp
0x722:	48 89 04 24          	mov    %rax,(%rsp)
0x726:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x72b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x730:	48 8b 15 79 f8 ff ff 	mov    -0x787(%rip),%rdx        # 0xffffffb0
0x737:	b9 40 00 00 00       	mov    $0x40,%ecx
0x73c:	48 8b c6             	mov    %rsi,%rax
0x73f:	48 8b 00             	mov    (%rax),%rax
0x742:	48 63 ff             	movslq %edi,%rdi
0x745:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x74a:	48 8b fa             	mov    %rdx,%rdi
0x74d:	48 8b d1             	mov    %rcx,%rdx
0x750:	b9 03 00 00 00       	mov    $0x3,%ecx
0x755:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x759:	90                   	nop
0x75a:	90                   	nop
0x75b:	e8 00 00 00 00       	callq  0x760
0x760:	90                   	nop
0x761:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x765:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x769:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x76e:	ff d0                	callq  *%rax
0x770:	90                   	nop
0x771:	4c 8b 1d 40 f8 ff ff 	mov    -0x7c0(%rip),%r11        # 0xffffffb8
0x778:	48 83 ec 10          	sub    $0x10,%rsp
0x77c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x780:	e8 00 00 00 00       	callq  0x785
0x785:	90                   	nop
0x786:	48 83 ec 10          	sub    $0x10,%rsp
0x78a:	48 89 04 24          	mov    %rax,(%rsp)
0x78e:	48 83 c4 10          	add    $0x10,%rsp
0x792:	48 8b 3d 27 f8 ff ff 	mov    -0x7d9(%rip),%rdi        # 0xffffffc0
0x799:	be 18 00 00 00       	mov    $0x18,%esi
0x79e:	48 63 f6             	movslq %esi,%rsi
0x7a1:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x7a5:	48 83 ec 10          	sub    $0x10,%rsp
0x7a9:	48 89 04 24          	mov    %rax,(%rsp)
0x7ad:	4c 8b 1d 14 f8 ff ff 	mov    -0x7ec(%rip),%r11        # 0xffffffc8
0x7b4:	48 83 ec 10          	sub    $0x10,%rsp
0x7b8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7bc:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x7c1:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7c6:	48 8b 15 03 f8 ff ff 	mov    -0x7fd(%rip),%rdx        # 0xffffffd0
0x7cd:	b9 4a 00 00 00       	mov    $0x4a,%ecx
0x7d2:	48 8b c6             	mov    %rsi,%rax
0x7d5:	48 8b 00             	mov    (%rax),%rax
0x7d8:	48 63 ff             	movslq %edi,%rdi
0x7db:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7e0:	48 8b fa             	mov    %rdx,%rdi
0x7e3:	48 8b d1             	mov    %rcx,%rdx
0x7e6:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7eb:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7ef:	90                   	nop
0x7f0:	90                   	nop
0x7f1:	e8 00 00 00 00       	callq  0x7f6
0x7f6:	90                   	nop
0x7f7:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7fb:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7ff:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x804:	ff d0                	callq  *%rax
0x806:	90                   	nop
0x807:	48 8b 3d ca f7 ff ff 	mov    -0x836(%rip),%rdi        # 0xffffffd8
0x80e:	be 52 00 00 00       	mov    $0x52,%esi
0x813:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x817:	48 8b c8             	mov    %rax,%rcx
0x81a:	48 63 f6             	movslq %esi,%rsi
0x81d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x822:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x828:	0f 8d 07 00 00 00    	jge    0x835
0x82e:	83 c1 01             	add    $0x1,%ecx
0x831:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x835:	e9 78 00 00 00       	jmpq   0x8b2
0x83a:	49 8b fe             	mov    %r14,%rdi
0x83d:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x841:	85 07                	test   %eax,(%rdi)
0x843:	e8 00 00 00 00       	callq  0x848
0x848:	90                   	nop
0x849:	48 83 ec 10          	sub    $0x10,%rsp
0x84d:	48 89 04 24          	mov    %rax,(%rsp)
0x851:	4c 8b 1c 24          	mov    (%rsp),%r11
0x855:	48 83 c4 10          	add    $0x10,%rsp
0x859:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x85d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x861:	48 83 ec 10          	sub    $0x10,%rsp
0x865:	4c 89 1c 24          	mov    %r11,(%rsp)
0x869:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x86e:	48 8b 34 24          	mov    (%rsp),%rsi
0x872:	48 8b 15 67 f7 ff ff 	mov    -0x899(%rip),%rdx        # 0xffffffe0
0x879:	b9 54 00 00 00       	mov    $0x54,%ecx
0x87e:	48 8b c6             	mov    %rsi,%rax
0x881:	48 8b 00             	mov    (%rax),%rax
0x884:	48 63 ff             	movslq %edi,%rdi
0x887:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x88c:	48 8b fa             	mov    %rdx,%rdi
0x88f:	48 8b d1             	mov    %rcx,%rdx
0x892:	b9 03 00 00 00       	mov    $0x3,%ecx
0x897:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x89b:	90                   	nop
0x89c:	90                   	nop
0x89d:	e8 00 00 00 00       	callq  0x8a2
0x8a2:	90                   	nop
0x8a3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x8a7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x8ab:	48 8b 3c 24          	mov    (%rsp),%rdi
0x8af:	ff d0                	callq  *%rax
0x8b1:	90                   	nop
0x8b2:	48 83 c5 40          	add    $0x40,%rbp
0x8b6:	c9                   	leaveq 
0x8b7:	c2 10 00             	retq   $0x10

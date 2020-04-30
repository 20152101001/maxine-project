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
0x53:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	44 89 1c 24          	mov    %r11d,(%rsp)
0x79:	41 bb 05 00 00 00    	mov    $0x5,%r11d
0x7f:	48 83 ec 10          	sub    $0x10,%rsp
0x83:	44 89 1c 24          	mov    %r11d,(%rsp)
0x87:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x8c:	8b 04 24             	mov    (%rsp),%eax
0x8f:	48 83 c4 20          	add    $0x20,%rsp
0x93:	44 3b d8             	cmp    %eax,%r11d
0x96:	7c 33                	jl     0xcb
0x98:	48 8b 3d 89 fe ff ff 	mov    -0x177(%rip),%rdi        # 0xffffff28
0x9f:	be 00 00 00 00       	mov    $0x0,%esi
0xa4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa8:	48 8b c8             	mov    %rax,%rcx
0xab:	48 63 f6             	movslq %esi,%rsi
0xae:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb3:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb9:	0f 8d 07 00 00 00    	jge    0xc6
0xbf:	83 c1 01             	add    $0x1,%ecx
0xc2:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc6:	e9 e3 06 00 00       	jmpq   0x7ae
0xcb:	48 8b 3d 5e fe ff ff 	mov    -0x1a2(%rip),%rdi        # 0xffffff30
0xd2:	be 01 00 00 00       	mov    $0x1,%esi
0xd7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdb:	48 8b c8             	mov    %rax,%rcx
0xde:	48 63 f6             	movslq %esi,%rsi
0xe1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xec:	0f 8d 07 00 00 00    	jge    0xf9
0xf2:	83 c1 01             	add    $0x1,%ecx
0xf5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf9:	48 8b 3d 38 fe ff ff 	mov    -0x1c8(%rip),%rdi        # 0xffffff38
0x100:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x104:	48 8b 35 35 fe ff ff 	mov    -0x1cb(%rip),%rsi        # 0xffffff40
0x10b:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x10f:	49 8b ce             	mov    %r14,%rcx
0x112:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x116:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x11d:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x124:	48 8b d9             	mov    %rcx,%rbx
0x127:	48 03 da             	add    %rdx,%rbx
0x12a:	4c 8b cb             	mov    %rbx,%r9
0x12d:	4d 3b c8             	cmp    %r8,%r9
0x130:	0f 86 14 00 00 00    	jbe    0x14a
0x136:	48 8b fe             	mov    %rsi,%rdi
0x139:	48 8b f2             	mov    %rdx,%rsi
0x13c:	48 8b d0             	mov    %rax,%rdx
0x13f:	e8 00 00 00 00       	callq  0x144
0x144:	90                   	nop
0x145:	e9 0a 00 00 00       	jmpq   0x154
0x14a:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x151:	48 8b c1             	mov    %rcx,%rax
0x154:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x158:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x15c:	90                   	nop
0x15d:	90                   	nop
0x15e:	90                   	nop
0x15f:	e8 00 00 00 00       	callq  0x164
0x164:	90                   	nop
0x165:	90                   	nop
0x166:	90                   	nop
0x167:	e8 00 00 00 00       	callq  0x16c
0x16c:	90                   	nop
0x16d:	83 f8 00             	cmp    $0x0,%eax
0x170:	0f 84 27 00 00 00    	je     0x19d
0x176:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x17a:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x17e:	85 06                	test   %eax,(%rsi)
0x180:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x184:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x188:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x18c:	83 e2 ff             	and    $0xffffffff,%edx
0x18f:	48 8b fa             	mov    %rdx,%rdi
0x192:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x196:	90                   	nop
0x197:	e8 00 00 00 00       	callq  0x19c
0x19c:	90                   	nop
0x19d:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1a1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1a5:	48 89 38             	mov    %rdi,(%rax)
0x1a8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ac:	48 89 04 24          	mov    %rax,(%rsp)
0x1b0:	48 83 ec 10          	sub    $0x10,%rsp
0x1b4:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1b9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1bd:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1c1:	41 85 03             	test   %eax,(%r11)
0x1c4:	90                   	nop
0x1c5:	90                   	nop
0x1c6:	90                   	nop
0x1c7:	90                   	nop
0x1c8:	e8 00 00 00 00       	callq  0x1cd
0x1cd:	90                   	nop
0x1ce:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1d2:	48 83 c4 10          	add    $0x10,%rsp
0x1d6:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x1da:	48 8b 3d 67 fd ff ff 	mov    -0x299(%rip),%rdi        # 0xffffff48
0x1e1:	be 18 00 00 00       	mov    $0x18,%esi
0x1e6:	48 63 f6             	movslq %esi,%rsi
0x1e9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1ed:	48 83 ec 10          	sub    $0x10,%rsp
0x1f1:	48 89 04 24          	mov    %rax,(%rsp)
0x1f5:	48 8b 3d 54 fd ff ff 	mov    -0x2ac(%rip),%rdi        # 0xffffff50
0x1fc:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x200:	48 8b 35 51 fd ff ff 	mov    -0x2af(%rip),%rsi        # 0xffffff58
0x207:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x20b:	49 8b ce             	mov    %r14,%rcx
0x20e:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x212:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x219:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x220:	48 8b d9             	mov    %rcx,%rbx
0x223:	48 03 da             	add    %rdx,%rbx
0x226:	4c 8b cb             	mov    %rbx,%r9
0x229:	4d 3b c8             	cmp    %r8,%r9
0x22c:	0f 86 14 00 00 00    	jbe    0x246
0x232:	48 8b fe             	mov    %rsi,%rdi
0x235:	48 8b f2             	mov    %rdx,%rsi
0x238:	48 8b d0             	mov    %rax,%rdx
0x23b:	e8 00 00 00 00       	callq  0x240
0x240:	90                   	nop
0x241:	e9 0a 00 00 00       	jmpq   0x250
0x246:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x24d:	48 8b c1             	mov    %rcx,%rax
0x250:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x254:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x258:	90                   	nop
0x259:	90                   	nop
0x25a:	90                   	nop
0x25b:	e8 00 00 00 00       	callq  0x260
0x260:	90                   	nop
0x261:	90                   	nop
0x262:	90                   	nop
0x263:	e8 00 00 00 00       	callq  0x268
0x268:	90                   	nop
0x269:	83 f8 00             	cmp    $0x0,%eax
0x26c:	0f 84 27 00 00 00    	je     0x299
0x272:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x276:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x27a:	85 06                	test   %eax,(%rsi)
0x27c:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x280:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x284:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x288:	83 e2 ff             	and    $0xffffffff,%edx
0x28b:	48 8b fa             	mov    %rdx,%rdi
0x28e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x292:	90                   	nop
0x293:	e8 00 00 00 00       	callq  0x298
0x298:	90                   	nop
0x299:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x29d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2a1:	48 89 38             	mov    %rdi,(%rax)
0x2a4:	48 83 ec 10          	sub    $0x10,%rsp
0x2a8:	48 89 04 24          	mov    %rax,(%rsp)
0x2ac:	48 83 ec 10          	sub    $0x10,%rsp
0x2b0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2b5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2b9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2bd:	41 85 03             	test   %eax,(%r11)
0x2c0:	e8 00 00 00 00       	callq  0x2c5
0x2c5:	90                   	nop
0x2c6:	4c 8b 1d 93 fc ff ff 	mov    -0x36d(%rip),%r11        # 0xffffff60
0x2cd:	48 83 ec 10          	sub    $0x10,%rsp
0x2d1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2d5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2da:	41 85 03             	test   %eax,(%r11)
0x2dd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2e2:	e8 00 00 00 00       	callq  0x2e7
0x2e7:	90                   	nop
0x2e8:	48 83 ec 10          	sub    $0x10,%rsp
0x2ec:	48 89 04 24          	mov    %rax,(%rsp)
0x2f0:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x2f4:	48 83 ec 10          	sub    $0x10,%rsp
0x2f8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2fc:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x301:	41 85 03             	test   %eax,(%r11)
0x304:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x309:	e8 00 00 00 00       	callq  0x30e
0x30e:	90                   	nop
0x30f:	48 83 ec 10          	sub    $0x10,%rsp
0x313:	48 89 04 24          	mov    %rax,(%rsp)
0x317:	4c 8b 1c 24          	mov    (%rsp),%r11
0x31b:	41 85 03             	test   %eax,(%r11)
0x31e:	48 8b 3c 24          	mov    (%rsp),%rdi
0x322:	e8 00 00 00 00       	callq  0x327
0x327:	90                   	nop
0x328:	48 83 ec 10          	sub    $0x10,%rsp
0x32c:	48 89 04 24          	mov    %rax,(%rsp)
0x330:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x335:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x33a:	48 8b 15 27 fc ff ff 	mov    -0x3d9(%rip),%rdx        # 0xffffff68
0x341:	b9 08 00 00 00       	mov    $0x8,%ecx
0x346:	48 8b c6             	mov    %rsi,%rax
0x349:	48 8b 00             	mov    (%rax),%rax
0x34c:	48 63 ff             	movslq %edi,%rdi
0x34f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x354:	48 8b fa             	mov    %rdx,%rdi
0x357:	48 8b d1             	mov    %rcx,%rdx
0x35a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x35f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x363:	90                   	nop
0x364:	90                   	nop
0x365:	e8 00 00 00 00       	callq  0x36a
0x36a:	90                   	nop
0x36b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x36f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x373:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x378:	ff d0                	callq  *%rax
0x37a:	90                   	nop
0x37b:	4d 33 db             	xor    %r11,%r11
0x37e:	48 83 ec 10          	sub    $0x10,%rsp
0x382:	4c 89 1c 24          	mov    %r11,(%rsp)
0x386:	4c 8b 1c 24          	mov    (%rsp),%r11
0x38a:	48 83 c4 10          	add    $0x10,%rsp
0x38e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x392:	e8 00 00 00 00       	callq  0x397
0x397:	90                   	nop
0x398:	48 8b 3d d1 fb ff ff 	mov    -0x42f(%rip),%rdi        # 0xffffff70
0x39f:	be 10 00 00 00       	mov    $0x10,%esi
0x3a4:	48 63 f6             	movslq %esi,%rsi
0x3a7:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3ab:	48 83 ec 10          	sub    $0x10,%rsp
0x3af:	48 89 04 24          	mov    %rax,(%rsp)
0x3b3:	bf 17 00 00 00       	mov    $0x17,%edi
0x3b8:	48 8b 34 24          	mov    (%rsp),%rsi
0x3bc:	48 8b 15 b5 fb ff ff 	mov    -0x44b(%rip),%rdx        # 0xffffff78
0x3c3:	b9 12 00 00 00       	mov    $0x12,%ecx
0x3c8:	48 8b c6             	mov    %rsi,%rax
0x3cb:	48 8b 00             	mov    (%rax),%rax
0x3ce:	48 63 ff             	movslq %edi,%rdi
0x3d1:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3d6:	48 8b fa             	mov    %rdx,%rdi
0x3d9:	48 8b d1             	mov    %rcx,%rdx
0x3dc:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3e1:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3e5:	90                   	nop
0x3e6:	90                   	nop
0x3e7:	e8 00 00 00 00       	callq  0x3ec
0x3ec:	90                   	nop
0x3ed:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3f1:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3f5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x3f9:	ff d0                	callq  *%rax
0x3fb:	90                   	nop
0x3fc:	48 83 ec 10          	sub    $0x10,%rsp
0x400:	48 89 04 24          	mov    %rax,(%rsp)
0x404:	48 8b 34 24          	mov    (%rsp),%rsi
0x408:	48 8b 3d 71 fb ff ff 	mov    -0x48f(%rip),%rdi        # 0xffffff80
0x40f:	48 8b 15 72 fb ff ff 	mov    -0x48e(%rip),%rdx        # 0xffffff88
0x416:	b9 1a 00 00 00       	mov    $0x1a,%ecx
0x41b:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
0x41f:	48 8b fa             	mov    %rdx,%rdi
0x422:	48 8b de             	mov    %rsi,%rbx
0x425:	48 8b f3             	mov    %rbx,%rsi
0x428:	48 8b d1             	mov    %rcx,%rdx
0x42b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x430:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x434:	e8 00 00 00 00       	callq  0x439
0x439:	90                   	nop
0x43a:	48 8b 75 08          	mov    0x8(%rbp),%rsi
0x43e:	4d 33 db             	xor    %r11,%r11
0x441:	49 3b f3             	cmp    %r11,%rsi
0x444:	0f 85 0e 00 00 00    	jne    0x458
0x44a:	bf 01 00 00 00       	mov    $0x1,%edi
0x44f:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x453:	e9 6f 00 00 00       	jmpq   0x4c7
0x458:	48 8b c6             	mov    %rsi,%rax
0x45b:	48 8b 38             	mov    (%rax),%rdi
0x45e:	48 8b 47 30          	mov    0x30(%rdi),%rax
0x462:	48 3b 45 10          	cmp    0x10(%rbp),%rax
0x466:	0f 85 0e 00 00 00    	jne    0x47a
0x46c:	bf 01 00 00 00       	mov    $0x1,%edi
0x471:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x475:	e9 4d 00 00 00       	jmpq   0x4c7
0x47a:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
0x47e:	48 63 99 f0 00 00 00 	movslq 0xf0(%rcx),%rbx
0x485:	4c 63 47 5c          	movslq 0x5c(%rdi),%r8
0x489:	48 8b c3             	mov    %rbx,%rax
0x48c:	99                   	cltd   
0x48d:	41 f7 f8             	idiv   %r8d
0x490:	48 63 47 58          	movslq 0x58(%rdi),%rax
0x494:	03 d0                	add    %eax,%edx
0x496:	48 8b c7             	mov    %rdi,%rax
0x499:	48 63 d2             	movslq %edx,%rdx
0x49c:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x4a1:	48 63 c0             	movslq %eax,%rax
0x4a4:	48 8b 44 c7 18       	mov    0x18(%rdi,%rax,8),%rax
0x4a9:	48 63 db             	movslq %ebx,%rbx
0x4ac:	48 3b c3             	cmp    %rbx,%rax
0x4af:	0f 85 0a 00 00 00    	jne    0x4bf
0x4b5:	b8 01 00 00 00       	mov    $0x1,%eax
0x4ba:	e9 05 00 00 00       	jmpq   0x4c4
0x4bf:	b8 00 00 00 00       	mov    $0x0,%eax
0x4c4:	48 8b f8             	mov    %rax,%rdi
0x4c7:	83 ff 00             	cmp    $0x0,%edi
0x4ca:	0f 85 12 00 00 00    	jne    0x4e2
0x4d0:	48 8b f9             	mov    %rcx,%rdi
0x4d3:	e8 00 00 00 00       	callq  0x4d8
0x4d8:	90                   	nop
0x4d9:	48 8b f8             	mov    %rax,%rdi
0x4dc:	e8 00 00 00 00       	callq  0x4e1
0x4e1:	90                   	nop
0x4e2:	48 8b c6             	mov    %rsi,%rax
0x4e5:	48 89 04 24          	mov    %rax,(%rsp)
0x4e9:	48 83 ec 10          	sub    $0x10,%rsp
0x4ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4f6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4fa:	48 83 c4 10          	add    $0x10,%rsp
0x4fe:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x502:	4c 8b 1c 24          	mov    (%rsp),%r11
0x506:	48 33 c0             	xor    %rax,%rax
0x509:	48 83 c4 10          	add    $0x10,%rsp
0x50d:	4c 3b d8             	cmp    %rax,%r11
0x510:	74 33                	je     0x545
0x512:	48 8b 3d 77 fa ff ff 	mov    -0x589(%rip),%rdi        # 0xffffff90
0x519:	be 22 00 00 00       	mov    $0x22,%esi
0x51e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x522:	48 8b c8             	mov    %rax,%rcx
0x525:	48 63 f6             	movslq %esi,%rsi
0x528:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x52d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x533:	0f 8d 07 00 00 00    	jge    0x540
0x539:	83 c1 01             	add    $0x1,%ecx
0x53c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x540:	e9 75 00 00 00       	jmpq   0x5ba
0x545:	48 8b 3d 4c fa ff ff 	mov    -0x5b4(%rip),%rdi        # 0xffffff98
0x54c:	be 23 00 00 00       	mov    $0x23,%esi
0x551:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x555:	48 8b c8             	mov    %rax,%rcx
0x558:	48 63 f6             	movslq %esi,%rsi
0x55b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x560:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x566:	0f 8d 07 00 00 00    	jge    0x573
0x56c:	83 c1 01             	add    $0x1,%ecx
0x56f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x573:	48 8b 3d 26 fa ff ff 	mov    -0x5da(%rip),%rdi        # 0xffffffa0
0x57a:	be 24 00 00 00       	mov    $0x24,%esi
0x57f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x583:	48 8b c8             	mov    %rax,%rcx
0x586:	48 63 f6             	movslq %esi,%rsi
0x589:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x58e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x594:	0f 8d 07 00 00 00    	jge    0x5a1
0x59a:	83 c1 01             	add    $0x1,%ecx
0x59d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5a1:	48 8b 3d 00 fa ff ff 	mov    -0x600(%rip),%rdi        # 0xffffffa8
0x5a8:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x5ac:	83 e8 01             	sub    $0x1,%eax
0x5af:	89 47 30             	mov    %eax,0x30(%rdi)
0x5b2:	4d 8b 36             	mov    (%r14),%r14
0x5b5:	e9 de fd ff ff       	jmpq   0x398
0x5ba:	48 8b 3d ef f9 ff ff 	mov    -0x611(%rip),%rdi        # 0xffffffb0
0x5c1:	be 18 00 00 00       	mov    $0x18,%esi
0x5c6:	48 63 f6             	movslq %esi,%rsi
0x5c9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5cd:	48 83 ec 10          	sub    $0x10,%rsp
0x5d1:	48 89 04 24          	mov    %rax,(%rsp)
0x5d5:	48 8b 3d dc f9 ff ff 	mov    -0x624(%rip),%rdi        # 0xffffffb8
0x5dc:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e0:	48 8b 35 d9 f9 ff ff 	mov    -0x627(%rip),%rsi        # 0xffffffc0
0x5e7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x5eb:	49 8b ce             	mov    %r14,%rcx
0x5ee:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x5f2:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x5f9:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x600:	48 8b d9             	mov    %rcx,%rbx
0x603:	48 03 da             	add    %rdx,%rbx
0x606:	4c 8b cb             	mov    %rbx,%r9
0x609:	4d 3b c8             	cmp    %r8,%r9
0x60c:	0f 86 14 00 00 00    	jbe    0x626
0x612:	48 8b fe             	mov    %rsi,%rdi
0x615:	48 8b f2             	mov    %rdx,%rsi
0x618:	48 8b d0             	mov    %rax,%rdx
0x61b:	e8 00 00 00 00       	callq  0x620
0x620:	90                   	nop
0x621:	e9 0a 00 00 00       	jmpq   0x630
0x626:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x62d:	48 8b c1             	mov    %rcx,%rax
0x630:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x634:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x638:	90                   	nop
0x639:	90                   	nop
0x63a:	90                   	nop
0x63b:	e8 00 00 00 00       	callq  0x640
0x640:	90                   	nop
0x641:	90                   	nop
0x642:	90                   	nop
0x643:	e8 00 00 00 00       	callq  0x648
0x648:	90                   	nop
0x649:	83 f8 00             	cmp    $0x0,%eax
0x64c:	0f 84 27 00 00 00    	je     0x679
0x652:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x656:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x65a:	85 06                	test   %eax,(%rsi)
0x65c:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x660:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x664:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x668:	83 e2 ff             	and    $0xffffffff,%edx
0x66b:	48 8b fa             	mov    %rdx,%rdi
0x66e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x672:	90                   	nop
0x673:	e8 00 00 00 00       	callq  0x678
0x678:	90                   	nop
0x679:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x67d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x681:	48 89 38             	mov    %rdi,(%rax)
0x684:	48 83 ec 10          	sub    $0x10,%rsp
0x688:	48 89 04 24          	mov    %rax,(%rsp)
0x68c:	48 83 ec 10          	sub    $0x10,%rsp
0x690:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x695:	4c 89 1c 24          	mov    %r11,(%rsp)
0x699:	4c 8b 1c 24          	mov    (%rsp),%r11
0x69d:	41 85 03             	test   %eax,(%r11)
0x6a0:	e8 00 00 00 00       	callq  0x6a5
0x6a5:	90                   	nop
0x6a6:	4c 8b 1d 1b f9 ff ff 	mov    -0x6e5(%rip),%r11        # 0xffffffc8
0x6ad:	48 83 ec 10          	sub    $0x10,%rsp
0x6b1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6b5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6ba:	41 85 03             	test   %eax,(%r11)
0x6bd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6c2:	e8 00 00 00 00       	callq  0x6c7
0x6c7:	90                   	nop
0x6c8:	48 83 ec 10          	sub    $0x10,%rsp
0x6cc:	48 89 04 24          	mov    %rax,(%rsp)
0x6d0:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x6d4:	48 83 ec 10          	sub    $0x10,%rsp
0x6d8:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6dc:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6e1:	41 85 03             	test   %eax,(%r11)
0x6e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x6e9:	e8 00 00 00 00       	callq  0x6ee
0x6ee:	90                   	nop
0x6ef:	48 83 ec 10          	sub    $0x10,%rsp
0x6f3:	48 89 04 24          	mov    %rax,(%rsp)
0x6f7:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6fb:	41 85 03             	test   %eax,(%r11)
0x6fe:	48 8b 3c 24          	mov    (%rsp),%rdi
0x702:	e8 00 00 00 00       	callq  0x707
0x707:	90                   	nop
0x708:	48 83 ec 10          	sub    $0x10,%rsp
0x70c:	48 89 04 24          	mov    %rax,(%rsp)
0x710:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x715:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x71a:	48 8b 15 af f8 ff ff 	mov    -0x751(%rip),%rdx        # 0xffffffd0
0x721:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0x726:	48 8b c6             	mov    %rsi,%rax
0x729:	48 8b 00             	mov    (%rax),%rax
0x72c:	48 63 ff             	movslq %edi,%rdi
0x72f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x734:	48 8b fa             	mov    %rdx,%rdi
0x737:	48 8b d1             	mov    %rcx,%rdx
0x73a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x73f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x743:	90                   	nop
0x744:	90                   	nop
0x745:	e8 00 00 00 00       	callq  0x74a
0x74a:	90                   	nop
0x74b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x74f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x753:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x758:	ff d0                	callq  *%rax
0x75a:	90                   	nop
0x75b:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x75f:	41 83 c3 01          	add    $0x1,%r11d
0x763:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x767:	48 8b 3d 6a f8 ff ff 	mov    -0x796(%rip),%rdi        # 0xffffffd8
0x76e:	be 32 00 00 00       	mov    $0x32,%esi
0x773:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x777:	48 8b c8             	mov    %rax,%rcx
0x77a:	48 63 f6             	movslq %esi,%rsi
0x77d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x782:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x788:	0f 8d 07 00 00 00    	jge    0x795
0x78e:	83 c1 01             	add    $0x1,%ecx
0x791:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x795:	48 8b 3d 44 f8 ff ff 	mov    -0x7bc(%rip),%rdi        # 0xffffffe0
0x79c:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x7a0:	83 e8 01             	sub    $0x1,%eax
0x7a3:	89 47 30             	mov    %eax,0x30(%rdi)
0x7a6:	4d 8b 36             	mov    (%r14),%r14
0x7a9:	e9 bf f8 ff ff       	jmpq   0x6d
0x7ae:	48 83 c5 40          	add    $0x40,%rbp
0x7b2:	c9                   	leaveq 
0x7b3:	c2 10 00             	retq   $0x10

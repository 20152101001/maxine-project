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
0x20:	4c 89 1d b9 fe ff ff 	mov    %r11,-0x147(%rip)        # 0xfffffee0
0x27:	48 8b 3d ba fe ff ff 	mov    -0x146(%rip),%rdi        # 0xfffffee8
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
0x53:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7d:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x81:	89 04 24             	mov    %eax,(%rsp)
0x84:	44 8b 1c 24          	mov    (%rsp),%r11d
0x88:	b8 00 00 00 00       	mov    $0x0,%eax
0x8d:	48 83 c4 10          	add    $0x10,%rsp
0x91:	44 3b d8             	cmp    %eax,%r11d
0x94:	7f 33                	jg     0xc9
0x96:	48 8b 3d 53 fe ff ff 	mov    -0x1ad(%rip),%rdi        # 0xfffffef0
0x9d:	be 00 00 00 00       	mov    $0x0,%esi
0xa2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6:	48 8b c8             	mov    %rax,%rcx
0xa9:	48 63 f6             	movslq %esi,%rsi
0xac:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb7:	0f 8d 07 00 00 00    	jge    0xc4
0xbd:	83 c1 01             	add    $0x1,%ecx
0xc0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc4:	e9 99 00 00 00       	jmpq   0x162
0xc9:	48 8b 3d 28 fe ff ff 	mov    -0x1d8(%rip),%rdi        # 0xfffffef8
0xd0:	be 01 00 00 00       	mov    $0x1,%esi
0xd5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xd9:	48 8b c8             	mov    %rax,%rcx
0xdc:	48 63 f6             	movslq %esi,%rsi
0xdf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xea:	0f 8d 07 00 00 00    	jge    0xf7
0xf0:	83 c1 01             	add    $0x1,%ecx
0xf3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf7:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xfb:	48 83 ec 10          	sub    $0x10,%rsp
0xff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x103:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x109:	48 83 ec 10          	sub    $0x10,%rsp
0x10d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x111:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x116:	40 8b 34 24          	rex mov (%rsp),%esi
0x11a:	48 8b c7             	mov    %rdi,%rax
0x11d:	48 63 40 10          	movslq 0x10(%rax),%rax
0x121:	3b f0                	cmp    %eax,%esi
0x123:	0f 82 0f 00 00 00    	jb     0x138
0x129:	e8 00 00 00 00       	callq  0x12e
0x12e:	90                   	nop
0x12f:	48 8b f8             	mov    %rax,%rdi
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 63 f6             	movslq %esi,%rsi
0x13b:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x140:	48 83 c4 10          	add    $0x10,%rsp
0x144:	48 89 04 24          	mov    %rax,(%rsp)
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	48 83 ec 10          	sub    $0x10,%rsp
0x152:	48 89 04 24          	mov    %rax,(%rsp)
0x156:	44 8b 1c 24          	mov    (%rsp),%r11d
0x15a:	48 83 c4 10          	add    $0x10,%rsp
0x15e:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x162:	48 8b 3d 97 fd ff ff 	mov    -0x269(%rip),%rdi        # 0xffffff00
0x169:	be 18 00 00 00       	mov    $0x18,%esi
0x16e:	48 63 f6             	movslq %esi,%rsi
0x171:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x175:	48 83 ec 10          	sub    $0x10,%rsp
0x179:	48 89 04 24          	mov    %rax,(%rsp)
0x17d:	48 8b 3d 84 fd ff ff 	mov    -0x27c(%rip),%rdi        # 0xffffff08
0x184:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x188:	48 8b 35 81 fd ff ff 	mov    -0x27f(%rip),%rsi        # 0xffffff10
0x18f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x193:	49 8b ce             	mov    %r14,%rcx
0x196:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x19a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1a1:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x1a8:	48 8b d9             	mov    %rcx,%rbx
0x1ab:	48 03 da             	add    %rdx,%rbx
0x1ae:	4c 8b cb             	mov    %rbx,%r9
0x1b1:	4d 3b c8             	cmp    %r8,%r9
0x1b4:	0f 86 14 00 00 00    	jbe    0x1ce
0x1ba:	48 8b fe             	mov    %rsi,%rdi
0x1bd:	48 8b f2             	mov    %rdx,%rsi
0x1c0:	48 8b d0             	mov    %rax,%rdx
0x1c3:	e8 00 00 00 00       	callq  0x1c8
0x1c8:	90                   	nop
0x1c9:	e9 0a 00 00 00       	jmpq   0x1d8
0x1ce:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1d5:	48 8b c1             	mov    %rcx,%rax
0x1d8:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1dc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e0:	90                   	nop
0x1e1:	90                   	nop
0x1e2:	90                   	nop
0x1e3:	e8 00 00 00 00       	callq  0x1e8
0x1e8:	90                   	nop
0x1e9:	90                   	nop
0x1ea:	90                   	nop
0x1eb:	e8 00 00 00 00       	callq  0x1f0
0x1f0:	90                   	nop
0x1f1:	83 f8 00             	cmp    $0x0,%eax
0x1f4:	0f 84 27 00 00 00    	je     0x221
0x1fa:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1fe:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x202:	85 06                	test   %eax,(%rsi)
0x204:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x208:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x20c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x210:	83 e2 ff             	and    $0xffffffff,%edx
0x213:	48 8b fa             	mov    %rdx,%rdi
0x216:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x21a:	90                   	nop
0x21b:	e8 00 00 00 00       	callq  0x220
0x220:	90                   	nop
0x221:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x225:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x229:	48 89 38             	mov    %rdi,(%rax)
0x22c:	48 83 ec 10          	sub    $0x10,%rsp
0x230:	48 89 04 24          	mov    %rax,(%rsp)
0x234:	48 83 ec 10          	sub    $0x10,%rsp
0x238:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x23d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x241:	4c 8b 1c 24          	mov    (%rsp),%r11
0x245:	41 85 03             	test   %eax,(%r11)
0x248:	e8 00 00 00 00       	callq  0x24d
0x24d:	90                   	nop
0x24e:	4c 8b 1d c3 fc ff ff 	mov    -0x33d(%rip),%r11        # 0xffffff18
0x255:	48 83 ec 10          	sub    $0x10,%rsp
0x259:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x262:	41 85 03             	test   %eax,(%r11)
0x265:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x26a:	e8 00 00 00 00       	callq  0x26f
0x26f:	90                   	nop
0x270:	48 83 ec 10          	sub    $0x10,%rsp
0x274:	48 89 04 24          	mov    %rax,(%rsp)
0x278:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x27c:	48 83 ec 10          	sub    $0x10,%rsp
0x280:	44 89 1c 24          	mov    %r11d,(%rsp)
0x284:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x289:	41 85 03             	test   %eax,(%r11)
0x28c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x291:	e8 00 00 00 00       	callq  0x296
0x296:	90                   	nop
0x297:	48 83 ec 10          	sub    $0x10,%rsp
0x29b:	48 89 04 24          	mov    %rax,(%rsp)
0x29f:	4c 8b 1d 7a fc ff ff 	mov    -0x386(%rip),%r11        # 0xffffff20
0x2a6:	48 83 ec 10          	sub    $0x10,%rsp
0x2aa:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ae:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2b3:	41 85 03             	test   %eax,(%r11)
0x2b6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2bb:	e8 00 00 00 00       	callq  0x2c0
0x2c0:	90                   	nop
0x2c1:	48 83 ec 10          	sub    $0x10,%rsp
0x2c5:	48 89 04 24          	mov    %rax,(%rsp)
0x2c9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2cd:	41 85 03             	test   %eax,(%r11)
0x2d0:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2d4:	90                   	nop
0x2d5:	90                   	nop
0x2d6:	90                   	nop
0x2d7:	90                   	nop
0x2d8:	e8 00 00 00 00       	callq  0x2dd
0x2dd:	90                   	nop
0x2de:	48 83 ec 10          	sub    $0x10,%rsp
0x2e2:	48 89 04 24          	mov    %rax,(%rsp)
0x2e6:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2eb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2f0:	48 8b 15 31 fc ff ff 	mov    -0x3cf(%rip),%rdx        # 0xffffff28
0x2f7:	b9 0a 00 00 00       	mov    $0xa,%ecx
0x2fc:	48 8b c6             	mov    %rsi,%rax
0x2ff:	48 8b 00             	mov    (%rax),%rax
0x302:	48 63 ff             	movslq %edi,%rdi
0x305:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x30a:	48 8b fa             	mov    %rdx,%rdi
0x30d:	48 8b d1             	mov    %rcx,%rdx
0x310:	b9 03 00 00 00       	mov    $0x3,%ecx
0x315:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x319:	90                   	nop
0x31a:	90                   	nop
0x31b:	e8 00 00 00 00       	callq  0x320
0x320:	90                   	nop
0x321:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x325:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x329:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x32e:	ff d0                	callq  *%rax
0x330:	90                   	nop
0x331:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x337:	48 83 ec 10          	sub    $0x10,%rsp
0x33b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x33f:	44 8b 1c 24          	mov    (%rsp),%r11d
0x343:	48 83 c4 10          	add    $0x10,%rsp
0x347:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x34b:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x34f:	48 83 ec 10          	sub    $0x10,%rsp
0x353:	44 89 1c 24          	mov    %r11d,(%rsp)
0x357:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x35b:	48 83 ec 10          	sub    $0x10,%rsp
0x35f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x363:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x368:	8b 04 24             	mov    (%rsp),%eax
0x36b:	48 83 c4 20          	add    $0x20,%rsp
0x36f:	44 3b d8             	cmp    %eax,%r11d
0x372:	7c 33                	jl     0x3a7
0x374:	48 8b 3d b5 fb ff ff 	mov    -0x44b(%rip),%rdi        # 0xffffff30
0x37b:	be 12 00 00 00       	mov    $0x12,%esi
0x380:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x384:	48 8b c8             	mov    %rax,%rcx
0x387:	48 63 f6             	movslq %esi,%rsi
0x38a:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x38f:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x395:	0f 8d 07 00 00 00    	jge    0x3a2
0x39b:	83 c1 01             	add    $0x1,%ecx
0x39e:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3a2:	e9 f0 01 00 00       	jmpq   0x597
0x3a7:	48 8b 3d 8a fb ff ff 	mov    -0x476(%rip),%rdi        # 0xffffff38
0x3ae:	be 13 00 00 00       	mov    $0x13,%esi
0x3b3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3b7:	48 8b c8             	mov    %rax,%rcx
0x3ba:	48 63 f6             	movslq %esi,%rsi
0x3bd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3c2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3c8:	0f 8d 07 00 00 00    	jge    0x3d5
0x3ce:	83 c1 01             	add    $0x1,%ecx
0x3d1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3d5:	48 8b 3d 64 fb ff ff 	mov    -0x49c(%rip),%rdi        # 0xffffff40
0x3dc:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x3e0:	48 8b 35 61 fb ff ff 	mov    -0x49f(%rip),%rsi        # 0xffffff48
0x3e7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3eb:	49 8b ce             	mov    %r14,%rcx
0x3ee:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x3f2:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x3f9:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x400:	48 8b d9             	mov    %rcx,%rbx
0x403:	48 03 da             	add    %rdx,%rbx
0x406:	4c 8b cb             	mov    %rbx,%r9
0x409:	4d 3b c8             	cmp    %r8,%r9
0x40c:	0f 86 14 00 00 00    	jbe    0x426
0x412:	48 8b fe             	mov    %rsi,%rdi
0x415:	48 8b f2             	mov    %rdx,%rsi
0x418:	48 8b d0             	mov    %rax,%rdx
0x41b:	e8 00 00 00 00       	callq  0x420
0x420:	90                   	nop
0x421:	e9 0a 00 00 00       	jmpq   0x430
0x426:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x42d:	48 8b c1             	mov    %rcx,%rax
0x430:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x434:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x438:	90                   	nop
0x439:	90                   	nop
0x43a:	90                   	nop
0x43b:	e8 00 00 00 00       	callq  0x440
0x440:	90                   	nop
0x441:	90                   	nop
0x442:	90                   	nop
0x443:	e8 00 00 00 00       	callq  0x448
0x448:	90                   	nop
0x449:	83 f8 00             	cmp    $0x0,%eax
0x44c:	0f 84 27 00 00 00    	je     0x479
0x452:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x456:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x45a:	85 06                	test   %eax,(%rsi)
0x45c:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x460:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x464:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x468:	83 e2 ff             	and    $0xffffffff,%edx
0x46b:	48 8b fa             	mov    %rdx,%rdi
0x46e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x472:	90                   	nop
0x473:	e8 00 00 00 00       	callq  0x478
0x478:	90                   	nop
0x479:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x47d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x481:	48 89 38             	mov    %rdi,(%rax)
0x484:	48 83 ec 10          	sub    $0x10,%rsp
0x488:	48 89 04 24          	mov    %rax,(%rsp)
0x48c:	48 83 ec 10          	sub    $0x10,%rsp
0x490:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x495:	4c 89 1c 24          	mov    %r11,(%rsp)
0x499:	4d 33 db             	xor    %r11,%r11
0x49c:	48 83 ec 10          	sub    $0x10,%rsp
0x4a0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4a4:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4a9:	41 85 03             	test   %eax,(%r11)
0x4ac:	90                   	nop
0x4ad:	90                   	nop
0x4ae:	90                   	nop
0x4af:	90                   	nop
0x4b0:	e8 00 00 00 00       	callq  0x4b5
0x4b5:	90                   	nop
0x4b6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4ba:	48 83 c4 10          	add    $0x10,%rsp
0x4be:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x4c2:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x4c6:	48 83 ec 10          	sub    $0x10,%rsp
0x4ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4ce:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x4d4:	48 83 ec 10          	sub    $0x10,%rsp
0x4d8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4dc:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4e1:	41 85 03             	test   %eax,(%r11)
0x4e4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4e9:	e8 00 00 00 00       	callq  0x4ee
0x4ee:	90                   	nop
0x4ef:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x4f3:	48 83 ec 10          	sub    $0x10,%rsp
0x4f7:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4fb:	bf 17 00 00 00       	mov    $0x17,%edi
0x500:	48 8b 34 24          	mov    (%rsp),%rsi
0x504:	48 8b 15 45 fa ff ff 	mov    -0x5bb(%rip),%rdx        # 0xffffff50
0x50b:	b9 17 00 00 00       	mov    $0x17,%ecx
0x510:	48 8b c6             	mov    %rsi,%rax
0x513:	48 8b 00             	mov    (%rax),%rax
0x516:	48 63 ff             	movslq %edi,%rdi
0x519:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x51e:	48 8b fa             	mov    %rdx,%rdi
0x521:	48 8b d1             	mov    %rcx,%rdx
0x524:	b9 03 00 00 00       	mov    $0x3,%ecx
0x529:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x52d:	90                   	nop
0x52e:	90                   	nop
0x52f:	e8 00 00 00 00       	callq  0x534
0x534:	90                   	nop
0x535:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x539:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x53d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x541:	ff d0                	callq  *%rax
0x543:	90                   	nop
0x544:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x548:	41 83 c3 01          	add    $0x1,%r11d
0x54c:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x550:	48 8b 3d 01 fa ff ff 	mov    -0x5ff(%rip),%rdi        # 0xffffff58
0x557:	be 1f 00 00 00       	mov    $0x1f,%esi
0x55c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x560:	48 8b c8             	mov    %rax,%rcx
0x563:	48 63 f6             	movslq %esi,%rsi
0x566:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x56b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x571:	0f 8d 07 00 00 00    	jge    0x57e
0x577:	83 c1 01             	add    $0x1,%ecx
0x57a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x57e:	48 8b 3d db f9 ff ff 	mov    -0x625(%rip),%rdi        # 0xffffff60
0x585:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x589:	83 e8 01             	sub    $0x1,%eax
0x58c:	89 47 30             	mov    %eax,0x30(%rdi)
0x58f:	4d 8b 36             	mov    (%r14),%r14
0x592:	e9 b4 fd ff ff       	jmpq   0x34b
0x597:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x59d:	48 83 ec 10          	sub    $0x10,%rsp
0x5a1:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5a5:	44 8b 1c 24          	mov    (%rsp),%r11d
0x5a9:	48 83 c4 10          	add    $0x10,%rsp
0x5ad:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x5b1:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x5b5:	48 83 ec 10          	sub    $0x10,%rsp
0x5b9:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5bd:	41 bb 19 00 00 00    	mov    $0x19,%r11d
0x5c3:	48 83 ec 10          	sub    $0x10,%rsp
0x5c7:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5cb:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x5d0:	8b 04 24             	mov    (%rsp),%eax
0x5d3:	48 83 c4 20          	add    $0x20,%rsp
0x5d7:	44 3b d8             	cmp    %eax,%r11d
0x5da:	7c 33                	jl     0x60f
0x5dc:	48 8b 3d 85 f9 ff ff 	mov    -0x67b(%rip),%rdi        # 0xffffff68
0x5e3:	be 20 00 00 00       	mov    $0x20,%esi
0x5e8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5ec:	48 8b c8             	mov    %rax,%rcx
0x5ef:	48 63 f6             	movslq %esi,%rsi
0x5f2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5f7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5fd:	0f 8d 07 00 00 00    	jge    0x60a
0x603:	83 c1 01             	add    $0x1,%ecx
0x606:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x60a:	e9 5a 02 00 00       	jmpq   0x869
0x60f:	48 8b 3d 5a f9 ff ff 	mov    -0x6a6(%rip),%rdi        # 0xffffff70
0x616:	be 21 00 00 00       	mov    $0x21,%esi
0x61b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x61f:	48 8b c8             	mov    %rax,%rcx
0x622:	48 63 f6             	movslq %esi,%rsi
0x625:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x62a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x630:	0f 8d 07 00 00 00    	jge    0x63d
0x636:	83 c1 01             	add    $0x1,%ecx
0x639:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x63d:	48 8b 3d 34 f9 ff ff 	mov    -0x6cc(%rip),%rdi        # 0xffffff78
0x644:	be 18 00 00 00       	mov    $0x18,%esi
0x649:	48 63 f6             	movslq %esi,%rsi
0x64c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x650:	48 83 ec 10          	sub    $0x10,%rsp
0x654:	48 89 04 24          	mov    %rax,(%rsp)
0x658:	48 8b 3d 21 f9 ff ff 	mov    -0x6df(%rip),%rdi        # 0xffffff80
0x65f:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x663:	48 8b 35 1e f9 ff ff 	mov    -0x6e2(%rip),%rsi        # 0xffffff88
0x66a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x66e:	49 8b ce             	mov    %r14,%rcx
0x671:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x675:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x67c:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x683:	48 8b d9             	mov    %rcx,%rbx
0x686:	48 03 da             	add    %rdx,%rbx
0x689:	4c 8b cb             	mov    %rbx,%r9
0x68c:	4d 3b c8             	cmp    %r8,%r9
0x68f:	0f 86 14 00 00 00    	jbe    0x6a9
0x695:	48 8b fe             	mov    %rsi,%rdi
0x698:	48 8b f2             	mov    %rdx,%rsi
0x69b:	48 8b d0             	mov    %rax,%rdx
0x69e:	e8 00 00 00 00       	callq  0x6a3
0x6a3:	90                   	nop
0x6a4:	e9 0a 00 00 00       	jmpq   0x6b3
0x6a9:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x6b0:	48 8b c1             	mov    %rcx,%rax
0x6b3:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x6b7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6bb:	90                   	nop
0x6bc:	90                   	nop
0x6bd:	90                   	nop
0x6be:	e8 00 00 00 00       	callq  0x6c3
0x6c3:	90                   	nop
0x6c4:	90                   	nop
0x6c5:	90                   	nop
0x6c6:	e8 00 00 00 00       	callq  0x6cb
0x6cb:	90                   	nop
0x6cc:	83 f8 00             	cmp    $0x0,%eax
0x6cf:	0f 84 27 00 00 00    	je     0x6fc
0x6d5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6d9:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x6dd:	85 06                	test   %eax,(%rsi)
0x6df:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x6e3:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x6e7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6eb:	83 e2 ff             	and    $0xffffffff,%edx
0x6ee:	48 8b fa             	mov    %rdx,%rdi
0x6f1:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x6f5:	90                   	nop
0x6f6:	e8 00 00 00 00       	callq  0x6fb
0x6fb:	90                   	nop
0x6fc:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x700:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x704:	48 89 38             	mov    %rdi,(%rax)
0x707:	48 83 ec 10          	sub    $0x10,%rsp
0x70b:	48 89 04 24          	mov    %rax,(%rsp)
0x70f:	48 83 ec 10          	sub    $0x10,%rsp
0x713:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x718:	4c 89 1c 24          	mov    %r11,(%rsp)
0x71c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x720:	41 85 03             	test   %eax,(%r11)
0x723:	e8 00 00 00 00       	callq  0x728
0x728:	90                   	nop
0x729:	4c 8b 1d 60 f8 ff ff 	mov    -0x7a0(%rip),%r11        # 0xffffff90
0x730:	48 83 ec 10          	sub    $0x10,%rsp
0x734:	4c 89 1c 24          	mov    %r11,(%rsp)
0x738:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x73d:	41 85 03             	test   %eax,(%r11)
0x740:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x745:	90                   	nop
0x746:	90                   	nop
0x747:	90                   	nop
0x748:	e8 00 00 00 00       	callq  0x74d
0x74d:	90                   	nop
0x74e:	48 83 ec 10          	sub    $0x10,%rsp
0x752:	48 89 04 24          	mov    %rax,(%rsp)
0x756:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x75a:	48 83 ec 10          	sub    $0x10,%rsp
0x75e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x762:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x767:	41 85 03             	test   %eax,(%r11)
0x76a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x76f:	90                   	nop
0x770:	e8 00 00 00 00       	callq  0x775
0x775:	90                   	nop
0x776:	48 83 ec 10          	sub    $0x10,%rsp
0x77a:	48 89 04 24          	mov    %rax,(%rsp)
0x77e:	4c 8b 1d 13 f8 ff ff 	mov    -0x7ed(%rip),%r11        # 0xffffff98
0x785:	48 83 ec 10          	sub    $0x10,%rsp
0x789:	4c 89 1c 24          	mov    %r11,(%rsp)
0x78d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x792:	41 85 03             	test   %eax,(%r11)
0x795:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x79a:	e8 00 00 00 00       	callq  0x79f
0x79f:	90                   	nop
0x7a0:	48 83 ec 10          	sub    $0x10,%rsp
0x7a4:	48 89 04 24          	mov    %rax,(%rsp)
0x7a8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7ac:	41 85 03             	test   %eax,(%r11)
0x7af:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7b3:	e8 00 00 00 00       	callq  0x7b8
0x7b8:	90                   	nop
0x7b9:	48 83 ec 10          	sub    $0x10,%rsp
0x7bd:	48 89 04 24          	mov    %rax,(%rsp)
0x7c1:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x7c6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7cb:	48 8b 15 ce f7 ff ff 	mov    -0x832(%rip),%rdx        # 0xffffffa0
0x7d2:	b9 28 00 00 00       	mov    $0x28,%ecx
0x7d7:	48 8b c6             	mov    %rsi,%rax
0x7da:	48 8b 00             	mov    (%rax),%rax
0x7dd:	48 63 ff             	movslq %edi,%rdi
0x7e0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7e5:	48 8b fa             	mov    %rdx,%rdi
0x7e8:	48 8b d1             	mov    %rcx,%rdx
0x7eb:	b9 03 00 00 00       	mov    $0x3,%ecx
0x7f0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x7f4:	90                   	nop
0x7f5:	90                   	nop
0x7f6:	e8 00 00 00 00       	callq  0x7fb
0x7fb:	90                   	nop
0x7fc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x800:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x804:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x809:	ff d0                	callq  *%rax
0x80b:	90                   	nop
0x80c:	90                   	nop
0x80d:	90                   	nop
0x80e:	90                   	nop
0x80f:	90                   	nop
0x810:	e8 00 00 00 00       	callq  0x815
0x815:	90                   	nop
0x816:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x81a:	41 83 c3 01          	add    $0x1,%r11d
0x81e:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x822:	48 8b 3d 7f f7 ff ff 	mov    -0x881(%rip),%rdi        # 0xffffffa8
0x829:	be 31 00 00 00       	mov    $0x31,%esi
0x82e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x832:	48 8b c8             	mov    %rax,%rcx
0x835:	48 63 f6             	movslq %esi,%rsi
0x838:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x83d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x843:	0f 8d 07 00 00 00    	jge    0x850
0x849:	83 c1 01             	add    $0x1,%ecx
0x84c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x850:	48 8b 3d 59 f7 ff ff 	mov    -0x8a7(%rip),%rdi        # 0xffffffb0
0x857:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x85b:	83 e8 01             	sub    $0x1,%eax
0x85e:	89 47 30             	mov    %eax,0x30(%rdi)
0x861:	4d 8b 36             	mov    (%r14),%r14
0x864:	e9 48 fd ff ff       	jmpq   0x5b1
0x869:	48 8b 3d 48 f7 ff ff 	mov    -0x8b8(%rip),%rdi        # 0xffffffb8
0x870:	be 18 00 00 00       	mov    $0x18,%esi
0x875:	48 63 f6             	movslq %esi,%rsi
0x878:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x87c:	48 83 ec 10          	sub    $0x10,%rsp
0x880:	48 89 04 24          	mov    %rax,(%rsp)
0x884:	48 8b 3d 35 f7 ff ff 	mov    -0x8cb(%rip),%rdi        # 0xffffffc0
0x88b:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x88f:	48 8b 35 32 f7 ff ff 	mov    -0x8ce(%rip),%rsi        # 0xffffffc8
0x896:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x89a:	49 8b ce             	mov    %r14,%rcx
0x89d:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x8a1:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x8a8:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x8af:	48 8b d9             	mov    %rcx,%rbx
0x8b2:	48 03 da             	add    %rdx,%rbx
0x8b5:	4c 8b cb             	mov    %rbx,%r9
0x8b8:	4d 3b c8             	cmp    %r8,%r9
0x8bb:	0f 86 14 00 00 00    	jbe    0x8d5
0x8c1:	48 8b fe             	mov    %rsi,%rdi
0x8c4:	48 8b f2             	mov    %rdx,%rsi
0x8c7:	48 8b d0             	mov    %rax,%rdx
0x8ca:	e8 00 00 00 00       	callq  0x8cf
0x8cf:	90                   	nop
0x8d0:	e9 0a 00 00 00       	jmpq   0x8df
0x8d5:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x8dc:	48 8b c1             	mov    %rcx,%rax
0x8df:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x8e3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x8e7:	90                   	nop
0x8e8:	90                   	nop
0x8e9:	90                   	nop
0x8ea:	e8 00 00 00 00       	callq  0x8ef
0x8ef:	90                   	nop
0x8f0:	90                   	nop
0x8f1:	90                   	nop
0x8f2:	e8 00 00 00 00       	callq  0x8f7
0x8f7:	90                   	nop
0x8f8:	83 f8 00             	cmp    $0x0,%eax
0x8fb:	0f 84 27 00 00 00    	je     0x928
0x901:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x905:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x909:	85 06                	test   %eax,(%rsi)
0x90b:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x90f:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x913:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x917:	83 e2 ff             	and    $0xffffffff,%edx
0x91a:	48 8b fa             	mov    %rdx,%rdi
0x91d:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x921:	90                   	nop
0x922:	e8 00 00 00 00       	callq  0x927
0x927:	90                   	nop
0x928:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x92c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x930:	48 89 38             	mov    %rdi,(%rax)
0x933:	48 83 ec 10          	sub    $0x10,%rsp
0x937:	48 89 04 24          	mov    %rax,(%rsp)
0x93b:	48 83 ec 10          	sub    $0x10,%rsp
0x93f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x944:	4c 89 1c 24          	mov    %r11,(%rsp)
0x948:	4c 8b 1c 24          	mov    (%rsp),%r11
0x94c:	41 85 03             	test   %eax,(%r11)
0x94f:	90                   	nop
0x950:	e8 00 00 00 00       	callq  0x955
0x955:	90                   	nop
0x956:	48 83 ec 10          	sub    $0x10,%rsp
0x95a:	4c 8b 1d 6f f6 ff ff 	mov    -0x991(%rip),%r11        # 0xffffffd0
0x961:	4c 89 1c 24          	mov    %r11,(%rsp)
0x965:	4c 8b 1c 24          	mov    (%rsp),%r11
0x969:	41 85 03             	test   %eax,(%r11)
0x96c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x970:	e8 00 00 00 00       	callq  0x975
0x975:	90                   	nop
0x976:	48 83 ec 10          	sub    $0x10,%rsp
0x97a:	48 89 04 24          	mov    %rax,(%rsp)
0x97e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x983:	41 85 03             	test   %eax,(%r11)
0x986:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x98b:	e8 00 00 00 00       	callq  0x990
0x990:	90                   	nop
0x991:	48 83 ec 10          	sub    $0x10,%rsp
0x995:	48 89 04 24          	mov    %rax,(%rsp)
0x999:	4c 8b 1d 38 f6 ff ff 	mov    -0x9c8(%rip),%r11        # 0xffffffd8
0x9a0:	48 83 ec 10          	sub    $0x10,%rsp
0x9a4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x9a8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x9ad:	41 85 03             	test   %eax,(%r11)
0x9b0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x9b5:	90                   	nop
0x9b6:	90                   	nop
0x9b7:	90                   	nop
0x9b8:	e8 00 00 00 00       	callq  0x9bd
0x9bd:	90                   	nop
0x9be:	48 83 ec 10          	sub    $0x10,%rsp
0x9c2:	48 89 04 24          	mov    %rax,(%rsp)
0x9c6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9ca:	41 85 03             	test   %eax,(%r11)
0x9cd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x9d1:	e8 00 00 00 00       	callq  0x9d6
0x9d6:	90                   	nop
0x9d7:	48 83 ec 10          	sub    $0x10,%rsp
0x9db:	48 89 04 24          	mov    %rax,(%rsp)
0x9df:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x9e4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x9e9:	48 8b 15 f0 f5 ff ff 	mov    -0xa10(%rip),%rdx        # 0xffffffe0
0x9f0:	b9 38 00 00 00       	mov    $0x38,%ecx
0x9f5:	48 8b c6             	mov    %rsi,%rax
0x9f8:	48 8b 00             	mov    (%rax),%rax
0x9fb:	48 63 ff             	movslq %edi,%rdi
0x9fe:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa03:	48 8b fa             	mov    %rdx,%rdi
0xa06:	48 8b d1             	mov    %rcx,%rdx
0xa09:	b9 03 00 00 00       	mov    $0x3,%ecx
0xa0e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xa12:	90                   	nop
0xa13:	90                   	nop
0xa14:	e8 00 00 00 00       	callq  0xa19
0xa19:	90                   	nop
0xa1a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xa1e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xa22:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xa27:	ff d0                	callq  *%rax
0xa29:	90                   	nop
0xa2a:	48 83 c5 40          	add    $0x40,%rbp
0xa2e:	c9                   	leaveq 
0xa2f:	c2 10 00             	retq   $0x10

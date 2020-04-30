0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 f0 00 00          	enterq $0xf0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 f8 e0 ff 	mov    %rax,-0x1f08(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d e9 fd ff ff 	mov    %r11,-0x217(%rip)        # 0xfffffe10
0x27:	48 8b 3d ea fd ff ff 	mov    -0x216(%rip),%rdi        # 0xfffffe18
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
0x6d:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	4c 8b 1c 24          	mov    (%rsp),%r11
0x7d:	48 33 c0             	xor    %rax,%rax
0x80:	48 83 c4 10          	add    $0x10,%rsp
0x84:	4c 3b d8             	cmp    %rax,%r11
0x87:	74 33                	je     0xbc
0x89:	48 8b 3d 90 fd ff ff 	mov    -0x270(%rip),%rdi        # 0xfffffe20
0x90:	be 01 00 00 00       	mov    $0x1,%esi
0x95:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x99:	48 8b c8             	mov    %rax,%rcx
0x9c:	48 63 f6             	movslq %esi,%rsi
0x9f:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xaa:	0f 8d 07 00 00 00    	jge    0xb7
0xb0:	83 c1 01             	add    $0x1,%ecx
0xb3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xb7:	e9 ab 00 00 00       	jmpq   0x167
0xbc:	48 8b 3d 65 fd ff ff 	mov    -0x29b(%rip),%rdi        # 0xfffffe28
0xc3:	be 02 00 00 00       	mov    $0x2,%esi
0xc8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xcc:	48 8b c8             	mov    %rax,%rcx
0xcf:	48 63 f6             	movslq %esi,%rsi
0xd2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xd7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xdd:	0f 8d 07 00 00 00    	jge    0xea
0xe3:	83 c1 01             	add    $0x1,%ecx
0xe6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xea:	48 8b 3d 3f fd ff ff 	mov    -0x2c1(%rip),%rdi        # 0xfffffe30
0xf1:	be 18 00 00 00       	mov    $0x18,%esi
0xf6:	48 63 f6             	movslq %esi,%rsi
0xf9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xfd:	48 83 ec 10          	sub    $0x10,%rsp
0x101:	48 89 04 24          	mov    %rax,(%rsp)
0x105:	4c 8b 1d 2c fd ff ff 	mov    -0x2d4(%rip),%r11        # 0xfffffe38
0x10c:	48 83 ec 10          	sub    $0x10,%rsp
0x110:	4c 89 1c 24          	mov    %r11,(%rsp)
0x114:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x119:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x11e:	48 8b 15 1b fd ff ff 	mov    -0x2e5(%rip),%rdx        # 0xfffffe40
0x125:	b9 04 00 00 00       	mov    $0x4,%ecx
0x12a:	48 8b c6             	mov    %rsi,%rax
0x12d:	48 8b 00             	mov    (%rax),%rax
0x130:	48 63 ff             	movslq %edi,%rdi
0x133:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x138:	48 8b fa             	mov    %rdx,%rdi
0x13b:	48 8b d1             	mov    %rcx,%rdx
0x13e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x143:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x147:	90                   	nop
0x148:	90                   	nop
0x149:	e8 00 00 00 00       	callq  0x14e
0x14e:	90                   	nop
0x14f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x153:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x157:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x15c:	ff d0                	callq  *%rax
0x15e:	90                   	nop
0x15f:	48 83 c5 40          	add    $0x40,%rbp
0x163:	c9                   	leaveq 
0x164:	c2 10 00             	retq   $0x10
0x167:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x16b:	48 83 ec 10          	sub    $0x10,%rsp
0x16f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x173:	4d 33 db             	xor    %r11,%r11
0x176:	48 83 ec 10          	sub    $0x10,%rsp
0x17a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x17e:	4d 33 db             	xor    %r11,%r11
0x181:	48 83 ec 10          	sub    $0x10,%rsp
0x185:	4c 89 1c 24          	mov    %r11,(%rsp)
0x189:	4d 33 db             	xor    %r11,%r11
0x18c:	48 83 ec 10          	sub    $0x10,%rsp
0x190:	4c 89 1c 24          	mov    %r11,(%rsp)
0x194:	48 8b 3d ad fc ff ff 	mov    -0x353(%rip),%rdi        # 0xfffffe48
0x19b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
0x1a0:	48 8b 15 a9 fc ff ff 	mov    -0x357(%rip),%rdx        # 0xfffffe50
0x1a7:	b9 0d 00 00 00       	mov    $0xd,%ecx
0x1ac:	48 8b da             	mov    %rdx,%rbx
0x1af:	48 8b c6             	mov    %rsi,%rax
0x1b2:	4c 8b 00             	mov    (%rax),%r8
0x1b5:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x1b9:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x1c0:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x1c4:	48 8b c2             	mov    %rdx,%rax
0x1c7:	99                   	cltd   
0x1c8:	41 f7 f9             	idiv   %r9d
0x1cb:	49 63 40 58          	movslq 0x58(%r8),%rax
0x1cf:	03 d0                	add    %eax,%edx
0x1d1:	49 8b c0             	mov    %r8,%rax
0x1d4:	48 63 d2             	movslq %edx,%rdx
0x1d7:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x1dc:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x1e3:	03 d0                	add    %eax,%edx
0x1e5:	48 63 d2             	movslq %edx,%rdx
0x1e8:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x1ed:	48 8b fb             	mov    %rbx,%rdi
0x1f0:	48 8b d1             	mov    %rcx,%rdx
0x1f3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1f8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1fc:	e8 00 00 00 00       	callq  0x201
0x201:	90                   	nop
0x202:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x206:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x20a:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x20f:	ff d0                	callq  *%rax
0x211:	90                   	nop
0x212:	48 83 ec 10          	sub    $0x10,%rsp
0x216:	48 89 04 24          	mov    %rax,(%rsp)
0x21a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x21e:	48 83 c4 10          	add    $0x10,%rsp
0x222:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x226:	4d 33 db             	xor    %r11,%r11
0x229:	48 83 ec 10          	sub    $0x10,%rsp
0x22d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x231:	4c 8b 1c 24          	mov    (%rsp),%r11
0x235:	48 83 c4 10          	add    $0x10,%rsp
0x239:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x23d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x241:	48 83 ec 10          	sub    $0x10,%rsp
0x245:	4c 89 1c 24          	mov    %r11,(%rsp)
0x249:	48 8b 3c 24          	mov    (%rsp),%rdi
0x24d:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x251:	89 04 24             	mov    %eax,(%rsp)
0x254:	44 8b 1c 24          	mov    (%rsp),%r11d
0x258:	b8 00 00 00 00       	mov    $0x0,%eax
0x25d:	48 83 c4 10          	add    $0x10,%rsp
0x261:	44 3b d8             	cmp    %eax,%r11d
0x264:	74 33                	je     0x299
0x266:	48 8b 3d eb fb ff ff 	mov    -0x415(%rip),%rdi        # 0xfffffe58
0x26d:	be 15 00 00 00       	mov    $0x15,%esi
0x272:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x276:	48 8b c8             	mov    %rax,%rcx
0x279:	48 63 f6             	movslq %esi,%rsi
0x27c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x281:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x287:	0f 8d 07 00 00 00    	jge    0x294
0x28d:	83 c1 01             	add    $0x1,%ecx
0x290:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x294:	e9 77 03 00 00       	jmpq   0x610
0x299:	48 8b 3d c0 fb ff ff 	mov    -0x440(%rip),%rdi        # 0xfffffe60
0x2a0:	be 16 00 00 00       	mov    $0x16,%esi
0x2a5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2a9:	48 8b c8             	mov    %rax,%rcx
0x2ac:	48 63 f6             	movslq %esi,%rsi
0x2af:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2b4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2ba:	0f 8d 07 00 00 00    	jge    0x2c7
0x2c0:	83 c1 01             	add    $0x1,%ecx
0x2c3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2c7:	90                   	nop
0x2c8:	e8 00 00 00 00       	callq  0x2cd
0x2cd:	90                   	nop
0x2ce:	48 83 ec 10          	sub    $0x10,%rsp
0x2d2:	48 89 04 24          	mov    %rax,(%rsp)
0x2d6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2da:	48 83 c4 10          	add    $0x10,%rsp
0x2de:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x2e2:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x2e6:	48 83 ec 10          	sub    $0x10,%rsp
0x2ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ee:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x2f4:	48 83 ec 10          	sub    $0x10,%rsp
0x2f8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2fc:	40 8b 34 24          	rex mov (%rsp),%esi
0x300:	48 8b 3d 61 fb ff ff 	mov    -0x49f(%rip),%rdi        # 0xfffffe68
0x307:	83 fe 00             	cmp    $0x0,%esi
0x30a:	0f 8c fb 00 00 00    	jl     0x40b
0x310:	85 07                	test   %eax,(%rdi)
0x312:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x319:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x31d:	48 8b 3d 4c fb ff ff 	mov    -0x4b4(%rip),%rdi        # 0xfffffe70
0x324:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x328:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x32c:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x333:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x337:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x33b:	48 63 c0             	movslq %eax,%rax
0x33e:	48 63 d6             	movslq %esi,%rdx
0x341:	48 0f af c2          	imul   %rdx,%rax
0x345:	48 83 c0 18          	add    $0x18,%rax
0x349:	48 83 c0 07          	add    $0x7,%rax
0x34d:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x354:	00 00 00 
0x357:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x35e:	ff ff ff 
0x361:	49 33 d3             	xor    %r11,%rdx
0x364:	48 23 c2             	and    %rdx,%rax
0x367:	49 8b d6             	mov    %r14,%rdx
0x36a:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x36e:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x375:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x37c:	49 8b d0             	mov    %r8,%rdx
0x37f:	48 03 d0             	add    %rax,%rdx
0x382:	4c 8b d2             	mov    %rdx,%r10
0x385:	4d 3b d1             	cmp    %r9,%r10
0x388:	0f 86 1f 00 00 00    	jbe    0x3ad
0x38e:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x392:	48 8b f0             	mov    %rax,%rsi
0x395:	48 8b d1             	mov    %rcx,%rdx
0x398:	49 8b c8             	mov    %r8,%rcx
0x39b:	4d 8b c1             	mov    %r9,%r8
0x39e:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3a2:	e8 00 00 00 00       	callq  0x3a7
0x3a7:	90                   	nop
0x3a8:	e9 12 00 00 00       	jmpq   0x3bf
0x3ad:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3b1:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x3b5:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x3bc:	49 8b c0             	mov    %r8,%rax
0x3bf:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x3c3:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3c7:	e8 00 00 00 00       	callq  0x3cc
0x3cc:	90                   	nop
0x3cd:	90                   	nop
0x3ce:	e8 00 00 00 00       	callq  0x3d3
0x3d3:	90                   	nop
0x3d4:	83 f8 00             	cmp    $0x0,%eax
0x3d7:	0f 84 40 00 00 00    	je     0x41d
0x3dd:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3e1:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x3e5:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x3e9:	85 07                	test   %eax,(%rdi)
0x3eb:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x3ef:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x3f3:	83 e0 ff             	and    $0xffffffff,%eax
0x3f6:	48 8b f8             	mov    %rax,%rdi
0x3f9:	48 8b f2             	mov    %rdx,%rsi
0x3fc:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x400:	e8 00 00 00 00       	callq  0x405
0x405:	90                   	nop
0x406:	e9 12 00 00 00       	jmpq   0x41d
0x40b:	48 8b fe             	mov    %rsi,%rdi
0x40e:	e8 00 00 00 00       	callq  0x413
0x413:	90                   	nop
0x414:	48 8b f8             	mov    %rax,%rdi
0x417:	e8 00 00 00 00       	callq  0x41c
0x41c:	90                   	nop
0x41d:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x421:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x425:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x429:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x42d:	48 89 18             	mov    %rbx,(%rax)
0x430:	48 89 04 24          	mov    %rax,(%rsp)
0x434:	48 83 ec 10          	sub    $0x10,%rsp
0x438:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x43d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x441:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x447:	48 83 ec 10          	sub    $0x10,%rsp
0x44b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x44f:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x453:	48 83 ec 10          	sub    $0x10,%rsp
0x457:	4c 89 1c 24          	mov    %r11,(%rsp)
0x45b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x460:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x465:	48 8b 14 24          	mov    (%rsp),%rdx
0x469:	48 8b ca             	mov    %rdx,%rcx
0x46c:	48 8b c7             	mov    %rdi,%rax
0x46f:	48 63 40 10          	movslq 0x10(%rax),%rax
0x473:	3b f0                	cmp    %eax,%esi
0x475:	0f 83 b4 00 00 00    	jae    0x52f
0x47b:	4d 33 db             	xor    %r11,%r11
0x47e:	49 3b cb             	cmp    %r11,%rcx
0x481:	0f 84 b8 00 00 00    	je     0x53f
0x487:	48 8b c7             	mov    %rdi,%rax
0x48a:	48 8b 00             	mov    (%rax),%rax
0x48d:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x491:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x495:	4d 33 db             	xor    %r11,%r11
0x498:	49 3b cb             	cmp    %r11,%rcx
0x49b:	0f 85 0a 00 00 00    	jne    0x4ab
0x4a1:	bb 00 00 00 00       	mov    $0x0,%ebx
0x4a6:	e9 66 00 00 00       	jmpq   0x511
0x4ab:	48 8b d1             	mov    %rcx,%rdx
0x4ae:	48 8b 1a             	mov    (%rdx),%rbx
0x4b1:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x4b5:	48 3b d0             	cmp    %rax,%rdx
0x4b8:	0f 85 0a 00 00 00    	jne    0x4c8
0x4be:	bb 01 00 00 00       	mov    $0x1,%ebx
0x4c3:	e9 49 00 00 00       	jmpq   0x511
0x4c8:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x4cf:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x4d3:	49 8b c0             	mov    %r8,%rax
0x4d6:	99                   	cltd   
0x4d7:	41 f7 f9             	idiv   %r9d
0x4da:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x4de:	03 d0                	add    %eax,%edx
0x4e0:	48 8b c3             	mov    %rbx,%rax
0x4e3:	48 63 d2             	movslq %edx,%rdx
0x4e6:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x4eb:	48 63 c0             	movslq %eax,%rax
0x4ee:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x4f3:	4d 63 c0             	movslq %r8d,%r8
0x4f6:	49 3b c0             	cmp    %r8,%rax
0x4f9:	0f 85 0a 00 00 00    	jne    0x509
0x4ff:	b8 01 00 00 00       	mov    $0x1,%eax
0x504:	e9 05 00 00 00       	jmpq   0x50e
0x509:	b8 00 00 00 00       	mov    $0x0,%eax
0x50e:	48 8b d8             	mov    %rax,%rbx
0x511:	83 fb 00             	cmp    $0x0,%ebx
0x514:	0f 85 25 00 00 00    	jne    0x53f
0x51a:	48 8b f1             	mov    %rcx,%rsi
0x51d:	90                   	nop
0x51e:	90                   	nop
0x51f:	90                   	nop
0x520:	e8 00 00 00 00       	callq  0x525
0x525:	90                   	nop
0x526:	48 8b f8             	mov    %rax,%rdi
0x529:	e8 00 00 00 00       	callq  0x52e
0x52e:	90                   	nop
0x52f:	90                   	nop
0x530:	e8 00 00 00 00       	callq  0x535
0x535:	90                   	nop
0x536:	48 8b f8             	mov    %rax,%rdi
0x539:	e8 00 00 00 00       	callq  0x53e
0x53e:	90                   	nop
0x53f:	48 63 f6             	movslq %esi,%rsi
0x542:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x547:	48 83 c4 30          	add    $0x30,%rsp
0x54b:	48 8b 3d 26 f9 ff ff 	mov    -0x6da(%rip),%rdi        # 0xfffffe78
0x552:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x557:	48 8b 15 22 f9 ff ff 	mov    -0x6de(%rip),%rdx        # 0xfffffe80
0x55e:	b9 1a 00 00 00       	mov    $0x1a,%ecx
0x563:	48 8b da             	mov    %rdx,%rbx
0x566:	48 8b c6             	mov    %rsi,%rax
0x569:	4c 8b 00             	mov    (%rax),%r8
0x56c:	48 8b 47 28          	mov    0x28(%rdi),%rax
0x570:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0x577:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0x57b:	48 8b c2             	mov    %rdx,%rax
0x57e:	99                   	cltd   
0x57f:	41 f7 f9             	idiv   %r9d
0x582:	49 63 40 58          	movslq 0x58(%r8),%rax
0x586:	03 d0                	add    %eax,%edx
0x588:	49 8b c0             	mov    %r8,%rax
0x58b:	48 63 d2             	movslq %edx,%rdx
0x58e:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0x593:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0x59a:	03 d0                	add    %eax,%edx
0x59c:	48 63 d2             	movslq %edx,%rdx
0x59f:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0x5a4:	48 8b fb             	mov    %rbx,%rdi
0x5a7:	48 8b d1             	mov    %rcx,%rdx
0x5aa:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5af:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x5b3:	e8 00 00 00 00       	callq  0x5b8
0x5b8:	90                   	nop
0x5b9:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x5bd:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x5c1:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x5c6:	ff d0                	callq  *%rax
0x5c8:	90                   	nop
0x5c9:	48 83 ec 10          	sub    $0x10,%rsp
0x5cd:	48 89 04 24          	mov    %rax,(%rsp)
0x5d1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x5d5:	48 83 c4 10          	add    $0x10,%rsp
0x5d9:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x5dd:	48 8b 3d a4 f8 ff ff 	mov    -0x75c(%rip),%rdi        # 0xfffffe88
0x5e4:	be 22 00 00 00       	mov    $0x22,%esi
0x5e9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5ed:	48 8b c8             	mov    %rax,%rcx
0x5f0:	48 63 f6             	movslq %esi,%rsi
0x5f3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5f8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5fe:	0f 8d 07 00 00 00    	jge    0x60b
0x604:	83 c1 01             	add    $0x1,%ecx
0x607:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x60b:	e9 33 05 00 00       	jmpq   0xb43
0x610:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x614:	48 83 ec 10          	sub    $0x10,%rsp
0x618:	4c 89 1c 24          	mov    %r11,(%rsp)
0x61c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x620:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x624:	89 04 24             	mov    %eax,(%rsp)
0x627:	40 8b 34 24          	rex mov (%rsp),%esi
0x62b:	48 8b 3d 5e f8 ff ff 	mov    -0x7a2(%rip),%rdi        # 0xfffffe90
0x632:	83 fe 00             	cmp    $0x0,%esi
0x635:	0f 8c fb 00 00 00    	jl     0x736
0x63b:	85 07                	test   %eax,(%rdi)
0x63d:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x644:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x648:	48 8b 3d 49 f8 ff ff 	mov    -0x7b7(%rip),%rdi        # 0xfffffe98
0x64f:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x653:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x657:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x65e:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x662:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x666:	48 63 c0             	movslq %eax,%rax
0x669:	48 63 d6             	movslq %esi,%rdx
0x66c:	48 0f af c2          	imul   %rdx,%rax
0x670:	48 83 c0 18          	add    $0x18,%rax
0x674:	48 83 c0 07          	add    $0x7,%rax
0x678:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x67f:	00 00 00 
0x682:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x689:	ff ff ff 
0x68c:	49 33 d3             	xor    %r11,%rdx
0x68f:	48 23 c2             	and    %rdx,%rax
0x692:	49 8b d6             	mov    %r14,%rdx
0x695:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x699:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x6a0:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x6a7:	49 8b d0             	mov    %r8,%rdx
0x6aa:	48 03 d0             	add    %rax,%rdx
0x6ad:	4c 8b d2             	mov    %rdx,%r10
0x6b0:	4d 3b d1             	cmp    %r9,%r10
0x6b3:	0f 86 1f 00 00 00    	jbe    0x6d8
0x6b9:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x6bd:	48 8b f0             	mov    %rax,%rsi
0x6c0:	48 8b d1             	mov    %rcx,%rdx
0x6c3:	49 8b c8             	mov    %r8,%rcx
0x6c6:	4d 8b c1             	mov    %r9,%r8
0x6c9:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x6cd:	e8 00 00 00 00       	callq  0x6d2
0x6d2:	90                   	nop
0x6d3:	e9 12 00 00 00       	jmpq   0x6ea
0x6d8:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x6dc:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x6e0:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x6e7:	49 8b c0             	mov    %r8,%rax
0x6ea:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x6ee:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6f2:	e8 00 00 00 00       	callq  0x6f7
0x6f7:	90                   	nop
0x6f8:	90                   	nop
0x6f9:	e8 00 00 00 00       	callq  0x6fe
0x6fe:	90                   	nop
0x6ff:	83 f8 00             	cmp    $0x0,%eax
0x702:	0f 84 40 00 00 00    	je     0x748
0x708:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x70c:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x710:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x714:	85 07                	test   %eax,(%rdi)
0x716:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x71a:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x71e:	83 e0 ff             	and    $0xffffffff,%eax
0x721:	48 8b f8             	mov    %rax,%rdi
0x724:	48 8b f2             	mov    %rdx,%rsi
0x727:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x72b:	e8 00 00 00 00       	callq  0x730
0x730:	90                   	nop
0x731:	e9 12 00 00 00       	jmpq   0x748
0x736:	48 8b fe             	mov    %rsi,%rdi
0x739:	e8 00 00 00 00       	callq  0x73e
0x73e:	90                   	nop
0x73f:	48 8b f8             	mov    %rax,%rdi
0x742:	e8 00 00 00 00       	callq  0x747
0x747:	90                   	nop
0x748:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x74c:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x750:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x754:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x758:	48 89 18             	mov    %rbx,(%rax)
0x75b:	48 89 04 24          	mov    %rax,(%rsp)
0x75f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x763:	48 83 c4 10          	add    $0x10,%rsp
0x767:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x76b:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x771:	48 83 ec 10          	sub    $0x10,%rsp
0x775:	44 89 1c 24          	mov    %r11d,(%rsp)
0x779:	44 8b 1c 24          	mov    (%rsp),%r11d
0x77d:	48 83 c4 10          	add    $0x10,%rsp
0x781:	44 89 5d a0          	mov    %r11d,-0x60(%rbp)
0x785:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0x789:	48 83 ec 10          	sub    $0x10,%rsp
0x78d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x791:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x795:	48 83 ec 10          	sub    $0x10,%rsp
0x799:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7a1:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x7a5:	89 04 24             	mov    %eax,(%rsp)
0x7a8:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x7ad:	8b 04 24             	mov    (%rsp),%eax
0x7b0:	48 83 c4 20          	add    $0x20,%rsp
0x7b4:	44 3b d8             	cmp    %eax,%r11d
0x7b7:	7c 33                	jl     0x7ec
0x7b9:	48 8b 3d e0 f6 ff ff 	mov    -0x920(%rip),%rdi        # 0xfffffea0
0x7c0:	be 23 00 00 00       	mov    $0x23,%esi
0x7c5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x7c9:	48 8b c8             	mov    %rax,%rcx
0x7cc:	48 63 f6             	movslq %esi,%rsi
0x7cf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x7d4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x7da:	0f 8d 07 00 00 00    	jge    0x7e7
0x7e0:	83 c1 01             	add    $0x1,%ecx
0x7e3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7e7:	e9 ad 02 00 00       	jmpq   0xa99
0x7ec:	48 8b 3d b5 f6 ff ff 	mov    -0x94b(%rip),%rdi        # 0xfffffea8
0x7f3:	be 24 00 00 00       	mov    $0x24,%esi
0x7f8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x7fc:	48 8b c8             	mov    %rax,%rcx
0x7ff:	48 63 f6             	movslq %esi,%rsi
0x802:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x807:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x80d:	0f 8d 07 00 00 00    	jge    0x81a
0x813:	83 c1 01             	add    $0x1,%ecx
0x816:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x81a:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x81e:	48 83 ec 10          	sub    $0x10,%rsp
0x822:	4c 89 1c 24          	mov    %r11,(%rsp)
0x826:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0x82a:	48 83 ec 10          	sub    $0x10,%rsp
0x82e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x832:	48 8b 3d 77 f6 ff ff 	mov    -0x989(%rip),%rdi        # 0xfffffeb0
0x839:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x83d:	48 8b 35 74 f6 ff ff 	mov    -0x98c(%rip),%rsi        # 0xfffffeb8
0x844:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x848:	49 8b ce             	mov    %r14,%rcx
0x84b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x84f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x856:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x85d:	48 8b d9             	mov    %rcx,%rbx
0x860:	48 03 da             	add    %rdx,%rbx
0x863:	4c 8b cb             	mov    %rbx,%r9
0x866:	4d 3b c8             	cmp    %r8,%r9
0x869:	0f 86 14 00 00 00    	jbe    0x883
0x86f:	48 8b fe             	mov    %rsi,%rdi
0x872:	48 8b f2             	mov    %rdx,%rsi
0x875:	48 8b d0             	mov    %rax,%rdx
0x878:	e8 00 00 00 00       	callq  0x87d
0x87d:	90                   	nop
0x87e:	e9 0a 00 00 00       	jmpq   0x88d
0x883:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x88a:	48 8b c1             	mov    %rcx,%rax
0x88d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x891:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x895:	90                   	nop
0x896:	90                   	nop
0x897:	90                   	nop
0x898:	e8 00 00 00 00       	callq  0x89d
0x89d:	90                   	nop
0x89e:	90                   	nop
0x89f:	90                   	nop
0x8a0:	e8 00 00 00 00       	callq  0x8a5
0x8a5:	90                   	nop
0x8a6:	83 f8 00             	cmp    $0x0,%eax
0x8a9:	0f 84 27 00 00 00    	je     0x8d6
0x8af:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x8b3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x8b7:	85 06                	test   %eax,(%rsi)
0x8b9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x8bd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x8c1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x8c5:	83 e2 ff             	and    $0xffffffff,%edx
0x8c8:	48 8b fa             	mov    %rdx,%rdi
0x8cb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x8cf:	90                   	nop
0x8d0:	e8 00 00 00 00       	callq  0x8d5
0x8d5:	90                   	nop
0x8d6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x8da:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x8de:	48 89 38             	mov    %rdi,(%rax)
0x8e1:	48 83 ec 10          	sub    $0x10,%rsp
0x8e5:	48 89 04 24          	mov    %rax,(%rsp)
0x8e9:	48 83 ec 10          	sub    $0x10,%rsp
0x8ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x8f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8f6:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x8fa:	48 83 ec 10          	sub    $0x10,%rsp
0x8fe:	4c 89 1c 24          	mov    %r11,(%rsp)
0x902:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0x906:	48 83 ec 10          	sub    $0x10,%rsp
0x90a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x90e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x913:	40 8b 34 24          	rex mov (%rsp),%esi
0x917:	48 8b c7             	mov    %rdi,%rax
0x91a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x91e:	3b f0                	cmp    %eax,%esi
0x920:	0f 82 0f 00 00 00    	jb     0x935
0x926:	e8 00 00 00 00       	callq  0x92b
0x92b:	90                   	nop
0x92c:	48 8b f8             	mov    %rax,%rdi
0x92f:	e8 00 00 00 00       	callq  0x934
0x934:	90                   	nop
0x935:	48 63 f6             	movslq %esi,%rsi
0x938:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x93d:	48 83 c4 10          	add    $0x10,%rsp
0x941:	48 89 04 24          	mov    %rax,(%rsp)
0x945:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x94a:	41 85 03             	test   %eax,(%r11)
0x94d:	90                   	nop
0x94e:	90                   	nop
0x94f:	90                   	nop
0x950:	e8 00 00 00 00       	callq  0x955
0x955:	90                   	nop
0x956:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x95b:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x960:	48 8b 14 24          	mov    (%rsp),%rdx
0x964:	48 8b ca             	mov    %rdx,%rcx
0x967:	48 8b c7             	mov    %rdi,%rax
0x96a:	48 63 40 10          	movslq 0x10(%rax),%rax
0x96e:	3b f0                	cmp    %eax,%esi
0x970:	0f 83 b4 00 00 00    	jae    0xa2a
0x976:	4d 33 db             	xor    %r11,%r11
0x979:	49 3b cb             	cmp    %r11,%rcx
0x97c:	0f 84 b8 00 00 00    	je     0xa3a
0x982:	48 8b c7             	mov    %rdi,%rax
0x985:	48 8b 00             	mov    (%rax),%rax
0x988:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x98c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x990:	4d 33 db             	xor    %r11,%r11
0x993:	49 3b cb             	cmp    %r11,%rcx
0x996:	0f 85 0a 00 00 00    	jne    0x9a6
0x99c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x9a1:	e9 66 00 00 00       	jmpq   0xa0c
0x9a6:	48 8b d1             	mov    %rcx,%rdx
0x9a9:	48 8b 1a             	mov    (%rdx),%rbx
0x9ac:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x9b0:	48 3b d0             	cmp    %rax,%rdx
0x9b3:	0f 85 0a 00 00 00    	jne    0x9c3
0x9b9:	bb 01 00 00 00       	mov    $0x1,%ebx
0x9be:	e9 49 00 00 00       	jmpq   0xa0c
0x9c3:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x9ca:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x9ce:	49 8b c0             	mov    %r8,%rax
0x9d1:	99                   	cltd   
0x9d2:	41 f7 f9             	idiv   %r9d
0x9d5:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x9d9:	03 d0                	add    %eax,%edx
0x9db:	48 8b c3             	mov    %rbx,%rax
0x9de:	48 63 d2             	movslq %edx,%rdx
0x9e1:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x9e6:	48 63 c0             	movslq %eax,%rax
0x9e9:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x9ee:	4d 63 c0             	movslq %r8d,%r8
0x9f1:	49 3b c0             	cmp    %r8,%rax
0x9f4:	0f 85 0a 00 00 00    	jne    0xa04
0x9fa:	b8 01 00 00 00       	mov    $0x1,%eax
0x9ff:	e9 05 00 00 00       	jmpq   0xa09
0xa04:	b8 00 00 00 00       	mov    $0x0,%eax
0xa09:	48 8b d8             	mov    %rax,%rbx
0xa0c:	83 fb 00             	cmp    $0x0,%ebx
0xa0f:	0f 85 25 00 00 00    	jne    0xa3a
0xa15:	48 8b f1             	mov    %rcx,%rsi
0xa18:	90                   	nop
0xa19:	90                   	nop
0xa1a:	90                   	nop
0xa1b:	e8 00 00 00 00       	callq  0xa20
0xa20:	90                   	nop
0xa21:	48 8b f8             	mov    %rax,%rdi
0xa24:	e8 00 00 00 00       	callq  0xa29
0xa29:	90                   	nop
0xa2a:	90                   	nop
0xa2b:	e8 00 00 00 00       	callq  0xa30
0xa30:	90                   	nop
0xa31:	48 8b f8             	mov    %rax,%rdi
0xa34:	e8 00 00 00 00       	callq  0xa39
0xa39:	90                   	nop
0xa3a:	48 63 f6             	movslq %esi,%rsi
0xa3d:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0xa42:	48 83 c4 30          	add    $0x30,%rsp
0xa46:	44 8b 5d a0          	mov    -0x60(%rbp),%r11d
0xa4a:	41 83 c3 01          	add    $0x1,%r11d
0xa4e:	44 89 5d a0          	mov    %r11d,-0x60(%rbp)
0xa52:	48 8b 3d 67 f4 ff ff 	mov    -0xb99(%rip),%rdi        # 0xfffffec0
0xa59:	be 28 00 00 00       	mov    $0x28,%esi
0xa5e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa62:	48 8b c8             	mov    %rax,%rcx
0xa65:	48 63 f6             	movslq %esi,%rsi
0xa68:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa6d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xa73:	0f 8d 07 00 00 00    	jge    0xa80
0xa79:	83 c1 01             	add    $0x1,%ecx
0xa7c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xa80:	48 8b 3d 41 f4 ff ff 	mov    -0xbbf(%rip),%rdi        # 0xfffffec8
0xa87:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xa8b:	83 e8 01             	sub    $0x1,%eax
0xa8e:	89 47 30             	mov    %eax,0x30(%rdi)
0xa91:	4d 8b 36             	mov    (%r14),%r14
0xa94:	e9 ec fc ff ff       	jmpq   0x785
0xa99:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xa9d:	48 83 ec 10          	sub    $0x10,%rsp
0xaa1:	4c 89 1c 24          	mov    %r11,(%rsp)
0xaa5:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xaa9:	48 83 ec 10          	sub    $0x10,%rsp
0xaad:	4c 89 1c 24          	mov    %r11,(%rsp)
0xab1:	48 8b 3d 18 f4 ff ff 	mov    -0xbe8(%rip),%rdi        # 0xfffffed0
0xab8:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xabd:	48 8b 15 14 f4 ff ff 	mov    -0xbec(%rip),%rdx        # 0xfffffed8
0xac4:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0xac9:	48 8b da             	mov    %rdx,%rbx
0xacc:	48 8b c6             	mov    %rsi,%rax
0xacf:	4c 8b 00             	mov    (%rax),%r8
0xad2:	48 8b 47 28          	mov    0x28(%rdi),%rax
0xad6:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0xadd:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0xae1:	48 8b c2             	mov    %rdx,%rax
0xae4:	99                   	cltd   
0xae5:	41 f7 f9             	idiv   %r9d
0xae8:	49 63 40 58          	movslq 0x58(%r8),%rax
0xaec:	03 d0                	add    %eax,%edx
0xaee:	49 8b c0             	mov    %r8,%rax
0xaf1:	48 63 d2             	movslq %edx,%rdx
0xaf4:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0xaf9:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0xb00:	03 d0                	add    %eax,%edx
0xb02:	48 63 d2             	movslq %edx,%rdx
0xb05:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0xb0a:	48 8b fb             	mov    %rbx,%rdi
0xb0d:	48 8b d1             	mov    %rcx,%rdx
0xb10:	b9 03 00 00 00       	mov    $0x3,%ecx
0xb15:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb19:	e8 00 00 00 00       	callq  0xb1e
0xb1e:	90                   	nop
0xb1f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xb23:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xb27:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb2c:	ff d0                	callq  *%rax
0xb2e:	90                   	nop
0xb2f:	48 83 ec 10          	sub    $0x10,%rsp
0xb33:	48 89 04 24          	mov    %rax,(%rsp)
0xb37:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb3b:	48 83 c4 10          	add    $0x10,%rsp
0xb3f:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0xb43:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xb47:	48 83 ec 10          	sub    $0x10,%rsp
0xb4b:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb4f:	48 8b 3d 8a f3 ff ff 	mov    -0xc76(%rip),%rdi        # 0xfffffee0
0xb56:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xb5a:	48 8b 35 87 f3 ff ff 	mov    -0xc79(%rip),%rsi        # 0xfffffee8
0xb61:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xb65:	49 8b ce             	mov    %r14,%rcx
0xb68:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xb6c:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xb73:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xb7a:	48 8b d9             	mov    %rcx,%rbx
0xb7d:	48 03 da             	add    %rdx,%rbx
0xb80:	4c 8b cb             	mov    %rbx,%r9
0xb83:	4d 3b c8             	cmp    %r8,%r9
0xb86:	0f 86 14 00 00 00    	jbe    0xba0
0xb8c:	48 8b fe             	mov    %rsi,%rdi
0xb8f:	48 8b f2             	mov    %rdx,%rsi
0xb92:	48 8b d0             	mov    %rax,%rdx
0xb95:	e8 00 00 00 00       	callq  0xb9a
0xb9a:	90                   	nop
0xb9b:	e9 0a 00 00 00       	jmpq   0xbaa
0xba0:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xba7:	48 8b c1             	mov    %rcx,%rax
0xbaa:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xbae:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xbb2:	90                   	nop
0xbb3:	90                   	nop
0xbb4:	90                   	nop
0xbb5:	e8 00 00 00 00       	callq  0xbba
0xbba:	90                   	nop
0xbbb:	90                   	nop
0xbbc:	90                   	nop
0xbbd:	e8 00 00 00 00       	callq  0xbc2
0xbc2:	90                   	nop
0xbc3:	83 f8 00             	cmp    $0x0,%eax
0xbc6:	0f 84 27 00 00 00    	je     0xbf3
0xbcc:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xbd0:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xbd4:	85 06                	test   %eax,(%rsi)
0xbd6:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xbda:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xbde:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xbe2:	83 e2 ff             	and    $0xffffffff,%edx
0xbe5:	48 8b fa             	mov    %rdx,%rdi
0xbe8:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xbec:	90                   	nop
0xbed:	e8 00 00 00 00       	callq  0xbf2
0xbf2:	90                   	nop
0xbf3:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xbf7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xbfb:	48 89 38             	mov    %rdi,(%rax)
0xbfe:	48 83 ec 10          	sub    $0x10,%rsp
0xc02:	48 89 04 24          	mov    %rax,(%rsp)
0xc06:	48 83 ec 10          	sub    $0x10,%rsp
0xc0a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xc0f:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc13:	48 8b 3d d6 f2 ff ff 	mov    -0xd2a(%rip),%rdi        # 0xfffffef0
0xc1a:	be 18 00 00 00       	mov    $0x18,%esi
0xc1f:	48 63 f6             	movslq %esi,%rsi
0xc22:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc26:	48 83 ec 10          	sub    $0x10,%rsp
0xc2a:	48 89 04 24          	mov    %rax,(%rsp)
0xc2e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xc33:	41 85 03             	test   %eax,(%r11)
0xc36:	90                   	nop
0xc37:	90                   	nop
0xc38:	e8 00 00 00 00       	callq  0xc3d
0xc3d:	90                   	nop
0xc3e:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xc42:	48 83 ec 10          	sub    $0x10,%rsp
0xc46:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc4a:	4d 33 db             	xor    %r11,%r11
0xc4d:	48 83 ec 10          	sub    $0x10,%rsp
0xc51:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc55:	4d 33 db             	xor    %r11,%r11
0xc58:	48 83 ec 10          	sub    $0x10,%rsp
0xc5c:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc60:	4d 33 db             	xor    %r11,%r11
0xc63:	48 83 ec 10          	sub    $0x10,%rsp
0xc67:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc6b:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xc6f:	48 83 ec 10          	sub    $0x10,%rsp
0xc73:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc77:	48 8b 3d 7a f2 ff ff 	mov    -0xd86(%rip),%rdi        # 0xfffffef8
0xc7e:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
0xc83:	48 8b 15 76 f2 ff ff 	mov    -0xd8a(%rip),%rdx        # 0xffffff00
0xc8a:	b9 34 00 00 00       	mov    $0x34,%ecx
0xc8f:	48 8b da             	mov    %rdx,%rbx
0xc92:	48 8b c6             	mov    %rsi,%rax
0xc95:	4c 8b 00             	mov    (%rax),%r8
0xc98:	48 8b 47 28          	mov    0x28(%rdi),%rax
0xc9c:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0xca3:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0xca7:	48 8b c2             	mov    %rdx,%rax
0xcaa:	99                   	cltd   
0xcab:	41 f7 f9             	idiv   %r9d
0xcae:	49 63 40 58          	movslq 0x58(%r8),%rax
0xcb2:	03 d0                	add    %eax,%edx
0xcb4:	49 8b c0             	mov    %r8,%rax
0xcb7:	48 63 d2             	movslq %edx,%rdx
0xcba:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0xcbf:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0xcc6:	03 d0                	add    %eax,%edx
0xcc8:	48 63 d2             	movslq %edx,%rdx
0xccb:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0xcd0:	48 8b fb             	mov    %rbx,%rdi
0xcd3:	48 8b d1             	mov    %rcx,%rdx
0xcd6:	b9 03 00 00 00       	mov    $0x3,%ecx
0xcdb:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xcdf:	e8 00 00 00 00       	callq  0xce4
0xce4:	90                   	nop
0xce5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xce9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xced:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
0xcf2:	ff d0                	callq  *%rax
0xcf4:	90                   	nop
0xcf5:	48 83 ec 10          	sub    $0x10,%rsp
0xcf9:	48 89 04 24          	mov    %rax,(%rsp)
0xcfd:	4c 8b 1c 24          	mov    (%rsp),%r11
0xd01:	48 83 c4 10          	add    $0x10,%rsp
0xd05:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0xd09:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0xd0d:	48 83 ec 10          	sub    $0x10,%rsp
0xd11:	4c 89 1c 24          	mov    %r11,(%rsp)
0xd15:	48 8b 3d ec f1 ff ff 	mov    -0xe14(%rip),%rdi        # 0xffffff08
0xd1c:	48 8b 34 24          	mov    (%rsp),%rsi
0xd20:	48 8b 15 e9 f1 ff ff 	mov    -0xe17(%rip),%rdx        # 0xffffff10
0xd27:	b9 3d 00 00 00       	mov    $0x3d,%ecx
0xd2c:	48 8b da             	mov    %rdx,%rbx
0xd2f:	48 8b c6             	mov    %rsi,%rax
0xd32:	4c 8b 00             	mov    (%rax),%r8
0xd35:	48 8b 47 28          	mov    0x28(%rdi),%rax
0xd39:	48 63 90 f0 00 00 00 	movslq 0xf0(%rax),%rdx
0xd40:	4d 63 48 5c          	movslq 0x5c(%r8),%r9
0xd44:	48 8b c2             	mov    %rdx,%rax
0xd47:	99                   	cltd   
0xd48:	41 f7 f9             	idiv   %r9d
0xd4b:	49 63 40 58          	movslq 0x58(%r8),%rax
0xd4f:	03 d0                	add    %eax,%edx
0xd51:	49 8b c0             	mov    %r8,%rax
0xd54:	48 63 d2             	movslq %edx,%rdx
0xd57:	48 63 54 90 18       	movslq 0x18(%rax,%rdx,4),%rdx
0xd5c:	48 63 87 80 00 00 00 	movslq 0x80(%rdi),%rax
0xd63:	03 d0                	add    %eax,%edx
0xd65:	48 63 d2             	movslq %edx,%rdx
0xd68:	49 8b 44 d0 18       	mov    0x18(%r8,%rdx,8),%rax
0xd6d:	48 8b fb             	mov    %rbx,%rdi
0xd70:	48 8b d1             	mov    %rcx,%rdx
0xd73:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd78:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd7c:	e8 00 00 00 00       	callq  0xd81
0xd81:	90                   	nop
0xd82:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd86:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd8a:	48 8b 3c 24          	mov    (%rsp),%rdi
0xd8e:	ff d0                	callq  *%rax
0xd90:	90                   	nop
0xd91:	48 83 ec 10          	sub    $0x10,%rsp
0xd95:	48 89 04 24          	mov    %rax,(%rsp)
0xd99:	48 83 c4 10          	add    $0x10,%rsp
0xd9d:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0xda1:	48 83 ec 10          	sub    $0x10,%rsp
0xda5:	4c 89 1c 24          	mov    %r11,(%rsp)
0xda9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xdad:	48 33 c0             	xor    %rax,%rax
0xdb0:	48 83 c4 10          	add    $0x10,%rsp
0xdb4:	4c 3b d8             	cmp    %rax,%r11
0xdb7:	75 33                	jne    0xdec
0xdb9:	48 8b 3d 58 f1 ff ff 	mov    -0xea8(%rip),%rdi        # 0xffffff18
0xdc0:	be 45 00 00 00       	mov    $0x45,%esi
0xdc5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdc9:	48 8b c8             	mov    %rax,%rcx
0xdcc:	48 63 f6             	movslq %esi,%rsi
0xdcf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xdd4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xdda:	0f 8d 07 00 00 00    	jge    0xde7
0xde0:	83 c1 01             	add    $0x1,%ecx
0xde3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xde7:	e9 ce 0e 00 00       	jmpq   0x1cba
0xdec:	48 8b 3d 2d f1 ff ff 	mov    -0xed3(%rip),%rdi        # 0xffffff20
0xdf3:	be 46 00 00 00       	mov    $0x46,%esi
0xdf8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdfc:	48 8b c8             	mov    %rax,%rcx
0xdff:	48 63 f6             	movslq %esi,%rsi
0xe02:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe07:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xe0d:	0f 8d 07 00 00 00    	jge    0xe1a
0xe13:	83 c1 01             	add    $0x1,%ecx
0xe16:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xe1a:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0xe1e:	48 83 ec 10          	sub    $0x10,%rsp
0xe22:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe26:	bf 1b 00 00 00       	mov    $0x1b,%edi
0xe2b:	48 8b 34 24          	mov    (%rsp),%rsi
0xe2f:	48 8b 15 f2 f0 ff ff 	mov    -0xf0e(%rip),%rdx        # 0xffffff28
0xe36:	b9 48 00 00 00       	mov    $0x48,%ecx
0xe3b:	48 8b c6             	mov    %rsi,%rax
0xe3e:	48 8b 00             	mov    (%rax),%rax
0xe41:	48 63 ff             	movslq %edi,%rdi
0xe44:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xe49:	48 8b fa             	mov    %rdx,%rdi
0xe4c:	48 8b d1             	mov    %rcx,%rdx
0xe4f:	b9 03 00 00 00       	mov    $0x3,%ecx
0xe54:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xe58:	90                   	nop
0xe59:	90                   	nop
0xe5a:	e8 00 00 00 00       	callq  0xe5f
0xe5f:	90                   	nop
0xe60:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xe64:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xe68:	48 8b 3c 24          	mov    (%rsp),%rdi
0xe6c:	ff d0                	callq  *%rax
0xe6e:	90                   	nop
0xe6f:	48 83 ec 10          	sub    $0x10,%rsp
0xe73:	48 89 04 24          	mov    %rax,(%rsp)
0xe77:	4c 8b 1c 24          	mov    (%rsp),%r11
0xe7b:	48 83 c4 10          	add    $0x10,%rsp
0xe7f:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0xe83:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0xe87:	48 83 ec 10          	sub    $0x10,%rsp
0xe8b:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe8f:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xe95:	48 83 ec 10          	sub    $0x10,%rsp
0xe99:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe9d:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0xea1:	48 83 ec 10          	sub    $0x10,%rsp
0xea5:	4c 89 1c 24          	mov    %r11,(%rsp)
0xea9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xead:	41 85 03             	test   %eax,(%r11)
0xeb0:	48 8b 3c 24          	mov    (%rsp),%rdi
0xeb4:	90                   	nop
0xeb5:	90                   	nop
0xeb6:	90                   	nop
0xeb7:	90                   	nop
0xeb8:	e8 00 00 00 00       	callq  0xebd
0xebd:	90                   	nop
0xebe:	48 83 ec 10          	sub    $0x10,%rsp
0xec2:	48 89 04 24          	mov    %rax,(%rsp)
0xec6:	4c 8b 1d 63 f0 ff ff 	mov    -0xf9d(%rip),%r11        # 0xffffff30
0xecd:	48 83 ec 10          	sub    $0x10,%rsp
0xed1:	4c 89 1c 24          	mov    %r11,(%rsp)
0xed5:	4c 8b 1c 24          	mov    (%rsp),%r11
0xed9:	41 85 03             	test   %eax,(%r11)
0xedc:	48 8b 3c 24          	mov    (%rsp),%rdi
0xee0:	e8 00 00 00 00       	callq  0xee5
0xee5:	90                   	nop
0xee6:	48 83 ec 10          	sub    $0x10,%rsp
0xeea:	48 89 04 24          	mov    %rax,(%rsp)
0xeee:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0xef3:	40 8b 34 24          	rex mov (%rsp),%esi
0xef7:	2b fe                	sub    %esi,%edi
0xef9:	48 8b c7             	mov    %rdi,%rax
0xefc:	48 83 c4 10          	add    $0x10,%rsp
0xf00:	89 04 24             	mov    %eax,(%rsp)
0xf03:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xf08:	41 85 03             	test   %eax,(%r11)
0xf0b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xf10:	e8 00 00 00 00       	callq  0xf15
0xf15:	90                   	nop
0xf16:	48 83 ec 10          	sub    $0x10,%rsp
0xf1a:	48 89 04 24          	mov    %rax,(%rsp)
0xf1e:	4c 8b 1c 24          	mov    (%rsp),%r11
0xf22:	48 83 c4 10          	add    $0x10,%rsp
0xf26:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
0xf2a:	48 8b 3d 07 f0 ff ff 	mov    -0xff9(%rip),%rdi        # 0xffffff38
0xf31:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xf35:	48 8b 35 04 f0 ff ff 	mov    -0xffc(%rip),%rsi        # 0xffffff40
0xf3c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xf40:	49 8b ce             	mov    %r14,%rcx
0xf43:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xf47:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xf4e:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xf55:	48 8b d9             	mov    %rcx,%rbx
0xf58:	48 03 da             	add    %rdx,%rbx
0xf5b:	4c 8b cb             	mov    %rbx,%r9
0xf5e:	4d 3b c8             	cmp    %r8,%r9
0xf61:	0f 86 14 00 00 00    	jbe    0xf7b
0xf67:	48 8b fe             	mov    %rsi,%rdi
0xf6a:	48 8b f2             	mov    %rdx,%rsi
0xf6d:	48 8b d0             	mov    %rax,%rdx
0xf70:	e8 00 00 00 00       	callq  0xf75
0xf75:	90                   	nop
0xf76:	e9 0a 00 00 00       	jmpq   0xf85
0xf7b:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xf82:	48 8b c1             	mov    %rcx,%rax
0xf85:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xf89:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xf8d:	90                   	nop
0xf8e:	90                   	nop
0xf8f:	90                   	nop
0xf90:	e8 00 00 00 00       	callq  0xf95
0xf95:	90                   	nop
0xf96:	90                   	nop
0xf97:	90                   	nop
0xf98:	e8 00 00 00 00       	callq  0xf9d
0xf9d:	90                   	nop
0xf9e:	83 f8 00             	cmp    $0x0,%eax
0xfa1:	0f 84 27 00 00 00    	je     0xfce
0xfa7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xfab:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xfaf:	85 06                	test   %eax,(%rsi)
0xfb1:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xfb5:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xfb9:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xfbd:	83 e2 ff             	and    $0xffffffff,%edx
0xfc0:	48 8b fa             	mov    %rdx,%rdi
0xfc3:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xfc7:	90                   	nop
0xfc8:	e8 00 00 00 00       	callq  0xfcd
0xfcd:	90                   	nop
0xfce:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xfd2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xfd6:	48 89 38             	mov    %rdi,(%rax)
0xfd9:	48 83 ec 10          	sub    $0x10,%rsp
0xfdd:	48 89 04 24          	mov    %rax,(%rsp)
0xfe1:	48 83 ec 10          	sub    $0x10,%rsp
0xfe5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xfea:	4c 89 1c 24          	mov    %r11,(%rsp)
0xfee:	4c 8b 1c 24          	mov    (%rsp),%r11
0xff2:	41 85 03             	test   %eax,(%r11)
0xff5:	90                   	nop
0xff6:	90                   	nop
0xff7:	90                   	nop
0xff8:	e8 00 00 00 00       	callq  0xffd
0xffd:	90                   	nop
0xffe:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x1002:	48 83 ec 10          	sub    $0x10,%rsp
0x1006:	4c 89 1c 24          	mov    %r11,(%rsp)
0x100a:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x100f:	41 85 03             	test   %eax,(%r11)
0x1012:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1017:	90                   	nop
0x1018:	e8 00 00 00 00       	callq  0x101d
0x101d:	90                   	nop
0x101e:	48 83 ec 10          	sub    $0x10,%rsp
0x1022:	48 89 04 24          	mov    %rax,(%rsp)
0x1026:	4c 8b 1d 1b ef ff ff 	mov    -0x10e5(%rip),%r11        # 0xffffff48
0x102d:	48 83 ec 10          	sub    $0x10,%rsp
0x1031:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1035:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x103a:	41 85 03             	test   %eax,(%r11)
0x103d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1042:	e8 00 00 00 00       	callq  0x1047
0x1047:	90                   	nop
0x1048:	48 83 ec 10          	sub    $0x10,%rsp
0x104c:	48 89 04 24          	mov    %rax,(%rsp)
0x1050:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1054:	41 85 03             	test   %eax,(%r11)
0x1057:	48 8b 3c 24          	mov    (%rsp),%rdi
0x105b:	e8 00 00 00 00       	callq  0x1060
0x1060:	90                   	nop
0x1061:	48 83 ec 10          	sub    $0x10,%rsp
0x1065:	48 89 04 24          	mov    %rax,(%rsp)
0x1069:	4c 8b 1c 24          	mov    (%rsp),%r11
0x106d:	48 83 c4 10          	add    $0x10,%rsp
0x1071:	4c 89 5d 80          	mov    %r11,-0x80(%rbp)
0x1075:	48 8b 3d d4 ee ff ff 	mov    -0x112c(%rip),%rdi        # 0xffffff50
0x107c:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x1080:	48 8b 35 d1 ee ff ff 	mov    -0x112f(%rip),%rsi        # 0xffffff58
0x1087:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x108b:	49 8b ce             	mov    %r14,%rcx
0x108e:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1092:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1099:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x10a0:	48 8b d9             	mov    %rcx,%rbx
0x10a3:	48 03 da             	add    %rdx,%rbx
0x10a6:	4c 8b cb             	mov    %rbx,%r9
0x10a9:	4d 3b c8             	cmp    %r8,%r9
0x10ac:	0f 86 14 00 00 00    	jbe    0x10c6
0x10b2:	48 8b fe             	mov    %rsi,%rdi
0x10b5:	48 8b f2             	mov    %rdx,%rsi
0x10b8:	48 8b d0             	mov    %rax,%rdx
0x10bb:	e8 00 00 00 00       	callq  0x10c0
0x10c0:	90                   	nop
0x10c1:	e9 0a 00 00 00       	jmpq   0x10d0
0x10c6:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x10cd:	48 8b c1             	mov    %rcx,%rax
0x10d0:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x10d4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x10d8:	90                   	nop
0x10d9:	90                   	nop
0x10da:	90                   	nop
0x10db:	e8 00 00 00 00       	callq  0x10e0
0x10e0:	90                   	nop
0x10e1:	90                   	nop
0x10e2:	90                   	nop
0x10e3:	e8 00 00 00 00       	callq  0x10e8
0x10e8:	90                   	nop
0x10e9:	83 f8 00             	cmp    $0x0,%eax
0x10ec:	0f 84 27 00 00 00    	je     0x1119
0x10f2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x10f6:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x10fa:	85 06                	test   %eax,(%rsi)
0x10fc:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1100:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1104:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1108:	83 e2 ff             	and    $0xffffffff,%edx
0x110b:	48 8b fa             	mov    %rdx,%rdi
0x110e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1112:	90                   	nop
0x1113:	e8 00 00 00 00       	callq  0x1118
0x1118:	90                   	nop
0x1119:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x111d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1121:	48 89 38             	mov    %rdi,(%rax)
0x1124:	48 83 ec 10          	sub    $0x10,%rsp
0x1128:	48 89 04 24          	mov    %rax,(%rsp)
0x112c:	48 83 ec 10          	sub    $0x10,%rsp
0x1130:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1135:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1139:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
0x113d:	48 83 ec 10          	sub    $0x10,%rsp
0x1141:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1145:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x114a:	41 85 03             	test   %eax,(%r11)
0x114d:	90                   	nop
0x114e:	90                   	nop
0x114f:	90                   	nop
0x1150:	e8 00 00 00 00       	callq  0x1155
0x1155:	90                   	nop
0x1156:	4c 8b 1c 24          	mov    (%rsp),%r11
0x115a:	48 83 c4 10          	add    $0x10,%rsp
0x115e:	4c 89 9d 70 ff ff ff 	mov    %r11,-0x90(%rbp)
0x1165:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x116b:	48 83 ec 10          	sub    $0x10,%rsp
0x116f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1173:	40 8b 34 24          	rex mov (%rsp),%esi
0x1177:	48 8b 3d e2 ed ff ff 	mov    -0x121e(%rip),%rdi        # 0xffffff60
0x117e:	83 fe 00             	cmp    $0x0,%esi
0x1181:	0f 8c fb 00 00 00    	jl     0x1282
0x1187:	85 07                	test   %eax,(%rdi)
0x1189:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x1190:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x1194:	48 8b 3d cd ed ff ff 	mov    -0x1233(%rip),%rdi        # 0xffffff68
0x119b:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x119f:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x11a3:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x11aa:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x11ae:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x11b2:	48 63 c0             	movslq %eax,%rax
0x11b5:	48 63 d6             	movslq %esi,%rdx
0x11b8:	48 0f af c2          	imul   %rdx,%rax
0x11bc:	48 83 c0 18          	add    $0x18,%rax
0x11c0:	48 83 c0 07          	add    $0x7,%rax
0x11c4:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x11cb:	00 00 00 
0x11ce:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x11d5:	ff ff ff 
0x11d8:	49 33 d3             	xor    %r11,%rdx
0x11db:	48 23 c2             	and    %rdx,%rax
0x11de:	49 8b d6             	mov    %r14,%rdx
0x11e1:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x11e5:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x11ec:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x11f3:	49 8b d0             	mov    %r8,%rdx
0x11f6:	48 03 d0             	add    %rax,%rdx
0x11f9:	4c 8b d2             	mov    %rdx,%r10
0x11fc:	4d 3b d1             	cmp    %r9,%r10
0x11ff:	0f 86 1f 00 00 00    	jbe    0x1224
0x1205:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1209:	48 8b f0             	mov    %rax,%rsi
0x120c:	48 8b d1             	mov    %rcx,%rdx
0x120f:	49 8b c8             	mov    %r8,%rcx
0x1212:	4d 8b c1             	mov    %r9,%r8
0x1215:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1219:	e8 00 00 00 00       	callq  0x121e
0x121e:	90                   	nop
0x121f:	e9 12 00 00 00       	jmpq   0x1236
0x1224:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1228:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x122c:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1233:	49 8b c0             	mov    %r8,%rax
0x1236:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x123a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x123e:	e8 00 00 00 00       	callq  0x1243
0x1243:	90                   	nop
0x1244:	90                   	nop
0x1245:	e8 00 00 00 00       	callq  0x124a
0x124a:	90                   	nop
0x124b:	83 f8 00             	cmp    $0x0,%eax
0x124e:	0f 84 40 00 00 00    	je     0x1294
0x1254:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1258:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x125c:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x1260:	85 07                	test   %eax,(%rdi)
0x1262:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x1266:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x126a:	83 e0 ff             	and    $0xffffffff,%eax
0x126d:	48 8b f8             	mov    %rax,%rdi
0x1270:	48 8b f2             	mov    %rdx,%rsi
0x1273:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1277:	e8 00 00 00 00       	callq  0x127c
0x127c:	90                   	nop
0x127d:	e9 12 00 00 00       	jmpq   0x1294
0x1282:	48 8b fe             	mov    %rsi,%rdi
0x1285:	e8 00 00 00 00       	callq  0x128a
0x128a:	90                   	nop
0x128b:	48 8b f8             	mov    %rax,%rdi
0x128e:	e8 00 00 00 00       	callq  0x1293
0x1293:	90                   	nop
0x1294:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1298:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x129c:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x12a0:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x12a4:	48 89 18             	mov    %rbx,(%rax)
0x12a7:	48 89 04 24          	mov    %rax,(%rsp)
0x12ab:	48 83 ec 10          	sub    $0x10,%rsp
0x12af:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x12b4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x12b8:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x12be:	48 83 ec 10          	sub    $0x10,%rsp
0x12c2:	44 89 1c 24          	mov    %r11d,(%rsp)
0x12c6:	48 8b 3d a3 ec ff ff 	mov    -0x135d(%rip),%rdi        # 0xffffff70
0x12cd:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x12d1:	48 8b 35 a0 ec ff ff 	mov    -0x1360(%rip),%rsi        # 0xffffff78
0x12d8:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x12dc:	49 8b ce             	mov    %r14,%rcx
0x12df:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x12e3:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x12ea:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x12f1:	48 8b d9             	mov    %rcx,%rbx
0x12f4:	48 03 da             	add    %rdx,%rbx
0x12f7:	4c 8b cb             	mov    %rbx,%r9
0x12fa:	4d 3b c8             	cmp    %r8,%r9
0x12fd:	0f 86 14 00 00 00    	jbe    0x1317
0x1303:	48 8b fe             	mov    %rsi,%rdi
0x1306:	48 8b f2             	mov    %rdx,%rsi
0x1309:	48 8b d0             	mov    %rax,%rdx
0x130c:	e8 00 00 00 00       	callq  0x1311
0x1311:	90                   	nop
0x1312:	e9 0a 00 00 00       	jmpq   0x1321
0x1317:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x131e:	48 8b c1             	mov    %rcx,%rax
0x1321:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1325:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1329:	90                   	nop
0x132a:	90                   	nop
0x132b:	90                   	nop
0x132c:	e8 00 00 00 00       	callq  0x1331
0x1331:	90                   	nop
0x1332:	90                   	nop
0x1333:	90                   	nop
0x1334:	e8 00 00 00 00       	callq  0x1339
0x1339:	90                   	nop
0x133a:	83 f8 00             	cmp    $0x0,%eax
0x133d:	0f 84 27 00 00 00    	je     0x136a
0x1343:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1347:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x134b:	85 06                	test   %eax,(%rsi)
0x134d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1351:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1355:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1359:	83 e2 ff             	and    $0xffffffff,%edx
0x135c:	48 8b fa             	mov    %rdx,%rdi
0x135f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1363:	90                   	nop
0x1364:	e8 00 00 00 00       	callq  0x1369
0x1369:	90                   	nop
0x136a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x136e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1372:	48 89 38             	mov    %rdi,(%rax)
0x1375:	48 83 ec 10          	sub    $0x10,%rsp
0x1379:	48 89 04 24          	mov    %rax,(%rsp)
0x137d:	48 83 ec 10          	sub    $0x10,%rsp
0x1381:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1386:	4c 89 1c 24          	mov    %r11,(%rsp)
0x138a:	4c 8b 1d ef eb ff ff 	mov    -0x1411(%rip),%r11        # 0xffffff80
0x1391:	48 83 ec 10          	sub    $0x10,%rsp
0x1395:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1399:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x139e:	41 85 03             	test   %eax,(%r11)
0x13a1:	e8 00 00 00 00       	callq  0x13a6
0x13a6:	90                   	nop
0x13a7:	bf 22 00 00 00       	mov    $0x22,%edi
0x13ac:	48 8b 34 24          	mov    (%rsp),%rsi
0x13b0:	48 8b 15 d1 eb ff ff 	mov    -0x142f(%rip),%rdx        # 0xffffff88
0x13b7:	b9 5a 00 00 00       	mov    $0x5a,%ecx
0x13bc:	48 8b c6             	mov    %rsi,%rax
0x13bf:	48 8b 00             	mov    (%rax),%rax
0x13c2:	48 63 ff             	movslq %edi,%rdi
0x13c5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x13ca:	48 8b fa             	mov    %rdx,%rdi
0x13cd:	48 8b d1             	mov    %rcx,%rdx
0x13d0:	b9 03 00 00 00       	mov    $0x3,%ecx
0x13d5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x13d9:	90                   	nop
0x13da:	90                   	nop
0x13db:	e8 00 00 00 00       	callq  0x13e0
0x13e0:	90                   	nop
0x13e1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x13e5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x13e9:	48 8b 3c 24          	mov    (%rsp),%rdi
0x13ed:	ff d0                	callq  *%rax
0x13ef:	90                   	nop
0x13f0:	48 83 ec 10          	sub    $0x10,%rsp
0x13f4:	48 89 04 24          	mov    %rax,(%rsp)
0x13f8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13fc:	41 85 03             	test   %eax,(%r11)
0x13ff:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1403:	e8 00 00 00 00       	callq  0x1408
0x1408:	90                   	nop
0x1409:	48 83 ec 10          	sub    $0x10,%rsp
0x140d:	48 89 04 24          	mov    %rax,(%rsp)
0x1411:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1416:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x141b:	48 8b 14 24          	mov    (%rsp),%rdx
0x141f:	48 8b ca             	mov    %rdx,%rcx
0x1422:	48 8b c7             	mov    %rdi,%rax
0x1425:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1429:	3b f0                	cmp    %eax,%esi
0x142b:	0f 83 b4 00 00 00    	jae    0x14e5
0x1431:	4d 33 db             	xor    %r11,%r11
0x1434:	49 3b cb             	cmp    %r11,%rcx
0x1437:	0f 84 b8 00 00 00    	je     0x14f5
0x143d:	48 8b c7             	mov    %rdi,%rax
0x1440:	48 8b 00             	mov    (%rax),%rax
0x1443:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x1447:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x144b:	4d 33 db             	xor    %r11,%r11
0x144e:	49 3b cb             	cmp    %r11,%rcx
0x1451:	0f 85 0a 00 00 00    	jne    0x1461
0x1457:	bb 00 00 00 00       	mov    $0x0,%ebx
0x145c:	e9 66 00 00 00       	jmpq   0x14c7
0x1461:	48 8b d1             	mov    %rcx,%rdx
0x1464:	48 8b 1a             	mov    (%rdx),%rbx
0x1467:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x146b:	48 3b d0             	cmp    %rax,%rdx
0x146e:	0f 85 0a 00 00 00    	jne    0x147e
0x1474:	bb 01 00 00 00       	mov    $0x1,%ebx
0x1479:	e9 49 00 00 00       	jmpq   0x14c7
0x147e:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x1485:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x1489:	49 8b c0             	mov    %r8,%rax
0x148c:	99                   	cltd   
0x148d:	41 f7 f9             	idiv   %r9d
0x1490:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1494:	03 d0                	add    %eax,%edx
0x1496:	48 8b c3             	mov    %rbx,%rax
0x1499:	48 63 d2             	movslq %edx,%rdx
0x149c:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x14a1:	48 63 c0             	movslq %eax,%rax
0x14a4:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x14a9:	4d 63 c0             	movslq %r8d,%r8
0x14ac:	49 3b c0             	cmp    %r8,%rax
0x14af:	0f 85 0a 00 00 00    	jne    0x14bf
0x14b5:	b8 01 00 00 00       	mov    $0x1,%eax
0x14ba:	e9 05 00 00 00       	jmpq   0x14c4
0x14bf:	b8 00 00 00 00       	mov    $0x0,%eax
0x14c4:	48 8b d8             	mov    %rax,%rbx
0x14c7:	83 fb 00             	cmp    $0x0,%ebx
0x14ca:	0f 85 25 00 00 00    	jne    0x14f5
0x14d0:	48 8b f1             	mov    %rcx,%rsi
0x14d3:	90                   	nop
0x14d4:	90                   	nop
0x14d5:	90                   	nop
0x14d6:	e8 00 00 00 00       	callq  0x14db
0x14db:	90                   	nop
0x14dc:	48 8b f8             	mov    %rax,%rdi
0x14df:	e8 00 00 00 00       	callq  0x14e4
0x14e4:	90                   	nop
0x14e5:	90                   	nop
0x14e6:	e8 00 00 00 00       	callq  0x14eb
0x14eb:	90                   	nop
0x14ec:	48 8b f8             	mov    %rax,%rdi
0x14ef:	e8 00 00 00 00       	callq  0x14f4
0x14f4:	90                   	nop
0x14f5:	48 63 f6             	movslq %esi,%rsi
0x14f8:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x14fd:	48 83 c4 30          	add    $0x30,%rsp
0x1501:	e8 00 00 00 00       	callq  0x1506
0x1506:	90                   	nop
0x1507:	48 83 ec 10          	sub    $0x10,%rsp
0x150b:	48 89 04 24          	mov    %rax,(%rsp)
0x150f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1513:	48 83 c4 10          	add    $0x10,%rsp
0x1517:	4c 89 9d 60 ff ff ff 	mov    %r11,-0xa0(%rbp)
0x151e:	4c 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%r11
0x1525:	48 83 ec 10          	sub    $0x10,%rsp
0x1529:	4c 89 1c 24          	mov    %r11,(%rsp)
0x152d:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x1531:	48 83 ec 10          	sub    $0x10,%rsp
0x1535:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1539:	bf 17 00 00 00       	mov    $0x17,%edi
0x153e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1543:	48 8b 15 46 ea ff ff 	mov    -0x15ba(%rip),%rdx        # 0xffffff90
0x154a:	b9 66 00 00 00       	mov    $0x66,%ecx
0x154f:	48 8b c6             	mov    %rsi,%rax
0x1552:	48 8b 00             	mov    (%rax),%rax
0x1555:	48 63 ff             	movslq %edi,%rdi
0x1558:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x155d:	48 8b fa             	mov    %rdx,%rdi
0x1560:	48 8b d1             	mov    %rcx,%rdx
0x1563:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1568:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x156c:	90                   	nop
0x156d:	90                   	nop
0x156e:	e8 00 00 00 00       	callq  0x1573
0x1573:	90                   	nop
0x1574:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1578:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x157c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1581:	ff d0                	callq  *%rax
0x1583:	90                   	nop
0x1584:	48 83 ec 10          	sub    $0x10,%rsp
0x1588:	48 89 04 24          	mov    %rax,(%rsp)
0x158c:	4c 8b 1d 05 ea ff ff 	mov    -0x15fb(%rip),%r11        # 0xffffff98
0x1593:	48 83 ec 10          	sub    $0x10,%rsp
0x1597:	4c 89 1c 24          	mov    %r11,(%rsp)
0x159b:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x15a1:	48 83 ec 10          	sub    $0x10,%rsp
0x15a5:	44 89 1c 24          	mov    %r11d,(%rsp)
0x15a9:	40 8b 34 24          	rex mov (%rsp),%esi
0x15ad:	48 8b 3d ec e9 ff ff 	mov    -0x1614(%rip),%rdi        # 0xffffffa0
0x15b4:	83 fe 00             	cmp    $0x0,%esi
0x15b7:	0f 8c fb 00 00 00    	jl     0x16b8
0x15bd:	85 07                	test   %eax,(%rdi)
0x15bf:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x15c6:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x15ca:	48 8b 3d d7 e9 ff ff 	mov    -0x1629(%rip),%rdi        # 0xffffffa8
0x15d1:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x15d5:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x15d9:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x15e0:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x15e4:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x15e8:	48 63 c0             	movslq %eax,%rax
0x15eb:	48 63 d6             	movslq %esi,%rdx
0x15ee:	48 0f af c2          	imul   %rdx,%rax
0x15f2:	48 83 c0 18          	add    $0x18,%rax
0x15f6:	48 83 c0 07          	add    $0x7,%rax
0x15fa:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x1601:	00 00 00 
0x1604:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x160b:	ff ff ff 
0x160e:	49 33 d3             	xor    %r11,%rdx
0x1611:	48 23 c2             	and    %rdx,%rax
0x1614:	49 8b d6             	mov    %r14,%rdx
0x1617:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x161b:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x1622:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x1629:	49 8b d0             	mov    %r8,%rdx
0x162c:	48 03 d0             	add    %rax,%rdx
0x162f:	4c 8b d2             	mov    %rdx,%r10
0x1632:	4d 3b d1             	cmp    %r9,%r10
0x1635:	0f 86 1f 00 00 00    	jbe    0x165a
0x163b:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x163f:	48 8b f0             	mov    %rax,%rsi
0x1642:	48 8b d1             	mov    %rcx,%rdx
0x1645:	49 8b c8             	mov    %r8,%rcx
0x1648:	4d 8b c1             	mov    %r9,%r8
0x164b:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x164f:	e8 00 00 00 00       	callq  0x1654
0x1654:	90                   	nop
0x1655:	e9 12 00 00 00       	jmpq   0x166c
0x165a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x165e:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1662:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1669:	49 8b c0             	mov    %r8,%rax
0x166c:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1670:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1674:	e8 00 00 00 00       	callq  0x1679
0x1679:	90                   	nop
0x167a:	90                   	nop
0x167b:	e8 00 00 00 00       	callq  0x1680
0x1680:	90                   	nop
0x1681:	83 f8 00             	cmp    $0x0,%eax
0x1684:	0f 84 40 00 00 00    	je     0x16ca
0x168a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x168e:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1692:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x1696:	85 07                	test   %eax,(%rdi)
0x1698:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x169c:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x16a0:	83 e0 ff             	and    $0xffffffff,%eax
0x16a3:	48 8b f8             	mov    %rax,%rdi
0x16a6:	48 8b f2             	mov    %rdx,%rsi
0x16a9:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x16ad:	e8 00 00 00 00       	callq  0x16b2
0x16b2:	90                   	nop
0x16b3:	e9 12 00 00 00       	jmpq   0x16ca
0x16b8:	48 8b fe             	mov    %rsi,%rdi
0x16bb:	e8 00 00 00 00       	callq  0x16c0
0x16c0:	90                   	nop
0x16c1:	48 8b f8             	mov    %rax,%rdi
0x16c4:	e8 00 00 00 00       	callq  0x16c9
0x16c9:	90                   	nop
0x16ca:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x16ce:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x16d2:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x16d6:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x16da:	48 89 18             	mov    %rbx,(%rax)
0x16dd:	48 89 04 24          	mov    %rax,(%rsp)
0x16e1:	48 83 ec 10          	sub    $0x10,%rsp
0x16e5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x16ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x16ee:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x16f4:	48 83 ec 10          	sub    $0x10,%rsp
0x16f8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x16fc:	48 83 ec 10          	sub    $0x10,%rsp
0x1700:	4c 8b 1d a9 e8 ff ff 	mov    -0x1757(%rip),%r11        # 0xffffffb0
0x1707:	4c 89 1c 24          	mov    %r11,(%rsp)
0x170b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1710:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x1715:	48 8b 14 24          	mov    (%rsp),%rdx
0x1719:	48 8b ca             	mov    %rdx,%rcx
0x171c:	48 8b c7             	mov    %rdi,%rax
0x171f:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1723:	3b f0                	cmp    %eax,%esi
0x1725:	0f 83 b4 00 00 00    	jae    0x17df
0x172b:	4d 33 db             	xor    %r11,%r11
0x172e:	49 3b cb             	cmp    %r11,%rcx
0x1731:	0f 84 b8 00 00 00    	je     0x17ef
0x1737:	48 8b c7             	mov    %rdi,%rax
0x173a:	48 8b 00             	mov    (%rax),%rax
0x173d:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x1741:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x1745:	4d 33 db             	xor    %r11,%r11
0x1748:	49 3b cb             	cmp    %r11,%rcx
0x174b:	0f 85 0a 00 00 00    	jne    0x175b
0x1751:	bb 00 00 00 00       	mov    $0x0,%ebx
0x1756:	e9 66 00 00 00       	jmpq   0x17c1
0x175b:	48 8b d1             	mov    %rcx,%rdx
0x175e:	48 8b 1a             	mov    (%rdx),%rbx
0x1761:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x1765:	48 3b d0             	cmp    %rax,%rdx
0x1768:	0f 85 0a 00 00 00    	jne    0x1778
0x176e:	bb 01 00 00 00       	mov    $0x1,%ebx
0x1773:	e9 49 00 00 00       	jmpq   0x17c1
0x1778:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x177f:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x1783:	49 8b c0             	mov    %r8,%rax
0x1786:	99                   	cltd   
0x1787:	41 f7 f9             	idiv   %r9d
0x178a:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x178e:	03 d0                	add    %eax,%edx
0x1790:	48 8b c3             	mov    %rbx,%rax
0x1793:	48 63 d2             	movslq %edx,%rdx
0x1796:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x179b:	48 63 c0             	movslq %eax,%rax
0x179e:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x17a3:	4d 63 c0             	movslq %r8d,%r8
0x17a6:	49 3b c0             	cmp    %r8,%rax
0x17a9:	0f 85 0a 00 00 00    	jne    0x17b9
0x17af:	b8 01 00 00 00       	mov    $0x1,%eax
0x17b4:	e9 05 00 00 00       	jmpq   0x17be
0x17b9:	b8 00 00 00 00       	mov    $0x0,%eax
0x17be:	48 8b d8             	mov    %rax,%rbx
0x17c1:	83 fb 00             	cmp    $0x0,%ebx
0x17c4:	0f 85 25 00 00 00    	jne    0x17ef
0x17ca:	48 8b f1             	mov    %rcx,%rsi
0x17cd:	90                   	nop
0x17ce:	90                   	nop
0x17cf:	90                   	nop
0x17d0:	e8 00 00 00 00       	callq  0x17d5
0x17d5:	90                   	nop
0x17d6:	48 8b f8             	mov    %rax,%rdi
0x17d9:	e8 00 00 00 00       	callq  0x17de
0x17de:	90                   	nop
0x17df:	90                   	nop
0x17e0:	e8 00 00 00 00       	callq  0x17e5
0x17e5:	90                   	nop
0x17e6:	48 8b f8             	mov    %rax,%rdi
0x17e9:	e8 00 00 00 00       	callq  0x17ee
0x17ee:	90                   	nop
0x17ef:	48 63 f6             	movslq %esi,%rsi
0x17f2:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x17f7:	48 83 c4 30          	add    $0x30,%rsp
0x17fb:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x1800:	41 85 03             	test   %eax,(%r11)
0x1803:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1808:	e8 00 00 00 00       	callq  0x180d
0x180d:	90                   	nop
0x180e:	48 83 ec 10          	sub    $0x10,%rsp
0x1812:	48 89 04 24          	mov    %rax,(%rsp)
0x1816:	4c 8b 1c 24          	mov    (%rsp),%r11
0x181a:	48 83 c4 10          	add    $0x10,%rsp
0x181e:	4c 89 9d 50 ff ff ff 	mov    %r11,-0xb0(%rbp)
0x1825:	4c 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11
0x182c:	48 83 ec 10          	sub    $0x10,%rsp
0x1830:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1834:	4d 33 db             	xor    %r11,%r11
0x1837:	48 83 ec 10          	sub    $0x10,%rsp
0x183b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x183f:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x1845:	48 83 ec 10          	sub    $0x10,%rsp
0x1849:	44 89 1c 24          	mov    %r11d,(%rsp)
0x184d:	40 8b 34 24          	rex mov (%rsp),%esi
0x1851:	48 8b 3d 60 e7 ff ff 	mov    -0x18a0(%rip),%rdi        # 0xffffffb8
0x1858:	83 fe 00             	cmp    $0x0,%esi
0x185b:	0f 8c fb 00 00 00    	jl     0x195c
0x1861:	85 07                	test   %eax,(%rdi)
0x1863:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x186a:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x186e:	48 8b 3d 4b e7 ff ff 	mov    -0x18b5(%rip),%rdi        # 0xffffffc0
0x1875:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x1879:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x187d:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x1884:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x1888:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x188c:	48 63 c0             	movslq %eax,%rax
0x188f:	48 63 d6             	movslq %esi,%rdx
0x1892:	48 0f af c2          	imul   %rdx,%rax
0x1896:	48 83 c0 18          	add    $0x18,%rax
0x189a:	48 83 c0 07          	add    $0x7,%rax
0x189e:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x18a5:	00 00 00 
0x18a8:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x18af:	ff ff ff 
0x18b2:	49 33 d3             	xor    %r11,%rdx
0x18b5:	48 23 c2             	and    %rdx,%rax
0x18b8:	49 8b d6             	mov    %r14,%rdx
0x18bb:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x18bf:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x18c6:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x18cd:	49 8b d0             	mov    %r8,%rdx
0x18d0:	48 03 d0             	add    %rax,%rdx
0x18d3:	4c 8b d2             	mov    %rdx,%r10
0x18d6:	4d 3b d1             	cmp    %r9,%r10
0x18d9:	0f 86 1f 00 00 00    	jbe    0x18fe
0x18df:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x18e3:	48 8b f0             	mov    %rax,%rsi
0x18e6:	48 8b d1             	mov    %rcx,%rdx
0x18e9:	49 8b c8             	mov    %r8,%rcx
0x18ec:	4d 8b c1             	mov    %r9,%r8
0x18ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x18f3:	e8 00 00 00 00       	callq  0x18f8
0x18f8:	90                   	nop
0x18f9:	e9 12 00 00 00       	jmpq   0x1910
0x18fe:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1902:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1906:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x190d:	49 8b c0             	mov    %r8,%rax
0x1910:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1914:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1918:	e8 00 00 00 00       	callq  0x191d
0x191d:	90                   	nop
0x191e:	90                   	nop
0x191f:	e8 00 00 00 00       	callq  0x1924
0x1924:	90                   	nop
0x1925:	83 f8 00             	cmp    $0x0,%eax
0x1928:	0f 84 40 00 00 00    	je     0x196e
0x192e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1932:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1936:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x193a:	85 07                	test   %eax,(%rdi)
0x193c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x1940:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x1944:	83 e0 ff             	and    $0xffffffff,%eax
0x1947:	48 8b f8             	mov    %rax,%rdi
0x194a:	48 8b f2             	mov    %rdx,%rsi
0x194d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1951:	e8 00 00 00 00       	callq  0x1956
0x1956:	90                   	nop
0x1957:	e9 12 00 00 00       	jmpq   0x196e
0x195c:	48 8b fe             	mov    %rsi,%rdi
0x195f:	e8 00 00 00 00       	callq  0x1964
0x1964:	90                   	nop
0x1965:	48 8b f8             	mov    %rax,%rdi
0x1968:	e8 00 00 00 00       	callq  0x196d
0x196d:	90                   	nop
0x196e:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1972:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1976:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x197a:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x197e:	48 89 18             	mov    %rbx,(%rax)
0x1981:	48 89 04 24          	mov    %rax,(%rsp)
0x1985:	48 83 ec 10          	sub    $0x10,%rsp
0x1989:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x198e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1992:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x1998:	48 83 ec 10          	sub    $0x10,%rsp
0x199c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x19a0:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x19a6:	48 83 ec 10          	sub    $0x10,%rsp
0x19aa:	44 89 1c 24          	mov    %r11d,(%rsp)
0x19ae:	40 8b 34 24          	rex mov (%rsp),%esi
0x19b2:	48 8b 3d 0f e6 ff ff 	mov    -0x19f1(%rip),%rdi        # 0xffffffc8
0x19b9:	83 fe 00             	cmp    $0x0,%esi
0x19bc:	0f 8c fb 00 00 00    	jl     0x1abd
0x19c2:	85 07                	test   %eax,(%rdi)
0x19c4:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x19cb:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x19cf:	48 8b 3d fa e5 ff ff 	mov    -0x1a06(%rip),%rdi        # 0xffffffd0
0x19d6:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x19da:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x19de:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x19e5:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x19e9:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x19ed:	48 63 c0             	movslq %eax,%rax
0x19f0:	48 63 d6             	movslq %esi,%rdx
0x19f3:	48 0f af c2          	imul   %rdx,%rax
0x19f7:	48 83 c0 18          	add    $0x18,%rax
0x19fb:	48 83 c0 07          	add    $0x7,%rax
0x19ff:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x1a06:	00 00 00 
0x1a09:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x1a10:	ff ff ff 
0x1a13:	49 33 d3             	xor    %r11,%rdx
0x1a16:	48 23 c2             	and    %rdx,%rax
0x1a19:	49 8b d6             	mov    %r14,%rdx
0x1a1c:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x1a20:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x1a27:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x1a2e:	49 8b d0             	mov    %r8,%rdx
0x1a31:	48 03 d0             	add    %rax,%rdx
0x1a34:	4c 8b d2             	mov    %rdx,%r10
0x1a37:	4d 3b d1             	cmp    %r9,%r10
0x1a3a:	0f 86 1f 00 00 00    	jbe    0x1a5f
0x1a40:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1a44:	48 8b f0             	mov    %rax,%rsi
0x1a47:	48 8b d1             	mov    %rcx,%rdx
0x1a4a:	49 8b c8             	mov    %r8,%rcx
0x1a4d:	4d 8b c1             	mov    %r9,%r8
0x1a50:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1a54:	e8 00 00 00 00       	callq  0x1a59
0x1a59:	90                   	nop
0x1a5a:	e9 12 00 00 00       	jmpq   0x1a71
0x1a5f:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1a63:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x1a67:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x1a6e:	49 8b c0             	mov    %r8,%rax
0x1a71:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x1a75:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1a79:	e8 00 00 00 00       	callq  0x1a7e
0x1a7e:	90                   	nop
0x1a7f:	90                   	nop
0x1a80:	e8 00 00 00 00       	callq  0x1a85
0x1a85:	90                   	nop
0x1a86:	83 f8 00             	cmp    $0x0,%eax
0x1a89:	0f 84 40 00 00 00    	je     0x1acf
0x1a8f:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1a93:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1a97:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x1a9b:	85 07                	test   %eax,(%rdi)
0x1a9d:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x1aa1:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x1aa5:	83 e0 ff             	and    $0xffffffff,%eax
0x1aa8:	48 8b f8             	mov    %rax,%rdi
0x1aab:	48 8b f2             	mov    %rdx,%rsi
0x1aae:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x1ab2:	e8 00 00 00 00       	callq  0x1ab7
0x1ab7:	90                   	nop
0x1ab8:	e9 12 00 00 00       	jmpq   0x1acf
0x1abd:	48 8b fe             	mov    %rsi,%rdi
0x1ac0:	e8 00 00 00 00       	callq  0x1ac5
0x1ac5:	90                   	nop
0x1ac6:	48 8b f8             	mov    %rax,%rdi
0x1ac9:	e8 00 00 00 00       	callq  0x1ace
0x1ace:	90                   	nop
0x1acf:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x1ad3:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x1ad7:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x1adb:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x1adf:	48 89 18             	mov    %rbx,(%rax)
0x1ae2:	48 89 04 24          	mov    %rax,(%rsp)
0x1ae6:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1aeb:	40 8b 74 24 10       	rex mov 0x10(%rsp),%esi
0x1af0:	48 8b 14 24          	mov    (%rsp),%rdx
0x1af4:	48 8b ca             	mov    %rdx,%rcx
0x1af7:	48 8b c7             	mov    %rdi,%rax
0x1afa:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1afe:	3b f0                	cmp    %eax,%esi
0x1b00:	0f 83 b4 00 00 00    	jae    0x1bba
0x1b06:	4d 33 db             	xor    %r11,%r11
0x1b09:	49 3b cb             	cmp    %r11,%rcx
0x1b0c:	0f 84 b8 00 00 00    	je     0x1bca
0x1b12:	48 8b c7             	mov    %rdi,%rax
0x1b15:	48 8b 00             	mov    (%rax),%rax
0x1b18:	48 8b 50 30          	mov    0x30(%rax),%rdx
0x1b1c:	48 8b 42 70          	mov    0x70(%rdx),%rax
0x1b20:	4d 33 db             	xor    %r11,%r11
0x1b23:	49 3b cb             	cmp    %r11,%rcx
0x1b26:	0f 85 0a 00 00 00    	jne    0x1b36
0x1b2c:	bb 00 00 00 00       	mov    $0x0,%ebx
0x1b31:	e9 66 00 00 00       	jmpq   0x1b9c
0x1b36:	48 8b d1             	mov    %rcx,%rdx
0x1b39:	48 8b 1a             	mov    (%rdx),%rbx
0x1b3c:	48 8b 53 30          	mov    0x30(%rbx),%rdx
0x1b40:	48 3b d0             	cmp    %rax,%rdx
0x1b43:	0f 85 0a 00 00 00    	jne    0x1b53
0x1b49:	bb 01 00 00 00       	mov    $0x1,%ebx
0x1b4e:	e9 49 00 00 00       	jmpq   0x1b9c
0x1b53:	4c 63 80 f0 00 00 00 	movslq 0xf0(%rax),%r8
0x1b5a:	4c 63 4b 5c          	movslq 0x5c(%rbx),%r9
0x1b5e:	49 8b c0             	mov    %r8,%rax
0x1b61:	99                   	cltd   
0x1b62:	41 f7 f9             	idiv   %r9d
0x1b65:	48 63 43 58          	movslq 0x58(%rbx),%rax
0x1b69:	03 d0                	add    %eax,%edx
0x1b6b:	48 8b c3             	mov    %rbx,%rax
0x1b6e:	48 63 d2             	movslq %edx,%rdx
0x1b71:	48 63 44 90 18       	movslq 0x18(%rax,%rdx,4),%rax
0x1b76:	48 63 c0             	movslq %eax,%rax
0x1b79:	48 8b 44 c3 18       	mov    0x18(%rbx,%rax,8),%rax
0x1b7e:	4d 63 c0             	movslq %r8d,%r8
0x1b81:	49 3b c0             	cmp    %r8,%rax
0x1b84:	0f 85 0a 00 00 00    	jne    0x1b94
0x1b8a:	b8 01 00 00 00       	mov    $0x1,%eax
0x1b8f:	e9 05 00 00 00       	jmpq   0x1b99
0x1b94:	b8 00 00 00 00       	mov    $0x0,%eax
0x1b99:	48 8b d8             	mov    %rax,%rbx
0x1b9c:	83 fb 00             	cmp    $0x0,%ebx
0x1b9f:	0f 85 25 00 00 00    	jne    0x1bca
0x1ba5:	48 8b f1             	mov    %rcx,%rsi
0x1ba8:	90                   	nop
0x1ba9:	90                   	nop
0x1baa:	90                   	nop
0x1bab:	e8 00 00 00 00       	callq  0x1bb0
0x1bb0:	90                   	nop
0x1bb1:	48 8b f8             	mov    %rax,%rdi
0x1bb4:	e8 00 00 00 00       	callq  0x1bb9
0x1bb9:	90                   	nop
0x1bba:	90                   	nop
0x1bbb:	e8 00 00 00 00       	callq  0x1bc0
0x1bc0:	90                   	nop
0x1bc1:	48 8b f8             	mov    %rax,%rdi
0x1bc4:	e8 00 00 00 00       	callq  0x1bc9
0x1bc9:	90                   	nop
0x1bca:	48 63 f6             	movslq %esi,%rsi
0x1bcd:	48 89 4c f7 18       	mov    %rcx,0x18(%rdi,%rsi,8)
0x1bd2:	48 83 c4 30          	add    $0x30,%rsp
0x1bd6:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x1bdb:	41 85 03             	test   %eax,(%r11)
0x1bde:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x1be3:	e8 00 00 00 00       	callq  0x1be8
0x1be8:	90                   	nop
0x1be9:	48 83 ec 10          	sub    $0x10,%rsp
0x1bed:	48 89 04 24          	mov    %rax,(%rsp)
0x1bf1:	48 83 c4 10          	add    $0x10,%rsp
0x1bf5:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x1bf9:	48 83 ec 10          	sub    $0x10,%rsp
0x1bfd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c01:	bf 2c 00 00 00       	mov    $0x2c,%edi
0x1c06:	48 8b 34 24          	mov    (%rsp),%rsi
0x1c0a:	48 8b 15 c7 e3 ff ff 	mov    -0x1c39(%rip),%rdx        # 0xffffffd8
0x1c11:	b9 73 00 00 00       	mov    $0x73,%ecx
0x1c16:	48 8b c6             	mov    %rsi,%rax
0x1c19:	48 8b 00             	mov    (%rax),%rax
0x1c1c:	48 63 ff             	movslq %edi,%rdi
0x1c1f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1c24:	48 8b fa             	mov    %rdx,%rdi
0x1c27:	48 8b d1             	mov    %rcx,%rdx
0x1c2a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1c2f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1c33:	90                   	nop
0x1c34:	90                   	nop
0x1c35:	e8 00 00 00 00       	callq  0x1c3a
0x1c3a:	90                   	nop
0x1c3b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1c3f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1c43:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1c47:	ff d0                	callq  *%rax
0x1c49:	90                   	nop
0x1c4a:	48 83 ec 10          	sub    $0x10,%rsp
0x1c4e:	48 89 04 24          	mov    %rax,(%rsp)
0x1c52:	48 83 c4 10          	add    $0x10,%rsp
0x1c56:	4c 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11
0x1c5d:	48 83 ec 10          	sub    $0x10,%rsp
0x1c61:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c65:	bf 2c 00 00 00       	mov    $0x2c,%edi
0x1c6a:	48 8b 34 24          	mov    (%rsp),%rsi
0x1c6e:	48 8b 15 6b e3 ff ff 	mov    -0x1c95(%rip),%rdx        # 0xffffffe0
0x1c75:	b9 7c 00 00 00       	mov    $0x7c,%ecx
0x1c7a:	48 8b c6             	mov    %rsi,%rax
0x1c7d:	48 8b 00             	mov    (%rax),%rax
0x1c80:	48 63 ff             	movslq %edi,%rdi
0x1c83:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1c88:	48 8b fa             	mov    %rdx,%rdi
0x1c8b:	48 8b d1             	mov    %rcx,%rdx
0x1c8e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1c93:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1c97:	90                   	nop
0x1c98:	90                   	nop
0x1c99:	e8 00 00 00 00       	callq  0x1c9e
0x1c9e:	90                   	nop
0x1c9f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1ca3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1ca7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1cab:	ff d0                	callq  *%rax
0x1cad:	90                   	nop
0x1cae:	48 83 ec 10          	sub    $0x10,%rsp
0x1cb2:	48 89 04 24          	mov    %rax,(%rsp)
0x1cb6:	48 83 c4 10          	add    $0x10,%rsp
0x1cba:	48 83 c5 40          	add    $0x40,%rbp
0x1cbe:	c9                   	leaveq 
0x1cbf:	c2 10 00             	retq   $0x10

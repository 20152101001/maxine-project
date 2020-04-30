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
0x6e:	48 8b 3d bb fe ff ff 	mov    -0x145(%rip),%rdi        # 0xffffff30
0x75:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x79:	48 8b 35 b8 fe ff ff 	mov    -0x148(%rip),%rsi        # 0xffffff38
0x80:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x84:	49 8b ce             	mov    %r14,%rcx
0x87:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x8b:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x92:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x99:	48 8b d9             	mov    %rcx,%rbx
0x9c:	48 03 da             	add    %rdx,%rbx
0x9f:	4c 8b cb             	mov    %rbx,%r9
0xa2:	4d 3b c8             	cmp    %r8,%r9
0xa5:	0f 86 14 00 00 00    	jbe    0xbf
0xab:	48 8b fe             	mov    %rsi,%rdi
0xae:	48 8b f2             	mov    %rdx,%rsi
0xb1:	48 8b d0             	mov    %rax,%rdx
0xb4:	e8 00 00 00 00       	callq  0xb9
0xb9:	90                   	nop
0xba:	e9 0a 00 00 00       	jmpq   0xc9
0xbf:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xc6:	48 8b c1             	mov    %rcx,%rax
0xc9:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xcd:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd1:	90                   	nop
0xd2:	90                   	nop
0xd3:	90                   	nop
0xd4:	e8 00 00 00 00       	callq  0xd9
0xd9:	90                   	nop
0xda:	90                   	nop
0xdb:	90                   	nop
0xdc:	e8 00 00 00 00       	callq  0xe1
0xe1:	90                   	nop
0xe2:	83 f8 00             	cmp    $0x0,%eax
0xe5:	0f 84 27 00 00 00    	je     0x112
0xeb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xef:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xf3:	85 06                	test   %eax,(%rsi)
0xf5:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xf9:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xfd:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x101:	83 e2 ff             	and    $0xffffffff,%edx
0x104:	48 8b fa             	mov    %rdx,%rdi
0x107:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x10b:	90                   	nop
0x10c:	e8 00 00 00 00       	callq  0x111
0x111:	90                   	nop
0x112:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x116:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x11a:	48 89 38             	mov    %rdi,(%rax)
0x11d:	48 83 ec 10          	sub    $0x10,%rsp
0x121:	48 89 04 24          	mov    %rax,(%rsp)
0x125:	48 83 ec 10          	sub    $0x10,%rsp
0x129:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x12e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x132:	4c 8b 1c 24          	mov    (%rsp),%r11
0x136:	41 85 03             	test   %eax,(%r11)
0x139:	e8 00 00 00 00       	callq  0x13e
0x13e:	90                   	nop
0x13f:	48 83 ec 10          	sub    $0x10,%rsp
0x143:	4c 8b 1d f6 fd ff ff 	mov    -0x20a(%rip),%r11        # 0xffffff40
0x14a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x14e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x152:	41 85 03             	test   %eax,(%r11)
0x155:	48 8b 3c 24          	mov    (%rsp),%rdi
0x159:	e8 00 00 00 00       	callq  0x15e
0x15e:	90                   	nop
0x15f:	48 83 ec 10          	sub    $0x10,%rsp
0x163:	48 89 04 24          	mov    %rax,(%rsp)
0x167:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x16c:	41 85 03             	test   %eax,(%r11)
0x16f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x174:	90                   	nop
0x175:	90                   	nop
0x176:	90                   	nop
0x177:	90                   	nop
0x178:	e8 00 00 00 00       	callq  0x17d
0x17d:	90                   	nop
0x17e:	48 83 ec 10          	sub    $0x10,%rsp
0x182:	48 89 04 24          	mov    %rax,(%rsp)
0x186:	4c 8b 1d bb fd ff ff 	mov    -0x245(%rip),%r11        # 0xffffff48
0x18d:	48 83 ec 10          	sub    $0x10,%rsp
0x191:	4c 89 1c 24          	mov    %r11,(%rsp)
0x195:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x19a:	41 85 03             	test   %eax,(%r11)
0x19d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1a2:	e8 00 00 00 00       	callq  0x1a7
0x1a7:	90                   	nop
0x1a8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ac:	48 89 04 24          	mov    %rax,(%rsp)
0x1b0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b4:	41 85 03             	test   %eax,(%r11)
0x1b7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1bb:	e8 00 00 00 00       	callq  0x1c0
0x1c0:	90                   	nop
0x1c1:	48 83 ec 10          	sub    $0x10,%rsp
0x1c5:	48 89 04 24          	mov    %rax,(%rsp)
0x1c9:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1ce:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1d3:	48 8b 15 76 fd ff ff 	mov    -0x28a(%rip),%rdx        # 0xffffff50
0x1da:	b9 06 00 00 00       	mov    $0x6,%ecx
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
0x214:	41 bb 19 00 00 00    	mov    $0x19,%r11d
0x21a:	48 83 ec 10          	sub    $0x10,%rsp
0x21e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x222:	44 8b 1c 24          	mov    (%rsp),%r11d
0x226:	48 83 c4 10          	add    $0x10,%rsp
0x22a:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x22e:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x232:	48 83 ec 10          	sub    $0x10,%rsp
0x236:	4c 89 1c 24          	mov    %r11,(%rsp)
0x23a:	48 8b 3c 24          	mov    (%rsp),%rdi
0x23e:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x242:	89 04 24             	mov    %eax,(%rsp)
0x245:	44 8b 1c 24          	mov    (%rsp),%r11d
0x249:	b8 00 00 00 00       	mov    $0x0,%eax
0x24e:	48 83 c4 10          	add    $0x10,%rsp
0x252:	44 3b d8             	cmp    %eax,%r11d
0x255:	7f 33                	jg     0x28a
0x257:	48 8b 3d fa fc ff ff 	mov    -0x306(%rip),%rdi        # 0xffffff58
0x25e:	be 0e 00 00 00       	mov    $0xe,%esi
0x263:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x267:	48 8b c8             	mov    %rax,%rcx
0x26a:	48 63 f6             	movslq %esi,%rsi
0x26d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x272:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x278:	0f 8d 07 00 00 00    	jge    0x285
0x27e:	83 c1 01             	add    $0x1,%ecx
0x281:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x285:	e9 99 00 00 00       	jmpq   0x323
0x28a:	48 8b 3d cf fc ff ff 	mov    -0x331(%rip),%rdi        # 0xffffff60
0x291:	be 0f 00 00 00       	mov    $0xf,%esi
0x296:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x29a:	48 8b c8             	mov    %rax,%rcx
0x29d:	48 63 f6             	movslq %esi,%rsi
0x2a0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2a5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2ab:	0f 8d 07 00 00 00    	jge    0x2b8
0x2b1:	83 c1 01             	add    $0x1,%ecx
0x2b4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2b8:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x2bc:	48 83 ec 10          	sub    $0x10,%rsp
0x2c0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2c4:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x2ca:	48 83 ec 10          	sub    $0x10,%rsp
0x2ce:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2d2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2d7:	40 8b 34 24          	rex mov (%rsp),%esi
0x2db:	48 8b c7             	mov    %rdi,%rax
0x2de:	48 63 40 10          	movslq 0x10(%rax),%rax
0x2e2:	3b f0                	cmp    %eax,%esi
0x2e4:	0f 82 0f 00 00 00    	jb     0x2f9
0x2ea:	e8 00 00 00 00       	callq  0x2ef
0x2ef:	90                   	nop
0x2f0:	48 8b f8             	mov    %rax,%rdi
0x2f3:	e8 00 00 00 00       	callq  0x2f8
0x2f8:	90                   	nop
0x2f9:	48 63 f6             	movslq %esi,%rsi
0x2fc:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x301:	48 83 c4 10          	add    $0x10,%rsp
0x305:	48 89 04 24          	mov    %rax,(%rsp)
0x309:	e8 00 00 00 00       	callq  0x30e
0x30e:	90                   	nop
0x30f:	48 83 ec 10          	sub    $0x10,%rsp
0x313:	48 89 04 24          	mov    %rax,(%rsp)
0x317:	44 8b 1c 24          	mov    (%rsp),%r11d
0x31b:	48 83 c4 10          	add    $0x10,%rsp
0x31f:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x323:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x329:	48 83 ec 10          	sub    $0x10,%rsp
0x32d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x331:	44 8b 1c 24          	mov    (%rsp),%r11d
0x335:	48 83 c4 10          	add    $0x10,%rsp
0x339:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x33d:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x341:	48 83 ec 10          	sub    $0x10,%rsp
0x345:	44 89 1c 24          	mov    %r11d,(%rsp)
0x349:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x34d:	48 83 ec 10          	sub    $0x10,%rsp
0x351:	44 89 1c 24          	mov    %r11d,(%rsp)
0x355:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x35a:	8b 04 24             	mov    (%rsp),%eax
0x35d:	48 83 c4 20          	add    $0x20,%rsp
0x361:	44 3b d8             	cmp    %eax,%r11d
0x364:	7c 33                	jl     0x399
0x366:	48 8b 3d fb fb ff ff 	mov    -0x405(%rip),%rdi        # 0xffffff68
0x36d:	be 12 00 00 00       	mov    $0x12,%esi
0x372:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x376:	48 8b c8             	mov    %rax,%rcx
0x379:	48 63 f6             	movslq %esi,%rsi
0x37c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x381:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x387:	0f 8d 07 00 00 00    	jge    0x394
0x38d:	83 c1 01             	add    $0x1,%ecx
0x390:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x394:	e9 59 02 00 00       	jmpq   0x5f2
0x399:	48 8b 3d d0 fb ff ff 	mov    -0x430(%rip),%rdi        # 0xffffff70
0x3a0:	be 13 00 00 00       	mov    $0x13,%esi
0x3a5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x3a9:	48 8b c8             	mov    %rax,%rcx
0x3ac:	48 63 f6             	movslq %esi,%rsi
0x3af:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x3b4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3ba:	0f 8d 07 00 00 00    	jge    0x3c7
0x3c0:	83 c1 01             	add    $0x1,%ecx
0x3c3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3c7:	48 8b 3d aa fb ff ff 	mov    -0x456(%rip),%rdi        # 0xffffff78
0x3ce:	be 18 00 00 00       	mov    $0x18,%esi
0x3d3:	48 63 f6             	movslq %esi,%rsi
0x3d6:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3da:	48 83 ec 10          	sub    $0x10,%rsp
0x3de:	48 89 04 24          	mov    %rax,(%rsp)
0x3e2:	48 8b 3d 97 fb ff ff 	mov    -0x469(%rip),%rdi        # 0xffffff80
0x3e9:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x3ed:	48 8b 35 94 fb ff ff 	mov    -0x46c(%rip),%rsi        # 0xffffff88
0x3f4:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3f8:	49 8b ce             	mov    %r14,%rcx
0x3fb:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x3ff:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x406:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x40d:	48 8b d9             	mov    %rcx,%rbx
0x410:	48 03 da             	add    %rdx,%rbx
0x413:	4c 8b cb             	mov    %rbx,%r9
0x416:	4d 3b c8             	cmp    %r8,%r9
0x419:	0f 86 14 00 00 00    	jbe    0x433
0x41f:	48 8b fe             	mov    %rsi,%rdi
0x422:	48 8b f2             	mov    %rdx,%rsi
0x425:	48 8b d0             	mov    %rax,%rdx
0x428:	e8 00 00 00 00       	callq  0x42d
0x42d:	90                   	nop
0x42e:	e9 0a 00 00 00       	jmpq   0x43d
0x433:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x43a:	48 8b c1             	mov    %rcx,%rax
0x43d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x441:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x445:	90                   	nop
0x446:	90                   	nop
0x447:	90                   	nop
0x448:	e8 00 00 00 00       	callq  0x44d
0x44d:	90                   	nop
0x44e:	90                   	nop
0x44f:	90                   	nop
0x450:	e8 00 00 00 00       	callq  0x455
0x455:	90                   	nop
0x456:	83 f8 00             	cmp    $0x0,%eax
0x459:	0f 84 27 00 00 00    	je     0x486
0x45f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x463:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x467:	85 06                	test   %eax,(%rsi)
0x469:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x46d:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x471:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x475:	83 e2 ff             	and    $0xffffffff,%edx
0x478:	48 8b fa             	mov    %rdx,%rdi
0x47b:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x47f:	90                   	nop
0x480:	e8 00 00 00 00       	callq  0x485
0x485:	90                   	nop
0x486:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x48a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x48e:	48 89 38             	mov    %rdi,(%rax)
0x491:	48 83 ec 10          	sub    $0x10,%rsp
0x495:	48 89 04 24          	mov    %rax,(%rsp)
0x499:	48 83 ec 10          	sub    $0x10,%rsp
0x49d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4a2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4a6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4aa:	41 85 03             	test   %eax,(%r11)
0x4ad:	90                   	nop
0x4ae:	90                   	nop
0x4af:	90                   	nop
0x4b0:	e8 00 00 00 00       	callq  0x4b5
0x4b5:	90                   	nop
0x4b6:	4c 8b 1d d3 fa ff ff 	mov    -0x52d(%rip),%r11        # 0xffffff90
0x4bd:	48 83 ec 10          	sub    $0x10,%rsp
0x4c1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4c5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4ca:	41 85 03             	test   %eax,(%r11)
0x4cd:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4d2:	e8 00 00 00 00       	callq  0x4d7
0x4d7:	90                   	nop
0x4d8:	48 83 ec 10          	sub    $0x10,%rsp
0x4dc:	48 89 04 24          	mov    %rax,(%rsp)
0x4e0:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x4e4:	48 83 ec 10          	sub    $0x10,%rsp
0x4e8:	44 89 1c 24          	mov    %r11d,(%rsp)
0x4ec:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4f1:	41 85 03             	test   %eax,(%r11)
0x4f4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4f9:	e8 00 00 00 00       	callq  0x4fe
0x4fe:	90                   	nop
0x4ff:	48 83 ec 10          	sub    $0x10,%rsp
0x503:	48 89 04 24          	mov    %rax,(%rsp)
0x507:	4c 8b 1d 8a fa ff ff 	mov    -0x576(%rip),%r11        # 0xffffff98
0x50e:	48 83 ec 10          	sub    $0x10,%rsp
0x512:	4c 89 1c 24          	mov    %r11,(%rsp)
0x516:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x51b:	41 85 03             	test   %eax,(%r11)
0x51e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x523:	e8 00 00 00 00       	callq  0x528
0x528:	90                   	nop
0x529:	48 83 ec 10          	sub    $0x10,%rsp
0x52d:	48 89 04 24          	mov    %rax,(%rsp)
0x531:	4c 8b 1c 24          	mov    (%rsp),%r11
0x535:	41 85 03             	test   %eax,(%r11)
0x538:	48 8b 3c 24          	mov    (%rsp),%rdi
0x53c:	90                   	nop
0x53d:	90                   	nop
0x53e:	90                   	nop
0x53f:	90                   	nop
0x540:	e8 00 00 00 00       	callq  0x545
0x545:	90                   	nop
0x546:	48 83 ec 10          	sub    $0x10,%rsp
0x54a:	48 89 04 24          	mov    %rax,(%rsp)
0x54e:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x553:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x558:	48 8b 15 41 fa ff ff 	mov    -0x5bf(%rip),%rdx        # 0xffffffa0
0x55f:	b9 1a 00 00 00       	mov    $0x1a,%ecx
0x564:	48 8b c6             	mov    %rsi,%rax
0x567:	48 8b 00             	mov    (%rax),%rax
0x56a:	48 63 ff             	movslq %edi,%rdi
0x56d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x572:	48 8b fa             	mov    %rdx,%rdi
0x575:	48 8b d1             	mov    %rcx,%rdx
0x578:	b9 03 00 00 00       	mov    $0x3,%ecx
0x57d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x581:	90                   	nop
0x582:	90                   	nop
0x583:	e8 00 00 00 00       	callq  0x588
0x588:	90                   	nop
0x589:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x58d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x591:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x596:	ff d0                	callq  *%rax
0x598:	90                   	nop
0x599:	e8 00 00 00 00       	callq  0x59e
0x59e:	90                   	nop
0x59f:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x5a3:	41 83 c3 01          	add    $0x1,%r11d
0x5a7:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x5ab:	48 8b 3d f6 f9 ff ff 	mov    -0x60a(%rip),%rdi        # 0xffffffa8
0x5b2:	be 23 00 00 00       	mov    $0x23,%esi
0x5b7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5bb:	48 8b c8             	mov    %rax,%rcx
0x5be:	48 63 f6             	movslq %esi,%rsi
0x5c1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5c6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5cc:	0f 8d 07 00 00 00    	jge    0x5d9
0x5d2:	83 c1 01             	add    $0x1,%ecx
0x5d5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5d9:	48 8b 3d d0 f9 ff ff 	mov    -0x630(%rip),%rdi        # 0xffffffb0
0x5e0:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x5e4:	83 e8 01             	sub    $0x1,%eax
0x5e7:	89 47 30             	mov    %eax,0x30(%rdi)
0x5ea:	4d 8b 36             	mov    (%r14),%r14
0x5ed:	e9 4b fd ff ff       	jmpq   0x33d
0x5f2:	48 8b 3d bf f9 ff ff 	mov    -0x641(%rip),%rdi        # 0xffffffb8
0x5f9:	be 18 00 00 00       	mov    $0x18,%esi
0x5fe:	48 63 f6             	movslq %esi,%rsi
0x601:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x605:	48 83 ec 10          	sub    $0x10,%rsp
0x609:	48 89 04 24          	mov    %rax,(%rsp)
0x60d:	48 8b 3d ac f9 ff ff 	mov    -0x654(%rip),%rdi        # 0xffffffc0
0x614:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x618:	48 8b 35 a9 f9 ff ff 	mov    -0x657(%rip),%rsi        # 0xffffffc8
0x61f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x623:	49 8b ce             	mov    %r14,%rcx
0x626:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x62a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x631:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x638:	48 8b d9             	mov    %rcx,%rbx
0x63b:	48 03 da             	add    %rdx,%rbx
0x63e:	4c 8b cb             	mov    %rbx,%r9
0x641:	4d 3b c8             	cmp    %r8,%r9
0x644:	0f 86 14 00 00 00    	jbe    0x65e
0x64a:	48 8b fe             	mov    %rsi,%rdi
0x64d:	48 8b f2             	mov    %rdx,%rsi
0x650:	48 8b d0             	mov    %rax,%rdx
0x653:	e8 00 00 00 00       	callq  0x658
0x658:	90                   	nop
0x659:	e9 0a 00 00 00       	jmpq   0x668
0x65e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x665:	48 8b c1             	mov    %rcx,%rax
0x668:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x66c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x670:	90                   	nop
0x671:	90                   	nop
0x672:	90                   	nop
0x673:	e8 00 00 00 00       	callq  0x678
0x678:	90                   	nop
0x679:	90                   	nop
0x67a:	90                   	nop
0x67b:	e8 00 00 00 00       	callq  0x680
0x680:	90                   	nop
0x681:	83 f8 00             	cmp    $0x0,%eax
0x684:	0f 84 27 00 00 00    	je     0x6b1
0x68a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x68e:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x692:	85 06                	test   %eax,(%rsi)
0x694:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x698:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x69c:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x6a0:	83 e2 ff             	and    $0xffffffff,%edx
0x6a3:	48 8b fa             	mov    %rdx,%rdi
0x6a6:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x6aa:	90                   	nop
0x6ab:	e8 00 00 00 00       	callq  0x6b0
0x6b0:	90                   	nop
0x6b1:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x6b5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6b9:	48 89 38             	mov    %rdi,(%rax)
0x6bc:	48 83 ec 10          	sub    $0x10,%rsp
0x6c0:	48 89 04 24          	mov    %rax,(%rsp)
0x6c4:	48 83 ec 10          	sub    $0x10,%rsp
0x6c8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6cd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6d1:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6d5:	41 85 03             	test   %eax,(%r11)
0x6d8:	e8 00 00 00 00       	callq  0x6dd
0x6dd:	90                   	nop
0x6de:	48 83 ec 10          	sub    $0x10,%rsp
0x6e2:	4c 8b 1d e7 f8 ff ff 	mov    -0x719(%rip),%r11        # 0xffffffd0
0x6e9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6ed:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6f1:	41 85 03             	test   %eax,(%r11)
0x6f4:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6f8:	e8 00 00 00 00       	callq  0x6fd
0x6fd:	90                   	nop
0x6fe:	48 83 ec 10          	sub    $0x10,%rsp
0x702:	48 89 04 24          	mov    %rax,(%rsp)
0x706:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x70b:	41 85 03             	test   %eax,(%r11)
0x70e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x713:	e8 00 00 00 00       	callq  0x718
0x718:	90                   	nop
0x719:	48 83 ec 10          	sub    $0x10,%rsp
0x71d:	48 89 04 24          	mov    %rax,(%rsp)
0x721:	4c 8b 1d b0 f8 ff ff 	mov    -0x750(%rip),%r11        # 0xffffffd8
0x728:	48 83 ec 10          	sub    $0x10,%rsp
0x72c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x730:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x735:	41 85 03             	test   %eax,(%r11)
0x738:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x73d:	90                   	nop
0x73e:	90                   	nop
0x73f:	90                   	nop
0x740:	e8 00 00 00 00       	callq  0x745
0x745:	90                   	nop
0x746:	48 83 ec 10          	sub    $0x10,%rsp
0x74a:	48 89 04 24          	mov    %rax,(%rsp)
0x74e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x752:	41 85 03             	test   %eax,(%r11)
0x755:	48 8b 3c 24          	mov    (%rsp),%rdi
0x759:	e8 00 00 00 00       	callq  0x75e
0x75e:	90                   	nop
0x75f:	48 83 ec 10          	sub    $0x10,%rsp
0x763:	48 89 04 24          	mov    %rax,(%rsp)
0x767:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x76c:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x771:	48 8b 15 68 f8 ff ff 	mov    -0x798(%rip),%rdx        # 0xffffffe0
0x778:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0x77d:	48 8b c6             	mov    %rsi,%rax
0x780:	48 8b 00             	mov    (%rax),%rax
0x783:	48 63 ff             	movslq %edi,%rdi
0x786:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x78b:	48 8b fa             	mov    %rdx,%rdi
0x78e:	48 8b d1             	mov    %rcx,%rdx
0x791:	b9 03 00 00 00       	mov    $0x3,%ecx
0x796:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x79a:	90                   	nop
0x79b:	90                   	nop
0x79c:	e8 00 00 00 00       	callq  0x7a1
0x7a1:	90                   	nop
0x7a2:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x7a6:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x7aa:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x7af:	ff d0                	callq  *%rax
0x7b1:	90                   	nop
0x7b2:	48 83 c5 40          	add    $0x40,%rbp
0x7b6:	c9                   	leaveq 
0x7b7:	c2 10 00             	retq   $0x10

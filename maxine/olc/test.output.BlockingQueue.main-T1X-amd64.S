0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 80 00 00          	enterq $0x80,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 88 e0 ff 	mov    %rax,-0x1f78(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 49 ff ff ff 	mov    %r11,-0xb7(%rip)        # 0xffffff70
0x27:	48 8b 3d 4a ff ff ff 	mov    -0xb6(%rip),%rdi        # 0xffffff78
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
0x53:	41 bb 05 00 00 00    	mov    $0x5,%r11d
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
0x96:	48 8b 3d e3 fe ff ff 	mov    -0x11d(%rip),%rdi        # 0xffffff80
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
0xc9:	48 8b 3d b8 fe ff ff 	mov    -0x148(%rip),%rdi        # 0xffffff88
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
0x162:	48 8b 3d 27 fe ff ff 	mov    -0x1d9(%rip),%rdi        # 0xffffff90
0x169:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x16d:	48 8b 35 24 fe ff ff 	mov    -0x1dc(%rip),%rsi        # 0xffffff98
0x174:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x178:	49 8b ce             	mov    %r14,%rcx
0x17b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x17f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x186:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x18d:	48 8b d9             	mov    %rcx,%rbx
0x190:	48 03 da             	add    %rdx,%rbx
0x193:	4c 8b cb             	mov    %rbx,%r9
0x196:	4d 3b c8             	cmp    %r8,%r9
0x199:	0f 86 14 00 00 00    	jbe    0x1b3
0x19f:	48 8b fe             	mov    %rsi,%rdi
0x1a2:	48 8b f2             	mov    %rdx,%rsi
0x1a5:	48 8b d0             	mov    %rax,%rdx
0x1a8:	e8 00 00 00 00       	callq  0x1ad
0x1ad:	90                   	nop
0x1ae:	e9 0a 00 00 00       	jmpq   0x1bd
0x1b3:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1ba:	48 8b c1             	mov    %rcx,%rax
0x1bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1c1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1c5:	90                   	nop
0x1c6:	90                   	nop
0x1c7:	90                   	nop
0x1c8:	e8 00 00 00 00       	callq  0x1cd
0x1cd:	90                   	nop
0x1ce:	90                   	nop
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	83 f8 00             	cmp    $0x0,%eax
0x1d9:	0f 84 27 00 00 00    	je     0x206
0x1df:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1e7:	85 06                	test   %eax,(%rsi)
0x1e9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1ed:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1f1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1f5:	83 e2 ff             	and    $0xffffffff,%edx
0x1f8:	48 8b fa             	mov    %rdx,%rdi
0x1fb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1ff:	90                   	nop
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x20a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x20e:	48 89 38             	mov    %rdi,(%rax)
0x211:	48 83 ec 10          	sub    $0x10,%rsp
0x215:	48 89 04 24          	mov    %rax,(%rsp)
0x219:	48 83 ec 10          	sub    $0x10,%rsp
0x21d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x222:	4c 89 1c 24          	mov    %r11,(%rsp)
0x226:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x22a:	48 83 ec 10          	sub    $0x10,%rsp
0x22e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x232:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x237:	41 85 03             	test   %eax,(%r11)
0x23a:	e8 00 00 00 00       	callq  0x23f
0x23f:	90                   	nop
0x240:	4c 8b 1c 24          	mov    (%rsp),%r11
0x244:	48 83 c4 10          	add    $0x10,%rsp
0x248:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x24c:	48 8b 3d 4d fd ff ff 	mov    -0x2b3(%rip),%rdi        # 0xffffffa0
0x253:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x257:	48 8b 35 4a fd ff ff 	mov    -0x2b6(%rip),%rsi        # 0xffffffa8
0x25e:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x262:	49 8b ce             	mov    %r14,%rcx
0x265:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x269:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x270:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x277:	48 8b d9             	mov    %rcx,%rbx
0x27a:	48 03 da             	add    %rdx,%rbx
0x27d:	4c 8b cb             	mov    %rbx,%r9
0x280:	4d 3b c8             	cmp    %r8,%r9
0x283:	0f 86 14 00 00 00    	jbe    0x29d
0x289:	48 8b fe             	mov    %rsi,%rdi
0x28c:	48 8b f2             	mov    %rdx,%rsi
0x28f:	48 8b d0             	mov    %rax,%rdx
0x292:	e8 00 00 00 00       	callq  0x297
0x297:	90                   	nop
0x298:	e9 0a 00 00 00       	jmpq   0x2a7
0x29d:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x2a4:	48 8b c1             	mov    %rcx,%rax
0x2a7:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x2ab:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2af:	90                   	nop
0x2b0:	90                   	nop
0x2b1:	90                   	nop
0x2b2:	e8 00 00 00 00       	callq  0x2b7
0x2b7:	90                   	nop
0x2b8:	90                   	nop
0x2b9:	90                   	nop
0x2ba:	e8 00 00 00 00       	callq  0x2bf
0x2bf:	90                   	nop
0x2c0:	83 f8 00             	cmp    $0x0,%eax
0x2c3:	0f 84 27 00 00 00    	je     0x2f0
0x2c9:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2cd:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x2d1:	85 06                	test   %eax,(%rsi)
0x2d3:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x2d7:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x2db:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x2df:	83 e2 ff             	and    $0xffffffff,%edx
0x2e2:	48 8b fa             	mov    %rdx,%rdi
0x2e5:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x2e9:	90                   	nop
0x2ea:	e8 00 00 00 00       	callq  0x2ef
0x2ef:	90                   	nop
0x2f0:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x2f4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x2f8:	48 89 38             	mov    %rdi,(%rax)
0x2fb:	48 83 ec 10          	sub    $0x10,%rsp
0x2ff:	48 89 04 24          	mov    %rax,(%rsp)
0x303:	48 83 ec 10          	sub    $0x10,%rsp
0x307:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x30c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x310:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x314:	48 83 ec 10          	sub    $0x10,%rsp
0x318:	4c 89 1c 24          	mov    %r11,(%rsp)
0x31c:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x320:	48 83 ec 10          	sub    $0x10,%rsp
0x324:	44 89 1c 24          	mov    %r11d,(%rsp)
0x328:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x32d:	41 85 03             	test   %eax,(%r11)
0x330:	e8 00 00 00 00       	callq  0x335
0x335:	90                   	nop
0x336:	4c 8b 1c 24          	mov    (%rsp),%r11
0x33a:	48 83 c4 10          	add    $0x10,%rsp
0x33e:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x342:	48 8b 3d 67 fc ff ff 	mov    -0x399(%rip),%rdi        # 0xffffffb0
0x349:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x34d:	48 8b 35 64 fc ff ff 	mov    -0x39c(%rip),%rsi        # 0xffffffb8
0x354:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x358:	49 8b ce             	mov    %r14,%rcx
0x35b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x35f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x366:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x36d:	48 8b d9             	mov    %rcx,%rbx
0x370:	48 03 da             	add    %rdx,%rbx
0x373:	4c 8b cb             	mov    %rbx,%r9
0x376:	4d 3b c8             	cmp    %r8,%r9
0x379:	0f 86 14 00 00 00    	jbe    0x393
0x37f:	48 8b fe             	mov    %rsi,%rdi
0x382:	48 8b f2             	mov    %rdx,%rsi
0x385:	48 8b d0             	mov    %rax,%rdx
0x388:	e8 00 00 00 00       	callq  0x38d
0x38d:	90                   	nop
0x38e:	e9 0a 00 00 00       	jmpq   0x39d
0x393:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x39a:	48 8b c1             	mov    %rcx,%rax
0x39d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x3a1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3a5:	90                   	nop
0x3a6:	90                   	nop
0x3a7:	90                   	nop
0x3a8:	e8 00 00 00 00       	callq  0x3ad
0x3ad:	90                   	nop
0x3ae:	90                   	nop
0x3af:	90                   	nop
0x3b0:	e8 00 00 00 00       	callq  0x3b5
0x3b5:	90                   	nop
0x3b6:	83 f8 00             	cmp    $0x0,%eax
0x3b9:	0f 84 27 00 00 00    	je     0x3e6
0x3bf:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3c3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x3c7:	85 06                	test   %eax,(%rsi)
0x3c9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x3cd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x3d1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x3d5:	83 e2 ff             	and    $0xffffffff,%edx
0x3d8:	48 8b fa             	mov    %rdx,%rdi
0x3db:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x3df:	90                   	nop
0x3e0:	e8 00 00 00 00       	callq  0x3e5
0x3e5:	90                   	nop
0x3e6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x3ea:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x3ee:	48 89 38             	mov    %rdi,(%rax)
0x3f1:	48 83 ec 10          	sub    $0x10,%rsp
0x3f5:	48 89 04 24          	mov    %rax,(%rsp)
0x3f9:	48 83 ec 10          	sub    $0x10,%rsp
0x3fd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x402:	4c 89 1c 24          	mov    %r11,(%rsp)
0x406:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x40a:	48 83 ec 10          	sub    $0x10,%rsp
0x40e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x412:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x416:	48 83 ec 10          	sub    $0x10,%rsp
0x41a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x41e:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x423:	41 85 03             	test   %eax,(%r11)
0x426:	90                   	nop
0x427:	90                   	nop
0x428:	e8 00 00 00 00       	callq  0x42d
0x42d:	90                   	nop
0x42e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x432:	48 83 c4 10          	add    $0x10,%rsp
0x436:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x43a:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x43e:	48 83 ec 10          	sub    $0x10,%rsp
0x442:	4c 89 1c 24          	mov    %r11,(%rsp)
0x446:	bf 17 00 00 00       	mov    $0x17,%edi
0x44b:	48 8b 34 24          	mov    (%rsp),%rsi
0x44f:	48 8b 15 6a fb ff ff 	mov    -0x496(%rip),%rdx        # 0xffffffc0
0x456:	b9 08 00 00 00       	mov    $0x8,%ecx
0x45b:	48 8b c6             	mov    %rsi,%rax
0x45e:	48 8b 00             	mov    (%rax),%rax
0x461:	48 63 ff             	movslq %edi,%rdi
0x464:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x469:	48 8b fa             	mov    %rdx,%rdi
0x46c:	48 8b d1             	mov    %rcx,%rdx
0x46f:	b9 03 00 00 00       	mov    $0x3,%ecx
0x474:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x478:	90                   	nop
0x479:	90                   	nop
0x47a:	e8 00 00 00 00       	callq  0x47f
0x47f:	90                   	nop
0x480:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x484:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x488:	48 8b 3c 24          	mov    (%rsp),%rdi
0x48c:	ff d0                	callq  *%rax
0x48e:	90                   	nop
0x48f:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x493:	48 83 ec 10          	sub    $0x10,%rsp
0x497:	4c 89 1c 24          	mov    %r11,(%rsp)
0x49b:	bf 17 00 00 00       	mov    $0x17,%edi
0x4a0:	48 8b 34 24          	mov    (%rsp),%rsi
0x4a4:	48 8b 15 1d fb ff ff 	mov    -0x4e3(%rip),%rdx        # 0xffffffc8
0x4ab:	b9 11 00 00 00       	mov    $0x11,%ecx
0x4b0:	48 8b c6             	mov    %rsi,%rax
0x4b3:	48 8b 00             	mov    (%rax),%rax
0x4b6:	48 63 ff             	movslq %edi,%rdi
0x4b9:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4be:	48 8b fa             	mov    %rdx,%rdi
0x4c1:	48 8b d1             	mov    %rcx,%rdx
0x4c4:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4c9:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4cd:	90                   	nop
0x4ce:	90                   	nop
0x4cf:	e8 00 00 00 00       	callq  0x4d4
0x4d4:	90                   	nop
0x4d5:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4d9:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4dd:	48 8b 3c 24          	mov    (%rsp),%rdi
0x4e1:	ff d0                	callq  *%rax
0x4e3:	90                   	nop
0x4e4:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x4e8:	48 83 ec 10          	sub    $0x10,%rsp
0x4ec:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4f0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4f4:	41 85 03             	test   %eax,(%r11)
0x4f7:	48 8b 3c 24          	mov    (%rsp),%rdi
0x4fb:	e8 00 00 00 00       	callq  0x500
0x500:	90                   	nop
0x501:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x505:	48 83 ec 10          	sub    $0x10,%rsp
0x509:	4c 89 1c 24          	mov    %r11,(%rsp)
0x50d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x511:	41 85 03             	test   %eax,(%r11)
0x514:	48 8b 3c 24          	mov    (%rsp),%rdi
0x518:	e8 00 00 00 00       	callq  0x51d
0x51d:	90                   	nop
0x51e:	48 8b 3d ab fa ff ff 	mov    -0x555(%rip),%rdi        # 0xffffffd0
0x525:	be 18 00 00 00       	mov    $0x18,%esi
0x52a:	48 63 f6             	movslq %esi,%rsi
0x52d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x531:	48 83 ec 10          	sub    $0x10,%rsp
0x535:	48 89 04 24          	mov    %rax,(%rsp)
0x539:	4c 8b 1d 98 fa ff ff 	mov    -0x568(%rip),%r11        # 0xffffffd8
0x540:	48 83 ec 10          	sub    $0x10,%rsp
0x544:	4c 89 1c 24          	mov    %r11,(%rsp)
0x548:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x54d:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x552:	48 8b 15 87 fa ff ff 	mov    -0x579(%rip),%rdx        # 0xffffffe0
0x559:	b9 1c 00 00 00       	mov    $0x1c,%ecx
0x55e:	48 8b c6             	mov    %rsi,%rax
0x561:	48 8b 00             	mov    (%rax),%rax
0x564:	48 63 ff             	movslq %edi,%rdi
0x567:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x56c:	48 8b fa             	mov    %rdx,%rdi
0x56f:	48 8b d1             	mov    %rcx,%rdx
0x572:	b9 03 00 00 00       	mov    $0x3,%ecx
0x577:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x57b:	90                   	nop
0x57c:	90                   	nop
0x57d:	e8 00 00 00 00       	callq  0x582
0x582:	90                   	nop
0x583:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x587:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x58b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x590:	ff d0                	callq  *%rax
0x592:	90                   	nop
0x593:	48 83 c5 40          	add    $0x40,%rbp
0x597:	c9                   	leaveq 
0x598:	c2 10 00             	retq   $0x10

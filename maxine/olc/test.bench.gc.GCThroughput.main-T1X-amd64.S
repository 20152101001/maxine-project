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
0x20:	4c 89 1d 59 fe ff ff 	mov    %r11,-0x1a7(%rip)        # 0xfffffe80
0x27:	48 8b 3d 5a fe ff ff 	mov    -0x1a6(%rip),%rdi        # 0xfffffe88
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
0x53:	48 8b 3d 36 fe ff ff 	mov    -0x1ca(%rip),%rdi        # 0xfffffe90
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 33 fe ff ff 	mov    -0x1cd(%rip),%rsi        # 0xfffffe98
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
0x117:	49 bb d9 22 07 00 00 	movabs $0x722d9,%r11
0x11e:	00 00 00 
0x121:	48 83 ec 20          	sub    $0x20,%rsp
0x125:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x12a:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x12f:	41 85 03             	test   %eax,(%r11)
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13c:	48 83 c4 10          	add    $0x10,%rsp
0x140:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x144:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x14a:	48 83 ec 10          	sub    $0x10,%rsp
0x14e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x152:	44 8b 1c 24          	mov    (%rsp),%r11d
0x156:	48 83 c4 10          	add    $0x10,%rsp
0x15a:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x15e:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x162:	48 83 ec 10          	sub    $0x10,%rsp
0x166:	44 89 1c 24          	mov    %r11d,(%rsp)
0x16a:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x16e:	48 83 ec 10          	sub    $0x10,%rsp
0x172:	4c 89 1c 24          	mov    %r11,(%rsp)
0x176:	48 8b 3c 24          	mov    (%rsp),%rdi
0x17a:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x17e:	89 04 24             	mov    %eax,(%rsp)
0x181:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x186:	8b 04 24             	mov    (%rsp),%eax
0x189:	48 83 c4 20          	add    $0x20,%rsp
0x18d:	44 3b d8             	cmp    %eax,%r11d
0x190:	7c 33                	jl     0x1c5
0x192:	48 8b 3d 07 fd ff ff 	mov    -0x2f9(%rip),%rdi        # 0xfffffea0
0x199:	be 01 00 00 00       	mov    $0x1,%esi
0x19e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1a2:	48 8b c8             	mov    %rax,%rcx
0x1a5:	48 63 f6             	movslq %esi,%rsi
0x1a8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1ad:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1b3:	0f 8d 07 00 00 00    	jge    0x1c0
0x1b9:	83 c1 01             	add    $0x1,%ecx
0x1bc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1c0:	e9 6d 03 00 00       	jmpq   0x532
0x1c5:	48 8b 3d dc fc ff ff 	mov    -0x324(%rip),%rdi        # 0xfffffea8
0x1cc:	be 02 00 00 00       	mov    $0x2,%esi
0x1d1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1d5:	48 8b c8             	mov    %rax,%rcx
0x1d8:	48 63 f6             	movslq %esi,%rsi
0x1db:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1e0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1e6:	0f 8d 07 00 00 00    	jge    0x1f3
0x1ec:	83 c1 01             	add    $0x1,%ecx
0x1ef:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1f3:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x1f7:	48 83 ec 10          	sub    $0x10,%rsp
0x1fb:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ff:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x203:	48 83 ec 10          	sub    $0x10,%rsp
0x207:	44 89 1c 24          	mov    %r11d,(%rsp)
0x20b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x210:	40 8b 34 24          	rex mov (%rsp),%esi
0x214:	48 8b c7             	mov    %rdi,%rax
0x217:	48 63 40 10          	movslq 0x10(%rax),%rax
0x21b:	3b f0                	cmp    %eax,%esi
0x21d:	0f 82 0f 00 00 00    	jb     0x232
0x223:	e8 00 00 00 00       	callq  0x228
0x228:	90                   	nop
0x229:	48 8b f8             	mov    %rax,%rdi
0x22c:	e8 00 00 00 00       	callq  0x231
0x231:	90                   	nop
0x232:	48 63 f6             	movslq %esi,%rsi
0x235:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x23a:	48 83 c4 10          	add    $0x10,%rsp
0x23e:	48 89 04 24          	mov    %rax,(%rsp)
0x242:	4c 8b 1c 24          	mov    (%rsp),%r11
0x246:	48 83 c4 10          	add    $0x10,%rsp
0x24a:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x24e:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x252:	48 83 ec 10          	sub    $0x10,%rsp
0x256:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25a:	4c 8b 1d 4f fc ff ff 	mov    -0x3b1(%rip),%r11        # 0xfffffeb0
0x261:	48 83 ec 10          	sub    $0x10,%rsp
0x265:	4c 89 1c 24          	mov    %r11,(%rsp)
0x269:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x26e:	41 85 03             	test   %eax,(%r11)
0x271:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x276:	90                   	nop
0x277:	90                   	nop
0x278:	e8 00 00 00 00       	callq  0x27d
0x27d:	90                   	nop
0x27e:	48 83 ec 10          	sub    $0x10,%rsp
0x282:	48 89 04 24          	mov    %rax,(%rsp)
0x286:	44 8b 1c 24          	mov    (%rsp),%r11d
0x28a:	b8 00 00 00 00       	mov    $0x0,%eax
0x28f:	48 83 c4 10          	add    $0x10,%rsp
0x293:	44 3b d8             	cmp    %eax,%r11d
0x296:	75 33                	jne    0x2cb
0x298:	48 8b 3d 19 fc ff ff 	mov    -0x3e7(%rip),%rdi        # 0xfffffeb8
0x29f:	be 05 00 00 00       	mov    $0x5,%esi
0x2a4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2a8:	48 8b c8             	mov    %rax,%rcx
0x2ab:	48 63 f6             	movslq %esi,%rsi
0x2ae:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2b3:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2b9:	0f 8d 07 00 00 00    	jge    0x2c6
0x2bf:	83 c1 01             	add    $0x1,%ecx
0x2c2:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2c6:	e9 e7 00 00 00       	jmpq   0x3b2
0x2cb:	48 8b 3d ee fb ff ff 	mov    -0x412(%rip),%rdi        # 0xfffffec0
0x2d2:	be 06 00 00 00       	mov    $0x6,%esi
0x2d7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2db:	48 8b c8             	mov    %rax,%rcx
0x2de:	48 63 f6             	movslq %esi,%rsi
0x2e1:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2e6:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2ec:	0f 8d 07 00 00 00    	jge    0x2f9
0x2f2:	83 c1 01             	add    $0x1,%ecx
0x2f5:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2f9:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x2fd:	48 83 ec 10          	sub    $0x10,%rsp
0x301:	4c 89 1c 24          	mov    %r11,(%rsp)
0x305:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x309:	41 83 c3 01          	add    $0x1,%r11d
0x30d:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x311:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x315:	48 83 ec 10          	sub    $0x10,%rsp
0x319:	44 89 1c 24          	mov    %r11d,(%rsp)
0x31d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x322:	40 8b 34 24          	rex mov (%rsp),%esi
0x326:	48 8b c7             	mov    %rdi,%rax
0x329:	48 63 40 10          	movslq 0x10(%rax),%rax
0x32d:	3b f0                	cmp    %eax,%esi
0x32f:	0f 82 0f 00 00 00    	jb     0x344
0x335:	e8 00 00 00 00       	callq  0x33a
0x33a:	90                   	nop
0x33b:	48 8b f8             	mov    %rax,%rdi
0x33e:	e8 00 00 00 00       	callq  0x343
0x343:	90                   	nop
0x344:	48 63 f6             	movslq %esi,%rsi
0x347:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x34c:	48 83 c4 10          	add    $0x10,%rsp
0x350:	48 89 04 24          	mov    %rax,(%rsp)
0x354:	90                   	nop
0x355:	90                   	nop
0x356:	90                   	nop
0x357:	90                   	nop
0x358:	e8 00 00 00 00       	callq  0x35d
0x35d:	90                   	nop
0x35e:	48 83 ec 10          	sub    $0x10,%rsp
0x362:	48 89 04 24          	mov    %rax,(%rsp)
0x366:	8b 14 24             	mov    (%rsp),%edx
0x369:	48 8b 3d 58 fb ff ff 	mov    -0x4a8(%rip),%rdi        # 0xfffffec8
0x370:	be 20 00 00 00       	mov    $0x20,%esi
0x375:	48 63 f6             	movslq %esi,%rsi
0x378:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x37b:	48 83 c4 10          	add    $0x10,%rsp
0x37f:	48 8b 3d 4a fb ff ff 	mov    -0x4b6(%rip),%rdi        # 0xfffffed0
0x386:	be 09 00 00 00       	mov    $0x9,%esi
0x38b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x38f:	48 8b c8             	mov    %rax,%rcx
0x392:	48 63 f6             	movslq %esi,%rsi
0x395:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x39a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3a0:	0f 8d 07 00 00 00    	jge    0x3ad
0x3a6:	83 c1 01             	add    $0x1,%ecx
0x3a9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3ad:	e9 2d 01 00 00       	jmpq   0x4df
0x3b2:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x3b6:	48 83 ec 10          	sub    $0x10,%rsp
0x3ba:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3be:	4c 8b 1d 13 fb ff ff 	mov    -0x4ed(%rip),%r11        # 0xfffffed8
0x3c5:	48 83 ec 10          	sub    $0x10,%rsp
0x3c9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3cd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3d2:	41 85 03             	test   %eax,(%r11)
0x3d5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3da:	e8 00 00 00 00       	callq  0x3df
0x3df:	90                   	nop
0x3e0:	48 83 ec 10          	sub    $0x10,%rsp
0x3e4:	48 89 04 24          	mov    %rax,(%rsp)
0x3e8:	44 8b 1c 24          	mov    (%rsp),%r11d
0x3ec:	b8 00 00 00 00       	mov    $0x0,%eax
0x3f1:	48 83 c4 10          	add    $0x10,%rsp
0x3f5:	44 3b d8             	cmp    %eax,%r11d
0x3f8:	75 33                	jne    0x42d
0x3fa:	48 8b 3d df fa ff ff 	mov    -0x521(%rip),%rdi        # 0xfffffee0
0x401:	be 0b 00 00 00       	mov    $0xb,%esi
0x406:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x40a:	48 8b c8             	mov    %rax,%rcx
0x40d:	48 63 f6             	movslq %esi,%rsi
0x410:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x415:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x41b:	0f 8d 07 00 00 00    	jge    0x428
0x421:	83 c1 01             	add    $0x1,%ecx
0x424:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x428:	e9 b2 00 00 00       	jmpq   0x4df
0x42d:	48 8b 3d b4 fa ff ff 	mov    -0x54c(%rip),%rdi        # 0xfffffee8
0x434:	be 0c 00 00 00       	mov    $0xc,%esi
0x439:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x43d:	48 8b c8             	mov    %rax,%rcx
0x440:	48 63 f6             	movslq %esi,%rsi
0x443:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x448:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x44e:	0f 8d 07 00 00 00    	jge    0x45b
0x454:	83 c1 01             	add    $0x1,%ecx
0x457:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x45b:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x45f:	48 83 ec 10          	sub    $0x10,%rsp
0x463:	4c 89 1c 24          	mov    %r11,(%rsp)
0x467:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x46b:	41 83 c3 01          	add    $0x1,%r11d
0x46f:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x473:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x477:	48 83 ec 10          	sub    $0x10,%rsp
0x47b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x47f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x484:	40 8b 34 24          	rex mov (%rsp),%esi
0x488:	48 8b c7             	mov    %rdi,%rax
0x48b:	48 63 40 10          	movslq 0x10(%rax),%rax
0x48f:	3b f0                	cmp    %eax,%esi
0x491:	0f 82 0f 00 00 00    	jb     0x4a6
0x497:	e8 00 00 00 00       	callq  0x49c
0x49c:	90                   	nop
0x49d:	48 8b f8             	mov    %rax,%rdi
0x4a0:	e8 00 00 00 00       	callq  0x4a5
0x4a5:	90                   	nop
0x4a6:	48 63 f6             	movslq %esi,%rsi
0x4a9:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x4ae:	48 83 c4 10          	add    $0x10,%rsp
0x4b2:	48 89 04 24          	mov    %rax,(%rsp)
0x4b6:	90                   	nop
0x4b7:	90                   	nop
0x4b8:	e8 00 00 00 00       	callq  0x4bd
0x4bd:	90                   	nop
0x4be:	48 83 ec 10          	sub    $0x10,%rsp
0x4c2:	48 89 04 24          	mov    %rax,(%rsp)
0x4c6:	8b 14 24             	mov    (%rsp),%edx
0x4c9:	48 8b 3d 20 fa ff ff 	mov    -0x5e0(%rip),%rdi        # 0xfffffef0
0x4d0:	be 28 00 00 00       	mov    $0x28,%esi
0x4d5:	48 63 f6             	movslq %esi,%rsi
0x4d8:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x4db:	48 83 c4 10          	add    $0x10,%rsp
0x4df:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x4e3:	41 83 c3 01          	add    $0x1,%r11d
0x4e7:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x4eb:	48 8b 3d 06 fa ff ff 	mov    -0x5fa(%rip),%rdi        # 0xfffffef8
0x4f2:	be 0f 00 00 00       	mov    $0xf,%esi
0x4f7:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4fb:	48 8b c8             	mov    %rax,%rcx
0x4fe:	48 63 f6             	movslq %esi,%rsi
0x501:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x506:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x50c:	0f 8d 07 00 00 00    	jge    0x519
0x512:	83 c1 01             	add    $0x1,%ecx
0x515:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x519:	48 8b 3d e0 f9 ff ff 	mov    -0x620(%rip),%rdi        # 0xffffff00
0x520:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x524:	83 e8 01             	sub    $0x1,%eax
0x527:	89 47 30             	mov    %eax,0x30(%rdi)
0x52a:	4d 8b 36             	mov    (%r14),%r14
0x52d:	e9 2c fc ff ff       	jmpq   0x15e
0x532:	48 8b 3d cf f9 ff ff 	mov    -0x631(%rip),%rdi        # 0xffffff08
0x539:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x53d:	48 8b 35 cc f9 ff ff 	mov    -0x634(%rip),%rsi        # 0xffffff10
0x544:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x548:	49 8b ce             	mov    %r14,%rcx
0x54b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x54f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x556:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x55d:	48 8b d9             	mov    %rcx,%rbx
0x560:	48 03 da             	add    %rdx,%rbx
0x563:	4c 8b cb             	mov    %rbx,%r9
0x566:	4d 3b c8             	cmp    %r8,%r9
0x569:	0f 86 14 00 00 00    	jbe    0x583
0x56f:	48 8b fe             	mov    %rsi,%rdi
0x572:	48 8b f2             	mov    %rdx,%rsi
0x575:	48 8b d0             	mov    %rax,%rdx
0x578:	e8 00 00 00 00       	callq  0x57d
0x57d:	90                   	nop
0x57e:	e9 0a 00 00 00       	jmpq   0x58d
0x583:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x58a:	48 8b c1             	mov    %rcx,%rax
0x58d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x591:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x595:	90                   	nop
0x596:	90                   	nop
0x597:	90                   	nop
0x598:	e8 00 00 00 00       	callq  0x59d
0x59d:	90                   	nop
0x59e:	90                   	nop
0x59f:	90                   	nop
0x5a0:	e8 00 00 00 00       	callq  0x5a5
0x5a5:	90                   	nop
0x5a6:	83 f8 00             	cmp    $0x0,%eax
0x5a9:	0f 84 27 00 00 00    	je     0x5d6
0x5af:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5b3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x5b7:	85 06                	test   %eax,(%rsi)
0x5b9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x5bd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x5c1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x5c5:	83 e2 ff             	and    $0xffffffff,%edx
0x5c8:	48 8b fa             	mov    %rdx,%rdi
0x5cb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x5cf:	90                   	nop
0x5d0:	e8 00 00 00 00       	callq  0x5d5
0x5d5:	90                   	nop
0x5d6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x5da:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x5de:	48 89 38             	mov    %rdi,(%rax)
0x5e1:	48 83 ec 10          	sub    $0x10,%rsp
0x5e5:	48 89 04 24          	mov    %rax,(%rsp)
0x5e9:	48 83 ec 10          	sub    $0x10,%rsp
0x5ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x5f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f6:	48 8b 3d 1b f9 ff ff 	mov    -0x6e5(%rip),%rdi        # 0xffffff18
0x5fd:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x601:	48 8b 35 18 f9 ff ff 	mov    -0x6e8(%rip),%rsi        # 0xffffff20
0x608:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x60c:	49 8b ce             	mov    %r14,%rcx
0x60f:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x613:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x61a:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x621:	48 8b d9             	mov    %rcx,%rbx
0x624:	48 03 da             	add    %rdx,%rbx
0x627:	4c 8b cb             	mov    %rbx,%r9
0x62a:	4d 3b c8             	cmp    %r8,%r9
0x62d:	0f 86 14 00 00 00    	jbe    0x647
0x633:	48 8b fe             	mov    %rsi,%rdi
0x636:	48 8b f2             	mov    %rdx,%rsi
0x639:	48 8b d0             	mov    %rax,%rdx
0x63c:	e8 00 00 00 00       	callq  0x641
0x641:	90                   	nop
0x642:	e9 0a 00 00 00       	jmpq   0x651
0x647:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x64e:	48 8b c1             	mov    %rcx,%rax
0x651:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x655:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x659:	90                   	nop
0x65a:	90                   	nop
0x65b:	90                   	nop
0x65c:	e8 00 00 00 00       	callq  0x661
0x661:	90                   	nop
0x662:	90                   	nop
0x663:	90                   	nop
0x664:	e8 00 00 00 00       	callq  0x669
0x669:	90                   	nop
0x66a:	83 f8 00             	cmp    $0x0,%eax
0x66d:	0f 84 27 00 00 00    	je     0x69a
0x673:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x677:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x67b:	85 06                	test   %eax,(%rsi)
0x67d:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x681:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x685:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x689:	83 e2 ff             	and    $0xffffffff,%edx
0x68c:	48 8b fa             	mov    %rdx,%rdi
0x68f:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x693:	90                   	nop
0x694:	e8 00 00 00 00       	callq  0x699
0x699:	90                   	nop
0x69a:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x69e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x6a2:	48 89 38             	mov    %rdi,(%rax)
0x6a5:	48 83 ec 10          	sub    $0x10,%rsp
0x6a9:	48 89 04 24          	mov    %rax,(%rsp)
0x6ad:	48 83 ec 10          	sub    $0x10,%rsp
0x6b1:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6b6:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6ba:	4c 8b 1c 24          	mov    (%rsp),%r11
0x6be:	41 85 03             	test   %eax,(%r11)
0x6c1:	e8 00 00 00 00       	callq  0x6c6
0x6c6:	90                   	nop
0x6c7:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6cc:	41 85 03             	test   %eax,(%r11)
0x6cf:	90                   	nop
0x6d0:	e8 00 00 00 00       	callq  0x6d5
0x6d5:	90                   	nop
0x6d6:	bf 17 00 00 00       	mov    $0x17,%edi
0x6db:	48 8b 34 24          	mov    (%rsp),%rsi
0x6df:	48 8b 15 42 f8 ff ff 	mov    -0x7be(%rip),%rdx        # 0xffffff28
0x6e6:	b9 13 00 00 00       	mov    $0x13,%ecx
0x6eb:	48 8b c6             	mov    %rsi,%rax
0x6ee:	48 8b 00             	mov    (%rax),%rax
0x6f1:	48 63 ff             	movslq %edi,%rdi
0x6f4:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x6f9:	48 8b fa             	mov    %rdx,%rdi
0x6fc:	48 8b d1             	mov    %rcx,%rdx
0x6ff:	b9 03 00 00 00       	mov    $0x3,%ecx
0x704:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x708:	90                   	nop
0x709:	90                   	nop
0x70a:	e8 00 00 00 00       	callq  0x70f
0x70f:	90                   	nop
0x710:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x714:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x718:	48 8b 3c 24          	mov    (%rsp),%rdi
0x71c:	ff d0                	callq  *%rax
0x71e:	90                   	nop
0x71f:	48 8b 3d 0a f8 ff ff 	mov    -0x7f6(%rip),%rdi        # 0xffffff30
0x726:	be 2c 00 00 00       	mov    $0x2c,%esi
0x72b:	48 63 f6             	movslq %esi,%rsi
0x72e:	0f be 04 37          	movsbl (%rdi,%rsi,1),%eax
0x732:	48 83 ec 10          	sub    $0x10,%rsp
0x736:	89 04 24             	mov    %eax,(%rsp)
0x739:	44 8b 1c 24          	mov    (%rsp),%r11d
0x73d:	b8 00 00 00 00       	mov    $0x0,%eax
0x742:	48 83 c4 10          	add    $0x10,%rsp
0x746:	44 3b d8             	cmp    %eax,%r11d
0x749:	74 33                	je     0x77e
0x74b:	48 8b 3d e6 f7 ff ff 	mov    -0x81a(%rip),%rdi        # 0xffffff38
0x752:	be 1b 00 00 00       	mov    $0x1b,%esi
0x757:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x75b:	48 8b c8             	mov    %rax,%rcx
0x75e:	48 63 f6             	movslq %esi,%rsi
0x761:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x766:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x76c:	0f 8d 07 00 00 00    	jge    0x779
0x772:	83 c1 01             	add    $0x1,%ecx
0x775:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x779:	e9 28 03 00 00       	jmpq   0xaa6
0x77e:	48 8b 3d bb f7 ff ff 	mov    -0x845(%rip),%rdi        # 0xffffff40
0x785:	be 1c 00 00 00       	mov    $0x1c,%esi
0x78a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x78e:	48 8b c8             	mov    %rax,%rcx
0x791:	48 63 f6             	movslq %esi,%rsi
0x794:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x799:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x79f:	0f 8d 07 00 00 00    	jge    0x7ac
0x7a5:	83 c1 01             	add    $0x1,%ecx
0x7a8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x7ac:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7b0:	48 83 ec 10          	sub    $0x10,%rsp
0x7b4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7b8:	48 8b 3d 89 f7 ff ff 	mov    -0x877(%rip),%rdi        # 0xffffff48
0x7bf:	be 28 00 00 00       	mov    $0x28,%esi
0x7c4:	48 63 f6             	movslq %esi,%rsi
0x7c7:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x7cb:	48 83 ec 10          	sub    $0x10,%rsp
0x7cf:	89 04 24             	mov    %eax,(%rsp)
0x7d2:	bf 1d 00 00 00       	mov    $0x1d,%edi
0x7d7:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7dc:	48 8b 15 6d f7 ff ff 	mov    -0x893(%rip),%rdx        # 0xffffff50
0x7e3:	b9 1e 00 00 00       	mov    $0x1e,%ecx
0x7e8:	48 8b c6             	mov    %rsi,%rax
0x7eb:	48 8b 00             	mov    (%rax),%rax
0x7ee:	48 63 ff             	movslq %edi,%rdi
0x7f1:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x7f6:	48 8b fa             	mov    %rdx,%rdi
0x7f9:	48 8b d1             	mov    %rcx,%rdx
0x7fc:	b9 03 00 00 00       	mov    $0x3,%ecx
0x801:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x805:	90                   	nop
0x806:	90                   	nop
0x807:	e8 00 00 00 00       	callq  0x80c
0x80c:	90                   	nop
0x80d:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x811:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x815:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x81a:	ff d0                	callq  *%rax
0x81c:	90                   	nop
0x81d:	48 83 ec 10          	sub    $0x10,%rsp
0x821:	48 89 04 24          	mov    %rax,(%rsp)
0x825:	44 8b 1c 24          	mov    (%rsp),%r11d
0x829:	48 83 c4 10          	add    $0x10,%rsp
0x82d:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x831:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x835:	48 83 ec 10          	sub    $0x10,%rsp
0x839:	44 89 1c 24          	mov    %r11d,(%rsp)
0x83d:	40 8b 34 24          	rex mov (%rsp),%esi
0x841:	48 8b 3d 10 f7 ff ff 	mov    -0x8f0(%rip),%rdi        # 0xffffff58
0x848:	83 fe 00             	cmp    $0x0,%esi
0x84b:	0f 8c fb 00 00 00    	jl     0x94c
0x851:	85 07                	test   %eax,(%rdi)
0x853:	48 8b 9f d8 00 00 00 	mov    0xd8(%rdi),%rbx
0x85a:	48 89 5d 08          	mov    %rbx,0x8(%rbp)
0x85e:	48 8b 3d fb f6 ff ff 	mov    -0x905(%rip),%rdi        # 0xffffff60
0x865:	48 8b 43 30          	mov    0x30(%rbx),%rax
0x869:	48 8b 50 70          	mov    0x70(%rax),%rdx
0x86d:	48 8b 82 a0 00 00 00 	mov    0xa0(%rdx),%rax
0x874:	48 8b 50 48          	mov    0x48(%rax),%rdx
0x878:	48 63 42 44          	movslq 0x44(%rdx),%rax
0x87c:	48 63 c0             	movslq %eax,%rax
0x87f:	48 63 d6             	movslq %esi,%rdx
0x882:	48 0f af c2          	imul   %rdx,%rax
0x886:	48 83 c0 18          	add    $0x18,%rax
0x88a:	48 83 c0 07          	add    $0x7,%rax
0x88e:	48 ba 07 00 00 00 00 	movabs $0x7,%rdx
0x895:	00 00 00 
0x898:	49 bb ff ff ff ff ff 	movabs $0xffffffffffffffff,%r11
0x89f:	ff ff ff 
0x8a2:	49 33 d3             	xor    %r11,%rdx
0x8a5:	48 23 c2             	and    %rdx,%rax
0x8a8:	49 8b d6             	mov    %r14,%rdx
0x8ab:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
0x8af:	4c 8b 81 28 01 00 00 	mov    0x128(%rcx),%r8
0x8b6:	4c 8b 89 20 01 00 00 	mov    0x120(%rcx),%r9
0x8bd:	49 8b d0             	mov    %r8,%rdx
0x8c0:	48 03 d0             	add    %rax,%rdx
0x8c3:	4c 8b d2             	mov    %rdx,%r10
0x8c6:	4d 3b d1             	cmp    %r9,%r10
0x8c9:	0f 86 1f 00 00 00    	jbe    0x8ee
0x8cf:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x8d3:	48 8b f0             	mov    %rax,%rsi
0x8d6:	48 8b d1             	mov    %rcx,%rdx
0x8d9:	49 8b c8             	mov    %r8,%rcx
0x8dc:	4d 8b c1             	mov    %r9,%r8
0x8df:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x8e3:	e8 00 00 00 00       	callq  0x8e8
0x8e8:	90                   	nop
0x8e9:	e9 12 00 00 00       	jmpq   0x900
0x8ee:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x8f2:	40 89 75 18          	rex mov %esi,0x18(%rbp)
0x8f6:	48 89 91 28 01 00 00 	mov    %rdx,0x128(%rcx)
0x8fd:	49 8b c0             	mov    %r8,%rax
0x900:	48 89 45 20          	mov    %rax,0x20(%rbp)
0x904:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x908:	e8 00 00 00 00       	callq  0x90d
0x90d:	90                   	nop
0x90e:	90                   	nop
0x90f:	e8 00 00 00 00       	callq  0x914
0x914:	90                   	nop
0x915:	83 f8 00             	cmp    $0x0,%eax
0x918:	0f 84 40 00 00 00    	je     0x95e
0x91e:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x922:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x926:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
0x92a:	85 07                	test   %eax,(%rdi)
0x92c:	48 8b 77 28          	mov    0x28(%rdi),%rsi
0x930:	48 8b 56 10          	mov    0x10(%rsi),%rdx
0x934:	83 e0 ff             	and    $0xffffffff,%eax
0x937:	48 8b f8             	mov    %rax,%rdi
0x93a:	48 8b f2             	mov    %rdx,%rsi
0x93d:	48 8b 55 20          	mov    0x20(%rbp),%rdx
0x941:	e8 00 00 00 00       	callq  0x946
0x946:	90                   	nop
0x947:	e9 12 00 00 00       	jmpq   0x95e
0x94c:	48 8b fe             	mov    %rsi,%rdi
0x94f:	e8 00 00 00 00       	callq  0x954
0x954:	90                   	nop
0x955:	48 8b f8             	mov    %rax,%rdi
0x958:	e8 00 00 00 00       	callq  0x95d
0x95d:	90                   	nop
0x95e:	48 8b 45 20          	mov    0x20(%rbp),%rax
0x962:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
0x966:	40 8b 75 18          	rex mov 0x18(%rbp),%esi
0x96a:	40 89 70 10          	rex mov %esi,0x10(%rax)
0x96e:	48 89 18             	mov    %rbx,(%rax)
0x971:	48 89 04 24          	mov    %rax,(%rsp)
0x975:	4c 8b 1c 24          	mov    (%rsp),%r11
0x979:	48 83 c4 10          	add    $0x10,%rsp
0x97d:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x981:	48 8b 3d e0 f5 ff ff 	mov    -0xa20(%rip),%rdi        # 0xffffff68
0x988:	be 10 00 00 00       	mov    $0x10,%esi
0x98d:	48 63 f6             	movslq %esi,%rsi
0x990:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x994:	48 83 ec 20          	sub    $0x20,%rsp
0x998:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0x99d:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x9a4:	00 00 00 
0x9a7:	48 83 ec 20          	sub    $0x20,%rsp
0x9ab:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x9b0:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x9b5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x9ba:	48 03 fe             	add    %rsi,%rdi
0x9bd:	48 8b c7             	mov    %rdi,%rax
0x9c0:	48 83 c4 20          	add    $0x20,%rsp
0x9c4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0x9c9:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
0x9ce:	48 8b 3d 9b f5 ff ff 	mov    -0xa65(%rip),%rdi        # 0xffffff70
0x9d5:	be 10 00 00 00       	mov    $0x10,%esi
0x9da:	48 63 f6             	movslq %esi,%rsi
0x9dd:	48 89 14 37          	mov    %rdx,(%rdi,%rsi,1)
0x9e1:	48 83 c4 20          	add    $0x20,%rsp
0x9e5:	f0 83 04 24 00       	lock addl $0x0,(%rsp)
0x9ea:	48 8b 3d 87 f5 ff ff 	mov    -0xa79(%rip),%rdi        # 0xffffff78
0x9f1:	be 18 00 00 00       	mov    $0x18,%esi
0x9f6:	48 63 f6             	movslq %esi,%rsi
0x9f9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x9fd:	48 83 ec 20          	sub    $0x20,%rsp
0xa01:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xa06:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0xa0a:	48 83 ec 10          	sub    $0x10,%rsp
0xa0e:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa12:	40 8b 3c 24          	rex mov (%rsp),%edi
0xa16:	48 63 ff             	movslq %edi,%rdi
0xa19:	48 8b c7             	mov    %rdi,%rax
0xa1c:	48 83 ec 10          	sub    $0x10,%rsp
0xa20:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xa25:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xa2a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xa2f:	48 03 fe             	add    %rsi,%rdi
0xa32:	48 8b c7             	mov    %rdi,%rax
0xa35:	48 83 c4 20          	add    $0x20,%rsp
0xa39:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xa3e:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
0xa43:	48 8b 3d 36 f5 ff ff 	mov    -0xaca(%rip),%rdi        # 0xffffff80
0xa4a:	be 18 00 00 00       	mov    $0x18,%esi
0xa4f:	48 63 f6             	movslq %esi,%rsi
0xa52:	48 89 14 37          	mov    %rdx,(%rdi,%rsi,1)
0xa56:	48 83 c4 20          	add    $0x20,%rsp
0xa5a:	f0 83 04 24 00       	lock addl $0x0,(%rsp)
0xa5f:	48 8b 3d 22 f5 ff ff 	mov    -0xade(%rip),%rdi        # 0xffffff88
0xa66:	be 26 00 00 00       	mov    $0x26,%esi
0xa6b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6f:	48 8b c8             	mov    %rax,%rcx
0xa72:	48 63 f6             	movslq %esi,%rsi
0xa75:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xa7a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xa80:	0f 8d 07 00 00 00    	jge    0xa8d
0xa86:	83 c1 01             	add    $0x1,%ecx
0xa89:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xa8d:	48 8b 3d fc f4 ff ff 	mov    -0xb04(%rip),%rdi        # 0xffffff90
0xa94:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xa98:	83 e8 01             	sub    $0x1,%eax
0xa9b:	89 47 30             	mov    %eax,0x30(%rdi)
0xa9e:	4d 8b 36             	mov    (%r14),%r14
0xaa1:	e9 79 fc ff ff       	jmpq   0x71f
0xaa6:	48 8b 3d eb f4 ff ff 	mov    -0xb15(%rip),%rdi        # 0xffffff98
0xaad:	be 18 00 00 00       	mov    $0x18,%esi
0xab2:	48 63 f6             	movslq %esi,%rsi
0xab5:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xab9:	48 83 ec 10          	sub    $0x10,%rsp
0xabd:	48 89 04 24          	mov    %rax,(%rsp)
0xac1:	48 8b 3d d8 f4 ff ff 	mov    -0xb28(%rip),%rdi        # 0xffffffa0
0xac8:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xacc:	48 8b 35 d5 f4 ff ff 	mov    -0xb2b(%rip),%rsi        # 0xffffffa8
0xad3:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xad7:	49 8b ce             	mov    %r14,%rcx
0xada:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xade:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xae5:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xaec:	48 8b d9             	mov    %rcx,%rbx
0xaef:	48 03 da             	add    %rdx,%rbx
0xaf2:	4c 8b cb             	mov    %rbx,%r9
0xaf5:	4d 3b c8             	cmp    %r8,%r9
0xaf8:	0f 86 14 00 00 00    	jbe    0xb12
0xafe:	48 8b fe             	mov    %rsi,%rdi
0xb01:	48 8b f2             	mov    %rdx,%rsi
0xb04:	48 8b d0             	mov    %rax,%rdx
0xb07:	e8 00 00 00 00       	callq  0xb0c
0xb0c:	90                   	nop
0xb0d:	e9 0a 00 00 00       	jmpq   0xb1c
0xb12:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xb19:	48 8b c1             	mov    %rcx,%rax
0xb1c:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb20:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb24:	90                   	nop
0xb25:	90                   	nop
0xb26:	90                   	nop
0xb27:	e8 00 00 00 00       	callq  0xb2c
0xb2c:	90                   	nop
0xb2d:	90                   	nop
0xb2e:	90                   	nop
0xb2f:	e8 00 00 00 00       	callq  0xb34
0xb34:	90                   	nop
0xb35:	83 f8 00             	cmp    $0x0,%eax
0xb38:	0f 84 27 00 00 00    	je     0xb65
0xb3e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb42:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xb46:	85 06                	test   %eax,(%rsi)
0xb48:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xb4c:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xb50:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xb54:	83 e2 ff             	and    $0xffffffff,%edx
0xb57:	48 8b fa             	mov    %rdx,%rdi
0xb5a:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xb5e:	90                   	nop
0xb5f:	e8 00 00 00 00       	callq  0xb64
0xb64:	90                   	nop
0xb65:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xb69:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb6d:	48 89 38             	mov    %rdi,(%rax)
0xb70:	48 83 ec 10          	sub    $0x10,%rsp
0xb74:	48 89 04 24          	mov    %rax,(%rsp)
0xb78:	48 83 ec 10          	sub    $0x10,%rsp
0xb7c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xb81:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb85:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb89:	41 85 03             	test   %eax,(%r11)
0xb8c:	90                   	nop
0xb8d:	90                   	nop
0xb8e:	90                   	nop
0xb8f:	90                   	nop
0xb90:	e8 00 00 00 00       	callq  0xb95
0xb95:	90                   	nop
0xb96:	4c 8b 1d 13 f4 ff ff 	mov    -0xbed(%rip),%r11        # 0xffffffb0
0xb9d:	48 83 ec 10          	sub    $0x10,%rsp
0xba1:	4c 89 1c 24          	mov    %r11,(%rsp)
0xba5:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xbaa:	41 85 03             	test   %eax,(%r11)
0xbad:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xbb2:	e8 00 00 00 00       	callq  0xbb7
0xbb7:	90                   	nop
0xbb8:	48 83 ec 10          	sub    $0x10,%rsp
0xbbc:	48 89 04 24          	mov    %rax,(%rsp)
0xbc0:	48 8b 3d f1 f3 ff ff 	mov    -0xc0f(%rip),%rdi        # 0xffffffb8
0xbc7:	be 10 00 00 00       	mov    $0x10,%esi
0xbcc:	48 63 f6             	movslq %esi,%rsi
0xbcf:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xbd3:	48 83 ec 20          	sub    $0x20,%rsp
0xbd7:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xbdc:	48 8b 3d dd f3 ff ff 	mov    -0xc23(%rip),%rdi        # 0xffffffc0
0xbe3:	be 20 00 00 00       	mov    $0x20,%esi
0xbe8:	48 63 f6             	movslq %esi,%rsi
0xbeb:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xbef:	48 83 ec 10          	sub    $0x10,%rsp
0xbf3:	89 04 24             	mov    %eax,(%rsp)
0xbf6:	40 8b 3c 24          	rex mov (%rsp),%edi
0xbfa:	48 63 ff             	movslq %edi,%rdi
0xbfd:	48 8b c7             	mov    %rdi,%rax
0xc00:	48 83 ec 10          	sub    $0x10,%rsp
0xc04:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xc09:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xc0e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xc13:	48 8b c7             	mov    %rdi,%rax
0xc16:	48 99                	cqto   
0xc18:	48 f7 fe             	idiv   %rsi
0xc1b:	48 83 c4 20          	add    $0x20,%rsp
0xc1f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xc24:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xc29:	41 85 03             	test   %eax,(%r11)
0xc2c:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xc31:	e8 00 00 00 00       	callq  0xc36
0xc36:	90                   	nop
0xc37:	48 83 ec 10          	sub    $0x10,%rsp
0xc3b:	48 89 04 24          	mov    %rax,(%rsp)
0xc3f:	4c 8b 1d 82 f3 ff ff 	mov    -0xc7e(%rip),%r11        # 0xffffffc8
0xc46:	48 83 ec 10          	sub    $0x10,%rsp
0xc4a:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc4e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xc53:	41 85 03             	test   %eax,(%r11)
0xc56:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xc5b:	e8 00 00 00 00       	callq  0xc60
0xc60:	90                   	nop
0xc61:	48 83 ec 10          	sub    $0x10,%rsp
0xc65:	48 89 04 24          	mov    %rax,(%rsp)
0xc69:	48 8b 3d 60 f3 ff ff 	mov    -0xca0(%rip),%rdi        # 0xffffffd0
0xc70:	be 18 00 00 00       	mov    $0x18,%esi
0xc75:	48 63 f6             	movslq %esi,%rsi
0xc78:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xc7c:	48 83 ec 20          	sub    $0x20,%rsp
0xc80:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xc85:	48 8b 3d 4c f3 ff ff 	mov    -0xcb4(%rip),%rdi        # 0xffffffd8
0xc8c:	be 20 00 00 00       	mov    $0x20,%esi
0xc91:	48 63 f6             	movslq %esi,%rsi
0xc94:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xc98:	48 83 ec 10          	sub    $0x10,%rsp
0xc9c:	89 04 24             	mov    %eax,(%rsp)
0xc9f:	40 8b 3c 24          	rex mov (%rsp),%edi
0xca3:	48 63 ff             	movslq %edi,%rdi
0xca6:	48 8b c7             	mov    %rdi,%rax
0xca9:	48 83 ec 10          	sub    $0x10,%rsp
0xcad:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xcb2:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xcb7:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xcbc:	48 8b c7             	mov    %rdi,%rax
0xcbf:	48 99                	cqto   
0xcc1:	48 f7 fe             	idiv   %rsi
0xcc4:	48 83 c4 20          	add    $0x20,%rsp
0xcc8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0xccd:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0xcd2:	41 85 03             	test   %eax,(%r11)
0xcd5:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xcda:	e8 00 00 00 00       	callq  0xcdf
0xcdf:	90                   	nop
0xce0:	48 83 ec 10          	sub    $0x10,%rsp
0xce4:	48 89 04 24          	mov    %rax,(%rsp)
0xce8:	4c 8b 1c 24          	mov    (%rsp),%r11
0xcec:	41 85 03             	test   %eax,(%r11)
0xcef:	48 8b 3c 24          	mov    (%rsp),%rdi
0xcf3:	e8 00 00 00 00       	callq  0xcf8
0xcf8:	90                   	nop
0xcf9:	48 83 ec 10          	sub    $0x10,%rsp
0xcfd:	48 89 04 24          	mov    %rax,(%rsp)
0xd01:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xd06:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xd0b:	48 8b 15 ce f2 ff ff 	mov    -0xd32(%rip),%rdx        # 0xffffffe0
0xd12:	b9 2e 00 00 00       	mov    $0x2e,%ecx
0xd17:	48 8b c6             	mov    %rsi,%rax
0xd1a:	48 8b 00             	mov    (%rax),%rax
0xd1d:	48 63 ff             	movslq %edi,%rdi
0xd20:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd25:	48 8b fa             	mov    %rdx,%rdi
0xd28:	48 8b d1             	mov    %rcx,%rdx
0xd2b:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd30:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd34:	90                   	nop
0xd35:	90                   	nop
0xd36:	e8 00 00 00 00       	callq  0xd3b
0xd3b:	90                   	nop
0xd3c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd40:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd44:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xd49:	ff d0                	callq  *%rax
0xd4b:	90                   	nop
0xd4c:	48 83 c5 40          	add    $0x40,%rbp
0xd50:	c9                   	leaveq 
0xd51:	c2 10 00             	retq   $0x10

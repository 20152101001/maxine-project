0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 90 00 00          	enterq $0x90,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 98 e0 ff 	mov    %rax,-0x1f68(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 69 fd ff ff 	mov    %r11,-0x297(%rip)        # 0xfffffd90
0x27:	48 8b 3d 6a fd ff ff 	mov    -0x296(%rip),%rdi        # 0xfffffd98
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
0x6d:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x73:	48 83 ec 10          	sub    $0x10,%rsp
0x77:	44 89 1c 24          	mov    %r11d,(%rsp)
0x7b:	44 8b 1c 24          	mov    (%rsp),%r11d
0x7f:	48 83 c4 10          	add    $0x10,%rsp
0x83:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x87:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x8b:	48 83 ec 10          	sub    $0x10,%rsp
0x8f:	44 89 1c 24          	mov    %r11d,(%rsp)
0x93:	48 8b 3d 06 fd ff ff 	mov    -0x2fa(%rip),%rdi        # 0xfffffda0
0x9a:	be 20 00 00 00       	mov    $0x20,%esi
0x9f:	48 63 f6             	movslq %esi,%rsi
0xa2:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xa6:	48 83 ec 10          	sub    $0x10,%rsp
0xaa:	89 04 24             	mov    %eax,(%rsp)
0xad:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xb2:	8b 04 24             	mov    (%rsp),%eax
0xb5:	48 83 c4 20          	add    $0x20,%rsp
0xb9:	44 3b d8             	cmp    %eax,%r11d
0xbc:	7c 33                	jl     0xf1
0xbe:	48 8b 3d e3 fc ff ff 	mov    -0x31d(%rip),%rdi        # 0xfffffda8
0xc5:	be 00 00 00 00       	mov    $0x0,%esi
0xca:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xce:	48 8b c8             	mov    %rax,%rcx
0xd1:	48 63 f6             	movslq %esi,%rsi
0xd4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xd9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xdf:	0f 8d 07 00 00 00    	jge    0xec
0xe5:	83 c1 01             	add    $0x1,%ecx
0xe8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xec:	e9 a8 01 00 00       	jmpq   0x299
0xf1:	48 8b 3d b8 fc ff ff 	mov    -0x348(%rip),%rdi        # 0xfffffdb0
0xf8:	be 01 00 00 00       	mov    $0x1,%esi
0xfd:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x101:	48 8b c8             	mov    %rax,%rcx
0x104:	48 63 f6             	movslq %esi,%rsi
0x107:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x10c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x112:	0f 8d 07 00 00 00    	jge    0x11f
0x118:	83 c1 01             	add    $0x1,%ecx
0x11b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x11f:	48 8b 3d 92 fc ff ff 	mov    -0x36e(%rip),%rdi        # 0xfffffdb8
0x126:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x12a:	48 8b 35 8f fc ff ff 	mov    -0x371(%rip),%rsi        # 0xfffffdc0
0x131:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x135:	49 8b ce             	mov    %r14,%rcx
0x138:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x13c:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x143:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x14a:	48 8b d9             	mov    %rcx,%rbx
0x14d:	48 03 da             	add    %rdx,%rbx
0x150:	4c 8b cb             	mov    %rbx,%r9
0x153:	4d 3b c8             	cmp    %r8,%r9
0x156:	0f 86 14 00 00 00    	jbe    0x170
0x15c:	48 8b fe             	mov    %rsi,%rdi
0x15f:	48 8b f2             	mov    %rdx,%rsi
0x162:	48 8b d0             	mov    %rax,%rdx
0x165:	e8 00 00 00 00       	callq  0x16a
0x16a:	90                   	nop
0x16b:	e9 0a 00 00 00       	jmpq   0x17a
0x170:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x177:	48 8b c1             	mov    %rcx,%rax
0x17a:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x17e:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x182:	90                   	nop
0x183:	90                   	nop
0x184:	90                   	nop
0x185:	e8 00 00 00 00       	callq  0x18a
0x18a:	90                   	nop
0x18b:	90                   	nop
0x18c:	90                   	nop
0x18d:	e8 00 00 00 00       	callq  0x192
0x192:	90                   	nop
0x193:	83 f8 00             	cmp    $0x0,%eax
0x196:	0f 84 27 00 00 00    	je     0x1c3
0x19c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1a0:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1a4:	85 06                	test   %eax,(%rsi)
0x1a6:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1aa:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1ae:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1b2:	83 e2 ff             	and    $0xffffffff,%edx
0x1b5:	48 8b fa             	mov    %rdx,%rdi
0x1b8:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1bc:	90                   	nop
0x1bd:	e8 00 00 00 00       	callq  0x1c2
0x1c2:	90                   	nop
0x1c3:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1c7:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1cb:	48 89 38             	mov    %rdi,(%rax)
0x1ce:	48 83 ec 10          	sub    $0x10,%rsp
0x1d2:	48 89 04 24          	mov    %rax,(%rsp)
0x1d6:	48 83 ec 10          	sub    $0x10,%rsp
0x1da:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1df:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1e3:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x1e7:	48 83 ec 10          	sub    $0x10,%rsp
0x1eb:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1ef:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x1f3:	41 83 c3 01          	add    $0x1,%r11d
0x1f7:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x1fb:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x200:	41 85 03             	test   %eax,(%r11)
0x203:	e8 00 00 00 00       	callq  0x208
0x208:	90                   	nop
0x209:	bf 17 00 00 00       	mov    $0x17,%edi
0x20e:	48 8b 34 24          	mov    (%rsp),%rsi
0x212:	48 8b 15 af fb ff ff 	mov    -0x451(%rip),%rdx        # 0xfffffdc8
0x219:	b9 04 00 00 00       	mov    $0x4,%ecx
0x21e:	48 8b c6             	mov    %rsi,%rax
0x221:	48 8b 00             	mov    (%rax),%rax
0x224:	48 63 ff             	movslq %edi,%rdi
0x227:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x22c:	48 8b fa             	mov    %rdx,%rdi
0x22f:	48 8b d1             	mov    %rcx,%rdx
0x232:	b9 03 00 00 00       	mov    $0x3,%ecx
0x237:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x23b:	90                   	nop
0x23c:	90                   	nop
0x23d:	e8 00 00 00 00       	callq  0x242
0x242:	90                   	nop
0x243:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x247:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x24b:	48 8b 3c 24          	mov    (%rsp),%rdi
0x24f:	ff d0                	callq  *%rax
0x251:	90                   	nop
0x252:	48 8b 3d 77 fb ff ff 	mov    -0x489(%rip),%rdi        # 0xfffffdd0
0x259:	be 0c 00 00 00       	mov    $0xc,%esi
0x25e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x262:	48 8b c8             	mov    %rax,%rcx
0x265:	48 63 f6             	movslq %esi,%rsi
0x268:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x26d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x273:	0f 8d 07 00 00 00    	jge    0x280
0x279:	83 c1 01             	add    $0x1,%ecx
0x27c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x280:	48 8b 3d 51 fb ff ff 	mov    -0x4af(%rip),%rdi        # 0xfffffdd8
0x287:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x28b:	83 e8 01             	sub    $0x1,%eax
0x28e:	89 47 30             	mov    %eax,0x30(%rdi)
0x291:	4d 8b 36             	mov    (%r14),%r14
0x294:	e9 ee fd ff ff       	jmpq   0x87
0x299:	48 8b 3d 40 fb ff ff 	mov    -0x4c0(%rip),%rdi        # 0xfffffde0
0x2a0:	be 20 00 00 00       	mov    $0x20,%esi
0x2a5:	48 63 f6             	movslq %esi,%rsi
0x2a8:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x2ac:	48 83 ec 10          	sub    $0x10,%rsp
0x2b0:	89 04 24             	mov    %eax,(%rsp)
0x2b3:	41 bb 04 00 00 00    	mov    $0x4,%r11d
0x2b9:	48 83 ec 10          	sub    $0x10,%rsp
0x2bd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2c1:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x2c6:	40 8b 34 24          	rex mov (%rsp),%esi
0x2ca:	48 8b c7             	mov    %rdi,%rax
0x2cd:	99                   	cltd   
0x2ce:	f7 fe                	idiv   %esi
0x2d0:	48 83 c4 10          	add    $0x10,%rsp
0x2d4:	89 04 24             	mov    %eax,(%rsp)
0x2d7:	8b 14 24             	mov    (%rsp),%edx
0x2da:	48 8b 3d 07 fb ff ff 	mov    -0x4f9(%rip),%rdi        # 0xfffffde8
0x2e1:	be 1c 00 00 00       	mov    $0x1c,%esi
0x2e6:	48 63 f6             	movslq %esi,%rsi
0x2e9:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x2ec:	48 83 c4 10          	add    $0x10,%rsp
0x2f0:	48 8b 3d f9 fa ff ff 	mov    -0x507(%rip),%rdi        # 0xfffffdf0
0x2f7:	be 1c 00 00 00       	mov    $0x1c,%esi
0x2fc:	48 63 f6             	movslq %esi,%rsi
0x2ff:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x303:	48 83 ec 10          	sub    $0x10,%rsp
0x307:	89 04 24             	mov    %eax,(%rsp)
0x30a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x30e:	b8 00 00 00 00       	mov    $0x0,%eax
0x313:	48 83 c4 10          	add    $0x10,%rsp
0x317:	44 3b d8             	cmp    %eax,%r11d
0x31a:	74 33                	je     0x34f
0x31c:	48 8b 3d d5 fa ff ff 	mov    -0x52b(%rip),%rdi        # 0xfffffdf8
0x323:	be 0d 00 00 00       	mov    $0xd,%esi
0x328:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x32c:	48 8b c8             	mov    %rax,%rcx
0x32f:	48 63 f6             	movslq %esi,%rsi
0x332:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x337:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x33d:	0f 8d 07 00 00 00    	jge    0x34a
0x343:	83 c1 01             	add    $0x1,%ecx
0x346:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x34a:	e9 55 00 00 00       	jmpq   0x3a4
0x34f:	48 8b 3d aa fa ff ff 	mov    -0x556(%rip),%rdi        # 0xfffffe00
0x356:	be 0e 00 00 00       	mov    $0xe,%esi
0x35b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x35f:	48 8b c8             	mov    %rax,%rcx
0x362:	48 63 f6             	movslq %esi,%rsi
0x365:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x36a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x370:	0f 8d 07 00 00 00    	jge    0x37d
0x376:	83 c1 01             	add    $0x1,%ecx
0x379:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x37d:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x383:	48 83 ec 10          	sub    $0x10,%rsp
0x387:	44 89 1c 24          	mov    %r11d,(%rsp)
0x38b:	8b 14 24             	mov    (%rsp),%edx
0x38e:	48 8b 3d 73 fa ff ff 	mov    -0x58d(%rip),%rdi        # 0xfffffe08
0x395:	be 1c 00 00 00       	mov    $0x1c,%esi
0x39a:	48 63 f6             	movslq %esi,%rsi
0x39d:	89 14 37             	mov    %edx,(%rdi,%rsi,1)
0x3a0:	48 83 c4 10          	add    $0x10,%rsp
0x3a4:	48 8b 3d 65 fa ff ff 	mov    -0x59b(%rip),%rdi        # 0xfffffe10
0x3ab:	be 20 00 00 00       	mov    $0x20,%esi
0x3b0:	48 63 f6             	movslq %esi,%rsi
0x3b3:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x3b7:	48 83 ec 10          	sub    $0x10,%rsp
0x3bb:	89 04 24             	mov    %eax,(%rsp)
0x3be:	48 8b 3d 53 fa ff ff 	mov    -0x5ad(%rip),%rdi        # 0xfffffe18
0x3c5:	be 1c 00 00 00       	mov    $0x1c,%esi
0x3ca:	48 63 f6             	movslq %esi,%rsi
0x3cd:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x3d1:	48 83 ec 10          	sub    $0x10,%rsp
0x3d5:	89 04 24             	mov    %eax,(%rsp)
0x3d8:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x3dd:	40 8b 34 24          	rex mov (%rsp),%esi
0x3e1:	2b fe                	sub    %esi,%edi
0x3e3:	48 8b c7             	mov    %rdi,%rax
0x3e6:	48 83 c4 10          	add    $0x10,%rsp
0x3ea:	89 04 24             	mov    %eax,(%rsp)
0x3ed:	44 8b 1c 24          	mov    (%rsp),%r11d
0x3f1:	48 83 c4 10          	add    $0x10,%rsp
0x3f5:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x3f9:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x3fd:	48 83 ec 10          	sub    $0x10,%rsp
0x401:	44 89 1c 24          	mov    %r11d,(%rsp)
0x405:	48 8b 3d 14 fa ff ff 	mov    -0x5ec(%rip),%rdi        # 0xfffffe20
0x40c:	be 24 00 00 00       	mov    $0x24,%esi
0x411:	48 63 f6             	movslq %esi,%rsi
0x414:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x418:	48 83 ec 10          	sub    $0x10,%rsp
0x41c:	89 04 24             	mov    %eax,(%rsp)
0x41f:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x424:	8b 04 24             	mov    (%rsp),%eax
0x427:	48 83 c4 20          	add    $0x20,%rsp
0x42b:	44 3b d8             	cmp    %eax,%r11d
0x42e:	7c 33                	jl     0x463
0x430:	48 8b 3d f1 f9 ff ff 	mov    -0x60f(%rip),%rdi        # 0xfffffe28
0x437:	be 0f 00 00 00       	mov    $0xf,%esi
0x43c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x440:	48 8b c8             	mov    %rax,%rcx
0x443:	48 63 f6             	movslq %esi,%rsi
0x446:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x44b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x451:	0f 8d 07 00 00 00    	jge    0x45e
0x457:	83 c1 01             	add    $0x1,%ecx
0x45a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x45e:	e9 87 09 00 00       	jmpq   0xdea
0x463:	48 8b 3d c6 f9 ff ff 	mov    -0x63a(%rip),%rdi        # 0xfffffe30
0x46a:	be 10 00 00 00       	mov    $0x10,%esi
0x46f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x473:	48 8b c8             	mov    %rax,%rcx
0x476:	48 63 f6             	movslq %esi,%rsi
0x479:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x47e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x484:	0f 8d 07 00 00 00    	jge    0x491
0x48a:	83 c1 01             	add    $0x1,%ecx
0x48d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x491:	48 8b 3d a0 f9 ff ff 	mov    -0x660(%rip),%rdi        # 0xfffffe38
0x498:	be 10 00 00 00       	mov    $0x10,%esi
0x49d:	48 63 f6             	movslq %esi,%rsi
0x4a0:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x4a4:	48 83 ec 10          	sub    $0x10,%rsp
0x4a8:	48 89 04 24          	mov    %rax,(%rsp)
0x4ac:	48 83 ec 10          	sub    $0x10,%rsp
0x4b0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x4b5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x4b9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x4bd:	48 83 c4 10          	add    $0x10,%rsp
0x4c1:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x4c5:	48 8b 3c 24          	mov    (%rsp),%rdi
0x4c9:	48 8b f7             	mov    %rdi,%rsi
0x4cc:	4d 33 db             	xor    %r11,%r11
0x4cf:	49 3b f3             	cmp    %r11,%rsi
0x4d2:	0f 84 7b 00 00 00    	je     0x553
0x4d8:	48 8b 3d 61 f9 ff ff 	mov    -0x69f(%rip),%rdi        # 0xfffffe40
0x4df:	49 8b ce             	mov    %r14,%rcx
0x4e2:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x4e6:	48 8b d9             	mov    %rcx,%rbx
0x4e9:	83 e3 ff             	and    $0xffffffff,%ebx
0x4ec:	48 8b ce             	mov    %rsi,%rcx
0x4ef:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x4f3:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x4fa:	00 fc 07 
0x4fd:	48 8b d1             	mov    %rcx,%rdx
0x500:	48 23 d0             	and    %rax,%rdx
0x503:	4c 8b c1             	mov    %rcx,%r8
0x506:	4c 23 c0             	and    %rax,%r8
0x509:	48 63 c3             	movslq %ebx,%rax
0x50c:	b9 22 00 00 00       	mov    $0x22,%ecx
0x511:	48 d3 e0             	shl    %cl,%rax
0x514:	4c 0b c0             	or     %rax,%r8
0x517:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x51e:	00 00 08 
0x521:	4c 0b c0             	or     %rax,%r8
0x524:	48 8b ce             	mov    %rsi,%rcx
0x527:	48 8b c2             	mov    %rdx,%rax
0x52a:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x52e:	f0 4c 0f b1 01       	lock cmpxchg %r8,(%rcx)
0x533:	48 8b c8             	mov    %rax,%rcx
0x536:	48 3b ca             	cmp    %rdx,%rcx
0x539:	0f 84 23 00 00 00    	je     0x562
0x53f:	48 8b d0             	mov    %rax,%rdx
0x542:	48 8b cb             	mov    %rbx,%rcx
0x545:	90                   	nop
0x546:	90                   	nop
0x547:	90                   	nop
0x548:	e8 00 00 00 00       	callq  0x54d
0x54d:	90                   	nop
0x54e:	e9 0f 00 00 00       	jmpq   0x562
0x553:	e8 00 00 00 00       	callq  0x558
0x558:	90                   	nop
0x559:	48 8b f8             	mov    %rax,%rdi
0x55c:	e8 00 00 00 00       	callq  0x561
0x561:	90                   	nop
0x562:	48 83 c4 10          	add    $0x10,%rsp
0x566:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x56a:	48 83 ec 10          	sub    $0x10,%rsp
0x56e:	44 89 1c 24          	mov    %r11d,(%rsp)
0x572:	48 8b 3d cf f8 ff ff 	mov    -0x731(%rip),%rdi        # 0xfffffe48
0x579:	be 18 00 00 00       	mov    $0x18,%esi
0x57e:	48 63 f6             	movslq %esi,%rsi
0x581:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0x585:	48 83 ec 10          	sub    $0x10,%rsp
0x589:	89 04 24             	mov    %eax,(%rsp)
0x58c:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0x591:	40 8b 34 24          	rex mov (%rsp),%esi
0x595:	2b fe                	sub    %esi,%edi
0x597:	48 8b c7             	mov    %rdi,%rax
0x59a:	48 83 c4 10          	add    $0x10,%rsp
0x59e:	89 04 24             	mov    %eax,(%rsp)
0x5a1:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x5a5:	48 83 ec 10          	sub    $0x10,%rsp
0x5a9:	44 89 1c 24          	mov    %r11d,(%rsp)
0x5ad:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x5b2:	8b 04 24             	mov    (%rsp),%eax
0x5b5:	48 83 c4 20          	add    $0x20,%rsp
0x5b9:	44 3b d8             	cmp    %eax,%r11d
0x5bc:	7f 33                	jg     0x5f1
0x5be:	48 8b 3d 8b f8 ff ff 	mov    -0x775(%rip),%rdi        # 0xfffffe50
0x5c5:	be 11 00 00 00       	mov    $0x11,%esi
0x5ca:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x5ce:	48 8b c8             	mov    %rax,%rcx
0x5d1:	48 63 f6             	movslq %esi,%rsi
0x5d4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x5d9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x5df:	0f 8d 07 00 00 00    	jge    0x5ec
0x5e5:	83 c1 01             	add    $0x1,%ecx
0x5e8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5ec:	e9 a4 00 00 00       	jmpq   0x695
0x5f1:	48 8b 3d 60 f8 ff ff 	mov    -0x7a0(%rip),%rdi        # 0xfffffe58
0x5f8:	be 12 00 00 00       	mov    $0x12,%esi
0x5fd:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x601:	48 8b c8             	mov    %rax,%rcx
0x604:	48 63 f6             	movslq %esi,%rsi
0x607:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x60c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x612:	0f 8d 07 00 00 00    	jge    0x61f
0x618:	83 c1 01             	add    $0x1,%ecx
0x61b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x61f:	48 8b 3d 3a f8 ff ff 	mov    -0x7c6(%rip),%rdi        # 0xfffffe60
0x626:	be 10 00 00 00       	mov    $0x10,%esi
0x62b:	48 63 f6             	movslq %esi,%rsi
0x62e:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x632:	48 83 ec 10          	sub    $0x10,%rsp
0x636:	48 89 04 24          	mov    %rax,(%rsp)
0x63a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x63e:	41 85 03             	test   %eax,(%r11)
0x641:	48 8b 3c 24          	mov    (%rsp),%rdi
0x645:	90                   	nop
0x646:	90                   	nop
0x647:	90                   	nop
0x648:	e8 00 00 00 00       	callq  0x64d
0x64d:	90                   	nop
0x64e:	48 8b 3d 13 f8 ff ff 	mov    -0x7ed(%rip),%rdi        # 0xfffffe68
0x655:	be 14 00 00 00       	mov    $0x14,%esi
0x65a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x65e:	48 8b c8             	mov    %rax,%rcx
0x661:	48 63 f6             	movslq %esi,%rsi
0x664:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x669:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x66f:	0f 8d 07 00 00 00    	jge    0x67c
0x675:	83 c1 01             	add    $0x1,%ecx
0x678:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x67c:	48 8b 3d ed f7 ff ff 	mov    -0x813(%rip),%rdi        # 0xfffffe70
0x683:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x687:	83 e8 01             	sub    $0x1,%eax
0x68a:	89 47 30             	mov    %eax,0x30(%rdi)
0x68d:	4d 8b 36             	mov    (%r14),%r14
0x690:	e9 d1 fe ff ff       	jmpq   0x566
0x695:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x699:	48 83 ec 10          	sub    $0x10,%rsp
0x69d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6a1:	48 8b 3c 24          	mov    (%rsp),%rdi
0x6a5:	48 8b f7             	mov    %rdi,%rsi
0x6a8:	4d 33 db             	xor    %r11,%r11
0x6ab:	49 3b f3             	cmp    %r11,%rsi
0x6ae:	0f 84 76 00 00 00    	je     0x72a
0x6b4:	48 8b 3d bd f7 ff ff 	mov    -0x843(%rip),%rdi        # 0xfffffe78
0x6bb:	49 8b ce             	mov    %r14,%rcx
0x6be:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x6c2:	48 8b d9             	mov    %rcx,%rbx
0x6c5:	83 e3 ff             	and    $0xffffffff,%ebx
0x6c8:	48 8b ce             	mov    %rsi,%rcx
0x6cb:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x6cf:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x6d6:	00 fc 07 
0x6d9:	48 8b d1             	mov    %rcx,%rdx
0x6dc:	48 23 d0             	and    %rax,%rdx
0x6df:	4c 8b c1             	mov    %rcx,%r8
0x6e2:	4c 23 c0             	and    %rax,%r8
0x6e5:	48 63 c3             	movslq %ebx,%rax
0x6e8:	b9 22 00 00 00       	mov    $0x22,%ecx
0x6ed:	48 d3 e0             	shl    %cl,%rax
0x6f0:	4c 0b c0             	or     %rax,%r8
0x6f3:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x6fa:	00 00 08 
0x6fd:	4c 0b c0             	or     %rax,%r8
0x700:	48 8b ce             	mov    %rsi,%rcx
0x703:	49 8b c0             	mov    %r8,%rax
0x706:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x70a:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x70f:	48 8b d0             	mov    %rax,%rdx
0x712:	49 3b d0             	cmp    %r8,%rdx
0x715:	0f 84 0f 00 00 00    	je     0x72a
0x71b:	48 8b d0             	mov    %rax,%rdx
0x71e:	48 8b cb             	mov    %rbx,%rcx
0x721:	90                   	nop
0x722:	90                   	nop
0x723:	90                   	nop
0x724:	e8 00 00 00 00       	callq  0x729
0x729:	90                   	nop
0x72a:	48 83 c4 10          	add    $0x10,%rsp
0x72e:	48 8b 3d 4b f7 ff ff 	mov    -0x8b5(%rip),%rdi        # 0xfffffe80
0x735:	be 15 00 00 00       	mov    $0x15,%esi
0x73a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x73e:	48 8b c8             	mov    %rax,%rcx
0x741:	48 63 f6             	movslq %esi,%rsi
0x744:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x749:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x74f:	0f 8d 07 00 00 00    	jge    0x75c
0x755:	83 c1 01             	add    $0x1,%ecx
0x758:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x75c:	e9 8f 01 00 00       	jmpq   0x8f0
0x761:	49 8b fe             	mov    %r14,%rdi
0x764:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x768:	85 07                	test   %eax,(%rdi)
0x76a:	e8 00 00 00 00       	callq  0x76f
0x76f:	90                   	nop
0x770:	48 83 ec 10          	sub    $0x10,%rsp
0x774:	48 89 04 24          	mov    %rax,(%rsp)
0x778:	4c 8b 1c 24          	mov    (%rsp),%r11
0x77c:	48 83 c4 10          	add    $0x10,%rsp
0x780:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x784:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x788:	48 83 ec 10          	sub    $0x10,%rsp
0x78c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x790:	48 8b 3c 24          	mov    (%rsp),%rdi
0x794:	48 8b f7             	mov    %rdi,%rsi
0x797:	4d 33 db             	xor    %r11,%r11
0x79a:	49 3b f3             	cmp    %r11,%rsi
0x79d:	0f 84 76 00 00 00    	je     0x819
0x7a3:	48 8b 3d de f6 ff ff 	mov    -0x922(%rip),%rdi        # 0xfffffe88
0x7aa:	49 8b ce             	mov    %r14,%rcx
0x7ad:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x7b1:	48 8b d9             	mov    %rcx,%rbx
0x7b4:	83 e3 ff             	and    $0xffffffff,%ebx
0x7b7:	48 8b ce             	mov    %rsi,%rcx
0x7ba:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x7be:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x7c5:	00 fc 07 
0x7c8:	48 8b d1             	mov    %rcx,%rdx
0x7cb:	48 23 d0             	and    %rax,%rdx
0x7ce:	4c 8b c1             	mov    %rcx,%r8
0x7d1:	4c 23 c0             	and    %rax,%r8
0x7d4:	48 63 c3             	movslq %ebx,%rax
0x7d7:	b9 22 00 00 00       	mov    $0x22,%ecx
0x7dc:	48 d3 e0             	shl    %cl,%rax
0x7df:	4c 0b c0             	or     %rax,%r8
0x7e2:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x7e9:	00 00 08 
0x7ec:	4c 0b c0             	or     %rax,%r8
0x7ef:	48 8b ce             	mov    %rsi,%rcx
0x7f2:	49 8b c0             	mov    %r8,%rax
0x7f5:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x7f9:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x7fe:	48 8b d0             	mov    %rax,%rdx
0x801:	49 3b d0             	cmp    %r8,%rdx
0x804:	0f 84 0f 00 00 00    	je     0x819
0x80a:	48 8b d0             	mov    %rax,%rdx
0x80d:	48 8b cb             	mov    %rbx,%rcx
0x810:	90                   	nop
0x811:	90                   	nop
0x812:	90                   	nop
0x813:	e8 00 00 00 00       	callq  0x818
0x818:	90                   	nop
0x819:	48 83 c4 10          	add    $0x10,%rsp
0x81d:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x821:	48 83 ec 10          	sub    $0x10,%rsp
0x825:	4c 89 1c 24          	mov    %r11,(%rsp)
0x829:	48 8b 3c 24          	mov    (%rsp),%rdi
0x82d:	4d 33 db             	xor    %r11,%r11
0x830:	49 3b fb             	cmp    %r11,%rdi
0x833:	0f 84 62 00 00 00    	je     0x89b
0x839:	48 8b 0d 50 f6 ff ff 	mov    -0x9b0(%rip),%rcx        # 0xfffffe90
0x840:	4d 33 db             	xor    %r11,%r11
0x843:	49 3b fb             	cmp    %r11,%rdi
0x846:	0f 84 41 00 00 00    	je     0x88d
0x84c:	48 8b 1f             	mov    (%rdi),%rbx
0x84f:	48 3b d9             	cmp    %rcx,%rbx
0x852:	0f 84 2b 00 00 00    	je     0x883
0x858:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x85c:	b8 06 00 00 00       	mov    $0x6,%eax
0x861:	99                   	cltd   
0x862:	41 f7 f8             	idiv   %r8d
0x865:	4c 8b ca             	mov    %rdx,%r9
0x868:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x86c:	45 03 c8             	add    %r8d,%r9d
0x86f:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x874:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x879:	41 83 f9 06          	cmp    $0x6,%r9d
0x87d:	0f 85 0a 00 00 00    	jne    0x88d
0x883:	be 01 00 00 00       	mov    $0x1,%esi
0x888:	e9 05 00 00 00       	jmpq   0x892
0x88d:	be 00 00 00 00       	mov    $0x0,%esi
0x892:	83 fe 00             	cmp    $0x0,%esi
0x895:	0f 84 44 00 00 00    	je     0x8df
0x89b:	48 8b f4             	mov    %rsp,%rsi
0x89e:	48 8b d5             	mov    %rbp,%rdx
0x8a1:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x8a1
0x8a8:	48 8b 05 e9 f5 ff ff 	mov    -0xa17(%rip),%rax        # 0xfffffe98
0x8af:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x8b3:	48 8b c1             	mov    %rcx,%rax
0x8b6:	48 2b c3             	sub    %rbx,%rax
0x8b9:	b9 01 00 00 00       	mov    $0x1,%ecx
0x8be:	48 d3 e0             	shl    %cl,%rax
0x8c1:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x8c8:	00 00 00 
0x8cb:	49 0b c3             	or     %r11,%rax
0x8ce:	48 8b c8             	mov    %rax,%rcx
0x8d1:	90                   	nop
0x8d2:	90                   	nop
0x8d3:	90                   	nop
0x8d4:	e8 00 00 00 00       	callq  0x8d9
0x8d9:	90                   	nop
0x8da:	e9 0d 00 00 00       	jmpq   0x8ec
0x8df:	48 8b 3d ba f5 ff ff 	mov    -0xa46(%rip),%rdi        # 0xfffffea0
0x8e6:	e8 00 00 00 00       	callq  0x8eb
0x8eb:	90                   	nop
0x8ec:	48 83 c4 10          	add    $0x10,%rsp
0x8f0:	48 8b 3d b1 f5 ff ff 	mov    -0xa4f(%rip),%rdi        # 0xfffffea8
0x8f7:	be 16 00 00 00       	mov    $0x16,%esi
0x8fc:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x900:	48 8b c8             	mov    %rax,%rcx
0x903:	48 63 f6             	movslq %esi,%rsi
0x906:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x90b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x911:	0f 8d 07 00 00 00    	jge    0x91e
0x917:	83 c1 01             	add    $0x1,%ecx
0x91a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x91e:	e9 23 00 00 00       	jmpq   0x946
0x923:	49 8b fe             	mov    %r14,%rdi
0x926:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x92a:	85 07                	test   %eax,(%rdi)
0x92c:	e8 00 00 00 00       	callq  0x931
0x931:	90                   	nop
0x932:	48 83 ec 10          	sub    $0x10,%rsp
0x936:	48 89 04 24          	mov    %rax,(%rsp)
0x93a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x93e:	48 83 c4 10          	add    $0x10,%rsp
0x942:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x946:	48 8b 3d 63 f5 ff ff 	mov    -0xa9d(%rip),%rdi        # 0xfffffeb0
0x94d:	be 18 00 00 00       	mov    $0x18,%esi
0x952:	48 63 f6             	movslq %esi,%rsi
0x955:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x959:	48 83 ec 10          	sub    $0x10,%rsp
0x95d:	48 89 04 24          	mov    %rax,(%rsp)
0x961:	48 8b 3d 50 f5 ff ff 	mov    -0xab0(%rip),%rdi        # 0xfffffeb8
0x968:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x96c:	48 8b 35 4d f5 ff ff 	mov    -0xab3(%rip),%rsi        # 0xfffffec0
0x973:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x977:	49 8b ce             	mov    %r14,%rcx
0x97a:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x97e:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x985:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x98c:	48 8b d9             	mov    %rcx,%rbx
0x98f:	48 03 da             	add    %rdx,%rbx
0x992:	4c 8b cb             	mov    %rbx,%r9
0x995:	4d 3b c8             	cmp    %r8,%r9
0x998:	0f 86 14 00 00 00    	jbe    0x9b2
0x99e:	48 8b fe             	mov    %rsi,%rdi
0x9a1:	48 8b f2             	mov    %rdx,%rsi
0x9a4:	48 8b d0             	mov    %rax,%rdx
0x9a7:	e8 00 00 00 00       	callq  0x9ac
0x9ac:	90                   	nop
0x9ad:	e9 0a 00 00 00       	jmpq   0x9bc
0x9b2:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x9b9:	48 8b c1             	mov    %rcx,%rax
0x9bc:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x9c0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x9c4:	90                   	nop
0x9c5:	90                   	nop
0x9c6:	90                   	nop
0x9c7:	e8 00 00 00 00       	callq  0x9cc
0x9cc:	90                   	nop
0x9cd:	90                   	nop
0x9ce:	90                   	nop
0x9cf:	e8 00 00 00 00       	callq  0x9d4
0x9d4:	90                   	nop
0x9d5:	83 f8 00             	cmp    $0x0,%eax
0x9d8:	0f 84 27 00 00 00    	je     0xa05
0x9de:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x9e2:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x9e6:	85 06                	test   %eax,(%rsi)
0x9e8:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x9ec:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x9f0:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x9f4:	83 e2 ff             	and    $0xffffffff,%edx
0x9f7:	48 8b fa             	mov    %rdx,%rdi
0x9fa:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x9fe:	90                   	nop
0x9ff:	e8 00 00 00 00       	callq  0xa04
0xa04:	90                   	nop
0xa05:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xa09:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xa0d:	48 89 38             	mov    %rdi,(%rax)
0xa10:	48 83 ec 10          	sub    $0x10,%rsp
0xa14:	48 89 04 24          	mov    %rax,(%rsp)
0xa18:	48 83 ec 10          	sub    $0x10,%rsp
0xa1c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa21:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa25:	4c 8b 1c 24          	mov    (%rsp),%r11
0xa29:	41 85 03             	test   %eax,(%r11)
0xa2c:	90                   	nop
0xa2d:	90                   	nop
0xa2e:	90                   	nop
0xa2f:	90                   	nop
0xa30:	e8 00 00 00 00       	callq  0xa35
0xa35:	90                   	nop
0xa36:	4c 8b 1d 8b f4 ff ff 	mov    -0xb75(%rip),%r11        # 0xfffffec8
0xa3d:	48 83 ec 10          	sub    $0x10,%rsp
0xa41:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa45:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa4a:	41 85 03             	test   %eax,(%r11)
0xa4d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xa52:	e8 00 00 00 00       	callq  0xa57
0xa57:	90                   	nop
0xa58:	48 83 ec 10          	sub    $0x10,%rsp
0xa5c:	48 89 04 24          	mov    %rax,(%rsp)
0xa60:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xa64:	48 83 ec 10          	sub    $0x10,%rsp
0xa68:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa6c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa71:	41 85 03             	test   %eax,(%r11)
0xa74:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xa79:	e8 00 00 00 00       	callq  0xa7e
0xa7e:	90                   	nop
0xa7f:	48 83 ec 10          	sub    $0x10,%rsp
0xa83:	48 89 04 24          	mov    %rax,(%rsp)
0xa87:	4c 8b 1d 42 f4 ff ff 	mov    -0xbbe(%rip),%r11        # 0xfffffed0
0xa8e:	48 83 ec 10          	sub    $0x10,%rsp
0xa92:	4c 89 1c 24          	mov    %r11,(%rsp)
0xa96:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xa9b:	41 85 03             	test   %eax,(%r11)
0xa9e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xaa3:	e8 00 00 00 00       	callq  0xaa8
0xaa8:	90                   	nop
0xaa9:	48 83 ec 10          	sub    $0x10,%rsp
0xaad:	48 89 04 24          	mov    %rax,(%rsp)
0xab1:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xab5:	48 83 ec 10          	sub    $0x10,%rsp
0xab9:	44 89 1c 24          	mov    %r11d,(%rsp)
0xabd:	48 8b 3d 14 f4 ff ff 	mov    -0xbec(%rip),%rdi        # 0xfffffed8
0xac4:	be 1c 00 00 00       	mov    $0x1c,%esi
0xac9:	48 63 f6             	movslq %esi,%rsi
0xacc:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xad0:	48 83 ec 10          	sub    $0x10,%rsp
0xad4:	89 04 24             	mov    %eax,(%rsp)
0xad7:	40 8b 7c 24 10       	rex mov 0x10(%rsp),%edi
0xadc:	40 8b 34 24          	rex mov (%rsp),%esi
0xae0:	03 fe                	add    %esi,%edi
0xae2:	48 8b c7             	mov    %rdi,%rax
0xae5:	48 83 c4 10          	add    $0x10,%rsp
0xae9:	89 04 24             	mov    %eax,(%rsp)
0xaec:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xaf1:	41 85 03             	test   %eax,(%r11)
0xaf4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xaf9:	e8 00 00 00 00       	callq  0xafe
0xafe:	90                   	nop
0xaff:	48 83 ec 10          	sub    $0x10,%rsp
0xb03:	48 89 04 24          	mov    %rax,(%rsp)
0xb07:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb0b:	41 85 03             	test   %eax,(%r11)
0xb0e:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb12:	e8 00 00 00 00       	callq  0xb17
0xb17:	90                   	nop
0xb18:	48 83 ec 10          	sub    $0x10,%rsp
0xb1c:	48 89 04 24          	mov    %rax,(%rsp)
0xb20:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xb25:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xb2a:	48 8b 15 af f3 ff ff 	mov    -0xc51(%rip),%rdx        # 0xfffffee0
0xb31:	b9 1e 00 00 00       	mov    $0x1e,%ecx
0xb36:	48 8b c6             	mov    %rsi,%rax
0xb39:	48 8b 00             	mov    (%rax),%rax
0xb3c:	48 63 ff             	movslq %edi,%rdi
0xb3f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xb44:	48 8b fa             	mov    %rdx,%rdi
0xb47:	48 8b d1             	mov    %rcx,%rdx
0xb4a:	b9 03 00 00 00       	mov    $0x3,%ecx
0xb4f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb53:	90                   	nop
0xb54:	90                   	nop
0xb55:	e8 00 00 00 00       	callq  0xb5a
0xb5a:	90                   	nop
0xb5b:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xb5f:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xb63:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xb68:	ff d0                	callq  *%rax
0xb6a:	90                   	nop
0xb6b:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xb71:	48 83 ec 10          	sub    $0x10,%rsp
0xb75:	44 89 1c 24          	mov    %r11d,(%rsp)
0xb79:	44 8b 1c 24          	mov    (%rsp),%r11d
0xb7d:	48 83 c4 10          	add    $0x10,%rsp
0xb81:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xb85:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0xb89:	48 83 ec 10          	sub    $0x10,%rsp
0xb8d:	44 89 1c 24          	mov    %r11d,(%rsp)
0xb91:	48 8b 3d 50 f3 ff ff 	mov    -0xcb0(%rip),%rdi        # 0xfffffee8
0xb98:	be 1c 00 00 00       	mov    $0x1c,%esi
0xb9d:	48 63 f6             	movslq %esi,%rsi
0xba0:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xba4:	48 83 ec 10          	sub    $0x10,%rsp
0xba8:	89 04 24             	mov    %eax,(%rsp)
0xbab:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xbb0:	8b 04 24             	mov    (%rsp),%eax
0xbb3:	48 83 c4 20          	add    $0x20,%rsp
0xbb7:	44 3b d8             	cmp    %eax,%r11d
0xbba:	7c 33                	jl     0xbef
0xbbc:	48 8b 3d 2d f3 ff ff 	mov    -0xcd3(%rip),%rdi        # 0xfffffef0
0xbc3:	be 26 00 00 00       	mov    $0x26,%esi
0xbc8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbcc:	48 8b c8             	mov    %rax,%rcx
0xbcf:	48 63 f6             	movslq %esi,%rsi
0xbd2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xbd7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xbdd:	0f 8d 07 00 00 00    	jge    0xbea
0xbe3:	83 c1 01             	add    $0x1,%ecx
0xbe6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xbea:	e9 b4 01 00 00       	jmpq   0xda3
0xbef:	48 8b 3d 02 f3 ff ff 	mov    -0xcfe(%rip),%rdi        # 0xfffffef8
0xbf6:	be 27 00 00 00       	mov    $0x27,%esi
0xbfb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbff:	48 8b c8             	mov    %rax,%rcx
0xc02:	48 63 f6             	movslq %esi,%rsi
0xc05:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xc0a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xc10:	0f 8d 07 00 00 00    	jge    0xc1d
0xc16:	83 c1 01             	add    $0x1,%ecx
0xc19:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc1d:	48 8b 3d dc f2 ff ff 	mov    -0xd24(%rip),%rdi        # 0xffffff00
0xc24:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0xc28:	48 8b 35 d9 f2 ff ff 	mov    -0xd27(%rip),%rsi        # 0xffffff08
0xc2f:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xc33:	49 8b ce             	mov    %r14,%rcx
0xc36:	48 8b 41 08          	mov    0x8(%rcx),%rax
0xc3a:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0xc41:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0xc48:	48 8b d9             	mov    %rcx,%rbx
0xc4b:	48 03 da             	add    %rdx,%rbx
0xc4e:	4c 8b cb             	mov    %rbx,%r9
0xc51:	4d 3b c8             	cmp    %r8,%r9
0xc54:	0f 86 14 00 00 00    	jbe    0xc6e
0xc5a:	48 8b fe             	mov    %rsi,%rdi
0xc5d:	48 8b f2             	mov    %rdx,%rsi
0xc60:	48 8b d0             	mov    %rax,%rdx
0xc63:	e8 00 00 00 00       	callq  0xc68
0xc68:	90                   	nop
0xc69:	e9 0a 00 00 00       	jmpq   0xc78
0xc6e:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xc75:	48 8b c1             	mov    %rcx,%rax
0xc78:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xc7c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xc80:	90                   	nop
0xc81:	90                   	nop
0xc82:	90                   	nop
0xc83:	e8 00 00 00 00       	callq  0xc88
0xc88:	90                   	nop
0xc89:	90                   	nop
0xc8a:	90                   	nop
0xc8b:	e8 00 00 00 00       	callq  0xc90
0xc90:	90                   	nop
0xc91:	83 f8 00             	cmp    $0x0,%eax
0xc94:	0f 84 27 00 00 00    	je     0xcc1
0xc9a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xc9e:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xca2:	85 06                	test   %eax,(%rsi)
0xca4:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xca8:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xcac:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xcb0:	83 e2 ff             	and    $0xffffffff,%edx
0xcb3:	48 8b fa             	mov    %rdx,%rdi
0xcb6:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xcba:	90                   	nop
0xcbb:	e8 00 00 00 00       	callq  0xcc0
0xcc0:	90                   	nop
0xcc1:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xcc5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xcc9:	48 89 38             	mov    %rdi,(%rax)
0xccc:	48 83 ec 10          	sub    $0x10,%rsp
0xcd0:	48 89 04 24          	mov    %rax,(%rsp)
0xcd4:	48 83 ec 10          	sub    $0x10,%rsp
0xcd8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xcdd:	4c 89 1c 24          	mov    %r11,(%rsp)
0xce1:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xce5:	48 83 ec 10          	sub    $0x10,%rsp
0xce9:	44 89 1c 24          	mov    %r11d,(%rsp)
0xced:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xcf1:	41 83 c3 01          	add    $0x1,%r11d
0xcf5:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0xcf9:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xcfe:	41 85 03             	test   %eax,(%r11)
0xd01:	e8 00 00 00 00       	callq  0xd06
0xd06:	90                   	nop
0xd07:	bf 17 00 00 00       	mov    $0x17,%edi
0xd0c:	48 8b 34 24          	mov    (%rsp),%rsi
0xd10:	48 8b 15 f9 f1 ff ff 	mov    -0xe07(%rip),%rdx        # 0xffffff10
0xd17:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0xd1c:	48 8b c6             	mov    %rsi,%rax
0xd1f:	48 8b 00             	mov    (%rax),%rax
0xd22:	48 63 ff             	movslq %edi,%rdi
0xd25:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xd2a:	48 8b fa             	mov    %rdx,%rdi
0xd2d:	48 8b d1             	mov    %rcx,%rdx
0xd30:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd35:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd39:	90                   	nop
0xd3a:	90                   	nop
0xd3b:	e8 00 00 00 00       	callq  0xd40
0xd40:	90                   	nop
0xd41:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd45:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd49:	48 8b 3c 24          	mov    (%rsp),%rdi
0xd4d:	ff d0                	callq  *%rax
0xd4f:	90                   	nop
0xd50:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0xd54:	41 83 c3 01          	add    $0x1,%r11d
0xd58:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xd5c:	48 8b 3d b5 f1 ff ff 	mov    -0xe4b(%rip),%rdi        # 0xffffff18
0xd63:	be 32 00 00 00       	mov    $0x32,%esi
0xd68:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xd6c:	48 8b c8             	mov    %rax,%rcx
0xd6f:	48 63 f6             	movslq %esi,%rsi
0xd72:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xd77:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xd7d:	0f 8d 07 00 00 00    	jge    0xd8a
0xd83:	83 c1 01             	add    $0x1,%ecx
0xd86:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xd8a:	48 8b 3d 8f f1 ff ff 	mov    -0xe71(%rip),%rdi        # 0xffffff20
0xd91:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xd95:	83 e8 01             	sub    $0x1,%eax
0xd98:	89 47 30             	mov    %eax,0x30(%rdi)
0xd9b:	4d 8b 36             	mov    (%r14),%r14
0xd9e:	e9 e2 fd ff ff       	jmpq   0xb85
0xda3:	48 8b 3d 7e f1 ff ff 	mov    -0xe82(%rip),%rdi        # 0xffffff28
0xdaa:	be 33 00 00 00       	mov    $0x33,%esi
0xdaf:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdb3:	48 8b c8             	mov    %rax,%rcx
0xdb6:	48 63 f6             	movslq %esi,%rsi
0xdb9:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xdbe:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xdc4:	0f 8d 07 00 00 00    	jge    0xdd1
0xdca:	83 c1 01             	add    $0x1,%ecx
0xdcd:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xdd1:	48 8b 3d 58 f1 ff ff 	mov    -0xea8(%rip),%rdi        # 0xffffff30
0xdd8:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xddc:	83 e8 01             	sub    $0x1,%eax
0xddf:	89 47 30             	mov    %eax,0x30(%rdi)
0xde2:	4d 8b 36             	mov    (%r14),%r14
0xde5:	e9 0f f6 ff ff       	jmpq   0x3f9
0xdea:	48 8b 3d 47 f1 ff ff 	mov    -0xeb9(%rip),%rdi        # 0xffffff38
0xdf1:	be 10 00 00 00       	mov    $0x10,%esi
0xdf6:	48 63 f6             	movslq %esi,%rsi
0xdf9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xdfd:	48 83 ec 10          	sub    $0x10,%rsp
0xe01:	48 89 04 24          	mov    %rax,(%rsp)
0xe05:	48 83 ec 10          	sub    $0x10,%rsp
0xe09:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0xe0e:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe12:	4c 8b 1c 24          	mov    (%rsp),%r11
0xe16:	48 83 c4 10          	add    $0x10,%rsp
0xe1a:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0xe1e:	48 8b 3c 24          	mov    (%rsp),%rdi
0xe22:	48 8b f7             	mov    %rdi,%rsi
0xe25:	4d 33 db             	xor    %r11,%r11
0xe28:	49 3b f3             	cmp    %r11,%rsi
0xe2b:	0f 84 7b 00 00 00    	je     0xeac
0xe31:	48 8b 3d 08 f1 ff ff 	mov    -0xef8(%rip),%rdi        # 0xffffff40
0xe38:	49 8b ce             	mov    %r14,%rcx
0xe3b:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0xe3f:	48 8b d9             	mov    %rcx,%rbx
0xe42:	83 e3 ff             	and    $0xffffffff,%ebx
0xe45:	48 8b ce             	mov    %rsi,%rcx
0xe48:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0xe4c:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0xe53:	00 fc 07 
0xe56:	48 8b d1             	mov    %rcx,%rdx
0xe59:	48 23 d0             	and    %rax,%rdx
0xe5c:	4c 8b c1             	mov    %rcx,%r8
0xe5f:	4c 23 c0             	and    %rax,%r8
0xe62:	48 63 c3             	movslq %ebx,%rax
0xe65:	b9 22 00 00 00       	mov    $0x22,%ecx
0xe6a:	48 d3 e0             	shl    %cl,%rax
0xe6d:	4c 0b c0             	or     %rax,%r8
0xe70:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0xe77:	00 00 08 
0xe7a:	4c 0b c0             	or     %rax,%r8
0xe7d:	48 8b ce             	mov    %rsi,%rcx
0xe80:	48 8b c2             	mov    %rdx,%rax
0xe83:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0xe87:	f0 4c 0f b1 01       	lock cmpxchg %r8,(%rcx)
0xe8c:	48 8b c8             	mov    %rax,%rcx
0xe8f:	48 3b ca             	cmp    %rdx,%rcx
0xe92:	0f 84 23 00 00 00    	je     0xebb
0xe98:	48 8b d0             	mov    %rax,%rdx
0xe9b:	48 8b cb             	mov    %rbx,%rcx
0xe9e:	90                   	nop
0xe9f:	90                   	nop
0xea0:	90                   	nop
0xea1:	e8 00 00 00 00       	callq  0xea6
0xea6:	90                   	nop
0xea7:	e9 0f 00 00 00       	jmpq   0xebb
0xeac:	e8 00 00 00 00       	callq  0xeb1
0xeb1:	90                   	nop
0xeb2:	48 8b f8             	mov    %rax,%rdi
0xeb5:	e8 00 00 00 00       	callq  0xeba
0xeba:	90                   	nop
0xebb:	48 83 c4 10          	add    $0x10,%rsp
0xebf:	48 8b 3d 82 f0 ff ff 	mov    -0xf7e(%rip),%rdi        # 0xffffff48
0xec6:	be 18 00 00 00       	mov    $0x18,%esi
0xecb:	48 63 f6             	movslq %esi,%rsi
0xece:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xed2:	48 83 ec 10          	sub    $0x10,%rsp
0xed6:	89 04 24             	mov    %eax,(%rsp)
0xed9:	48 8b 3d 70 f0 ff ff 	mov    -0xf90(%rip),%rdi        # 0xffffff50
0xee0:	be 24 00 00 00       	mov    $0x24,%esi
0xee5:	48 63 f6             	movslq %esi,%rsi
0xee8:	48 63 04 37          	movslq (%rdi,%rsi,1),%rax
0xeec:	48 83 ec 10          	sub    $0x10,%rsp
0xef0:	89 04 24             	mov    %eax,(%rsp)
0xef3:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xef8:	8b 04 24             	mov    (%rsp),%eax
0xefb:	48 83 c4 20          	add    $0x20,%rsp
0xeff:	44 3b d8             	cmp    %eax,%r11d
0xf02:	7c 33                	jl     0xf37
0xf04:	48 8b 3d 4d f0 ff ff 	mov    -0xfb3(%rip),%rdi        # 0xffffff58
0xf0b:	be 34 00 00 00       	mov    $0x34,%esi
0xf10:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xf14:	48 8b c8             	mov    %rax,%rcx
0xf17:	48 63 f6             	movslq %esi,%rsi
0xf1a:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf1f:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf25:	0f 8d 07 00 00 00    	jge    0xf32
0xf2b:	83 c1 01             	add    $0x1,%ecx
0xf2e:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf32:	e9 a1 00 00 00       	jmpq   0xfd8
0xf37:	48 8b 3d 22 f0 ff ff 	mov    -0xfde(%rip),%rdi        # 0xffffff60
0xf3e:	be 35 00 00 00       	mov    $0x35,%esi
0xf43:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xf47:	48 8b c8             	mov    %rax,%rcx
0xf4a:	48 63 f6             	movslq %esi,%rsi
0xf4d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf52:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf58:	0f 8d 07 00 00 00    	jge    0xf65
0xf5e:	83 c1 01             	add    $0x1,%ecx
0xf61:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf65:	48 8b 3d fc ef ff ff 	mov    -0x1004(%rip),%rdi        # 0xffffff68
0xf6c:	be 10 00 00 00       	mov    $0x10,%esi
0xf71:	48 63 f6             	movslq %esi,%rsi
0xf74:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xf78:	48 83 ec 10          	sub    $0x10,%rsp
0xf7c:	48 89 04 24          	mov    %rax,(%rsp)
0xf80:	4c 8b 1c 24          	mov    (%rsp),%r11
0xf84:	41 85 03             	test   %eax,(%r11)
0xf87:	48 8b 3c 24          	mov    (%rsp),%rdi
0xf8b:	e8 00 00 00 00       	callq  0xf90
0xf90:	90                   	nop
0xf91:	48 8b 3d d8 ef ff ff 	mov    -0x1028(%rip),%rdi        # 0xffffff70
0xf98:	be 37 00 00 00       	mov    $0x37,%esi
0xf9d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xfa1:	48 8b c8             	mov    %rax,%rcx
0xfa4:	48 63 f6             	movslq %esi,%rsi
0xfa7:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xfac:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xfb2:	0f 8d 07 00 00 00    	jge    0xfbf
0xfb8:	83 c1 01             	add    $0x1,%ecx
0xfbb:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xfbf:	48 8b 3d b2 ef ff ff 	mov    -0x104e(%rip),%rdi        # 0xffffff78
0xfc6:	48 63 47 30          	movslq 0x30(%rdi),%rax
0xfca:	83 e8 01             	sub    $0x1,%eax
0xfcd:	89 47 30             	mov    %eax,0x30(%rdi)
0xfd0:	4d 8b 36             	mov    (%r14),%r14
0xfd3:	e9 e7 fe ff ff       	jmpq   0xebf
0xfd8:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0xfdc:	48 83 ec 10          	sub    $0x10,%rsp
0xfe0:	4c 89 1c 24          	mov    %r11,(%rsp)
0xfe4:	48 8b 3c 24          	mov    (%rsp),%rdi
0xfe8:	48 8b f7             	mov    %rdi,%rsi
0xfeb:	4d 33 db             	xor    %r11,%r11
0xfee:	49 3b f3             	cmp    %r11,%rsi
0xff1:	0f 84 76 00 00 00    	je     0x106d
0xff7:	48 8b 3d 82 ef ff ff 	mov    -0x107e(%rip),%rdi        # 0xffffff80
0xffe:	49 8b ce             	mov    %r14,%rcx
0x1001:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x1005:	48 8b d9             	mov    %rcx,%rbx
0x1008:	83 e3 ff             	and    $0xffffffff,%ebx
0x100b:	48 8b ce             	mov    %rsi,%rcx
0x100e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x1012:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x1019:	00 fc 07 
0x101c:	48 8b d1             	mov    %rcx,%rdx
0x101f:	48 23 d0             	and    %rax,%rdx
0x1022:	4c 8b c1             	mov    %rcx,%r8
0x1025:	4c 23 c0             	and    %rax,%r8
0x1028:	48 63 c3             	movslq %ebx,%rax
0x102b:	b9 22 00 00 00       	mov    $0x22,%ecx
0x1030:	48 d3 e0             	shl    %cl,%rax
0x1033:	4c 0b c0             	or     %rax,%r8
0x1036:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x103d:	00 00 08 
0x1040:	4c 0b c0             	or     %rax,%r8
0x1043:	48 8b ce             	mov    %rsi,%rcx
0x1046:	49 8b c0             	mov    %r8,%rax
0x1049:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x104d:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x1052:	48 8b d0             	mov    %rax,%rdx
0x1055:	49 3b d0             	cmp    %r8,%rdx
0x1058:	0f 84 0f 00 00 00    	je     0x106d
0x105e:	48 8b d0             	mov    %rax,%rdx
0x1061:	48 8b cb             	mov    %rbx,%rcx
0x1064:	90                   	nop
0x1065:	90                   	nop
0x1066:	90                   	nop
0x1067:	e8 00 00 00 00       	callq  0x106c
0x106c:	90                   	nop
0x106d:	48 83 c4 10          	add    $0x10,%rsp
0x1071:	48 8b 3d 10 ef ff ff 	mov    -0x10f0(%rip),%rdi        # 0xffffff88
0x1078:	be 38 00 00 00       	mov    $0x38,%esi
0x107d:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1081:	48 8b c8             	mov    %rax,%rcx
0x1084:	48 63 f6             	movslq %esi,%rsi
0x1087:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x108c:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1092:	0f 8d 07 00 00 00    	jge    0x109f
0x1098:	83 c1 01             	add    $0x1,%ecx
0x109b:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x109f:	e9 8f 01 00 00       	jmpq   0x1233
0x10a4:	49 8b fe             	mov    %r14,%rdi
0x10a7:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x10ab:	85 07                	test   %eax,(%rdi)
0x10ad:	e8 00 00 00 00       	callq  0x10b2
0x10b2:	90                   	nop
0x10b3:	48 83 ec 10          	sub    $0x10,%rsp
0x10b7:	48 89 04 24          	mov    %rax,(%rsp)
0x10bb:	4c 8b 1c 24          	mov    (%rsp),%r11
0x10bf:	48 83 c4 10          	add    $0x10,%rsp
0x10c3:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x10c7:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x10cb:	48 83 ec 10          	sub    $0x10,%rsp
0x10cf:	4c 89 1c 24          	mov    %r11,(%rsp)
0x10d3:	48 8b 3c 24          	mov    (%rsp),%rdi
0x10d7:	48 8b f7             	mov    %rdi,%rsi
0x10da:	4d 33 db             	xor    %r11,%r11
0x10dd:	49 3b f3             	cmp    %r11,%rsi
0x10e0:	0f 84 76 00 00 00    	je     0x115c
0x10e6:	48 8b 3d a3 ee ff ff 	mov    -0x115d(%rip),%rdi        # 0xffffff90
0x10ed:	49 8b ce             	mov    %r14,%rcx
0x10f0:	48 8b 49 40          	mov    0x40(%rcx),%rcx
0x10f4:	48 8b d9             	mov    %rcx,%rbx
0x10f7:	83 e3 ff             	and    $0xffffffff,%ebx
0x10fa:	48 8b ce             	mov    %rsi,%rcx
0x10fd:	48 8b 49 08          	mov    0x8(%rcx),%rcx
0x1101:	48 b8 fe ff ff ff 03 	movabs $0x7fc0003fffffffe,%rax
0x1108:	00 fc 07 
0x110b:	48 8b d1             	mov    %rcx,%rdx
0x110e:	48 23 d0             	and    %rax,%rdx
0x1111:	4c 8b c1             	mov    %rcx,%r8
0x1114:	4c 23 c0             	and    %rax,%r8
0x1117:	48 63 c3             	movslq %ebx,%rax
0x111a:	b9 22 00 00 00       	mov    $0x22,%ecx
0x111f:	48 d3 e0             	shl    %cl,%rax
0x1122:	4c 0b c0             	or     %rax,%r8
0x1125:	48 b8 00 00 00 00 00 	movabs $0x800000000000000,%rax
0x112c:	00 00 08 
0x112f:	4c 0b c0             	or     %rax,%r8
0x1132:	48 8b ce             	mov    %rsi,%rcx
0x1135:	49 8b c0             	mov    %r8,%rax
0x1138:	48 8d 49 08          	lea    0x8(%rcx),%rcx
0x113c:	f0 48 0f b1 11       	lock cmpxchg %rdx,(%rcx)
0x1141:	48 8b d0             	mov    %rax,%rdx
0x1144:	49 3b d0             	cmp    %r8,%rdx
0x1147:	0f 84 0f 00 00 00    	je     0x115c
0x114d:	48 8b d0             	mov    %rax,%rdx
0x1150:	48 8b cb             	mov    %rbx,%rcx
0x1153:	90                   	nop
0x1154:	90                   	nop
0x1155:	90                   	nop
0x1156:	e8 00 00 00 00       	callq  0x115b
0x115b:	90                   	nop
0x115c:	48 83 c4 10          	add    $0x10,%rsp
0x1160:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1164:	48 83 ec 10          	sub    $0x10,%rsp
0x1168:	4c 89 1c 24          	mov    %r11,(%rsp)
0x116c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1170:	4d 33 db             	xor    %r11,%r11
0x1173:	49 3b fb             	cmp    %r11,%rdi
0x1176:	0f 84 62 00 00 00    	je     0x11de
0x117c:	48 8b 0d 15 ee ff ff 	mov    -0x11eb(%rip),%rcx        # 0xffffff98
0x1183:	4d 33 db             	xor    %r11,%r11
0x1186:	49 3b fb             	cmp    %r11,%rdi
0x1189:	0f 84 41 00 00 00    	je     0x11d0
0x118f:	48 8b 1f             	mov    (%rdi),%rbx
0x1192:	48 3b d9             	cmp    %rcx,%rbx
0x1195:	0f 84 2b 00 00 00    	je     0x11c6
0x119b:	4c 63 43 5c          	movslq 0x5c(%rbx),%r8
0x119f:	b8 06 00 00 00       	mov    $0x6,%eax
0x11a4:	99                   	cltd   
0x11a5:	41 f7 f8             	idiv   %r8d
0x11a8:	4c 8b ca             	mov    %rdx,%r9
0x11ab:	4c 63 43 58          	movslq 0x58(%rbx),%r8
0x11af:	45 03 c8             	add    %r8d,%r9d
0x11b2:	4e 63 4c 8b 18       	movslq 0x18(%rbx,%r9,4),%r9
0x11b7:	4e 63 4c cb 18       	movslq 0x18(%rbx,%r9,8),%r9
0x11bc:	41 83 f9 06          	cmp    $0x6,%r9d
0x11c0:	0f 85 0a 00 00 00    	jne    0x11d0
0x11c6:	be 01 00 00 00       	mov    $0x1,%esi
0x11cb:	e9 05 00 00 00       	jmpq   0x11d5
0x11d0:	be 00 00 00 00       	mov    $0x0,%esi
0x11d5:	83 fe 00             	cmp    $0x0,%esi
0x11d8:	0f 84 44 00 00 00    	je     0x1222
0x11de:	48 8b f4             	mov    %rsp,%rsi
0x11e1:	48 8b d5             	mov    %rbp,%rdx
0x11e4:	48 8d 0d f9 ff ff ff 	lea    -0x7(%rip),%rcx        # 0x11e4
0x11eb:	48 8b 05 ae ed ff ff 	mov    -0x1252(%rip),%rax        # 0xffffffa0
0x11f2:	48 8b 58 10          	mov    0x10(%rax),%rbx
0x11f6:	48 8b c1             	mov    %rcx,%rax
0x11f9:	48 2b c3             	sub    %rbx,%rax
0x11fc:	b9 01 00 00 00       	mov    $0x1,%ecx
0x1201:	48 d3 e0             	shl    %cl,%rax
0x1204:	49 bb 01 00 00 00 00 	movabs $0x1,%r11
0x120b:	00 00 00 
0x120e:	49 0b c3             	or     %r11,%rax
0x1211:	48 8b c8             	mov    %rax,%rcx
0x1214:	90                   	nop
0x1215:	90                   	nop
0x1216:	90                   	nop
0x1217:	e8 00 00 00 00       	callq  0x121c
0x121c:	90                   	nop
0x121d:	e9 0d 00 00 00       	jmpq   0x122f
0x1222:	48 8b 3d 7f ed ff ff 	mov    -0x1281(%rip),%rdi        # 0xffffffa8
0x1229:	e8 00 00 00 00       	callq  0x122e
0x122e:	90                   	nop
0x122f:	48 83 c4 10          	add    $0x10,%rsp
0x1233:	48 8b 3d 76 ed ff ff 	mov    -0x128a(%rip),%rdi        # 0xffffffb0
0x123a:	be 39 00 00 00       	mov    $0x39,%esi
0x123f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1243:	48 8b c8             	mov    %rax,%rcx
0x1246:	48 63 f6             	movslq %esi,%rsi
0x1249:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x124e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1254:	0f 8d 07 00 00 00    	jge    0x1261
0x125a:	83 c1 01             	add    $0x1,%ecx
0x125d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1261:	e9 23 00 00 00       	jmpq   0x1289
0x1266:	49 8b fe             	mov    %r14,%rdi
0x1269:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x126d:	85 07                	test   %eax,(%rdi)
0x126f:	e8 00 00 00 00       	callq  0x1274
0x1274:	90                   	nop
0x1275:	48 83 ec 10          	sub    $0x10,%rsp
0x1279:	48 89 04 24          	mov    %rax,(%rsp)
0x127d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1281:	48 83 c4 10          	add    $0x10,%rsp
0x1285:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x1289:	48 8b 3d 28 ed ff ff 	mov    -0x12d8(%rip),%rdi        # 0xffffffb8
0x1290:	be 18 00 00 00       	mov    $0x18,%esi
0x1295:	48 63 f6             	movslq %esi,%rsi
0x1298:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x129c:	48 83 ec 10          	sub    $0x10,%rsp
0x12a0:	48 89 04 24          	mov    %rax,(%rsp)
0x12a4:	48 8b 3d 15 ed ff ff 	mov    -0x12eb(%rip),%rdi        # 0xffffffc0
0x12ab:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x12af:	48 8b 35 12 ed ff ff 	mov    -0x12ee(%rip),%rsi        # 0xffffffc8
0x12b6:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x12ba:	49 8b ce             	mov    %r14,%rcx
0x12bd:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x12c1:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x12c8:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x12cf:	48 8b d9             	mov    %rcx,%rbx
0x12d2:	48 03 da             	add    %rdx,%rbx
0x12d5:	4c 8b cb             	mov    %rbx,%r9
0x12d8:	4d 3b c8             	cmp    %r8,%r9
0x12db:	0f 86 14 00 00 00    	jbe    0x12f5
0x12e1:	48 8b fe             	mov    %rsi,%rdi
0x12e4:	48 8b f2             	mov    %rdx,%rsi
0x12e7:	48 8b d0             	mov    %rax,%rdx
0x12ea:	e8 00 00 00 00       	callq  0x12ef
0x12ef:	90                   	nop
0x12f0:	e9 0a 00 00 00       	jmpq   0x12ff
0x12f5:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x12fc:	48 8b c1             	mov    %rcx,%rax
0x12ff:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1303:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1307:	90                   	nop
0x1308:	90                   	nop
0x1309:	90                   	nop
0x130a:	e8 00 00 00 00       	callq  0x130f
0x130f:	90                   	nop
0x1310:	90                   	nop
0x1311:	90                   	nop
0x1312:	e8 00 00 00 00       	callq  0x1317
0x1317:	90                   	nop
0x1318:	83 f8 00             	cmp    $0x0,%eax
0x131b:	0f 84 27 00 00 00    	je     0x1348
0x1321:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1325:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1329:	85 06                	test   %eax,(%rsi)
0x132b:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x132f:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1333:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1337:	83 e2 ff             	and    $0xffffffff,%edx
0x133a:	48 8b fa             	mov    %rdx,%rdi
0x133d:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1341:	90                   	nop
0x1342:	e8 00 00 00 00       	callq  0x1347
0x1347:	90                   	nop
0x1348:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x134c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1350:	48 89 38             	mov    %rdi,(%rax)
0x1353:	48 83 ec 10          	sub    $0x10,%rsp
0x1357:	48 89 04 24          	mov    %rax,(%rsp)
0x135b:	48 83 ec 10          	sub    $0x10,%rsp
0x135f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1364:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1368:	4c 8b 1c 24          	mov    (%rsp),%r11
0x136c:	41 85 03             	test   %eax,(%r11)
0x136f:	90                   	nop
0x1370:	e8 00 00 00 00       	callq  0x1375
0x1375:	90                   	nop
0x1376:	48 83 ec 10          	sub    $0x10,%rsp
0x137a:	4c 8b 1d 4f ec ff ff 	mov    -0x13b1(%rip),%r11        # 0xffffffd0
0x1381:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1385:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1389:	41 85 03             	test   %eax,(%r11)
0x138c:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1390:	e8 00 00 00 00       	callq  0x1395
0x1395:	90                   	nop
0x1396:	48 83 ec 10          	sub    $0x10,%rsp
0x139a:	48 89 04 24          	mov    %rax,(%rsp)
0x139e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x13a3:	41 85 03             	test   %eax,(%r11)
0x13a6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x13ab:	e8 00 00 00 00       	callq  0x13b0
0x13b0:	90                   	nop
0x13b1:	48 83 ec 10          	sub    $0x10,%rsp
0x13b5:	48 89 04 24          	mov    %rax,(%rsp)
0x13b9:	4c 8b 1d 18 ec ff ff 	mov    -0x13e8(%rip),%r11        # 0xffffffd8
0x13c0:	48 83 ec 10          	sub    $0x10,%rsp
0x13c4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x13c8:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x13cd:	41 85 03             	test   %eax,(%r11)
0x13d0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x13d5:	90                   	nop
0x13d6:	90                   	nop
0x13d7:	90                   	nop
0x13d8:	e8 00 00 00 00       	callq  0x13dd
0x13dd:	90                   	nop
0x13de:	48 83 ec 10          	sub    $0x10,%rsp
0x13e2:	48 89 04 24          	mov    %rax,(%rsp)
0x13e6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13ea:	41 85 03             	test   %eax,(%r11)
0x13ed:	48 8b 3c 24          	mov    (%rsp),%rdi
0x13f1:	e8 00 00 00 00       	callq  0x13f6
0x13f6:	90                   	nop
0x13f7:	48 83 ec 10          	sub    $0x10,%rsp
0x13fb:	48 89 04 24          	mov    %rax,(%rsp)
0x13ff:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1404:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1409:	48 8b 15 d0 eb ff ff 	mov    -0x1430(%rip),%rdx        # 0xffffffe0
0x1410:	b9 40 00 00 00       	mov    $0x40,%ecx
0x1415:	48 8b c6             	mov    %rsi,%rax
0x1418:	48 8b 00             	mov    (%rax),%rax
0x141b:	48 63 ff             	movslq %edi,%rdi
0x141e:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1423:	48 8b fa             	mov    %rdx,%rdi
0x1426:	48 8b d1             	mov    %rcx,%rdx
0x1429:	b9 03 00 00 00       	mov    $0x3,%ecx
0x142e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1432:	90                   	nop
0x1433:	90                   	nop
0x1434:	e8 00 00 00 00       	callq  0x1439
0x1439:	90                   	nop
0x143a:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x143e:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1442:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1447:	ff d0                	callq  *%rax
0x1449:	90                   	nop
0x144a:	48 83 c5 40          	add    $0x40,%rbp
0x144e:	c9                   	leaveq 
0x144f:	c2 10 00             	retq   $0x10

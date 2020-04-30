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
0x20:	4c 89 1d c1 fe ff ff 	mov    %r11,-0x13f(%rip)        # 0xfffffee8
0x27:	48 8b 3d c2 fe ff ff 	mov    -0x13e(%rip),%rdi        # 0xfffffef0
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
0x53:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x57:	48 83 ec 10          	sub    $0x10,%rsp
0x5b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x63:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x67:	89 04 24             	mov    %eax,(%rsp)
0x6a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x6e:	b8 00 00 00 00       	mov    $0x0,%eax
0x73:	48 83 c4 10          	add    $0x10,%rsp
0x77:	44 3b d8             	cmp    %eax,%r11d
0x7a:	7f 33                	jg     0xaf
0x7c:	48 8b 3d 75 fe ff ff 	mov    -0x18b(%rip),%rdi        # 0xfffffef8
0x83:	be 00 00 00 00       	mov    $0x0,%esi
0x88:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x8c:	48 8b c8             	mov    %rax,%rcx
0x8f:	48 63 f6             	movslq %esi,%rsi
0x92:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x97:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x9d:	0f 8d 07 00 00 00    	jge    0xaa
0xa3:	83 c1 01             	add    $0x1,%ecx
0xa6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xaa:	e9 90 06 00 00       	jmpq   0x73f
0xaf:	48 8b 3d 4a fe ff ff 	mov    -0x1b6(%rip),%rdi        # 0xffffff00
0xb6:	be 01 00 00 00       	mov    $0x1,%esi
0xbb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xbf:	48 8b c8             	mov    %rax,%rcx
0xc2:	48 63 f6             	movslq %esi,%rsi
0xc5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xca:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xd0:	0f 8d 07 00 00 00    	jge    0xdd
0xd6:	83 c1 01             	add    $0x1,%ecx
0xd9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xdd:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xe1:	48 83 ec 10          	sub    $0x10,%rsp
0xe5:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xed:	48 83 c4 10          	add    $0x10,%rsp
0xf1:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0xf5:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xf9:	48 83 ec 10          	sub    $0x10,%rsp
0xfd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x101:	48 8b 3c 24          	mov    (%rsp),%rdi
0x105:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x109:	89 04 24             	mov    %eax,(%rsp)
0x10c:	44 8b 1c 24          	mov    (%rsp),%r11d
0x110:	48 83 c4 10          	add    $0x10,%rsp
0x114:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x118:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x11e:	48 83 ec 10          	sub    $0x10,%rsp
0x122:	44 89 1c 24          	mov    %r11d,(%rsp)
0x126:	44 8b 1c 24          	mov    (%rsp),%r11d
0x12a:	48 83 c4 10          	add    $0x10,%rsp
0x12e:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x132:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x136:	48 83 ec 10          	sub    $0x10,%rsp
0x13a:	44 89 1c 24          	mov    %r11d,(%rsp)
0x13e:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x142:	48 83 ec 10          	sub    $0x10,%rsp
0x146:	44 89 1c 24          	mov    %r11d,(%rsp)
0x14a:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x14f:	8b 04 24             	mov    (%rsp),%eax
0x152:	48 83 c4 20          	add    $0x20,%rsp
0x156:	44 3b d8             	cmp    %eax,%r11d
0x159:	7c 33                	jl     0x18e
0x15b:	48 8b 3d a6 fd ff ff 	mov    -0x25a(%rip),%rdi        # 0xffffff08
0x162:	be 02 00 00 00       	mov    $0x2,%esi
0x167:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x16b:	48 8b c8             	mov    %rax,%rcx
0x16e:	48 63 f6             	movslq %esi,%rsi
0x171:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x176:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x17c:	0f 8d 07 00 00 00    	jge    0x189
0x182:	83 c1 01             	add    $0x1,%ecx
0x185:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x189:	e9 7e 05 00 00       	jmpq   0x70c
0x18e:	48 8b 3d 7b fd ff ff 	mov    -0x285(%rip),%rdi        # 0xffffff10
0x195:	be 03 00 00 00       	mov    $0x3,%esi
0x19a:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x19e:	48 8b c8             	mov    %rax,%rcx
0x1a1:	48 63 f6             	movslq %esi,%rsi
0x1a4:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1a9:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1af:	0f 8d 07 00 00 00    	jge    0x1bc
0x1b5:	83 c1 01             	add    $0x1,%ecx
0x1b8:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1bc:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x1c0:	48 83 ec 10          	sub    $0x10,%rsp
0x1c4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1c8:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x1cc:	48 83 ec 10          	sub    $0x10,%rsp
0x1d0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1d4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1d9:	40 8b 34 24          	rex mov (%rsp),%esi
0x1dd:	48 8b c7             	mov    %rdi,%rax
0x1e0:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1e4:	3b f0                	cmp    %eax,%esi
0x1e6:	0f 82 0f 00 00 00    	jb     0x1fb
0x1ec:	e8 00 00 00 00       	callq  0x1f1
0x1f1:	90                   	nop
0x1f2:	48 8b f8             	mov    %rax,%rdi
0x1f5:	e8 00 00 00 00       	callq  0x1fa
0x1fa:	90                   	nop
0x1fb:	48 63 f6             	movslq %esi,%rsi
0x1fe:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x203:	48 83 c4 10          	add    $0x10,%rsp
0x207:	48 89 04 24          	mov    %rax,(%rsp)
0x20b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x20f:	48 83 c4 10          	add    $0x10,%rsp
0x213:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x217:	4c 8b 1d fa fc ff ff 	mov    -0x306(%rip),%r11        # 0xffffff18
0x21e:	48 83 ec 10          	sub    $0x10,%rsp
0x222:	4c 89 1c 24          	mov    %r11,(%rsp)
0x226:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x22a:	48 83 ec 10          	sub    $0x10,%rsp
0x22e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x232:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x237:	41 85 03             	test   %eax,(%r11)
0x23a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x23f:	90                   	nop
0x240:	e8 00 00 00 00       	callq  0x245
0x245:	90                   	nop
0x246:	48 83 ec 10          	sub    $0x10,%rsp
0x24a:	48 89 04 24          	mov    %rax,(%rsp)
0x24e:	44 8b 1c 24          	mov    (%rsp),%r11d
0x252:	b8 00 00 00 00       	mov    $0x0,%eax
0x257:	48 83 c4 10          	add    $0x10,%rsp
0x25b:	44 3b d8             	cmp    %eax,%r11d
0x25e:	75 33                	jne    0x293
0x260:	48 8b 3d b9 fc ff ff 	mov    -0x347(%rip),%rdi        # 0xffffff20
0x267:	be 06 00 00 00       	mov    $0x6,%esi
0x26c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x270:	48 8b c8             	mov    %rax,%rcx
0x273:	48 63 f6             	movslq %esi,%rsi
0x276:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x27b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x281:	0f 8d 07 00 00 00    	jge    0x28e
0x287:	83 c1 01             	add    $0x1,%ecx
0x28a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x28e:	e9 73 00 00 00       	jmpq   0x306
0x293:	48 8b 3d 8e fc ff ff 	mov    -0x372(%rip),%rdi        # 0xffffff28
0x29a:	be 07 00 00 00       	mov    $0x7,%esi
0x29f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2a3:	48 8b c8             	mov    %rax,%rcx
0x2a6:	48 63 f6             	movslq %esi,%rsi
0x2a9:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2ae:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2b4:	0f 8d 07 00 00 00    	jge    0x2c1
0x2ba:	83 c1 01             	add    $0x1,%ecx
0x2bd:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2c1:	e8 00 00 00 00       	callq  0x2c6
0x2c6:	90                   	nop
0x2c7:	48 83 ec 10          	sub    $0x10,%rsp
0x2cb:	48 89 04 24          	mov    %rax,(%rsp)
0x2cf:	48 83 c4 10          	add    $0x10,%rsp
0x2d3:	48 8b 3d 56 fc ff ff 	mov    -0x3aa(%rip),%rdi        # 0xffffff30
0x2da:	be 09 00 00 00       	mov    $0x9,%esi
0x2df:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2e3:	48 8b c8             	mov    %rax,%rcx
0x2e6:	48 63 f6             	movslq %esi,%rsi
0x2e9:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2ee:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2f4:	0f 8d 07 00 00 00    	jge    0x301
0x2fa:	83 c1 01             	add    $0x1,%ecx
0x2fd:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x301:	e9 b3 03 00 00       	jmpq   0x6b9
0x306:	4c 8b 1d 2b fc ff ff 	mov    -0x3d5(%rip),%r11        # 0xffffff38
0x30d:	48 83 ec 10          	sub    $0x10,%rsp
0x311:	4c 89 1c 24          	mov    %r11,(%rsp)
0x315:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x319:	48 83 ec 10          	sub    $0x10,%rsp
0x31d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x321:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x326:	41 85 03             	test   %eax,(%r11)
0x329:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x32e:	90                   	nop
0x32f:	90                   	nop
0x330:	e8 00 00 00 00       	callq  0x335
0x335:	90                   	nop
0x336:	48 83 ec 10          	sub    $0x10,%rsp
0x33a:	48 89 04 24          	mov    %rax,(%rsp)
0x33e:	44 8b 1c 24          	mov    (%rsp),%r11d
0x342:	b8 00 00 00 00       	mov    $0x0,%eax
0x347:	48 83 c4 10          	add    $0x10,%rsp
0x34b:	44 3b d8             	cmp    %eax,%r11d
0x34e:	75 33                	jne    0x383
0x350:	48 8b 3d e9 fb ff ff 	mov    -0x417(%rip),%rdi        # 0xffffff40
0x357:	be 0b 00 00 00       	mov    $0xb,%esi
0x35c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x360:	48 8b c8             	mov    %rax,%rcx
0x363:	48 63 f6             	movslq %esi,%rsi
0x366:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x36b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x371:	0f 8d 07 00 00 00    	jge    0x37e
0x377:	83 c1 01             	add    $0x1,%ecx
0x37a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x37e:	e9 78 01 00 00       	jmpq   0x4fb
0x383:	48 8b 3d be fb ff ff 	mov    -0x442(%rip),%rdi        # 0xffffff48
0x38a:	be 0c 00 00 00       	mov    $0xc,%esi
0x38f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x393:	48 8b c8             	mov    %rax,%rcx
0x396:	48 63 f6             	movslq %esi,%rsi
0x399:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x39e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x3a4:	0f 8d 07 00 00 00    	jge    0x3b1
0x3aa:	83 c1 01             	add    $0x1,%ecx
0x3ad:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x3b1:	48 8b 3d 98 fb ff ff 	mov    -0x468(%rip),%rdi        # 0xffffff50
0x3b8:	be 18 00 00 00       	mov    $0x18,%esi
0x3bd:	48 63 f6             	movslq %esi,%rsi
0x3c0:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x3c4:	48 83 ec 10          	sub    $0x10,%rsp
0x3c8:	48 89 04 24          	mov    %rax,(%rsp)
0x3cc:	4c 8b 1d 85 fb ff ff 	mov    -0x47b(%rip),%r11        # 0xffffff58
0x3d3:	48 83 ec 10          	sub    $0x10,%rsp
0x3d7:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3db:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3e0:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3e5:	48 8b 15 74 fb ff ff 	mov    -0x48c(%rip),%rdx        # 0xffffff60
0x3ec:	b9 0e 00 00 00       	mov    $0xe,%ecx
0x3f1:	48 8b c6             	mov    %rsi,%rax
0x3f4:	48 8b 00             	mov    (%rax),%rax
0x3f7:	48 63 ff             	movslq %edi,%rdi
0x3fa:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3ff:	48 8b fa             	mov    %rdx,%rdi
0x402:	48 8b d1             	mov    %rcx,%rdx
0x405:	b9 03 00 00 00       	mov    $0x3,%ecx
0x40a:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x40e:	90                   	nop
0x40f:	90                   	nop
0x410:	e8 00 00 00 00       	callq  0x415
0x415:	90                   	nop
0x416:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x41a:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x41e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x423:	ff d0                	callq  *%rax
0x425:	90                   	nop
0x426:	90                   	nop
0x427:	90                   	nop
0x428:	e8 00 00 00 00       	callq  0x42d
0x42d:	90                   	nop
0x42e:	48 83 ec 10          	sub    $0x10,%rsp
0x432:	48 89 04 24          	mov    %rax,(%rsp)
0x436:	48 83 c4 10          	add    $0x10,%rsp
0x43a:	48 8b 3d 27 fb ff ff 	mov    -0x4d9(%rip),%rdi        # 0xffffff68
0x441:	be 18 00 00 00       	mov    $0x18,%esi
0x446:	48 63 f6             	movslq %esi,%rsi
0x449:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x44d:	48 83 ec 10          	sub    $0x10,%rsp
0x451:	48 89 04 24          	mov    %rax,(%rsp)
0x455:	4c 8b 1d 14 fb ff ff 	mov    -0x4ec(%rip),%r11        # 0xffffff70
0x45c:	48 83 ec 10          	sub    $0x10,%rsp
0x460:	4c 89 1c 24          	mov    %r11,(%rsp)
0x464:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x469:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x46e:	48 8b 15 03 fb ff ff 	mov    -0x4fd(%rip),%rdx        # 0xffffff78
0x475:	b9 18 00 00 00       	mov    $0x18,%ecx
0x47a:	48 8b c6             	mov    %rsi,%rax
0x47d:	48 8b 00             	mov    (%rax),%rax
0x480:	48 63 ff             	movslq %edi,%rdi
0x483:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x488:	48 8b fa             	mov    %rdx,%rdi
0x48b:	48 8b d1             	mov    %rcx,%rdx
0x48e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x493:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x497:	90                   	nop
0x498:	90                   	nop
0x499:	e8 00 00 00 00       	callq  0x49e
0x49e:	90                   	nop
0x49f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4a3:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4a7:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4ac:	ff d0                	callq  *%rax
0x4ae:	90                   	nop
0x4af:	49 bb d0 07 00 00 00 	movabs $0x7d0,%r11
0x4b6:	00 00 00 
0x4b9:	48 83 ec 20          	sub    $0x20,%rsp
0x4bd:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x4c2:	e8 00 00 00 00       	callq  0x4c7
0x4c7:	90                   	nop
0x4c8:	48 8b 3d b1 fa ff ff 	mov    -0x54f(%rip),%rdi        # 0xffffff80
0x4cf:	be 21 00 00 00       	mov    $0x21,%esi
0x4d4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x4d8:	48 8b c8             	mov    %rax,%rcx
0x4db:	48 63 f6             	movslq %esi,%rsi
0x4de:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x4e3:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x4e9:	0f 8d 07 00 00 00    	jge    0x4f6
0x4ef:	83 c1 01             	add    $0x1,%ecx
0x4f2:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x4f6:	e9 be 01 00 00       	jmpq   0x6b9
0x4fb:	4c 8b 1d 86 fa ff ff 	mov    -0x57a(%rip),%r11        # 0xffffff88
0x502:	48 83 ec 10          	sub    $0x10,%rsp
0x506:	4c 89 1c 24          	mov    %r11,(%rsp)
0x50a:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x50e:	48 83 ec 10          	sub    $0x10,%rsp
0x512:	4c 89 1c 24          	mov    %r11,(%rsp)
0x516:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x51b:	41 85 03             	test   %eax,(%r11)
0x51e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x523:	e8 00 00 00 00       	callq  0x528
0x528:	90                   	nop
0x529:	48 83 ec 10          	sub    $0x10,%rsp
0x52d:	48 89 04 24          	mov    %rax,(%rsp)
0x531:	44 8b 1c 24          	mov    (%rsp),%r11d
0x535:	b8 00 00 00 00       	mov    $0x0,%eax
0x53a:	48 83 c4 10          	add    $0x10,%rsp
0x53e:	44 3b d8             	cmp    %eax,%r11d
0x541:	75 33                	jne    0x576
0x543:	48 8b 3d 46 fa ff ff 	mov    -0x5ba(%rip),%rdi        # 0xffffff90
0x54a:	be 23 00 00 00       	mov    $0x23,%esi
0x54f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x553:	48 8b c8             	mov    %rax,%rcx
0x556:	48 63 f6             	movslq %esi,%rsi
0x559:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x55e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x564:	0f 8d 07 00 00 00    	jge    0x571
0x56a:	83 c1 01             	add    $0x1,%ecx
0x56d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x571:	e9 43 01 00 00       	jmpq   0x6b9
0x576:	48 8b 3d 1b fa ff ff 	mov    -0x5e5(%rip),%rdi        # 0xffffff98
0x57d:	be 24 00 00 00       	mov    $0x24,%esi
0x582:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x586:	48 8b c8             	mov    %rax,%rcx
0x589:	48 63 f6             	movslq %esi,%rsi
0x58c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x591:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x597:	0f 8d 07 00 00 00    	jge    0x5a4
0x59d:	83 c1 01             	add    $0x1,%ecx
0x5a0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x5a4:	48 8b 3d f5 f9 ff ff 	mov    -0x60b(%rip),%rdi        # 0xffffffa0
0x5ab:	be 18 00 00 00       	mov    $0x18,%esi
0x5b0:	48 63 f6             	movslq %esi,%rsi
0x5b3:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x5b7:	48 83 ec 10          	sub    $0x10,%rsp
0x5bb:	48 89 04 24          	mov    %rax,(%rsp)
0x5bf:	4c 8b 1d e2 f9 ff ff 	mov    -0x61e(%rip),%r11        # 0xffffffa8
0x5c6:	48 83 ec 10          	sub    $0x10,%rsp
0x5ca:	4c 89 1c 24          	mov    %r11,(%rsp)
0x5ce:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x5d3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x5d8:	48 8b 15 d1 f9 ff ff 	mov    -0x62f(%rip),%rdx        # 0xffffffb0
0x5df:	b9 26 00 00 00       	mov    $0x26,%ecx
0x5e4:	48 8b c6             	mov    %rsi,%rax
0x5e7:	48 8b 00             	mov    (%rax),%rax
0x5ea:	48 63 ff             	movslq %edi,%rdi
0x5ed:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x5f2:	48 8b fa             	mov    %rdx,%rdi
0x5f5:	48 8b d1             	mov    %rcx,%rdx
0x5f8:	b9 03 00 00 00       	mov    $0x3,%ecx
0x5fd:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x601:	90                   	nop
0x602:	90                   	nop
0x603:	e8 00 00 00 00       	callq  0x608
0x608:	90                   	nop
0x609:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x60d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x611:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x616:	ff d0                	callq  *%rax
0x618:	90                   	nop
0x619:	e8 00 00 00 00       	callq  0x61e
0x61e:	90                   	nop
0x61f:	48 83 ec 10          	sub    $0x10,%rsp
0x623:	48 89 04 24          	mov    %rax,(%rsp)
0x627:	48 83 c4 10          	add    $0x10,%rsp
0x62b:	48 8b 3d 86 f9 ff ff 	mov    -0x67a(%rip),%rdi        # 0xffffffb8
0x632:	be 18 00 00 00       	mov    $0x18,%esi
0x637:	48 63 f6             	movslq %esi,%rsi
0x63a:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x63e:	48 83 ec 10          	sub    $0x10,%rsp
0x642:	48 89 04 24          	mov    %rax,(%rsp)
0x646:	4c 8b 1d 73 f9 ff ff 	mov    -0x68d(%rip),%r11        # 0xffffffc0
0x64d:	48 83 ec 10          	sub    $0x10,%rsp
0x651:	4c 89 1c 24          	mov    %r11,(%rsp)
0x655:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x65a:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x65f:	48 8b 15 62 f9 ff ff 	mov    -0x69e(%rip),%rdx        # 0xffffffc8
0x666:	b9 30 00 00 00       	mov    $0x30,%ecx
0x66b:	48 8b c6             	mov    %rsi,%rax
0x66e:	48 8b 00             	mov    (%rax),%rax
0x671:	48 63 ff             	movslq %edi,%rdi
0x674:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x679:	48 8b fa             	mov    %rdx,%rdi
0x67c:	48 8b d1             	mov    %rcx,%rdx
0x67f:	b9 03 00 00 00       	mov    $0x3,%ecx
0x684:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x688:	90                   	nop
0x689:	90                   	nop
0x68a:	e8 00 00 00 00       	callq  0x68f
0x68f:	90                   	nop
0x690:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x694:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x698:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x69d:	ff d0                	callq  *%rax
0x69f:	90                   	nop
0x6a0:	49 bb d0 07 00 00 00 	movabs $0x7d0,%r11
0x6a7:	00 00 00 
0x6aa:	48 83 ec 20          	sub    $0x20,%rsp
0x6ae:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x6b3:	e8 00 00 00 00       	callq  0x6b8
0x6b8:	90                   	nop
0x6b9:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x6bd:	41 83 c3 01          	add    $0x1,%r11d
0x6c1:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x6c5:	48 8b 3d 04 f9 ff ff 	mov    -0x6fc(%rip),%rdi        # 0xffffffd0
0x6cc:	be 39 00 00 00       	mov    $0x39,%esi
0x6d1:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x6d5:	48 8b c8             	mov    %rax,%rcx
0x6d8:	48 63 f6             	movslq %esi,%rsi
0x6db:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x6e0:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x6e6:	0f 8d 07 00 00 00    	jge    0x6f3
0x6ec:	83 c1 01             	add    $0x1,%ecx
0x6ef:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x6f3:	48 8b 3d de f8 ff ff 	mov    -0x722(%rip),%rdi        # 0xffffffd8
0x6fa:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x6fe:	83 e8 01             	sub    $0x1,%eax
0x701:	89 47 30             	mov    %eax,0x30(%rdi)
0x704:	4d 8b 36             	mov    (%r14),%r14
0x707:	e9 26 fa ff ff       	jmpq   0x132
0x70c:	48 8b 3d cd f8 ff ff 	mov    -0x733(%rip),%rdi        # 0xffffffe0
0x713:	be 3a 00 00 00       	mov    $0x3a,%esi
0x718:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x71c:	48 8b c8             	mov    %rax,%rcx
0x71f:	48 63 f6             	movslq %esi,%rsi
0x722:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x727:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x72d:	0f 8d 07 00 00 00    	jge    0x73a
0x733:	83 c1 01             	add    $0x1,%ecx
0x736:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x73a:	e9 13 00 00 00       	jmpq   0x752
0x73f:	90                   	nop
0x740:	e8 00 00 00 00       	callq  0x745
0x745:	90                   	nop
0x746:	48 83 ec 10          	sub    $0x10,%rsp
0x74a:	48 89 04 24          	mov    %rax,(%rsp)
0x74e:	48 83 c4 10          	add    $0x10,%rsp
0x752:	48 83 c5 40          	add    $0x40,%rbp
0x756:	c9                   	leaveq 
0x757:	c2 10 00             	retq   $0x10

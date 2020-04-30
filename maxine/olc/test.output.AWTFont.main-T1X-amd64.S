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
0x20:	4c 89 1d 71 ff ff ff 	mov    %r11,-0x8f(%rip)        # 0xffffff98
0x27:	48 8b 3d 72 ff ff ff 	mov    -0x8e(%rip),%rdi        # 0xffffffa0
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
0x79:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x7e:	48 8b 34 24          	mov    (%rsp),%rsi
0x82:	48 8b 15 1f ff ff ff 	mov    -0xe1(%rip),%rdx        # 0xffffffa8
0x89:	b9 02 00 00 00       	mov    $0x2,%ecx
0x8e:	48 8b c6             	mov    %rsi,%rax
0x91:	48 8b 00             	mov    (%rax),%rax
0x94:	48 63 ff             	movslq %edi,%rdi
0x97:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x9c:	48 8b fa             	mov    %rdx,%rdi
0x9f:	48 8b d1             	mov    %rcx,%rdx
0xa2:	b9 03 00 00 00       	mov    $0x3,%ecx
0xa7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xab:	90                   	nop
0xac:	90                   	nop
0xad:	e8 00 00 00 00       	callq  0xb2
0xb2:	90                   	nop
0xb3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xb7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xbb:	48 8b 3c 24          	mov    (%rsp),%rdi
0xbf:	ff d0                	callq  *%rax
0xc1:	90                   	nop
0xc2:	48 83 ec 10          	sub    $0x10,%rsp
0xc6:	48 89 04 24          	mov    %rax,(%rsp)
0xca:	4c 8b 1c 24          	mov    (%rsp),%r11
0xce:	48 83 c4 10          	add    $0x10,%rsp
0xd2:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xd6:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xda:	48 83 ec 10          	sub    $0x10,%rsp
0xde:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe2:	48 8b 3c 24          	mov    (%rsp),%rdi
0xe6:	48 63 47 10          	movslq 0x10(%rdi),%rax
0xea:	89 04 24             	mov    %eax,(%rsp)
0xed:	44 8b 1c 24          	mov    (%rsp),%r11d
0xf1:	48 83 c4 10          	add    $0x10,%rsp
0xf5:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xf9:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xff:	48 83 ec 10          	sub    $0x10,%rsp
0x103:	44 89 1c 24          	mov    %r11d,(%rsp)
0x107:	44 8b 1c 24          	mov    (%rsp),%r11d
0x10b:	48 83 c4 10          	add    $0x10,%rsp
0x10f:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x113:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x117:	48 83 ec 10          	sub    $0x10,%rsp
0x11b:	44 89 1c 24          	mov    %r11d,(%rsp)
0x11f:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x123:	48 83 ec 10          	sub    $0x10,%rsp
0x127:	44 89 1c 24          	mov    %r11d,(%rsp)
0x12b:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x130:	8b 04 24             	mov    (%rsp),%eax
0x133:	48 83 c4 20          	add    $0x20,%rsp
0x137:	44 3b d8             	cmp    %eax,%r11d
0x13a:	7c 33                	jl     0x16f
0x13c:	48 8b 3d 6d fe ff ff 	mov    -0x193(%rip),%rdi        # 0xffffffb0
0x143:	be 0a 00 00 00       	mov    $0xa,%esi
0x148:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x14c:	48 8b c8             	mov    %rax,%rcx
0x14f:	48 63 f6             	movslq %esi,%rsi
0x152:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x157:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x15d:	0f 8d 07 00 00 00    	jge    0x16a
0x163:	83 c1 01             	add    $0x1,%ecx
0x166:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x16a:	e9 9f 01 00 00       	jmpq   0x30e
0x16f:	48 8b 3d 42 fe ff ff 	mov    -0x1be(%rip),%rdi        # 0xffffffb8
0x176:	be 0b 00 00 00       	mov    $0xb,%esi
0x17b:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x17f:	48 8b c8             	mov    %rax,%rcx
0x182:	48 63 f6             	movslq %esi,%rsi
0x185:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x18a:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x190:	0f 8d 07 00 00 00    	jge    0x19d
0x196:	83 c1 01             	add    $0x1,%ecx
0x199:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x19d:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x1a1:	48 83 ec 10          	sub    $0x10,%rsp
0x1a5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1a9:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x1ad:	48 83 ec 10          	sub    $0x10,%rsp
0x1b1:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1b5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1ba:	40 8b 34 24          	rex mov (%rsp),%esi
0x1be:	48 8b c7             	mov    %rdi,%rax
0x1c1:	48 63 40 10          	movslq 0x10(%rax),%rax
0x1c5:	3b f0                	cmp    %eax,%esi
0x1c7:	0f 82 0f 00 00 00    	jb     0x1dc
0x1cd:	e8 00 00 00 00       	callq  0x1d2
0x1d2:	90                   	nop
0x1d3:	48 8b f8             	mov    %rax,%rdi
0x1d6:	e8 00 00 00 00       	callq  0x1db
0x1db:	90                   	nop
0x1dc:	48 63 f6             	movslq %esi,%rsi
0x1df:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x1e4:	48 83 c4 10          	add    $0x10,%rsp
0x1e8:	48 89 04 24          	mov    %rax,(%rsp)
0x1ec:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1f0:	48 83 c4 10          	add    $0x10,%rsp
0x1f4:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x1f8:	48 8b 3d c1 fd ff ff 	mov    -0x23f(%rip),%rdi        # 0xffffffc0
0x1ff:	be 18 00 00 00       	mov    $0x18,%esi
0x204:	48 63 f6             	movslq %esi,%rsi
0x207:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x20b:	48 83 ec 10          	sub    $0x10,%rsp
0x20f:	48 89 04 24          	mov    %rax,(%rsp)
0x213:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x217:	48 83 ec 10          	sub    $0x10,%rsp
0x21b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x21f:	bf 0f 00 00 00       	mov    $0xf,%edi
0x224:	48 8b 34 24          	mov    (%rsp),%rsi
0x228:	48 8b 15 99 fd ff ff 	mov    -0x267(%rip),%rdx        # 0xffffffc8
0x22f:	b9 0e 00 00 00       	mov    $0xe,%ecx
0x234:	48 8b c6             	mov    %rsi,%rax
0x237:	48 8b 00             	mov    (%rax),%rax
0x23a:	48 63 ff             	movslq %edi,%rdi
0x23d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x242:	48 8b fa             	mov    %rdx,%rdi
0x245:	48 8b d1             	mov    %rcx,%rdx
0x248:	b9 03 00 00 00       	mov    $0x3,%ecx
0x24d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x251:	90                   	nop
0x252:	90                   	nop
0x253:	e8 00 00 00 00       	callq  0x258
0x258:	90                   	nop
0x259:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x25d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x261:	48 8b 3c 24          	mov    (%rsp),%rdi
0x265:	ff d0                	callq  *%rax
0x267:	90                   	nop
0x268:	48 83 ec 10          	sub    $0x10,%rsp
0x26c:	48 89 04 24          	mov    %rax,(%rsp)
0x270:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x275:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x27a:	48 8b 15 4f fd ff ff 	mov    -0x2b1(%rip),%rdx        # 0xffffffd0
0x281:	b9 17 00 00 00       	mov    $0x17,%ecx
0x286:	48 8b c6             	mov    %rsi,%rax
0x289:	48 8b 00             	mov    (%rax),%rax
0x28c:	48 63 ff             	movslq %edi,%rdi
0x28f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x294:	48 8b fa             	mov    %rdx,%rdi
0x297:	48 8b d1             	mov    %rcx,%rdx
0x29a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x29f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2a3:	90                   	nop
0x2a4:	90                   	nop
0x2a5:	e8 00 00 00 00       	callq  0x2aa
0x2aa:	90                   	nop
0x2ab:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2af:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2b3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2b8:	ff d0                	callq  *%rax
0x2ba:	90                   	nop
0x2bb:	44 8b 5d c0          	mov    -0x40(%rbp),%r11d
0x2bf:	41 83 c3 01          	add    $0x1,%r11d
0x2c3:	44 89 5d c0          	mov    %r11d,-0x40(%rbp)
0x2c7:	48 8b 3d 0a fd ff ff 	mov    -0x2f6(%rip),%rdi        # 0xffffffd8
0x2ce:	be 1f 00 00 00       	mov    $0x1f,%esi
0x2d3:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2d7:	48 8b c8             	mov    %rax,%rcx
0x2da:	48 63 f6             	movslq %esi,%rsi
0x2dd:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2e2:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2e8:	0f 8d 07 00 00 00    	jge    0x2f5
0x2ee:	83 c1 01             	add    $0x1,%ecx
0x2f1:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2f5:	48 8b 3d e4 fc ff ff 	mov    -0x31c(%rip),%rdi        # 0xffffffe0
0x2fc:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x300:	83 e8 01             	sub    $0x1,%eax
0x303:	89 47 30             	mov    %eax,0x30(%rdi)
0x306:	4d 8b 36             	mov    (%r14),%r14
0x309:	e9 05 fe ff ff       	jmpq   0x113
0x30e:	48 83 c5 40          	add    $0x40,%rbp
0x312:	c9                   	leaveq 
0x313:	c2 10 00             	retq   $0x10

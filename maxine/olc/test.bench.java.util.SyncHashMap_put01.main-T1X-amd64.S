0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 40 00 00          	enterq $0x40,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 48 e0 ff 	mov    %rax,-0x1fb8(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d a9 ff ff ff 	mov    %r11,-0x57(%rip)        # 0xffffffd0
0x27:	48 8b 3d aa ff ff ff 	mov    -0x56(%rip),%rdi        # 0xffffffd8
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
0x53:	48 83 ec 10          	sub    $0x10,%rsp
0x57:	4c 8b 1d 82 ff ff ff 	mov    -0x7e(%rip),%r11        # 0xffffffe0
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x6e:	90                   	nop
0x6f:	90                   	nop
0x70:	e8 00 00 00 00       	callq  0x75
0x75:	90                   	nop
0x76:	48 83 c5 40          	add    $0x40,%rbp
0x7a:	c9                   	leaveq 
0x7b:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d a1 ff ff ff 	mov    %r11,-0x5f(%rip)        # 0xffffffc8
0x27:	48 8b 3d a2 ff ff ff 	mov    -0x5e(%rip),%rdi        # 0xffffffd0
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
0x53:	4c 8b 1d 7e ff ff ff 	mov    -0x82(%rip),%r11        # 0xffffffd8
0x5a:	48 83 ec 10          	sub    $0x10,%rsp
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	e8 00 00 00 00       	callq  0x67
0x67:	90                   	nop
0x68:	e8 00 00 00 00       	callq  0x6d
0x6d:	90                   	nop
0x6e:	49 bb 64 00 00 00 00 	movabs $0x64,%r11
0x75:	00 00 00 
0x78:	48 83 ec 20          	sub    $0x20,%rsp
0x7c:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x81:	e8 00 00 00 00       	callq  0x86
0x86:	90                   	nop
0x87:	4c 8b 1d 52 ff ff ff 	mov    -0xae(%rip),%r11        # 0xffffffe0
0x8e:	48 83 ec 10          	sub    $0x10,%rsp
0x92:	4c 89 1c 24          	mov    %r11,(%rsp)
0x96:	90                   	nop
0x97:	90                   	nop
0x98:	e8 00 00 00 00       	callq  0x9d
0x9d:	90                   	nop
0x9e:	48 83 c5 40          	add    $0x40,%rbp
0xa2:	c9                   	leaveq 
0xa3:	c2 10 00             	retq   $0x10

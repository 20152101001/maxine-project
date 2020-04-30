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
0x20:	4c 89 1d b1 ff ff ff 	mov    %r11,-0x4f(%rip)        # 0xffffffd8
0x27:	48 8b 3d b2 ff ff ff 	mov    -0x4e(%rip),%rdi        # 0xffffffe0
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
0x59:	49 bb 00 00 40 06 00 	movabs $0x6400000,%r11
0x60:	00 00 00 
0x63:	48 83 ec 20          	sub    $0x20,%rsp
0x67:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x6c:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x71:	48 83 c4 20          	add    $0x20,%rsp
0x75:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x79:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x7d:	48 83 ec 20          	sub    $0x20,%rsp
0x81:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x86:	90                   	nop
0x87:	90                   	nop
0x88:	e8 00 00 00 00       	callq  0x8d
0x8d:	90                   	nop
0x8e:	48 83 c5 40          	add    $0x40,%rbp
0x92:	c9                   	leaveq 
0x93:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d 99 ff ff ff 	mov    %r11,-0x67(%rip)        # 0xffffffc0
0x27:	48 8b 3d 9a ff ff ff 	mov    -0x66(%rip),%rdi        # 0xffffffc8
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
0x53:	48 8b 3d 76 ff ff ff 	mov    -0x8a(%rip),%rdi        # 0xffffffd0
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d 63 ff ff ff 	mov    -0x9d(%rip),%r11        # 0xffffffd8
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 52 ff ff ff 	mov    -0xae(%rip),%rdx        # 0xffffffe0
0x8e:	b9 01 00 00 00       	mov    $0x1,%ecx
0x93:	48 8b c6             	mov    %rsi,%rax
0x96:	48 8b 00             	mov    (%rax),%rax
0x99:	48 63 ff             	movslq %edi,%rdi
0x9c:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xa1:	48 8b fa             	mov    %rdx,%rdi
0xa4:	48 8b d1             	mov    %rcx,%rdx
0xa7:	b9 03 00 00 00       	mov    $0x3,%ecx
0xac:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xb0:	90                   	nop
0xb1:	90                   	nop
0xb2:	e8 00 00 00 00       	callq  0xb7
0xb7:	90                   	nop
0xb8:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xbc:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xc0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xc5:	ff d0                	callq  *%rax
0xc7:	90                   	nop
0xc8:	48 83 c5 40          	add    $0x40,%rbp
0xcc:	c9                   	leaveq 
0xcd:	c2 10 00             	retq   $0x10

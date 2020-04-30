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
0x6e:	48 8b 3d 63 ff ff ff 	mov    -0x9d(%rip),%rdi        # 0xffffffd8
0x75:	be 10 00 00 00       	mov    $0x10,%esi
0x7a:	48 63 f6             	movslq %esi,%rsi
0x7d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x81:	48 83 ec 10          	sub    $0x10,%rsp
0x85:	48 89 04 24          	mov    %rax,(%rsp)
0x89:	4c 8b 1c 24          	mov    (%rsp),%r11
0x8d:	41 85 03             	test   %eax,(%r11)
0x90:	48 8b 3c 24          	mov    (%rsp),%rdi
0x94:	90                   	nop
0x95:	90                   	nop
0x96:	90                   	nop
0x97:	90                   	nop
0x98:	e8 00 00 00 00       	callq  0x9d
0x9d:	90                   	nop
0x9e:	48 83 ec 10          	sub    $0x10,%rsp
0xa2:	48 89 04 24          	mov    %rax,(%rsp)
0xa6:	bf 2f 00 00 00       	mov    $0x2f,%edi
0xab:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0xb0:	48 8b 15 29 ff ff ff 	mov    -0xd7(%rip),%rdx        # 0xffffffe0
0xb7:	b9 02 00 00 00       	mov    $0x2,%ecx
0xbc:	48 8b c6             	mov    %rsi,%rax
0xbf:	48 8b 00             	mov    (%rax),%rax
0xc2:	48 63 ff             	movslq %edi,%rdi
0xc5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xca:	48 8b fa             	mov    %rdx,%rdi
0xcd:	48 8b d1             	mov    %rcx,%rdx
0xd0:	b9 03 00 00 00       	mov    $0x3,%ecx
0xd5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xd9:	90                   	nop
0xda:	90                   	nop
0xdb:	e8 00 00 00 00       	callq  0xe0
0xe0:	90                   	nop
0xe1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xe5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xe9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xee:	ff d0                	callq  *%rax
0xf0:	90                   	nop
0xf1:	48 83 c5 40          	add    $0x40,%rbp
0xf5:	c9                   	leaveq 
0xf6:	c2 10 00             	retq   $0x10

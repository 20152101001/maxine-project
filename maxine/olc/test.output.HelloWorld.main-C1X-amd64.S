0x0:	e8 00 00 00 00       	callq  0x5
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	48 83 ec 18          	sub    $0x18,%rsp
0xc:	48 89 84 24 18 e0 ff 	mov    %rax,-0x1fe8(%rsp)
0x13:	ff 
0x14:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
0x19:	48 8b 35 b8 ff ff ff 	mov    -0x48(%rip),%rsi        # 0xffffffd8
0x20:	48 8b 46 18          	mov    0x18(%rsi),%rax
0x24:	48 8b 35 b5 ff ff ff 	mov    -0x4b(%rip),%rsi        # 0xffffffe0
0x2b:	48 8b 08             	mov    (%rax),%rcx
0x2e:	48 8b 91 90 01 00 00 	mov    0x190(%rcx),%rdx
0x35:	48 8b f8             	mov    %rax,%rdi
0x38:	ff d2                	callq  *%rdx
0x3a:	90                   	nop
0x3b:	48 83 c4 18          	add    $0x18,%rsp
0x3f:	c3                   	retq   

0x0:	e8 00 00 00 00       	callq  0x5
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	48 83 ec 28          	sub    $0x28,%rsp
0xc:	48 89 84 24 28 e0 ff 	mov    %rax,-0x1fd8(%rsp)
0x13:	ff 
0x14:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
0x19:	48 8b 05 b0 ff ff ff 	mov    -0x50(%rip),%rax        # 0xffffffd0
0x20:	48 8b 70 18          	mov    0x18(%rax),%rsi
0x24:	48 8b 0d ad ff ff ff 	mov    -0x53(%rip),%rcx        # 0xffffffd8
0x2b:	48 8b 16             	mov    (%rsi),%rdx
0x2e:	48 8b 9a 90 01 00 00 	mov    0x190(%rdx),%rbx
0x35:	48 8b fe             	mov    %rsi,%rdi
0x38:	48 8b f1             	mov    %rcx,%rsi
0x3b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
0x40:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
0x45:	ff d3                	callq  *%rbx
0x47:	90                   	nop
0x48:	48 8b 3d 91 ff ff ff 	mov    -0x6f(%rip),%rdi        # 0xffffffe0
0x4f:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x53:	48 8b 38             	mov    (%rax),%rdi
0x56:	48 8b 8f 38 01 00 00 	mov    0x138(%rdi),%rcx
0x5d:	48 8b f8             	mov    %rax,%rdi
0x60:	ff d1                	callq  *%rcx
0x62:	90                   	nop
0x63:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
0x68:	48 8b 78 18          	mov    0x18(%rax),%rdi
0x6c:	48 8b 37             	mov    (%rdi),%rsi
0x6f:	48 8b 86 90 01 00 00 	mov    0x190(%rsi),%rax
0x76:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x7b:	ff d0                	callq  *%rax
0x7d:	90                   	nop
0x7e:	48 83 c4 28          	add    $0x28,%rsp
0x82:	c3                   	retq   

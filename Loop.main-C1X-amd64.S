0x0:	e8 00 00 00 00       	callq  0x5
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	48 83 ec 28          	sub    $0x28,%rsp
0xc:	48 89 84 24 28 e0 ff 	mov    %rax,-0x1fd8(%rsp)
0x13:	ff 
0x14:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
0x19:	48 8b 05 b8 ff ff ff 	mov    -0x48(%rip),%rax        # 0xffffffd8
0x20:	48 8b 70 18          	mov    0x18(%rax),%rsi
0x24:	48 8b 0d b5 ff ff ff 	mov    -0x4b(%rip),%rcx        # 0xffffffe0
0x2b:	48 8b 16             	mov    (%rsi),%rdx
0x2e:	48 8b 9a 90 01 00 00 	mov    0x190(%rdx),%rbx
0x35:	48 8b fe             	mov    %rsi,%rdi
0x38:	48 8b f1             	mov    %rcx,%rsi
0x3b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
0x40:	ff d3                	callq  *%rbx
0x42:	90                   	nop
0x43:	b8 00 00 00 00       	mov    $0x0,%eax
0x48:	e9 09 00 00 00       	jmpq   0x56
0x4d:	90                   	nop
0x4e:	90                   	nop
0x4f:	90                   	nop
0x50:	83 c0 01             	add    $0x1,%eax
0x53:	4d 8b 36             	mov    (%r14),%r14
0x56:	81 f8 40 42 0f 00    	cmp    $0xf4240,%eax
0x5c:	7c f2                	jl     0x50
0x5e:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
0x63:	48 8b 77 18          	mov    0x18(%rdi),%rsi
0x67:	48 8b 3e             	mov    (%rsi),%rdi
0x6a:	48 8b 97 68 01 00 00 	mov    0x168(%rdi),%rdx
0x71:	48 8b fe             	mov    %rsi,%rdi
0x74:	48 8b f0             	mov    %rax,%rsi
0x77:	89 44 24 18          	mov    %eax,0x18(%rsp)
0x7b:	ff d2                	callq  *%rdx
0x7d:	90                   	nop
0x7e:	48 83 c4 28          	add    $0x28,%rsp
0x82:	c3                   	retq   

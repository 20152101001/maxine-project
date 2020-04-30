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
0x20:	4c 89 1d 91 ff ff ff 	mov    %r11,-0x6f(%rip)        # 0xffffffb8
0x27:	48 8b 3d 92 ff ff ff 	mov    -0x6e(%rip),%rdi        # 0xffffffc0
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
0x53:	49 bb 00 00 a0 00 00 	movabs $0xa00000,%r11
0x5a:	00 00 00 
0x5d:	48 83 ec 20          	sub    $0x20,%rsp
0x61:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x66:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6b:	48 83 c4 20          	add    $0x20,%rsp
0x6f:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x73:	49 bb 00 00 08 00 00 	movabs $0x80000,%r11
0x7a:	00 00 00 
0x7d:	48 83 ec 20          	sub    $0x20,%rsp
0x81:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x86:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x8b:	48 83 c4 20          	add    $0x20,%rsp
0x8f:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x93:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x99:	48 83 ec 10          	sub    $0x10,%rsp
0x9d:	44 89 1c 24          	mov    %r11d,(%rsp)
0xa1:	44 8b 1c 24          	mov    (%rsp),%r11d
0xa5:	48 83 c4 10          	add    $0x10,%rsp
0xa9:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0xad:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0xb1:	48 83 ec 10          	sub    $0x10,%rsp
0xb5:	44 89 1c 24          	mov    %r11d,(%rsp)
0xb9:	41 bb 14 00 00 00    	mov    $0x14,%r11d
0xbf:	48 83 ec 10          	sub    $0x10,%rsp
0xc3:	44 89 1c 24          	mov    %r11d,(%rsp)
0xc7:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xcc:	8b 04 24             	mov    (%rsp),%eax
0xcf:	48 83 c4 20          	add    $0x20,%rsp
0xd3:	44 3b d8             	cmp    %eax,%r11d
0xd6:	7c 33                	jl     0x10b
0xd8:	48 8b 3d e9 fe ff ff 	mov    -0x117(%rip),%rdi        # 0xffffffc8
0xdf:	be 00 00 00 00       	mov    $0x0,%esi
0xe4:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xe8:	48 8b c8             	mov    %rax,%rcx
0xeb:	48 63 f6             	movslq %esi,%rsi
0xee:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf3:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf9:	0f 8d 07 00 00 00    	jge    0x106
0xff:	83 c1 01             	add    $0x1,%ecx
0x102:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x106:	e9 a9 00 00 00       	jmpq   0x1b4
0x10b:	48 8b 3d be fe ff ff 	mov    -0x142(%rip),%rdi        # 0xffffffd0
0x112:	be 01 00 00 00       	mov    $0x1,%esi
0x117:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x11b:	48 8b c8             	mov    %rax,%rcx
0x11e:	48 63 f6             	movslq %esi,%rsi
0x121:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x126:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x12c:	0f 8d 07 00 00 00    	jge    0x139
0x132:	83 c1 01             	add    $0x1,%ecx
0x135:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x139:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x13d:	48 83 ec 20          	sub    $0x20,%rsp
0x141:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x146:	90                   	nop
0x147:	90                   	nop
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x152:	48 83 ec 20          	sub    $0x20,%rsp
0x156:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x15b:	e8 00 00 00 00       	callq  0x160
0x160:	90                   	nop
0x161:	44 8b 5d b0          	mov    -0x50(%rbp),%r11d
0x165:	41 83 c3 01          	add    $0x1,%r11d
0x169:	44 89 5d b0          	mov    %r11d,-0x50(%rbp)
0x16d:	48 8b 3d 64 fe ff ff 	mov    -0x19c(%rip),%rdi        # 0xffffffd8
0x174:	be 04 00 00 00       	mov    $0x4,%esi
0x179:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x17d:	48 8b c8             	mov    %rax,%rcx
0x180:	48 63 f6             	movslq %esi,%rsi
0x183:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x188:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x18e:	0f 8d 07 00 00 00    	jge    0x19b
0x194:	83 c1 01             	add    $0x1,%ecx
0x197:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x19b:	48 8b 3d 3e fe ff ff 	mov    -0x1c2(%rip),%rdi        # 0xffffffe0
0x1a2:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x1a6:	83 e8 01             	sub    $0x1,%eax
0x1a9:	89 47 30             	mov    %eax,0x30(%rdi)
0x1ac:	4d 8b 36             	mov    (%r14),%r14
0x1af:	e9 f9 fe ff ff       	jmpq   0xad
0x1b4:	48 83 c5 40          	add    $0x40,%rbp
0x1b8:	c9                   	leaveq 
0x1b9:	c2 10 00             	retq   $0x10

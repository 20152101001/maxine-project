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
0x53:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x71:	48 83 ec 10          	sub    $0x10,%rsp
0x75:	4c 89 1c 24          	mov    %r11,(%rsp)
0x79:	48 8b 3c 24          	mov    (%rsp),%rdi
0x7d:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x81:	89 04 24             	mov    %eax,(%rsp)
0x84:	44 8b 1c 24          	mov    (%rsp),%r11d
0x88:	b8 00 00 00 00       	mov    $0x0,%eax
0x8d:	48 83 c4 10          	add    $0x10,%rsp
0x91:	44 3b d8             	cmp    %eax,%r11d
0x94:	7f 33                	jg     0xc9
0x96:	48 8b 3d 33 ff ff ff 	mov    -0xcd(%rip),%rdi        # 0xffffffd0
0x9d:	be 00 00 00 00       	mov    $0x0,%esi
0xa2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6:	48 8b c8             	mov    %rax,%rcx
0xa9:	48 63 f6             	movslq %esi,%rsi
0xac:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb7:	0f 8d 07 00 00 00    	jge    0xc4
0xbd:	83 c1 01             	add    $0x1,%ecx
0xc0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc4:	e9 09 01 00 00       	jmpq   0x1d2
0xc9:	48 8b 3d 08 ff ff ff 	mov    -0xf8(%rip),%rdi        # 0xffffffd8
0xd0:	be 01 00 00 00       	mov    $0x1,%esi
0xd5:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xd9:	48 8b c8             	mov    %rax,%rcx
0xdc:	48 63 f6             	movslq %esi,%rsi
0xdf:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe4:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xea:	0f 8d 07 00 00 00    	jge    0xf7
0xf0:	83 c1 01             	add    $0x1,%ecx
0xf3:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf7:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xfb:	48 83 ec 10          	sub    $0x10,%rsp
0xff:	4c 89 1c 24          	mov    %r11,(%rsp)
0x103:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x109:	48 83 ec 10          	sub    $0x10,%rsp
0x10d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x111:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x116:	40 8b 34 24          	rex mov (%rsp),%esi
0x11a:	48 8b c7             	mov    %rdi,%rax
0x11d:	48 63 40 10          	movslq 0x10(%rax),%rax
0x121:	3b f0                	cmp    %eax,%esi
0x123:	0f 82 0f 00 00 00    	jb     0x138
0x129:	e8 00 00 00 00       	callq  0x12e
0x12e:	90                   	nop
0x12f:	48 8b f8             	mov    %rax,%rdi
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 63 f6             	movslq %esi,%rsi
0x13b:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x140:	48 83 c4 10          	add    $0x10,%rsp
0x144:	48 89 04 24          	mov    %rax,(%rsp)
0x148:	e8 00 00 00 00       	callq  0x14d
0x14d:	90                   	nop
0x14e:	48 83 ec 10          	sub    $0x10,%rsp
0x152:	48 89 04 24          	mov    %rax,(%rsp)
0x156:	44 8b 1c 24          	mov    (%rsp),%r11d
0x15a:	48 83 c4 10          	add    $0x10,%rsp
0x15e:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x162:	48 8b 3d 77 fe ff ff 	mov    -0x189(%rip),%rdi        # 0xffffffe0
0x169:	be 04 00 00 00       	mov    $0x4,%esi
0x16e:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x172:	48 8b c8             	mov    %rax,%rcx
0x175:	48 63 f6             	movslq %esi,%rsi
0x178:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x17d:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x183:	0f 8d 07 00 00 00    	jge    0x190
0x189:	83 c1 01             	add    $0x1,%ecx
0x18c:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x190:	e9 3d 00 00 00       	jmpq   0x1d2
0x195:	49 8b fe             	mov    %r14,%rdi
0x198:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x19c:	85 07                	test   %eax,(%rdi)
0x19e:	e8 00 00 00 00       	callq  0x1a3
0x1a3:	90                   	nop
0x1a4:	48 83 ec 10          	sub    $0x10,%rsp
0x1a8:	48 89 04 24          	mov    %rax,(%rsp)
0x1ac:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b0:	48 83 c4 10          	add    $0x10,%rsp
0x1b4:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x1b8:	41 bb ff ff ff ff    	mov    $0xffffffff,%r11d
0x1be:	48 83 ec 10          	sub    $0x10,%rsp
0x1c2:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1c6:	44 8b 1c 24          	mov    (%rsp),%r11d
0x1ca:	48 83 c4 10          	add    $0x10,%rsp
0x1ce:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x1d2:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x1d6:	48 83 ec 10          	sub    $0x10,%rsp
0x1da:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1de:	90                   	nop
0x1df:	90                   	nop
0x1e0:	e8 00 00 00 00       	callq  0x1e5
0x1e5:	90                   	nop
0x1e6:	48 83 c5 40          	add    $0x40,%rbp
0x1ea:	c9                   	leaveq 
0x1eb:	c2 10 00             	retq   $0x10

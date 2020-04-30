0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 50 00 00          	enterq $0x50,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 58 e0 ff 	mov    %rax,-0x1fa8(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 79 ff ff ff 	mov    %r11,-0x87(%rip)        # 0xffffffa0
0x27:	48 8b 3d 7a ff ff ff 	mov    -0x86(%rip),%rdi        # 0xffffffa8
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
0x61:	e8 00 00 00 00       	callq  0x66
0x66:	90                   	nop
0x67:	48 8b 3d 42 ff ff ff 	mov    -0xbe(%rip),%rdi        # 0xffffffb0
0x6e:	be 18 00 00 00       	mov    $0x18,%esi
0x73:	48 63 f6             	movslq %esi,%rsi
0x76:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x7a:	48 83 ec 10          	sub    $0x10,%rsp
0x7e:	48 89 04 24          	mov    %rax,(%rsp)
0x82:	4c 8b 1d 2f ff ff ff 	mov    -0xd1(%rip),%r11        # 0xffffffb8
0x89:	48 83 ec 10          	sub    $0x10,%rsp
0x8d:	4c 89 1c 24          	mov    %r11,(%rsp)
0x91:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x96:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x9b:	48 8b 15 1e ff ff ff 	mov    -0xe2(%rip),%rdx        # 0xffffffc0
0xa2:	b9 02 00 00 00       	mov    $0x2,%ecx
0xa7:	48 8b c6             	mov    %rsi,%rax
0xaa:	48 8b 00             	mov    (%rax),%rax
0xad:	48 63 ff             	movslq %edi,%rdi
0xb0:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0xb5:	48 8b fa             	mov    %rdx,%rdi
0xb8:	48 8b d1             	mov    %rcx,%rdx
0xbb:	b9 03 00 00 00       	mov    $0x3,%ecx
0xc0:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xc4:	90                   	nop
0xc5:	90                   	nop
0xc6:	e8 00 00 00 00       	callq  0xcb
0xcb:	90                   	nop
0xcc:	48 8b 45 08          	mov    0x8(%rbp),%rax
0xd0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0xd4:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0xd9:	ff d0                	callq  *%rax
0xdb:	90                   	nop
0xdc:	48 8b 3d e5 fe ff ff 	mov    -0x11b(%rip),%rdi        # 0xffffffc8
0xe3:	be 0a 00 00 00       	mov    $0xa,%esi
0xe8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xec:	48 8b c8             	mov    %rax,%rcx
0xef:	48 63 f6             	movslq %esi,%rsi
0xf2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xf7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xfd:	0f 8d 07 00 00 00    	jge    0x10a
0x103:	83 c1 01             	add    $0x1,%ecx
0x106:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x10a:	e9 98 00 00 00       	jmpq   0x1a7
0x10f:	49 8b fe             	mov    %r14,%rdi
0x112:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x116:	85 07                	test   %eax,(%rdi)
0x118:	e8 00 00 00 00       	callq  0x11d
0x11d:	90                   	nop
0x11e:	48 83 ec 10          	sub    $0x10,%rsp
0x122:	48 89 04 24          	mov    %rax,(%rsp)
0x126:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12a:	48 83 c4 10          	add    $0x10,%rsp
0x12e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x132:	48 8b 3d 97 fe ff ff 	mov    -0x169(%rip),%rdi        # 0xffffffd0
0x139:	be 18 00 00 00       	mov    $0x18,%esi
0x13e:	48 63 f6             	movslq %esi,%rsi
0x141:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x145:	48 83 ec 10          	sub    $0x10,%rsp
0x149:	48 89 04 24          	mov    %rax,(%rsp)
0x14d:	4c 8b 1d 84 fe ff ff 	mov    -0x17c(%rip),%r11        # 0xffffffd8
0x154:	48 83 ec 10          	sub    $0x10,%rsp
0x158:	4c 89 1c 24          	mov    %r11,(%rsp)
0x15c:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x161:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x166:	48 8b 15 73 fe ff ff 	mov    -0x18d(%rip),%rdx        # 0xffffffe0
0x16d:	b9 0c 00 00 00       	mov    $0xc,%ecx
0x172:	48 8b c6             	mov    %rsi,%rax
0x175:	48 8b 00             	mov    (%rax),%rax
0x178:	48 63 ff             	movslq %edi,%rdi
0x17b:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x180:	48 8b fa             	mov    %rdx,%rdi
0x183:	48 8b d1             	mov    %rcx,%rdx
0x186:	b9 03 00 00 00       	mov    $0x3,%ecx
0x18b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x18f:	90                   	nop
0x190:	90                   	nop
0x191:	e8 00 00 00 00       	callq  0x196
0x196:	90                   	nop
0x197:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x19b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x19f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1a4:	ff d0                	callq  *%rax
0x1a6:	90                   	nop
0x1a7:	48 83 c5 40          	add    $0x40,%rbp
0x1ab:	c9                   	leaveq 
0x1ac:	c2 10 00             	retq   $0x10

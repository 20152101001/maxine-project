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
0x53:	48 8b 3d 6e ff ff ff 	mov    -0x92(%rip),%rdi        # 0xffffffc8
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 6b ff ff ff 	mov    -0x95(%rip),%rsi        # 0xffffffd0
0x65:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x69:	49 8b ce             	mov    %r14,%rcx
0x6c:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x70:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x77:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x7e:	48 8b d9             	mov    %rcx,%rbx
0x81:	48 03 da             	add    %rdx,%rbx
0x84:	4c 8b cb             	mov    %rbx,%r9
0x87:	4d 3b c8             	cmp    %r8,%r9
0x8a:	0f 86 14 00 00 00    	jbe    0xa4
0x90:	48 8b fe             	mov    %rsi,%rdi
0x93:	48 8b f2             	mov    %rdx,%rsi
0x96:	48 8b d0             	mov    %rax,%rdx
0x99:	e8 00 00 00 00       	callq  0x9e
0x9e:	90                   	nop
0x9f:	e9 0a 00 00 00       	jmpq   0xae
0xa4:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xab:	48 8b c1             	mov    %rcx,%rax
0xae:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xb2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xb6:	90                   	nop
0xb7:	90                   	nop
0xb8:	90                   	nop
0xb9:	e8 00 00 00 00       	callq  0xbe
0xbe:	90                   	nop
0xbf:	90                   	nop
0xc0:	90                   	nop
0xc1:	e8 00 00 00 00       	callq  0xc6
0xc6:	90                   	nop
0xc7:	83 f8 00             	cmp    $0x0,%eax
0xca:	0f 84 27 00 00 00    	je     0xf7
0xd0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xd4:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xd8:	85 06                	test   %eax,(%rsi)
0xda:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xde:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xe2:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xe6:	83 e2 ff             	and    $0xffffffff,%edx
0xe9:	48 8b fa             	mov    %rdx,%rdi
0xec:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0xf0:	90                   	nop
0xf1:	e8 00 00 00 00       	callq  0xf6
0xf6:	90                   	nop
0xf7:	48 8b 45 10          	mov    0x10(%rbp),%rax
0xfb:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xff:	48 89 38             	mov    %rdi,(%rax)
0x102:	48 83 ec 10          	sub    $0x10,%rsp
0x106:	48 89 04 24          	mov    %rax,(%rsp)
0x10a:	48 83 ec 10          	sub    $0x10,%rsp
0x10e:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x113:	4c 89 1c 24          	mov    %r11,(%rsp)
0x117:	49 bb 00 10 a5 d4 e8 	movabs $0xe8d4a51000,%r11
0x11e:	00 00 00 
0x121:	48 83 ec 20          	sub    $0x20,%rsp
0x125:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x12a:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x12f:	41 85 03             	test   %eax,(%r11)
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13c:	48 83 c4 10          	add    $0x10,%rsp
0x140:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x144:	48 8b 3d 8d fe ff ff 	mov    -0x173(%rip),%rdi        # 0xffffffd8
0x14b:	be 18 00 00 00       	mov    $0x18,%esi
0x150:	48 63 f6             	movslq %esi,%rsi
0x153:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x157:	48 83 ec 10          	sub    $0x10,%rsp
0x15b:	48 89 04 24          	mov    %rax,(%rsp)
0x15f:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x163:	48 83 ec 10          	sub    $0x10,%rsp
0x167:	4c 89 1c 24          	mov    %r11,(%rsp)
0x16b:	bf 30 00 00 00       	mov    $0x30,%edi
0x170:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x175:	48 8b 15 64 fe ff ff 	mov    -0x19c(%rip),%rdx        # 0xffffffe0
0x17c:	b9 02 00 00 00       	mov    $0x2,%ecx
0x181:	48 8b c6             	mov    %rsi,%rax
0x184:	48 8b 00             	mov    (%rax),%rax
0x187:	48 63 ff             	movslq %edi,%rdi
0x18a:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x18f:	48 8b fa             	mov    %rdx,%rdi
0x192:	48 8b d1             	mov    %rcx,%rdx
0x195:	b9 03 00 00 00       	mov    $0x3,%ecx
0x19a:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x19e:	90                   	nop
0x19f:	90                   	nop
0x1a0:	e8 00 00 00 00       	callq  0x1a5
0x1a5:	90                   	nop
0x1a6:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1aa:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1ae:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1b3:	ff d0                	callq  *%rax
0x1b5:	90                   	nop
0x1b6:	48 83 c5 40          	add    $0x40,%rbp
0x1ba:	c9                   	leaveq 
0x1bb:	c2 10 00             	retq   $0x10

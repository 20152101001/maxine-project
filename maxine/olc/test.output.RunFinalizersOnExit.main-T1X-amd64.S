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
0x20:	4c 89 1d 89 ff ff ff 	mov    %r11,-0x77(%rip)        # 0xffffffb0
0x27:	48 8b 3d 8a ff ff ff 	mov    -0x76(%rip),%rdi        # 0xffffffb8
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
0x53:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	e8 00 00 00 00       	callq  0x66
0x66:	90                   	nop
0x67:	48 8b 3d 52 ff ff ff 	mov    -0xae(%rip),%rdi        # 0xffffffc0
0x6e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x72:	48 8b 35 4f ff ff ff 	mov    -0xb1(%rip),%rsi        # 0xffffffc8
0x79:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x7d:	49 8b ce             	mov    %r14,%rcx
0x80:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x84:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x8b:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x92:	48 8b d9             	mov    %rcx,%rbx
0x95:	48 03 da             	add    %rdx,%rbx
0x98:	4c 8b cb             	mov    %rbx,%r9
0x9b:	4d 3b c8             	cmp    %r8,%r9
0x9e:	0f 86 14 00 00 00    	jbe    0xb8
0xa4:	48 8b fe             	mov    %rsi,%rdi
0xa7:	48 8b f2             	mov    %rdx,%rsi
0xaa:	48 8b d0             	mov    %rax,%rdx
0xad:	e8 00 00 00 00       	callq  0xb2
0xb2:	90                   	nop
0xb3:	e9 0a 00 00 00       	jmpq   0xc2
0xb8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0xbf:	48 8b c1             	mov    %rcx,%rax
0xc2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0xc6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xca:	90                   	nop
0xcb:	90                   	nop
0xcc:	90                   	nop
0xcd:	e8 00 00 00 00       	callq  0xd2
0xd2:	90                   	nop
0xd3:	90                   	nop
0xd4:	90                   	nop
0xd5:	e8 00 00 00 00       	callq  0xda
0xda:	90                   	nop
0xdb:	83 f8 00             	cmp    $0x0,%eax
0xde:	0f 84 27 00 00 00    	je     0x10b
0xe4:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0xe8:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0xec:	85 06                	test   %eax,(%rsi)
0xee:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0xf2:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0xf6:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0xfa:	83 e2 ff             	and    $0xffffffff,%edx
0xfd:	48 8b fa             	mov    %rdx,%rdi
0x100:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x104:	90                   	nop
0x105:	e8 00 00 00 00       	callq  0x10a
0x10a:	90                   	nop
0x10b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x10f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x113:	48 89 38             	mov    %rdi,(%rax)
0x116:	48 83 ec 10          	sub    $0x10,%rsp
0x11a:	48 89 04 24          	mov    %rax,(%rsp)
0x11e:	48 83 ec 10          	sub    $0x10,%rsp
0x122:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x127:	4c 89 1c 24          	mov    %r11,(%rsp)
0x12b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12f:	41 85 03             	test   %eax,(%r11)
0x132:	e8 00 00 00 00       	callq  0x137
0x137:	90                   	nop
0x138:	48 83 c4 10          	add    $0x10,%rsp
0x13c:	48 8b 3d 8d fe ff ff 	mov    -0x173(%rip),%rdi        # 0xffffffd0
0x143:	be 18 00 00 00       	mov    $0x18,%esi
0x148:	48 63 f6             	movslq %esi,%rsi
0x14b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x14f:	48 83 ec 10          	sub    $0x10,%rsp
0x153:	48 89 04 24          	mov    %rax,(%rsp)
0x157:	4c 8b 1d 7a fe ff ff 	mov    -0x186(%rip),%r11        # 0xffffffd8
0x15e:	48 83 ec 10          	sub    $0x10,%rsp
0x162:	4c 89 1c 24          	mov    %r11,(%rsp)
0x166:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x16b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x170:	48 8b 15 69 fe ff ff 	mov    -0x197(%rip),%rdx        # 0xffffffe0
0x177:	b9 03 00 00 00       	mov    $0x3,%ecx
0x17c:	48 8b c6             	mov    %rsi,%rax
0x17f:	48 8b 00             	mov    (%rax),%rax
0x182:	48 63 ff             	movslq %edi,%rdi
0x185:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x18a:	48 8b fa             	mov    %rdx,%rdi
0x18d:	48 8b d1             	mov    %rcx,%rdx
0x190:	b9 03 00 00 00       	mov    $0x3,%ecx
0x195:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x199:	90                   	nop
0x19a:	90                   	nop
0x19b:	e8 00 00 00 00       	callq  0x1a0
0x1a0:	90                   	nop
0x1a1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1a5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1a9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1ae:	ff d0                	callq  *%rax
0x1b0:	90                   	nop
0x1b1:	48 83 c5 40          	add    $0x40,%rbp
0x1b5:	c9                   	leaveq 
0x1b6:	c2 10 00             	retq   $0x10

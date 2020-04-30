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
0x20:	4c 89 1d 69 ff ff ff 	mov    %r11,-0x97(%rip)        # 0xffffff90
0x27:	48 8b 3d 6a ff ff ff 	mov    -0x96(%rip),%rdi        # 0xffffff98
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
0x53:	48 8b 3d 46 ff ff ff 	mov    -0xba(%rip),%rdi        # 0xffffffa0
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d 33 ff ff ff 	mov    -0xcd(%rip),%r11        # 0xffffffa8
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 22 ff ff ff 	mov    -0xde(%rip),%rdx        # 0xffffffb0
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
0xc8:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xce:	48 83 ec 10          	sub    $0x10,%rsp
0xd2:	44 89 1c 24          	mov    %r11d,(%rsp)
0xd6:	44 8b 1c 24          	mov    (%rsp),%r11d
0xda:	48 83 c4 10          	add    $0x10,%rsp
0xde:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0xe2:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0xe6:	48 83 ec 10          	sub    $0x10,%rsp
0xea:	44 89 1c 24          	mov    %r11d,(%rsp)
0xee:	41 bb 40 42 0f 00    	mov    $0xf4240,%r11d
0xf4:	48 83 ec 10          	sub    $0x10,%rsp
0xf8:	44 89 1c 24          	mov    %r11d,(%rsp)
0xfc:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x101:	8b 04 24             	mov    (%rsp),%eax
0x104:	48 83 c4 20          	add    $0x20,%rsp
0x108:	44 3b d8             	cmp    %eax,%r11d
0x10b:	7c 33                	jl     0x140
0x10d:	48 8b 3d a4 fe ff ff 	mov    -0x15c(%rip),%rdi        # 0xffffffb8
0x114:	be 09 00 00 00       	mov    $0x9,%esi
0x119:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x11d:	48 8b c8             	mov    %rax,%rcx
0x120:	48 63 f6             	movslq %esi,%rsi
0x123:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x128:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x12e:	0f 8d 07 00 00 00    	jge    0x13b
0x134:	83 c1 01             	add    $0x1,%ecx
0x137:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x13b:	e9 9b 00 00 00       	jmpq   0x1db
0x140:	48 8b 3d 79 fe ff ff 	mov    -0x187(%rip),%rdi        # 0xffffffc0
0x147:	be 0a 00 00 00       	mov    $0xa,%esi
0x14c:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x150:	48 8b c8             	mov    %rax,%rcx
0x153:	48 63 f6             	movslq %esi,%rsi
0x156:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x15b:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x161:	0f 8d 07 00 00 00    	jge    0x16e
0x167:	83 c1 01             	add    $0x1,%ecx
0x16a:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x16e:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x172:	48 83 ec 10          	sub    $0x10,%rsp
0x176:	44 89 1c 24          	mov    %r11d,(%rsp)
0x17a:	e8 00 00 00 00       	callq  0x17f
0x17f:	90                   	nop
0x180:	48 83 ec 10          	sub    $0x10,%rsp
0x184:	48 89 04 24          	mov    %rax,(%rsp)
0x188:	44 8b 1c 24          	mov    (%rsp),%r11d
0x18c:	48 83 c4 10          	add    $0x10,%rsp
0x190:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x194:	48 8b 3d 2d fe ff ff 	mov    -0x1d3(%rip),%rdi        # 0xffffffc8
0x19b:	be 0c 00 00 00       	mov    $0xc,%esi
0x1a0:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1a4:	48 8b c8             	mov    %rax,%rcx
0x1a7:	48 63 f6             	movslq %esi,%rsi
0x1aa:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1af:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1b5:	0f 8d 07 00 00 00    	jge    0x1c2
0x1bb:	83 c1 01             	add    $0x1,%ecx
0x1be:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1c2:	48 8b 3d 07 fe ff ff 	mov    -0x1f9(%rip),%rdi        # 0xffffffd0
0x1c9:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x1cd:	83 e8 01             	sub    $0x1,%eax
0x1d0:	89 47 30             	mov    %eax,0x30(%rdi)
0x1d3:	4d 8b 36             	mov    (%r14),%r14
0x1d6:	e9 07 ff ff ff       	jmpq   0xe2
0x1db:	48 8b 3d f6 fd ff ff 	mov    -0x20a(%rip),%rdi        # 0xffffffd8
0x1e2:	be 18 00 00 00       	mov    $0x18,%esi
0x1e7:	48 63 f6             	movslq %esi,%rsi
0x1ea:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1ee:	48 83 ec 10          	sub    $0x10,%rsp
0x1f2:	48 89 04 24          	mov    %rax,(%rsp)
0x1f6:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x1fa:	48 83 ec 10          	sub    $0x10,%rsp
0x1fe:	44 89 1c 24          	mov    %r11d,(%rsp)
0x202:	bf 2a 00 00 00       	mov    $0x2a,%edi
0x207:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x20c:	48 8b 15 cd fd ff ff 	mov    -0x233(%rip),%rdx        # 0xffffffe0
0x213:	b9 0e 00 00 00       	mov    $0xe,%ecx
0x218:	48 8b c6             	mov    %rsi,%rax
0x21b:	48 8b 00             	mov    (%rax),%rax
0x21e:	48 63 ff             	movslq %edi,%rdi
0x221:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x226:	48 8b fa             	mov    %rdx,%rdi
0x229:	48 8b d1             	mov    %rcx,%rdx
0x22c:	b9 03 00 00 00       	mov    $0x3,%ecx
0x231:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x235:	90                   	nop
0x236:	90                   	nop
0x237:	e8 00 00 00 00       	callq  0x23c
0x23c:	90                   	nop
0x23d:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x241:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x245:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x24a:	ff d0                	callq  *%rax
0x24c:	90                   	nop
0x24d:	48 83 c5 40          	add    $0x40,%rbp
0x251:	c9                   	leaveq 
0x252:	c2 10 00             	retq   $0x10

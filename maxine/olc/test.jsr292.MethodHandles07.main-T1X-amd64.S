0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 70 00 00          	enterq $0x70,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 78 e0 ff 	mov    %rax,-0x1f88(%rsp)
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
0x53:	e8 00 00 00 00       	callq  0x58
0x58:	90                   	nop
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	48 89 04 24          	mov    %rax,(%rsp)
0x61:	4c 8b 1c 24          	mov    (%rsp),%r11
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6d:	48 8b 3d 3c ff ff ff 	mov    -0xc4(%rip),%rdi        # 0xffffffb0
0x74:	be 10 00 00 00       	mov    $0x10,%esi
0x79:	48 63 f6             	movslq %esi,%rsi
0x7c:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x80:	48 83 ec 10          	sub    $0x10,%rsp
0x84:	48 89 04 24          	mov    %rax,(%rsp)
0x88:	48 83 ec 10          	sub    $0x10,%rsp
0x8c:	4c 8b 1d 25 ff ff ff 	mov    -0xdb(%rip),%r11        # 0xffffffb8
0x93:	4c 89 1c 24          	mov    %r11,(%rsp)
0x97:	90                   	nop
0x98:	e8 00 00 00 00       	callq  0x9d
0x9d:	90                   	nop
0x9e:	48 83 ec 10          	sub    $0x10,%rsp
0xa2:	48 89 04 24          	mov    %rax,(%rsp)
0xa6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xaa:	48 83 c4 10          	add    $0x10,%rsp
0xae:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xb2:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xb6:	48 83 ec 10          	sub    $0x10,%rsp
0xba:	4c 89 1c 24          	mov    %r11,(%rsp)
0xbe:	48 83 ec 10          	sub    $0x10,%rsp
0xc2:	4c 8b 1d f7 fe ff ff 	mov    -0x109(%rip),%r11        # 0xffffffc0
0xc9:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcd:	4c 8b 1d f4 fe ff ff 	mov    -0x10c(%rip),%r11        # 0xffffffc8
0xd4:	48 83 ec 10          	sub    $0x10,%rsp
0xd8:	4c 89 1c 24          	mov    %r11,(%rsp)
0xdc:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xe0:	48 83 ec 10          	sub    $0x10,%rsp
0xe4:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe8:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xed:	41 85 03             	test   %eax,(%r11)
0xf0:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xf5:	90                   	nop
0xf6:	90                   	nop
0xf7:	90                   	nop
0xf8:	e8 00 00 00 00       	callq  0xfd
0xfd:	90                   	nop
0xfe:	48 83 ec 10          	sub    $0x10,%rsp
0x102:	48 89 04 24          	mov    %rax,(%rsp)
0x106:	4c 8b 1c 24          	mov    (%rsp),%r11
0x10a:	48 83 c4 10          	add    $0x10,%rsp
0x10e:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x112:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x116:	48 83 ec 10          	sub    $0x10,%rsp
0x11a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11e:	48 8b 3d ab fe ff ff 	mov    -0x155(%rip),%rdi        # 0xffffffd0
0x125:	be 18 00 00 00       	mov    $0x18,%esi
0x12a:	48 63 f6             	movslq %esi,%rsi
0x12d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x131:	48 83 ec 10          	sub    $0x10,%rsp
0x135:	48 89 04 24          	mov    %rax,(%rsp)
0x139:	4c 8b 1d 98 fe ff ff 	mov    -0x168(%rip),%r11        # 0xffffffd8
0x140:	48 83 ec 10          	sub    $0x10,%rsp
0x144:	4c 89 1c 24          	mov    %r11,(%rsp)
0x148:	48 8b 3d 91 fe ff ff 	mov    -0x16f(%rip),%rdi        # 0xffffffe0
0x14f:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
0x154:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x158:	4d 33 db             	xor    %r11,%r11
0x15b:	49 3b c3             	cmp    %r11,%rax
0x15e:	0f 85 1d 00 00 00    	jne    0x181
0x164:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x168:	48 8b c7             	mov    %rdi,%rax
0x16b:	48 8b f8             	mov    %rax,%rdi
0x16e:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x172:	90                   	nop
0x173:	e8 00 00 00 00       	callq  0x178
0x178:	90                   	nop
0x179:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x17d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x181:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x185:	48 8b 0e             	mov    (%rsi),%rcx
0x188:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x18c:	48 63 d2             	movslq %edx,%rdx
0x18f:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x194:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x198:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x19d:	ff d0                	callq  *%rax
0x19f:	90                   	nop
0x1a0:	48 83 c5 40          	add    $0x40,%rbp
0x1a4:	c9                   	leaveq 
0x1a5:	c2 10 00             	retq   $0x10

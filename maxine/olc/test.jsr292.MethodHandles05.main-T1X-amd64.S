0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 a0 00 00          	enterq $0xa0,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 a8 e0 ff 	mov    %rax,-0x1f58(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d 71 ff ff ff 	mov    %r11,-0x8f(%rip)        # 0xffffff98
0x27:	48 8b 3d 72 ff ff ff 	mov    -0x8e(%rip),%rdi        # 0xffffffa0
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
0x6d:	48 83 ec 10          	sub    $0x10,%rsp
0x71:	4c 8b 1d 30 ff ff ff 	mov    -0xd0(%rip),%r11        # 0xffffffa8
0x78:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7c:	48 83 ec 10          	sub    $0x10,%rsp
0x80:	4c 8b 1d 29 ff ff ff 	mov    -0xd7(%rip),%r11        # 0xffffffb0
0x87:	4c 89 1c 24          	mov    %r11,(%rsp)
0x8b:	e8 00 00 00 00       	callq  0x90
0x90:	90                   	nop
0x91:	48 83 ec 10          	sub    $0x10,%rsp
0x95:	48 89 04 24          	mov    %rax,(%rsp)
0x99:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9d:	48 83 c4 10          	add    $0x10,%rsp
0xa1:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0xa5:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xa9:	48 83 ec 10          	sub    $0x10,%rsp
0xad:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb1:	48 83 ec 10          	sub    $0x10,%rsp
0xb5:	4c 8b 1d fc fe ff ff 	mov    -0x104(%rip),%r11        # 0xffffffb8
0xbc:	4c 89 1c 24          	mov    %r11,(%rsp)
0xc0:	4c 8b 1d f9 fe ff ff 	mov    -0x107(%rip),%r11        # 0xffffffc0
0xc7:	48 83 ec 10          	sub    $0x10,%rsp
0xcb:	4c 89 1c 24          	mov    %r11,(%rsp)
0xcf:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0xd3:	48 83 ec 10          	sub    $0x10,%rsp
0xd7:	4c 89 1c 24          	mov    %r11,(%rsp)
0xdb:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
0xe0:	41 85 03             	test   %eax,(%r11)
0xe3:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0xe8:	e8 00 00 00 00       	callq  0xed
0xed:	90                   	nop
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	48 89 04 24          	mov    %rax,(%rsp)
0xf6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xfa:	48 83 c4 10          	add    $0x10,%rsp
0xfe:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x102:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x108:	48 83 ec 10          	sub    $0x10,%rsp
0x10c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x110:	e8 00 00 00 00       	callq  0x115
0x115:	90                   	nop
0x116:	48 83 ec 10          	sub    $0x10,%rsp
0x11a:	48 89 04 24          	mov    %rax,(%rsp)
0x11e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x122:	48 83 c4 10          	add    $0x10,%rsp
0x126:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0x12a:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x12e:	48 83 ec 10          	sub    $0x10,%rsp
0x132:	4c 89 1c 24          	mov    %r11,(%rsp)
0x136:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x13a:	48 83 ec 10          	sub    $0x10,%rsp
0x13e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x142:	bf 1c 00 00 00       	mov    $0x1c,%edi
0x147:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x14c:	48 8b 15 75 fe ff ff 	mov    -0x18b(%rip),%rdx        # 0xffffffc8
0x153:	b9 05 00 00 00       	mov    $0x5,%ecx
0x158:	48 8b c6             	mov    %rsi,%rax
0x15b:	48 8b 00             	mov    (%rax),%rax
0x15e:	48 63 ff             	movslq %edi,%rdi
0x161:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x166:	48 8b fa             	mov    %rdx,%rdi
0x169:	48 8b d1             	mov    %rcx,%rdx
0x16c:	b9 03 00 00 00       	mov    $0x3,%ecx
0x171:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x175:	90                   	nop
0x176:	90                   	nop
0x177:	e8 00 00 00 00       	callq  0x17c
0x17c:	90                   	nop
0x17d:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x181:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x185:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x18a:	ff d0                	callq  *%rax
0x18c:	90                   	nop
0x18d:	48 83 ec 10          	sub    $0x10,%rsp
0x191:	48 89 04 24          	mov    %rax,(%rsp)
0x195:	4c 8b 1c 24          	mov    (%rsp),%r11
0x199:	48 83 c4 10          	add    $0x10,%rsp
0x19d:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0x1a1:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x1a5:	48 83 ec 10          	sub    $0x10,%rsp
0x1a9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ad:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x1b3:	48 83 ec 10          	sub    $0x10,%rsp
0x1b7:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1bb:	e8 00 00 00 00       	callq  0x1c0
0x1c0:	90                   	nop
0x1c1:	48 83 ec 10          	sub    $0x10,%rsp
0x1c5:	48 89 04 24          	mov    %rax,(%rsp)
0x1c9:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x1cf:	48 83 ec 10          	sub    $0x10,%rsp
0x1d3:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1d7:	90                   	nop
0x1d8:	e8 00 00 00 00       	callq  0x1dd
0x1dd:	90                   	nop
0x1de:	48 83 ec 10          	sub    $0x10,%rsp
0x1e2:	48 89 04 24          	mov    %rax,(%rsp)
0x1e6:	41 bb 03 00 00 00    	mov    $0x3,%r11d
0x1ec:	48 83 ec 10          	sub    $0x10,%rsp
0x1f0:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1f4:	90                   	nop
0x1f5:	90                   	nop
0x1f6:	90                   	nop
0x1f7:	90                   	nop
0x1f8:	e8 00 00 00 00       	callq  0x1fd
0x1fd:	90                   	nop
0x1fe:	48 83 ec 10          	sub    $0x10,%rsp
0x202:	48 89 04 24          	mov    %rax,(%rsp)
0x206:	48 8b 3d c3 fd ff ff 	mov    -0x23d(%rip),%rdi        # 0xffffffd0
0x20d:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
0x212:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x216:	4d 33 db             	xor    %r11,%r11
0x219:	49 3b c3             	cmp    %r11,%rax
0x21c:	0f 85 1d 00 00 00    	jne    0x23f
0x222:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x226:	48 8b c7             	mov    %rdi,%rax
0x229:	48 8b f8             	mov    %rax,%rdi
0x22c:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x230:	90                   	nop
0x231:	e8 00 00 00 00       	callq  0x236
0x236:	90                   	nop
0x237:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x23b:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x23f:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x243:	48 8b 0e             	mov    (%rsi),%rcx
0x246:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x24a:	48 63 d2             	movslq %edx,%rdx
0x24d:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x252:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x256:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x25b:	ff d0                	callq  *%rax
0x25d:	90                   	nop
0x25e:	48 83 ec 10          	sub    $0x10,%rsp
0x262:	48 89 04 24          	mov    %rax,(%rsp)
0x266:	4c 8b 1c 24          	mov    (%rsp),%r11
0x26a:	48 83 c4 10          	add    $0x10,%rsp
0x26e:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0x272:	48 8b 3d 5f fd ff ff 	mov    -0x2a1(%rip),%rdi        # 0xffffffd8
0x279:	be 18 00 00 00       	mov    $0x18,%esi
0x27e:	48 63 f6             	movslq %esi,%rsi
0x281:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x285:	48 83 ec 10          	sub    $0x10,%rsp
0x289:	48 89 04 24          	mov    %rax,(%rsp)
0x28d:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x291:	48 83 ec 10          	sub    $0x10,%rsp
0x295:	4c 89 1c 24          	mov    %r11,(%rsp)
0x299:	bf 30 00 00 00       	mov    $0x30,%edi
0x29e:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2a3:	48 8b 15 36 fd ff ff 	mov    -0x2ca(%rip),%rdx        # 0xffffffe0
0x2aa:	b9 12 00 00 00       	mov    $0x12,%ecx
0x2af:	48 8b c6             	mov    %rsi,%rax
0x2b2:	48 8b 00             	mov    (%rax),%rax
0x2b5:	48 63 ff             	movslq %edi,%rdi
0x2b8:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2bd:	48 8b fa             	mov    %rdx,%rdi
0x2c0:	48 8b d1             	mov    %rcx,%rdx
0x2c3:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2c8:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2cc:	90                   	nop
0x2cd:	90                   	nop
0x2ce:	e8 00 00 00 00       	callq  0x2d3
0x2d3:	90                   	nop
0x2d4:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2d8:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2dc:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2e1:	ff d0                	callq  *%rax
0x2e3:	90                   	nop
0x2e4:	48 83 c5 40          	add    $0x40,%rbp
0x2e8:	c9                   	leaveq 
0x2e9:	c2 10 00             	retq   $0x10

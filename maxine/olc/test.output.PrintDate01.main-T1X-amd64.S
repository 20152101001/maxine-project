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
0x53:	48 8b 3d 56 ff ff ff 	mov    -0xaa(%rip),%rdi        # 0xffffffb0
0x5a:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x5e:	48 8b 35 53 ff ff ff 	mov    -0xad(%rip),%rsi        # 0xffffffb8
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
0x117:	4c 8b 1c 24          	mov    (%rsp),%r11
0x11b:	41 85 03             	test   %eax,(%r11)
0x11e:	90                   	nop
0x11f:	90                   	nop
0x120:	e8 00 00 00 00       	callq  0x125
0x125:	90                   	nop
0x126:	4c 8b 1c 24          	mov    (%rsp),%r11
0x12a:	48 83 c4 10          	add    $0x10,%rsp
0x12e:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x132:	48 8b 3d 87 fe ff ff 	mov    -0x179(%rip),%rdi        # 0xffffffc0
0x139:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x13d:	48 8b 35 84 fe ff ff 	mov    -0x17c(%rip),%rsi        # 0xffffffc8
0x144:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x148:	49 8b ce             	mov    %r14,%rcx
0x14b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x14f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x156:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x15d:	48 8b d9             	mov    %rcx,%rbx
0x160:	48 03 da             	add    %rdx,%rbx
0x163:	4c 8b cb             	mov    %rbx,%r9
0x166:	4d 3b c8             	cmp    %r8,%r9
0x169:	0f 86 14 00 00 00    	jbe    0x183
0x16f:	48 8b fe             	mov    %rsi,%rdi
0x172:	48 8b f2             	mov    %rdx,%rsi
0x175:	48 8b d0             	mov    %rax,%rdx
0x178:	e8 00 00 00 00       	callq  0x17d
0x17d:	90                   	nop
0x17e:	e9 0a 00 00 00       	jmpq   0x18d
0x183:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x18a:	48 8b c1             	mov    %rcx,%rax
0x18d:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x191:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x195:	90                   	nop
0x196:	90                   	nop
0x197:	90                   	nop
0x198:	e8 00 00 00 00       	callq  0x19d
0x19d:	90                   	nop
0x19e:	90                   	nop
0x19f:	90                   	nop
0x1a0:	e8 00 00 00 00       	callq  0x1a5
0x1a5:	90                   	nop
0x1a6:	83 f8 00             	cmp    $0x0,%eax
0x1a9:	0f 84 27 00 00 00    	je     0x1d6
0x1af:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1b3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1b7:	85 06                	test   %eax,(%rsi)
0x1b9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1bd:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1c1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1c5:	83 e2 ff             	and    $0xffffffff,%edx
0x1c8:	48 8b fa             	mov    %rdx,%rdi
0x1cb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x1da:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1de:	48 89 38             	mov    %rdi,(%rax)
0x1e1:	48 83 ec 10          	sub    $0x10,%rsp
0x1e5:	48 89 04 24          	mov    %rax,(%rsp)
0x1e9:	48 83 ec 10          	sub    $0x10,%rsp
0x1ed:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x1f2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1f6:	4c 8b 1d d3 fd ff ff 	mov    -0x22d(%rip),%r11        # 0xffffffd0
0x1fd:	48 83 ec 10          	sub    $0x10,%rsp
0x201:	4c 89 1c 24          	mov    %r11,(%rsp)
0x205:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x20a:	41 85 03             	test   %eax,(%r11)
0x20d:	90                   	nop
0x20e:	90                   	nop
0x20f:	90                   	nop
0x210:	e8 00 00 00 00       	callq  0x215
0x215:	90                   	nop
0x216:	4c 8b 1c 24          	mov    (%rsp),%r11
0x21a:	48 83 c4 10          	add    $0x10,%rsp
0x21e:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x222:	48 8b 3d af fd ff ff 	mov    -0x251(%rip),%rdi        # 0xffffffd8
0x229:	be 18 00 00 00       	mov    $0x18,%esi
0x22e:	48 63 f6             	movslq %esi,%rsi
0x231:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x235:	48 83 ec 10          	sub    $0x10,%rsp
0x239:	48 89 04 24          	mov    %rax,(%rsp)
0x23d:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x241:	48 83 ec 10          	sub    $0x10,%rsp
0x245:	4c 89 1c 24          	mov    %r11,(%rsp)
0x249:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x24d:	48 83 ec 10          	sub    $0x10,%rsp
0x251:	4c 89 1c 24          	mov    %r11,(%rsp)
0x255:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x25a:	41 85 03             	test   %eax,(%r11)
0x25d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x262:	e8 00 00 00 00       	callq  0x267
0x267:	90                   	nop
0x268:	48 83 ec 10          	sub    $0x10,%rsp
0x26c:	48 89 04 24          	mov    %rax,(%rsp)
0x270:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x275:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x27a:	48 8b 15 5f fd ff ff 	mov    -0x2a1(%rip),%rdx        # 0xffffffe0
0x281:	b9 04 00 00 00       	mov    $0x4,%ecx
0x286:	48 8b c6             	mov    %rsi,%rax
0x289:	48 8b 00             	mov    (%rax),%rax
0x28c:	48 63 ff             	movslq %edi,%rdi
0x28f:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x294:	48 8b fa             	mov    %rdx,%rdi
0x297:	48 8b d1             	mov    %rcx,%rdx
0x29a:	b9 03 00 00 00       	mov    $0x3,%ecx
0x29f:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2a3:	90                   	nop
0x2a4:	90                   	nop
0x2a5:	e8 00 00 00 00       	callq  0x2aa
0x2aa:	90                   	nop
0x2ab:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2af:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2b3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2b8:	ff d0                	callq  *%rax
0x2ba:	90                   	nop
0x2bb:	48 83 c5 40          	add    $0x40,%rbp
0x2bf:	c9                   	leaveq 
0x2c0:	c2 10 00             	retq   $0x10

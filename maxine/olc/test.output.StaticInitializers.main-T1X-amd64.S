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
0x20:	4c 89 1d 49 ff ff ff 	mov    %r11,-0xb7(%rip)        # 0xffffff70
0x27:	48 8b 3d 4a ff ff ff 	mov    -0xb6(%rip),%rdi        # 0xffffff78
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
0x53:	48 8b 3d 26 ff ff ff 	mov    -0xda(%rip),%rdi        # 0xffffff80
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d 13 ff ff ff 	mov    -0xed(%rip),%r11        # 0xffffff88
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 02 ff ff ff 	mov    -0xfe(%rip),%rdx        # 0xffffff90
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
0xc8:	48 8b 3d c9 fe ff ff 	mov    -0x137(%rip),%rdi        # 0xffffff98
0xcf:	be 18 00 00 00       	mov    $0x18,%esi
0xd4:	48 63 f6             	movslq %esi,%rsi
0xd7:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xdb:	48 83 ec 10          	sub    $0x10,%rsp
0xdf:	48 89 04 24          	mov    %rax,(%rsp)
0xe3:	48 8b 3d b6 fe ff ff 	mov    -0x14a(%rip),%rdi        # 0xffffffa0
0xea:	be 10 00 00 00       	mov    $0x10,%esi
0xef:	48 63 f6             	movslq %esi,%rsi
0xf2:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0xf6:	48 83 ec 10          	sub    $0x10,%rsp
0xfa:	48 89 04 24          	mov    %rax,(%rsp)
0xfe:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x103:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x108:	48 8b 15 99 fe ff ff 	mov    -0x167(%rip),%rdx        # 0xffffffa8
0x10f:	b9 0a 00 00 00       	mov    $0xa,%ecx
0x114:	48 8b c6             	mov    %rsi,%rax
0x117:	48 8b 00             	mov    (%rax),%rax
0x11a:	48 63 ff             	movslq %edi,%rdi
0x11d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x122:	48 8b fa             	mov    %rdx,%rdi
0x125:	48 8b d1             	mov    %rcx,%rdx
0x128:	b9 03 00 00 00       	mov    $0x3,%ecx
0x12d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x131:	90                   	nop
0x132:	90                   	nop
0x133:	e8 00 00 00 00       	callq  0x138
0x138:	90                   	nop
0x139:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x13d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x141:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x146:	ff d0                	callq  *%rax
0x148:	90                   	nop
0x149:	48 8b 3d 60 fe ff ff 	mov    -0x1a0(%rip),%rdi        # 0xffffffb0
0x150:	be 18 00 00 00       	mov    $0x18,%esi
0x155:	48 63 f6             	movslq %esi,%rsi
0x158:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x15c:	48 83 ec 10          	sub    $0x10,%rsp
0x160:	48 89 04 24          	mov    %rax,(%rsp)
0x164:	48 8b 3d 4d fe ff ff 	mov    -0x1b3(%rip),%rdi        # 0xffffffb8
0x16b:	be 18 00 00 00       	mov    $0x18,%esi
0x170:	48 63 f6             	movslq %esi,%rsi
0x173:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x177:	48 83 ec 10          	sub    $0x10,%rsp
0x17b:	48 89 04 24          	mov    %rax,(%rsp)
0x17f:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x184:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x189:	48 8b 15 30 fe ff ff 	mov    -0x1d0(%rip),%rdx        # 0xffffffc0
0x190:	b9 13 00 00 00       	mov    $0x13,%ecx
0x195:	48 8b c6             	mov    %rsi,%rax
0x198:	48 8b 00             	mov    (%rax),%rax
0x19b:	48 63 ff             	movslq %edi,%rdi
0x19e:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1a3:	48 8b fa             	mov    %rdx,%rdi
0x1a6:	48 8b d1             	mov    %rcx,%rdx
0x1a9:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1ae:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1b2:	90                   	nop
0x1b3:	90                   	nop
0x1b4:	e8 00 00 00 00       	callq  0x1b9
0x1b9:	90                   	nop
0x1ba:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1be:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1c2:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1c7:	ff d0                	callq  *%rax
0x1c9:	90                   	nop
0x1ca:	48 8b 3d f7 fd ff ff 	mov    -0x209(%rip),%rdi        # 0xffffffc8
0x1d1:	be 18 00 00 00       	mov    $0x18,%esi
0x1d6:	48 63 f6             	movslq %esi,%rsi
0x1d9:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1dd:	48 83 ec 10          	sub    $0x10,%rsp
0x1e1:	48 89 04 24          	mov    %rax,(%rsp)
0x1e5:	48 8b 3d e4 fd ff ff 	mov    -0x21c(%rip),%rdi        # 0xffffffd0
0x1ec:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x1f0:	48 8b 35 e1 fd ff ff 	mov    -0x21f(%rip),%rsi        # 0xffffffd8
0x1f7:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1fb:	49 8b ce             	mov    %r14,%rcx
0x1fe:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x202:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x209:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x210:	48 8b d9             	mov    %rcx,%rbx
0x213:	48 03 da             	add    %rdx,%rbx
0x216:	4c 8b cb             	mov    %rbx,%r9
0x219:	4d 3b c8             	cmp    %r8,%r9
0x21c:	0f 86 14 00 00 00    	jbe    0x236
0x222:	48 8b fe             	mov    %rsi,%rdi
0x225:	48 8b f2             	mov    %rdx,%rsi
0x228:	48 8b d0             	mov    %rax,%rdx
0x22b:	e8 00 00 00 00       	callq  0x230
0x230:	90                   	nop
0x231:	e9 0a 00 00 00       	jmpq   0x240
0x236:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x23d:	48 8b c1             	mov    %rcx,%rax
0x240:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x244:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x248:	90                   	nop
0x249:	90                   	nop
0x24a:	90                   	nop
0x24b:	e8 00 00 00 00       	callq  0x250
0x250:	90                   	nop
0x251:	90                   	nop
0x252:	90                   	nop
0x253:	e8 00 00 00 00       	callq  0x258
0x258:	90                   	nop
0x259:	83 f8 00             	cmp    $0x0,%eax
0x25c:	0f 84 27 00 00 00    	je     0x289
0x262:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x266:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x26a:	85 06                	test   %eax,(%rsi)
0x26c:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x270:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x274:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x278:	83 e2 ff             	and    $0xffffffff,%edx
0x27b:	48 8b fa             	mov    %rdx,%rdi
0x27e:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x282:	90                   	nop
0x283:	e8 00 00 00 00       	callq  0x288
0x288:	90                   	nop
0x289:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x28d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x291:	48 89 38             	mov    %rdi,(%rax)
0x294:	48 83 ec 10          	sub    $0x10,%rsp
0x298:	48 89 04 24          	mov    %rax,(%rsp)
0x29c:	48 83 ec 10          	sub    $0x10,%rsp
0x2a0:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2a5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2a9:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2ad:	41 85 03             	test   %eax,(%r11)
0x2b0:	e8 00 00 00 00       	callq  0x2b5
0x2b5:	90                   	nop
0x2b6:	bf 30 00 00 00       	mov    $0x30,%edi
0x2bb:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2c0:	48 8b 15 19 fd ff ff 	mov    -0x2e7(%rip),%rdx        # 0xffffffe0
0x2c7:	b9 1d 00 00 00       	mov    $0x1d,%ecx
0x2cc:	48 8b c6             	mov    %rsi,%rax
0x2cf:	48 8b 00             	mov    (%rax),%rax
0x2d2:	48 63 ff             	movslq %edi,%rdi
0x2d5:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2da:	48 8b fa             	mov    %rdx,%rdi
0x2dd:	48 8b d1             	mov    %rcx,%rdx
0x2e0:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2e5:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2e9:	90                   	nop
0x2ea:	90                   	nop
0x2eb:	e8 00 00 00 00       	callq  0x2f0
0x2f0:	90                   	nop
0x2f1:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2f5:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2f9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2fe:	ff d0                	callq  *%rax
0x300:	90                   	nop
0x301:	48 83 c5 40          	add    $0x40,%rbp
0x305:	c9                   	leaveq 
0x306:	c2 10 00             	retq   $0x10

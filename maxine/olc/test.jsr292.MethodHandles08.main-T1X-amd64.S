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
0x61:	48 83 ec 10          	sub    $0x10,%rsp
0x65:	4c 8b 1d 3c ff ff ff 	mov    -0xc4(%rip),%r11        # 0xffffffa8
0x6c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x70:	48 8b 3d 39 ff ff ff 	mov    -0xc7(%rip),%rdi        # 0xffffffb0
0x77:	be 10 00 00 00       	mov    $0x10,%esi
0x7c:	48 63 f6             	movslq %esi,%rsi
0x7f:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x83:	48 83 ec 10          	sub    $0x10,%rsp
0x87:	48 89 04 24          	mov    %rax,(%rsp)
0x8b:	e8 00 00 00 00       	callq  0x90
0x90:	90                   	nop
0x91:	48 83 ec 10          	sub    $0x10,%rsp
0x95:	48 89 04 24          	mov    %rax,(%rsp)
0x99:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x9e:	41 85 03             	test   %eax,(%r11)
0xa1:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0xa6:	90                   	nop
0xa7:	90                   	nop
0xa8:	e8 00 00 00 00       	callq  0xad
0xad:	90                   	nop
0xae:	48 83 ec 10          	sub    $0x10,%rsp
0xb2:	48 89 04 24          	mov    %rax,(%rsp)
0xb6:	4c 8b 1c 24          	mov    (%rsp),%r11
0xba:	48 83 c4 10          	add    $0x10,%rsp
0xbe:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0xc2:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0xc6:	48 83 ec 10          	sub    $0x10,%rsp
0xca:	4c 89 1c 24          	mov    %r11,(%rsp)
0xce:	48 8b 3d e3 fe ff ff 	mov    -0x11d(%rip),%rdi        # 0xffffffb8
0xd5:	48 8b 34 24          	mov    (%rsp),%rsi
0xd9:	48 8b 47 10          	mov    0x10(%rdi),%rax
0xdd:	4d 33 db             	xor    %r11,%r11
0xe0:	49 3b c3             	cmp    %r11,%rax
0xe3:	0f 85 1d 00 00 00    	jne    0x106
0xe9:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0xed:	48 8b c7             	mov    %rdi,%rax
0xf0:	48 8b f8             	mov    %rax,%rdi
0xf3:	48 89 45 08          	mov    %rax,0x8(%rbp)
0xf7:	90                   	nop
0xf8:	e8 00 00 00 00       	callq  0xfd
0xfd:	90                   	nop
0xfe:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x102:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x106:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x10a:	48 8b 0e             	mov    (%rsi),%rcx
0x10d:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x111:	48 63 d2             	movslq %edx,%rdx
0x114:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x119:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x11d:	48 8b 3c 24          	mov    (%rsp),%rdi
0x121:	ff d0                	callq  *%rax
0x123:	90                   	nop
0x124:	48 83 ec 10          	sub    $0x10,%rsp
0x128:	48 89 04 24          	mov    %rax,(%rsp)
0x12c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x130:	48 83 c4 10          	add    $0x10,%rsp
0x134:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x138:	48 8b 3d 81 fe ff ff 	mov    -0x17f(%rip),%rdi        # 0xffffffc0
0x13f:	be 18 00 00 00       	mov    $0x18,%esi
0x144:	48 63 f6             	movslq %esi,%rsi
0x147:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x14b:	48 83 ec 10          	sub    $0x10,%rsp
0x14f:	48 89 04 24          	mov    %rax,(%rsp)
0x153:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x157:	48 83 ec 10          	sub    $0x10,%rsp
0x15b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x15f:	bf 0f 00 00 00       	mov    $0xf,%edi
0x164:	48 8b 34 24          	mov    (%rsp),%rsi
0x168:	48 8b 15 59 fe ff ff 	mov    -0x1a7(%rip),%rdx        # 0xffffffc8
0x16f:	b9 05 00 00 00       	mov    $0x5,%ecx
0x174:	48 8b c6             	mov    %rsi,%rax
0x177:	48 8b 00             	mov    (%rax),%rax
0x17a:	48 63 ff             	movslq %edi,%rdi
0x17d:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x182:	48 8b fa             	mov    %rdx,%rdi
0x185:	48 8b d1             	mov    %rcx,%rdx
0x188:	b9 03 00 00 00       	mov    $0x3,%ecx
0x18d:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x191:	90                   	nop
0x192:	90                   	nop
0x193:	e8 00 00 00 00       	callq  0x198
0x198:	90                   	nop
0x199:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x19d:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1a1:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1a5:	ff d0                	callq  *%rax
0x1a7:	90                   	nop
0x1a8:	48 83 ec 10          	sub    $0x10,%rsp
0x1ac:	48 89 04 24          	mov    %rax,(%rsp)
0x1b0:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x1b5:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x1ba:	48 8b 15 0f fe ff ff 	mov    -0x1f1(%rip),%rdx        # 0xffffffd0
0x1c1:	b9 0e 00 00 00       	mov    $0xe,%ecx
0x1c6:	48 8b c6             	mov    %rsi,%rax
0x1c9:	48 8b 00             	mov    (%rax),%rax
0x1cc:	48 63 ff             	movslq %edi,%rdi
0x1cf:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1d4:	48 8b fa             	mov    %rdx,%rdi
0x1d7:	48 8b d1             	mov    %rcx,%rdx
0x1da:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1df:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1e3:	90                   	nop
0x1e4:	90                   	nop
0x1e5:	e8 00 00 00 00       	callq  0x1ea
0x1ea:	90                   	nop
0x1eb:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1ef:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1f3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1f8:	ff d0                	callq  *%rax
0x1fa:	90                   	nop
0x1fb:	48 8b 3d d6 fd ff ff 	mov    -0x22a(%rip),%rdi        # 0xffffffd8
0x202:	be 16 00 00 00       	mov    $0x16,%esi
0x207:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x20b:	48 8b c8             	mov    %rax,%rcx
0x20e:	48 63 f6             	movslq %esi,%rsi
0x211:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x216:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x21c:	0f 8d 07 00 00 00    	jge    0x229
0x222:	83 c1 01             	add    $0x1,%ecx
0x225:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x229:	e9 78 00 00 00       	jmpq   0x2a6
0x22e:	49 8b fe             	mov    %r14,%rdi
0x231:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x235:	85 07                	test   %eax,(%rdi)
0x237:	e8 00 00 00 00       	callq  0x23c
0x23c:	90                   	nop
0x23d:	48 83 ec 10          	sub    $0x10,%rsp
0x241:	48 89 04 24          	mov    %rax,(%rsp)
0x245:	4c 8b 1c 24          	mov    (%rsp),%r11
0x249:	48 83 c4 10          	add    $0x10,%rsp
0x24d:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x251:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x255:	48 83 ec 10          	sub    $0x10,%rsp
0x259:	4c 89 1c 24          	mov    %r11,(%rsp)
0x25d:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x262:	48 8b 34 24          	mov    (%rsp),%rsi
0x266:	48 8b 15 73 fd ff ff 	mov    -0x28d(%rip),%rdx        # 0xffffffe0
0x26d:	b9 18 00 00 00       	mov    $0x18,%ecx
0x272:	48 8b c6             	mov    %rsi,%rax
0x275:	48 8b 00             	mov    (%rax),%rax
0x278:	48 63 ff             	movslq %edi,%rdi
0x27b:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x280:	48 8b fa             	mov    %rdx,%rdi
0x283:	48 8b d1             	mov    %rcx,%rdx
0x286:	b9 03 00 00 00       	mov    $0x3,%ecx
0x28b:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x28f:	90                   	nop
0x290:	90                   	nop
0x291:	e8 00 00 00 00       	callq  0x296
0x296:	90                   	nop
0x297:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x29b:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x29f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2a3:	ff d0                	callq  *%rax
0x2a5:	90                   	nop
0x2a6:	48 83 c5 40          	add    $0x40,%rbp
0x2aa:	c9                   	leaveq 
0x2ab:	c2 10 00             	retq   $0x10

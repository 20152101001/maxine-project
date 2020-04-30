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
0x53:	41 bb 64 00 00 00    	mov    $0x64,%r11d
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
0x96:	48 8b 3d 23 ff ff ff 	mov    -0xdd(%rip),%rdi        # 0xffffffc0
0x9d:	be 00 00 00 00       	mov    $0x0,%esi
0xa2:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xa6:	48 8b c8             	mov    %rax,%rcx
0xa9:	48 63 f6             	movslq %esi,%rsi
0xac:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb1:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xb7:	0f 8d 07 00 00 00    	jge    0xc4
0xbd:	83 c1 01             	add    $0x1,%ecx
0xc0:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xc4:	e9 99 00 00 00       	jmpq   0x162
0xc9:	48 8b 3d f8 fe ff ff 	mov    -0x108(%rip),%rdi        # 0xffffffc8
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
0x162:	48 8b 3d 67 fe ff ff 	mov    -0x199(%rip),%rdi        # 0xffffffd0
0x169:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x16d:	48 8b 35 64 fe ff ff 	mov    -0x19c(%rip),%rsi        # 0xffffffd8
0x174:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x178:	49 8b ce             	mov    %r14,%rcx
0x17b:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x17f:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x186:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x18d:	48 8b d9             	mov    %rcx,%rbx
0x190:	48 03 da             	add    %rdx,%rbx
0x193:	4c 8b cb             	mov    %rbx,%r9
0x196:	4d 3b c8             	cmp    %r8,%r9
0x199:	0f 86 14 00 00 00    	jbe    0x1b3
0x19f:	48 8b fe             	mov    %rsi,%rdi
0x1a2:	48 8b f2             	mov    %rdx,%rsi
0x1a5:	48 8b d0             	mov    %rax,%rdx
0x1a8:	e8 00 00 00 00       	callq  0x1ad
0x1ad:	90                   	nop
0x1ae:	e9 0a 00 00 00       	jmpq   0x1bd
0x1b3:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1ba:	48 8b c1             	mov    %rcx,%rax
0x1bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1c1:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1c5:	90                   	nop
0x1c6:	90                   	nop
0x1c7:	90                   	nop
0x1c8:	e8 00 00 00 00       	callq  0x1cd
0x1cd:	90                   	nop
0x1ce:	90                   	nop
0x1cf:	90                   	nop
0x1d0:	e8 00 00 00 00       	callq  0x1d5
0x1d5:	90                   	nop
0x1d6:	83 f8 00             	cmp    $0x0,%eax
0x1d9:	0f 84 27 00 00 00    	je     0x206
0x1df:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1e3:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x1e7:	85 06                	test   %eax,(%rsi)
0x1e9:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x1ed:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x1f1:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x1f5:	83 e2 ff             	and    $0xffffffff,%edx
0x1f8:	48 8b fa             	mov    %rdx,%rdi
0x1fb:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x1ff:	90                   	nop
0x200:	e8 00 00 00 00       	callq  0x205
0x205:	90                   	nop
0x206:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x20a:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x20e:	48 89 38             	mov    %rdi,(%rax)
0x211:	48 83 ec 10          	sub    $0x10,%rsp
0x215:	48 89 04 24          	mov    %rax,(%rsp)
0x219:	48 83 ec 10          	sub    $0x10,%rsp
0x21d:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x222:	4c 89 1c 24          	mov    %r11,(%rsp)
0x226:	48 8b 3d b3 fd ff ff 	mov    -0x24d(%rip),%rdi        # 0xffffffe0
0x22d:	be 18 00 00 00       	mov    $0x18,%esi
0x232:	48 63 f6             	movslq %esi,%rsi
0x235:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x239:	48 83 ec 10          	sub    $0x10,%rsp
0x23d:	48 89 04 24          	mov    %rax,(%rsp)
0x241:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x246:	41 85 03             	test   %eax,(%r11)
0x249:	e8 00 00 00 00       	callq  0x24e
0x24e:	90                   	nop
0x24f:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x253:	48 83 ec 10          	sub    $0x10,%rsp
0x257:	44 89 1c 24          	mov    %r11d,(%rsp)
0x25b:	e8 00 00 00 00       	callq  0x260
0x260:	90                   	nop
0x261:	48 83 c5 40          	add    $0x40,%rbp
0x265:	c9                   	leaveq 
0x266:	c2 10 00             	retq   $0x10

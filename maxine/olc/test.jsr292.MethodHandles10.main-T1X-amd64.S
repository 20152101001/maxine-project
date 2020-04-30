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
0x20:	4c 89 1d 51 ff ff ff 	mov    %r11,-0xaf(%rip)        # 0xffffff78
0x27:	48 8b 3d 52 ff ff ff 	mov    -0xae(%rip),%rdi        # 0xffffff80
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
0x65:	4c 8b 1d 1c ff ff ff 	mov    -0xe4(%rip),%r11        # 0xffffff88
0x6c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x70:	48 8b 3d 19 ff ff ff 	mov    -0xe7(%rip),%rdi        # 0xffffff90
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
0xc2:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0xc8:	48 83 ec 10          	sub    $0x10,%rsp
0xcc:	44 89 1c 24          	mov    %r11d,(%rsp)
0xd0:	44 8b 1c 24          	mov    (%rsp),%r11d
0xd4:	48 83 c4 10          	add    $0x10,%rsp
0xd8:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0xdc:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0xe0:	48 83 ec 10          	sub    $0x10,%rsp
0xe4:	44 89 1c 24          	mov    %r11d,(%rsp)
0xe8:	41 bb 40 42 0f 00    	mov    $0xf4240,%r11d
0xee:	48 83 ec 10          	sub    $0x10,%rsp
0xf2:	44 89 1c 24          	mov    %r11d,(%rsp)
0xf6:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0xfb:	8b 04 24             	mov    (%rsp),%eax
0xfe:	48 83 c4 20          	add    $0x20,%rsp
0x102:	44 3b d8             	cmp    %eax,%r11d
0x105:	7c 33                	jl     0x13a
0x107:	48 8b 3d 8a fe ff ff 	mov    -0x176(%rip),%rdi        # 0xffffff98
0x10e:	be 03 00 00 00       	mov    $0x3,%esi
0x113:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x117:	48 8b c8             	mov    %rax,%rcx
0x11a:	48 63 f6             	movslq %esi,%rsi
0x11d:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x122:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x128:	0f 8d 07 00 00 00    	jge    0x135
0x12e:	83 c1 01             	add    $0x1,%ecx
0x131:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x135:	e9 ba 01 00 00       	jmpq   0x2f4
0x13a:	48 8b 3d 5f fe ff ff 	mov    -0x1a1(%rip),%rdi        # 0xffffffa0
0x141:	be 04 00 00 00       	mov    $0x4,%esi
0x146:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x14a:	48 8b c8             	mov    %rax,%rcx
0x14d:	48 63 f6             	movslq %esi,%rsi
0x150:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x155:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x15b:	0f 8d 07 00 00 00    	jge    0x168
0x161:	83 c1 01             	add    $0x1,%ecx
0x164:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x168:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x16c:	48 83 ec 10          	sub    $0x10,%rsp
0x170:	4c 89 1c 24          	mov    %r11,(%rsp)
0x174:	48 8b 3d 2d fe ff ff 	mov    -0x1d3(%rip),%rdi        # 0xffffffa8
0x17b:	48 8b 34 24          	mov    (%rsp),%rsi
0x17f:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x183:	4d 33 db             	xor    %r11,%r11
0x186:	49 3b c3             	cmp    %r11,%rax
0x189:	0f 85 1d 00 00 00    	jne    0x1ac
0x18f:	48 89 75 10          	mov    %rsi,0x10(%rbp)
0x193:	48 8b c7             	mov    %rdi,%rax
0x196:	48 8b f8             	mov    %rax,%rdi
0x199:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x19d:	90                   	nop
0x19e:	e8 00 00 00 00       	callq  0x1a3
0x1a3:	90                   	nop
0x1a4:	48 8b 75 10          	mov    0x10(%rbp),%rsi
0x1a8:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1ac:	48 8b 47 10          	mov    0x10(%rdi),%rax
0x1b0:	48 8b 0e             	mov    (%rsi),%rcx
0x1b3:	48 63 50 78          	movslq 0x78(%rax),%rdx
0x1b7:	48 63 d2             	movslq %edx,%rdx
0x1ba:	48 8b 44 d1 18       	mov    0x18(%rcx,%rdx,8),%rax
0x1bf:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1c3:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1c7:	ff d0                	callq  *%rax
0x1c9:	90                   	nop
0x1ca:	48 83 ec 10          	sub    $0x10,%rsp
0x1ce:	48 89 04 24          	mov    %rax,(%rsp)
0x1d2:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1d6:	48 83 c4 10          	add    $0x10,%rsp
0x1da:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x1de:	48 8b 3d cb fd ff ff 	mov    -0x235(%rip),%rdi        # 0xffffffb0
0x1e5:	be 18 00 00 00       	mov    $0x18,%esi
0x1ea:	48 63 f6             	movslq %esi,%rsi
0x1ed:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1f1:	48 83 ec 10          	sub    $0x10,%rsp
0x1f5:	48 89 04 24          	mov    %rax,(%rsp)
0x1f9:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x1fd:	48 83 ec 10          	sub    $0x10,%rsp
0x201:	4c 89 1c 24          	mov    %r11,(%rsp)
0x205:	bf 0f 00 00 00       	mov    $0xf,%edi
0x20a:	48 8b 34 24          	mov    (%rsp),%rsi
0x20e:	48 8b 15 a3 fd ff ff 	mov    -0x25d(%rip),%rdx        # 0xffffffb8
0x215:	b9 07 00 00 00       	mov    $0x7,%ecx
0x21a:	48 8b c6             	mov    %rsi,%rax
0x21d:	48 8b 00             	mov    (%rax),%rax
0x220:	48 63 ff             	movslq %edi,%rdi
0x223:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x228:	48 8b fa             	mov    %rdx,%rdi
0x22b:	48 8b d1             	mov    %rcx,%rdx
0x22e:	b9 03 00 00 00       	mov    $0x3,%ecx
0x233:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x237:	90                   	nop
0x238:	90                   	nop
0x239:	e8 00 00 00 00       	callq  0x23e
0x23e:	90                   	nop
0x23f:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x243:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x247:	48 8b 3c 24          	mov    (%rsp),%rdi
0x24b:	ff d0                	callq  *%rax
0x24d:	90                   	nop
0x24e:	48 83 ec 10          	sub    $0x10,%rsp
0x252:	48 89 04 24          	mov    %rax,(%rsp)
0x256:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x25b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x260:	48 8b 15 59 fd ff ff 	mov    -0x2a7(%rip),%rdx        # 0xffffffc0
0x267:	b9 10 00 00 00       	mov    $0x10,%ecx
0x26c:	48 8b c6             	mov    %rsi,%rax
0x26f:	48 8b 00             	mov    (%rax),%rax
0x272:	48 63 ff             	movslq %edi,%rdi
0x275:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x27a:	48 8b fa             	mov    %rdx,%rdi
0x27d:	48 8b d1             	mov    %rcx,%rdx
0x280:	b9 03 00 00 00       	mov    $0x3,%ecx
0x285:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x289:	90                   	nop
0x28a:	90                   	nop
0x28b:	e8 00 00 00 00       	callq  0x290
0x290:	90                   	nop
0x291:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x295:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x299:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x29e:	ff d0                	callq  *%rax
0x2a0:	90                   	nop
0x2a1:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x2a5:	41 83 c3 01          	add    $0x1,%r11d
0x2a9:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x2ad:	48 8b 3d 14 fd ff ff 	mov    -0x2ec(%rip),%rdi        # 0xffffffc8
0x2b4:	be 18 00 00 00       	mov    $0x18,%esi
0x2b9:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2bd:	48 8b c8             	mov    %rax,%rcx
0x2c0:	48 63 f6             	movslq %esi,%rsi
0x2c3:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2c8:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2ce:	0f 8d 07 00 00 00    	jge    0x2db
0x2d4:	83 c1 01             	add    $0x1,%ecx
0x2d7:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x2db:	48 8b 3d ee fc ff ff 	mov    -0x312(%rip),%rdi        # 0xffffffd0
0x2e2:	48 63 47 30          	movslq 0x30(%rdi),%rax
0x2e6:	83 e8 01             	sub    $0x1,%eax
0x2e9:	89 47 30             	mov    %eax,0x30(%rdi)
0x2ec:	4d 8b 36             	mov    (%r14),%r14
0x2ef:	e9 e8 fd ff ff       	jmpq   0xdc
0x2f4:	48 8b 3d dd fc ff ff 	mov    -0x323(%rip),%rdi        # 0xffffffd8
0x2fb:	be 19 00 00 00       	mov    $0x19,%esi
0x300:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x304:	48 8b c8             	mov    %rax,%rcx
0x307:	48 63 f6             	movslq %esi,%rsi
0x30a:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x30f:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x315:	0f 8d 07 00 00 00    	jge    0x322
0x31b:	83 c1 01             	add    $0x1,%ecx
0x31e:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x322:	e9 78 00 00 00       	jmpq   0x39f
0x327:	49 8b fe             	mov    %r14,%rdi
0x32a:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x32e:	85 07                	test   %eax,(%rdi)
0x330:	e8 00 00 00 00       	callq  0x335
0x335:	90                   	nop
0x336:	48 83 ec 10          	sub    $0x10,%rsp
0x33a:	48 89 04 24          	mov    %rax,(%rsp)
0x33e:	4c 8b 1c 24          	mov    (%rsp),%r11
0x342:	48 83 c4 10          	add    $0x10,%rsp
0x346:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x34a:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x34e:	48 83 ec 10          	sub    $0x10,%rsp
0x352:	4c 89 1c 24          	mov    %r11,(%rsp)
0x356:	bf 1a 00 00 00       	mov    $0x1a,%edi
0x35b:	48 8b 34 24          	mov    (%rsp),%rsi
0x35f:	48 8b 15 7a fc ff ff 	mov    -0x386(%rip),%rdx        # 0xffffffe0
0x366:	b9 1b 00 00 00       	mov    $0x1b,%ecx
0x36b:	48 8b c6             	mov    %rsi,%rax
0x36e:	48 8b 00             	mov    (%rax),%rax
0x371:	48 63 ff             	movslq %edi,%rdi
0x374:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x379:	48 8b fa             	mov    %rdx,%rdi
0x37c:	48 8b d1             	mov    %rcx,%rdx
0x37f:	b9 03 00 00 00       	mov    $0x3,%ecx
0x384:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x388:	90                   	nop
0x389:	90                   	nop
0x38a:	e8 00 00 00 00       	callq  0x38f
0x38f:	90                   	nop
0x390:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x394:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x398:	48 8b 3c 24          	mov    (%rsp),%rdi
0x39c:	ff d0                	callq  *%rax
0x39e:	90                   	nop
0x39f:	48 83 c5 40          	add    $0x40,%rbp
0x3a3:	c9                   	leaveq 
0x3a4:	c2 10 00             	retq   $0x10

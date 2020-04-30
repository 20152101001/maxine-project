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
0x20:	4c 89 1d 31 ff ff ff 	mov    %r11,-0xcf(%rip)        # 0xffffff58
0x27:	48 8b 3d 32 ff ff ff 	mov    -0xce(%rip),%rdi        # 0xffffff60
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
0x53:	48 8b 3d 0e ff ff ff 	mov    -0xf2(%rip),%rdi        # 0xffffff68
0x5a:	be 18 00 00 00       	mov    $0x18,%esi
0x5f:	48 63 f6             	movslq %esi,%rsi
0x62:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x66:	48 83 ec 10          	sub    $0x10,%rsp
0x6a:	48 89 04 24          	mov    %rax,(%rsp)
0x6e:	4c 8b 1d fb fe ff ff 	mov    -0x105(%rip),%r11        # 0xffffff70
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x82:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x87:	48 8b 15 ea fe ff ff 	mov    -0x116(%rip),%rdx        # 0xffffff78
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
0xd6:	90                   	nop
0xd7:	90                   	nop
0xd8:	e8 00 00 00 00       	callq  0xdd
0xdd:	90                   	nop
0xde:	48 83 ec 10          	sub    $0x10,%rsp
0xe2:	48 89 04 24          	mov    %rax,(%rsp)
0xe6:	44 8b 1c 24          	mov    (%rsp),%r11d
0xea:	b8 00 00 00 00       	mov    $0x0,%eax
0xef:	48 83 c4 10          	add    $0x10,%rsp
0xf3:	44 3b d8             	cmp    %eax,%r11d
0xf6:	74 33                	je     0x12b
0xf8:	48 8b 3d 81 fe ff ff 	mov    -0x17f(%rip),%rdi        # 0xffffff80
0xff:	be 0a 00 00 00       	mov    $0xa,%esi
0x104:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x108:	48 8b c8             	mov    %rax,%rcx
0x10b:	48 63 f6             	movslq %esi,%rsi
0x10e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x113:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x119:	0f 8d 07 00 00 00    	jge    0x126
0x11f:	83 c1 01             	add    $0x1,%ecx
0x122:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x126:	e9 4e 01 00 00       	jmpq   0x279
0x12b:	48 8b 3d 56 fe ff ff 	mov    -0x1aa(%rip),%rdi        # 0xffffff88
0x132:	be 0b 00 00 00       	mov    $0xb,%esi
0x137:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x13b:	48 8b c8             	mov    %rax,%rcx
0x13e:	48 63 f6             	movslq %esi,%rsi
0x141:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x146:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x14c:	0f 8d 07 00 00 00    	jge    0x159
0x152:	83 c1 01             	add    $0x1,%ecx
0x155:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x159:	48 8b 3d 30 fe ff ff 	mov    -0x1d0(%rip),%rdi        # 0xffffff90
0x160:	be 18 00 00 00       	mov    $0x18,%esi
0x165:	48 63 f6             	movslq %esi,%rsi
0x168:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x16c:	48 83 ec 10          	sub    $0x10,%rsp
0x170:	48 89 04 24          	mov    %rax,(%rsp)
0x174:	4c 8b 1d 1d fe ff ff 	mov    -0x1e3(%rip),%r11        # 0xffffff98
0x17b:	48 83 ec 10          	sub    $0x10,%rsp
0x17f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x183:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x188:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x18d:	48 8b 15 0c fe ff ff 	mov    -0x1f4(%rip),%rdx        # 0xffffffa0
0x194:	b9 0d 00 00 00       	mov    $0xd,%ecx
0x199:	48 8b c6             	mov    %rsi,%rax
0x19c:	48 8b 00             	mov    (%rax),%rax
0x19f:	48 63 ff             	movslq %edi,%rdi
0x1a2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x1a7:	48 8b fa             	mov    %rdx,%rdi
0x1aa:	48 8b d1             	mov    %rcx,%rdx
0x1ad:	b9 03 00 00 00       	mov    $0x3,%ecx
0x1b2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x1b6:	90                   	nop
0x1b7:	90                   	nop
0x1b8:	e8 00 00 00 00       	callq  0x1bd
0x1bd:	90                   	nop
0x1be:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x1c2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x1c6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x1cb:	ff d0                	callq  *%rax
0x1cd:	90                   	nop
0x1ce:	48 8b 3d d3 fd ff ff 	mov    -0x22d(%rip),%rdi        # 0xffffffa8
0x1d5:	be 18 00 00 00       	mov    $0x18,%esi
0x1da:	48 63 f6             	movslq %esi,%rsi
0x1dd:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x1e1:	48 83 ec 10          	sub    $0x10,%rsp
0x1e5:	48 89 04 24          	mov    %rax,(%rsp)
0x1e9:	bf 19 00 00 00       	mov    $0x19,%edi
0x1ee:	48 8b 34 24          	mov    (%rsp),%rsi
0x1f2:	48 8b 15 b7 fd ff ff 	mov    -0x249(%rip),%rdx        # 0xffffffb0
0x1f9:	b9 16 00 00 00       	mov    $0x16,%ecx
0x1fe:	48 8b c6             	mov    %rsi,%rax
0x201:	48 8b 00             	mov    (%rax),%rax
0x204:	48 63 ff             	movslq %edi,%rdi
0x207:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x20c:	48 8b fa             	mov    %rdx,%rdi
0x20f:	48 8b d1             	mov    %rcx,%rdx
0x212:	b9 03 00 00 00       	mov    $0x3,%ecx
0x217:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x21b:	90                   	nop
0x21c:	90                   	nop
0x21d:	e8 00 00 00 00       	callq  0x222
0x222:	90                   	nop
0x223:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x227:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x22b:	48 8b 3c 24          	mov    (%rsp),%rdi
0x22f:	ff d0                	callq  *%rax
0x231:	90                   	nop
0x232:	41 bb 0a 00 00 00    	mov    $0xa,%r11d
0x238:	48 83 ec 10          	sub    $0x10,%rsp
0x23c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x240:	e8 00 00 00 00       	callq  0x245
0x245:	90                   	nop
0x246:	48 8b 3d 6b fd ff ff 	mov    -0x295(%rip),%rdi        # 0xffffffb8
0x24d:	be 1f 00 00 00       	mov    $0x1f,%esi
0x252:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x256:	48 8b c8             	mov    %rax,%rcx
0x259:	48 63 f6             	movslq %esi,%rsi
0x25c:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x261:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x267:	0f 8d 07 00 00 00    	jge    0x274
0x26d:	83 c1 01             	add    $0x1,%ecx
0x270:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x274:	e9 ed 00 00 00       	jmpq   0x366
0x279:	48 8b 3d 40 fd ff ff 	mov    -0x2c0(%rip),%rdi        # 0xffffffc0
0x280:	be 18 00 00 00       	mov    $0x18,%esi
0x285:	48 63 f6             	movslq %esi,%rsi
0x288:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x28c:	48 83 ec 10          	sub    $0x10,%rsp
0x290:	48 89 04 24          	mov    %rax,(%rsp)
0x294:	4c 8b 1d 2d fd ff ff 	mov    -0x2d3(%rip),%r11        # 0xffffffc8
0x29b:	48 83 ec 10          	sub    $0x10,%rsp
0x29f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2a3:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2a8:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2ad:	48 8b 15 1c fd ff ff 	mov    -0x2e4(%rip),%rdx        # 0xffffffd0
0x2b4:	b9 21 00 00 00       	mov    $0x21,%ecx
0x2b9:	48 8b c6             	mov    %rsi,%rax
0x2bc:	48 8b 00             	mov    (%rax),%rax
0x2bf:	48 63 ff             	movslq %edi,%rdi
0x2c2:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x2c7:	48 8b fa             	mov    %rdx,%rdi
0x2ca:	48 8b d1             	mov    %rcx,%rdx
0x2cd:	b9 03 00 00 00       	mov    $0x3,%ecx
0x2d2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x2d6:	90                   	nop
0x2d7:	90                   	nop
0x2d8:	e8 00 00 00 00       	callq  0x2dd
0x2dd:	90                   	nop
0x2de:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x2e2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x2e6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2eb:	ff d0                	callq  *%rax
0x2ed:	90                   	nop
0x2ee:	48 8b 3d e3 fc ff ff 	mov    -0x31d(%rip),%rdi        # 0xffffffd8
0x2f5:	be 18 00 00 00       	mov    $0x18,%esi
0x2fa:	48 63 f6             	movslq %esi,%rsi
0x2fd:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x301:	48 83 ec 10          	sub    $0x10,%rsp
0x305:	48 89 04 24          	mov    %rax,(%rsp)
0x309:	bf 19 00 00 00       	mov    $0x19,%edi
0x30e:	48 8b 34 24          	mov    (%rsp),%rsi
0x312:	48 8b 15 c7 fc ff ff 	mov    -0x339(%rip),%rdx        # 0xffffffe0
0x319:	b9 2a 00 00 00       	mov    $0x2a,%ecx
0x31e:	48 8b c6             	mov    %rsi,%rax
0x321:	48 8b 00             	mov    (%rax),%rax
0x324:	48 63 ff             	movslq %edi,%rdi
0x327:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x32c:	48 8b fa             	mov    %rdx,%rdi
0x32f:	48 8b d1             	mov    %rcx,%rdx
0x332:	b9 03 00 00 00       	mov    $0x3,%ecx
0x337:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x33b:	90                   	nop
0x33c:	90                   	nop
0x33d:	e8 00 00 00 00       	callq  0x342
0x342:	90                   	nop
0x343:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x347:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x34b:	48 8b 3c 24          	mov    (%rsp),%rdi
0x34f:	ff d0                	callq  *%rax
0x351:	90                   	nop
0x352:	41 bb 14 00 00 00    	mov    $0x14,%r11d
0x358:	48 83 ec 10          	sub    $0x10,%rsp
0x35c:	44 89 1c 24          	mov    %r11d,(%rsp)
0x360:	e8 00 00 00 00       	callq  0x365
0x365:	90                   	nop
0x366:	48 83 c5 40          	add    $0x40,%rbp
0x36a:	c9                   	leaveq 
0x36b:	c2 10 00             	retq   $0x10

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
0x20:	4c 89 1d 81 ff ff ff 	mov    %r11,-0x7f(%rip)        # 0xffffffa8
0x27:	48 8b 3d 82 ff ff ff 	mov    -0x7e(%rip),%rdi        # 0xffffffb0
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
0x53:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x59:	48 83 ec 10          	sub    $0x10,%rsp
0x5d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x61:	44 8b 1c 24          	mov    (%rsp),%r11d
0x65:	48 83 c4 10          	add    $0x10,%rsp
0x69:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x6d:	41 bb 10 27 00 00    	mov    $0x2710,%r11d
0x73:	48 83 ec 10          	sub    $0x10,%rsp
0x77:	44 89 1c 24          	mov    %r11d,(%rsp)
0x7b:	44 8b 1c 24          	mov    (%rsp),%r11d
0x7f:	48 83 c4 10          	add    $0x10,%rsp
0x83:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x87:	41 bb 10 00 00 00    	mov    $0x10,%r11d
0x8d:	48 83 ec 10          	sub    $0x10,%rsp
0x91:	44 89 1c 24          	mov    %r11d,(%rsp)
0x95:	44 8b 1c 24          	mov    (%rsp),%r11d
0x99:	48 83 c4 10          	add    $0x10,%rsp
0x9d:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0xa1:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0xa5:	48 83 ec 10          	sub    $0x10,%rsp
0xa9:	4c 89 1c 24          	mov    %r11,(%rsp)
0xad:	48 8b 3c 24          	mov    (%rsp),%rdi
0xb1:	48 63 47 10          	movslq 0x10(%rdi),%rax
0xb5:	89 04 24             	mov    %eax,(%rsp)
0xb8:	44 8b 1c 24          	mov    (%rsp),%r11d
0xbc:	b8 00 00 00 00       	mov    $0x0,%eax
0xc1:	48 83 c4 10          	add    $0x10,%rsp
0xc5:	44 3b d8             	cmp    %eax,%r11d
0xc8:	7f 33                	jg     0xfd
0xca:	48 8b 3d e7 fe ff ff 	mov    -0x119(%rip),%rdi        # 0xffffffb8
0xd1:	be 00 00 00 00       	mov    $0x0,%esi
0xd6:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xda:	48 8b c8             	mov    %rax,%rcx
0xdd:	48 63 f6             	movslq %esi,%rsi
0xe0:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xe5:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xeb:	0f 8d 07 00 00 00    	jge    0xf8
0xf1:	83 c1 01             	add    $0x1,%ecx
0xf4:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xf8:	e9 a5 02 00 00       	jmpq   0x3a2
0xfd:	48 8b 3d bc fe ff ff 	mov    -0x144(%rip),%rdi        # 0xffffffc0
0x104:	be 01 00 00 00       	mov    $0x1,%esi
0x109:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x10d:	48 8b c8             	mov    %rax,%rcx
0x110:	48 63 f6             	movslq %esi,%rsi
0x113:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x118:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x11e:	0f 8d 07 00 00 00    	jge    0x12b
0x124:	83 c1 01             	add    $0x1,%ecx
0x127:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x12b:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x12f:	48 83 ec 10          	sub    $0x10,%rsp
0x133:	4c 89 1c 24          	mov    %r11,(%rsp)
0x137:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x13d:	48 83 ec 10          	sub    $0x10,%rsp
0x141:	44 89 1c 24          	mov    %r11d,(%rsp)
0x145:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x14a:	40 8b 34 24          	rex mov (%rsp),%esi
0x14e:	48 8b c7             	mov    %rdi,%rax
0x151:	48 63 40 10          	movslq 0x10(%rax),%rax
0x155:	3b f0                	cmp    %eax,%esi
0x157:	0f 82 0f 00 00 00    	jb     0x16c
0x15d:	e8 00 00 00 00       	callq  0x162
0x162:	90                   	nop
0x163:	48 8b f8             	mov    %rax,%rdi
0x166:	e8 00 00 00 00       	callq  0x16b
0x16b:	90                   	nop
0x16c:	48 63 f6             	movslq %esi,%rsi
0x16f:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x174:	48 83 c4 10          	add    $0x10,%rsp
0x178:	48 89 04 24          	mov    %rax,(%rsp)
0x17c:	90                   	nop
0x17d:	90                   	nop
0x17e:	90                   	nop
0x17f:	90                   	nop
0x180:	e8 00 00 00 00       	callq  0x185
0x185:	90                   	nop
0x186:	48 83 ec 10          	sub    $0x10,%rsp
0x18a:	48 89 04 24          	mov    %rax,(%rsp)
0x18e:	44 8b 1c 24          	mov    (%rsp),%r11d
0x192:	48 83 c4 10          	add    $0x10,%rsp
0x196:	44 89 5d f0          	mov    %r11d,-0x10(%rbp)
0x19a:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x19e:	48 83 ec 10          	sub    $0x10,%rsp
0x1a2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1a6:	48 8b 3c 24          	mov    (%rsp),%rdi
0x1aa:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x1ae:	89 04 24             	mov    %eax,(%rsp)
0x1b1:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x1b7:	48 83 ec 10          	sub    $0x10,%rsp
0x1bb:	44 89 1c 24          	mov    %r11d,(%rsp)
0x1bf:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x1c4:	8b 04 24             	mov    (%rsp),%eax
0x1c7:	48 83 c4 20          	add    $0x20,%rsp
0x1cb:	44 3b d8             	cmp    %eax,%r11d
0x1ce:	7f 33                	jg     0x203
0x1d0:	48 8b 3d f1 fd ff ff 	mov    -0x20f(%rip),%rdi        # 0xffffffc8
0x1d7:	be 04 00 00 00       	mov    $0x4,%esi
0x1dc:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x1e0:	48 8b c8             	mov    %rax,%rcx
0x1e3:	48 63 f6             	movslq %esi,%rsi
0x1e6:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x1eb:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x1f1:	0f 8d 07 00 00 00    	jge    0x1fe
0x1f7:	83 c1 01             	add    $0x1,%ecx
0x1fa:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x1fe:	e9 9f 01 00 00       	jmpq   0x3a2
0x203:	48 8b 3d c6 fd ff ff 	mov    -0x23a(%rip),%rdi        # 0xffffffd0
0x20a:	be 05 00 00 00       	mov    $0x5,%esi
0x20f:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x213:	48 8b c8             	mov    %rax,%rcx
0x216:	48 63 f6             	movslq %esi,%rsi
0x219:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x21e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x224:	0f 8d 07 00 00 00    	jge    0x231
0x22a:	83 c1 01             	add    $0x1,%ecx
0x22d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x231:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x235:	48 83 ec 10          	sub    $0x10,%rsp
0x239:	4c 89 1c 24          	mov    %r11,(%rsp)
0x23d:	41 bb 01 00 00 00    	mov    $0x1,%r11d
0x243:	48 83 ec 10          	sub    $0x10,%rsp
0x247:	44 89 1c 24          	mov    %r11d,(%rsp)
0x24b:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x250:	40 8b 34 24          	rex mov (%rsp),%esi
0x254:	48 8b c7             	mov    %rdi,%rax
0x257:	48 63 40 10          	movslq 0x10(%rax),%rax
0x25b:	3b f0                	cmp    %eax,%esi
0x25d:	0f 82 0f 00 00 00    	jb     0x272
0x263:	e8 00 00 00 00       	callq  0x268
0x268:	90                   	nop
0x269:	48 8b f8             	mov    %rax,%rdi
0x26c:	e8 00 00 00 00       	callq  0x271
0x271:	90                   	nop
0x272:	48 63 f6             	movslq %esi,%rsi
0x275:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x27a:	48 83 c4 10          	add    $0x10,%rsp
0x27e:	48 89 04 24          	mov    %rax,(%rsp)
0x282:	e8 00 00 00 00       	callq  0x287
0x287:	90                   	nop
0x288:	48 83 ec 10          	sub    $0x10,%rsp
0x28c:	48 89 04 24          	mov    %rax,(%rsp)
0x290:	44 8b 1c 24          	mov    (%rsp),%r11d
0x294:	48 83 c4 10          	add    $0x10,%rsp
0x298:	44 89 5d e0          	mov    %r11d,-0x20(%rbp)
0x29c:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x2a0:	48 83 ec 10          	sub    $0x10,%rsp
0x2a4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2a8:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2ac:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x2b0:	89 04 24             	mov    %eax,(%rsp)
0x2b3:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x2b9:	48 83 ec 10          	sub    $0x10,%rsp
0x2bd:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2c1:	44 8b 5c 24 10       	mov    0x10(%rsp),%r11d
0x2c6:	8b 04 24             	mov    (%rsp),%eax
0x2c9:	48 83 c4 20          	add    $0x20,%rsp
0x2cd:	44 3b d8             	cmp    %eax,%r11d
0x2d0:	7f 33                	jg     0x305
0x2d2:	48 8b 3d ff fc ff ff 	mov    -0x301(%rip),%rdi        # 0xffffffd8
0x2d9:	be 08 00 00 00       	mov    $0x8,%esi
0x2de:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x2e2:	48 8b c8             	mov    %rax,%rcx
0x2e5:	48 63 f6             	movslq %esi,%rsi
0x2e8:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x2ed:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x2f3:	0f 8d 07 00 00 00    	jge    0x300
0x2f9:	83 c1 01             	add    $0x1,%ecx
0x2fc:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x300:	e9 9d 00 00 00       	jmpq   0x3a2
0x305:	48 8b 3d d4 fc ff ff 	mov    -0x32c(%rip),%rdi        # 0xffffffe0
0x30c:	be 09 00 00 00       	mov    $0x9,%esi
0x311:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x315:	48 8b c8             	mov    %rax,%rcx
0x318:	48 63 f6             	movslq %esi,%rsi
0x31b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x320:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x326:	0f 8d 07 00 00 00    	jge    0x333
0x32c:	83 c1 01             	add    $0x1,%ecx
0x32f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x333:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x337:	48 83 ec 10          	sub    $0x10,%rsp
0x33b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x33f:	41 bb 02 00 00 00    	mov    $0x2,%r11d
0x345:	48 83 ec 10          	sub    $0x10,%rsp
0x349:	44 89 1c 24          	mov    %r11d,(%rsp)
0x34d:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x352:	40 8b 34 24          	rex mov (%rsp),%esi
0x356:	48 8b c7             	mov    %rdi,%rax
0x359:	48 63 40 10          	movslq 0x10(%rax),%rax
0x35d:	3b f0                	cmp    %eax,%esi
0x35f:	0f 82 0f 00 00 00    	jb     0x374
0x365:	e8 00 00 00 00       	callq  0x36a
0x36a:	90                   	nop
0x36b:	48 8b f8             	mov    %rax,%rdi
0x36e:	e8 00 00 00 00       	callq  0x373
0x373:	90                   	nop
0x374:	48 63 f6             	movslq %esi,%rsi
0x377:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x37c:	48 83 c4 10          	add    $0x10,%rsp
0x380:	48 89 04 24          	mov    %rax,(%rsp)
0x384:	90                   	nop
0x385:	90                   	nop
0x386:	90                   	nop
0x387:	90                   	nop
0x388:	e8 00 00 00 00       	callq  0x38d
0x38d:	90                   	nop
0x38e:	48 83 ec 10          	sub    $0x10,%rsp
0x392:	48 89 04 24          	mov    %rax,(%rsp)
0x396:	44 8b 1c 24          	mov    (%rsp),%r11d
0x39a:	48 83 c4 10          	add    $0x10,%rsp
0x39e:	44 89 5d d0          	mov    %r11d,-0x30(%rbp)
0x3a2:	44 8b 5d f0          	mov    -0x10(%rbp),%r11d
0x3a6:	48 83 ec 10          	sub    $0x10,%rsp
0x3aa:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3ae:	44 8b 5d e0          	mov    -0x20(%rbp),%r11d
0x3b2:	48 83 ec 10          	sub    $0x10,%rsp
0x3b6:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3ba:	44 8b 5d d0          	mov    -0x30(%rbp),%r11d
0x3be:	48 83 ec 10          	sub    $0x10,%rsp
0x3c2:	44 89 1c 24          	mov    %r11d,(%rsp)
0x3c6:	90                   	nop
0x3c7:	90                   	nop
0x3c8:	e8 00 00 00 00       	callq  0x3cd
0x3cd:	90                   	nop
0x3ce:	48 83 ec 10          	sub    $0x10,%rsp
0x3d2:	48 89 04 24          	mov    %rax,(%rsp)
0x3d6:	48 83 c4 10          	add    $0x10,%rsp
0x3da:	48 83 c5 40          	add    $0x40,%rbp
0x3de:	c9                   	leaveq 
0x3df:	c2 10 00             	retq   $0x10

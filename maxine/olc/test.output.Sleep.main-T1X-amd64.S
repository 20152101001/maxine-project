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
0x20:	4c 89 1d 39 ff ff ff 	mov    %r11,-0xc7(%rip)        # 0xffffff60
0x27:	48 8b 3d 3a ff ff ff 	mov    -0xc6(%rip),%rdi        # 0xffffff68
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
0x53:	49 bb 05 00 00 00 00 	movabs $0x5,%r11
0x5a:	00 00 00 
0x5d:	48 83 ec 20          	sub    $0x20,%rsp
0x61:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x66:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x6b:	48 83 c4 20          	add    $0x20,%rsp
0x6f:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x73:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x77:	48 83 ec 10          	sub    $0x10,%rsp
0x7b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7f:	48 8b 3c 24          	mov    (%rsp),%rdi
0x83:	48 63 47 10          	movslq 0x10(%rdi),%rax
0x87:	89 04 24             	mov    %eax,(%rsp)
0x8a:	44 8b 1c 24          	mov    (%rsp),%r11d
0x8e:	b8 00 00 00 00       	mov    $0x0,%eax
0x93:	48 83 c4 10          	add    $0x10,%rsp
0x97:	44 3b d8             	cmp    %eax,%r11d
0x9a:	7f 33                	jg     0xcf
0x9c:	48 8b 3d cd fe ff ff 	mov    -0x133(%rip),%rdi        # 0xffffff70
0xa3:	be 00 00 00 00       	mov    $0x0,%esi
0xa8:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xac:	48 8b c8             	mov    %rax,%rcx
0xaf:	48 63 f6             	movslq %esi,%rsi
0xb2:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xb7:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xbd:	0f 8d 07 00 00 00    	jge    0xca
0xc3:	83 c1 01             	add    $0x1,%ecx
0xc6:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xca:	e9 9d 00 00 00       	jmpq   0x16c
0xcf:	48 8b 3d a2 fe ff ff 	mov    -0x15e(%rip),%rdi        # 0xffffff78
0xd6:	be 01 00 00 00       	mov    $0x1,%esi
0xdb:	48 8b 47 18          	mov    0x18(%rdi),%rax
0xdf:	48 8b c8             	mov    %rax,%rcx
0xe2:	48 63 f6             	movslq %esi,%rsi
0xe5:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0xea:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0xf0:	0f 8d 07 00 00 00    	jge    0xfd
0xf6:	83 c1 01             	add    $0x1,%ecx
0xf9:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0xfd:	4c 8b 5d 50          	mov    0x50(%rbp),%r11
0x101:	48 83 ec 10          	sub    $0x10,%rsp
0x105:	4c 89 1c 24          	mov    %r11,(%rsp)
0x109:	41 bb 00 00 00 00    	mov    $0x0,%r11d
0x10f:	48 83 ec 10          	sub    $0x10,%rsp
0x113:	44 89 1c 24          	mov    %r11d,(%rsp)
0x117:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x11c:	40 8b 34 24          	rex mov (%rsp),%esi
0x120:	48 8b c7             	mov    %rdi,%rax
0x123:	48 63 40 10          	movslq 0x10(%rax),%rax
0x127:	3b f0                	cmp    %eax,%esi
0x129:	0f 82 0f 00 00 00    	jb     0x13e
0x12f:	e8 00 00 00 00       	callq  0x134
0x134:	90                   	nop
0x135:	48 8b f8             	mov    %rax,%rdi
0x138:	e8 00 00 00 00       	callq  0x13d
0x13d:	90                   	nop
0x13e:	48 63 f6             	movslq %esi,%rsi
0x141:	48 8b 44 f7 18       	mov    0x18(%rdi,%rsi,8),%rax
0x146:	48 83 c4 10          	add    $0x10,%rsp
0x14a:	48 89 04 24          	mov    %rax,(%rsp)
0x14e:	90                   	nop
0x14f:	90                   	nop
0x150:	e8 00 00 00 00       	callq  0x155
0x155:	90                   	nop
0x156:	48 83 ec 20          	sub    $0x20,%rsp
0x15a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0x15f:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x164:	48 83 c4 20          	add    $0x20,%rsp
0x168:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x16c:	48 8b 3d 0d fe ff ff 	mov    -0x1f3(%rip),%rdi        # 0xffffff80
0x173:	be 18 00 00 00       	mov    $0x18,%esi
0x178:	48 63 f6             	movslq %esi,%rsi
0x17b:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x17f:	48 83 ec 10          	sub    $0x10,%rsp
0x183:	48 89 04 24          	mov    %rax,(%rsp)
0x187:	48 8b 3d fa fd ff ff 	mov    -0x206(%rip),%rdi        # 0xffffff88
0x18e:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
0x192:	48 8b 35 f7 fd ff ff 	mov    -0x209(%rip),%rsi        # 0xffffff90
0x199:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x19d:	49 8b ce             	mov    %r14,%rcx
0x1a0:	48 8b 41 08          	mov    0x8(%rcx),%rax
0x1a4:	48 8b 88 28 01 00 00 	mov    0x128(%rax),%rcx
0x1ab:	4c 8b 80 20 01 00 00 	mov    0x120(%rax),%r8
0x1b2:	48 8b d9             	mov    %rcx,%rbx
0x1b5:	48 03 da             	add    %rdx,%rbx
0x1b8:	4c 8b cb             	mov    %rbx,%r9
0x1bb:	4d 3b c8             	cmp    %r8,%r9
0x1be:	0f 86 14 00 00 00    	jbe    0x1d8
0x1c4:	48 8b fe             	mov    %rsi,%rdi
0x1c7:	48 8b f2             	mov    %rdx,%rsi
0x1ca:	48 8b d0             	mov    %rax,%rdx
0x1cd:	e8 00 00 00 00       	callq  0x1d2
0x1d2:	90                   	nop
0x1d3:	e9 0a 00 00 00       	jmpq   0x1e2
0x1d8:	48 89 98 28 01 00 00 	mov    %rbx,0x128(%rax)
0x1df:	48 8b c1             	mov    %rcx,%rax
0x1e2:	48 89 45 10          	mov    %rax,0x10(%rbp)
0x1e6:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x1ea:	90                   	nop
0x1eb:	90                   	nop
0x1ec:	90                   	nop
0x1ed:	e8 00 00 00 00       	callq  0x1f2
0x1f2:	90                   	nop
0x1f3:	90                   	nop
0x1f4:	90                   	nop
0x1f5:	e8 00 00 00 00       	callq  0x1fa
0x1fa:	90                   	nop
0x1fb:	83 f8 00             	cmp    $0x0,%eax
0x1fe:	0f 84 27 00 00 00    	je     0x22b
0x204:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x208:	48 8b 77 30          	mov    0x30(%rdi),%rsi
0x20c:	85 06                	test   %eax,(%rsi)
0x20e:	48 8b 56 28          	mov    0x28(%rsi),%rdx
0x212:	48 8b 72 10          	mov    0x10(%rdx),%rsi
0x216:	48 8b 57 18          	mov    0x18(%rdi),%rdx
0x21a:	83 e2 ff             	and    $0xffffffff,%edx
0x21d:	48 8b fa             	mov    %rdx,%rdi
0x220:	48 8b 55 10          	mov    0x10(%rbp),%rdx
0x224:	90                   	nop
0x225:	e8 00 00 00 00       	callq  0x22a
0x22a:	90                   	nop
0x22b:	48 8b 45 10          	mov    0x10(%rbp),%rax
0x22f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
0x233:	48 89 38             	mov    %rdi,(%rax)
0x236:	48 83 ec 10          	sub    $0x10,%rsp
0x23a:	48 89 04 24          	mov    %rax,(%rsp)
0x23e:	48 83 ec 10          	sub    $0x10,%rsp
0x242:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x247:	4c 89 1c 24          	mov    %r11,(%rsp)
0x24b:	4c 8b 1c 24          	mov    (%rsp),%r11
0x24f:	41 85 03             	test   %eax,(%r11)
0x252:	e8 00 00 00 00       	callq  0x257
0x257:	90                   	nop
0x258:	4c 8b 1d 39 fd ff ff 	mov    -0x2c7(%rip),%r11        # 0xffffff98
0x25f:	48 83 ec 10          	sub    $0x10,%rsp
0x263:	4c 89 1c 24          	mov    %r11,(%rsp)
0x267:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x26c:	41 85 03             	test   %eax,(%r11)
0x26f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x274:	90                   	nop
0x275:	90                   	nop
0x276:	90                   	nop
0x277:	90                   	nop
0x278:	e8 00 00 00 00       	callq  0x27d
0x27d:	90                   	nop
0x27e:	48 83 ec 10          	sub    $0x10,%rsp
0x282:	48 89 04 24          	mov    %rax,(%rsp)
0x286:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x28a:	48 83 ec 20          	sub    $0x20,%rsp
0x28e:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x293:	4c 8b 5c 24 20       	mov    0x20(%rsp),%r11
0x298:	41 85 03             	test   %eax,(%r11)
0x29b:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
0x2a0:	e8 00 00 00 00       	callq  0x2a5
0x2a5:	90                   	nop
0x2a6:	48 83 ec 10          	sub    $0x10,%rsp
0x2aa:	48 89 04 24          	mov    %rax,(%rsp)
0x2ae:	4c 8b 1d eb fc ff ff 	mov    -0x315(%rip),%r11        # 0xffffffa0
0x2b5:	48 83 ec 10          	sub    $0x10,%rsp
0x2b9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2bd:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x2c2:	41 85 03             	test   %eax,(%r11)
0x2c5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x2ca:	e8 00 00 00 00       	callq  0x2cf
0x2cf:	90                   	nop
0x2d0:	48 83 ec 10          	sub    $0x10,%rsp
0x2d4:	48 89 04 24          	mov    %rax,(%rsp)
0x2d8:	4c 8b 1c 24          	mov    (%rsp),%r11
0x2dc:	41 85 03             	test   %eax,(%r11)
0x2df:	48 8b 3c 24          	mov    (%rsp),%rdi
0x2e3:	e8 00 00 00 00       	callq  0x2e8
0x2e8:	90                   	nop
0x2e9:	48 83 ec 10          	sub    $0x10,%rsp
0x2ed:	48 89 04 24          	mov    %rax,(%rsp)
0x2f1:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x2f6:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x2fb:	48 8b 15 a6 fc ff ff 	mov    -0x35a(%rip),%rdx        # 0xffffffa8
0x302:	b9 0a 00 00 00       	mov    $0xa,%ecx
0x307:	48 8b c6             	mov    %rsi,%rax
0x30a:	48 8b 00             	mov    (%rax),%rax
0x30d:	48 63 ff             	movslq %edi,%rdi
0x310:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x315:	48 8b fa             	mov    %rdx,%rdi
0x318:	48 8b d1             	mov    %rcx,%rdx
0x31b:	b9 03 00 00 00       	mov    $0x3,%ecx
0x320:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x324:	90                   	nop
0x325:	90                   	nop
0x326:	e8 00 00 00 00       	callq  0x32b
0x32b:	90                   	nop
0x32c:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x330:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x334:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x339:	ff d0                	callq  *%rax
0x33b:	90                   	nop
0x33c:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x340:	48 83 ec 20          	sub    $0x20,%rsp
0x344:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x349:	49 bb e8 03 00 00 00 	movabs $0x3e8,%r11
0x350:	00 00 00 
0x353:	48 83 ec 20          	sub    $0x20,%rsp
0x357:	4c 89 5c 24 10       	mov    %r11,0x10(%rsp)
0x35c:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
0x361:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x366:	48 8b c7             	mov    %rdi,%rax
0x369:	48 0f af c6          	imul   %rsi,%rax
0x36d:	48 83 c4 20          	add    $0x20,%rsp
0x371:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
0x376:	90                   	nop
0x377:	90                   	nop
0x378:	e8 00 00 00 00       	callq  0x37d
0x37d:	90                   	nop
0x37e:	48 8b 3d 2b fc ff ff 	mov    -0x3d5(%rip),%rdi        # 0xffffffb0
0x385:	be 18 00 00 00       	mov    $0x18,%esi
0x38a:	48 63 f6             	movslq %esi,%rsi
0x38d:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x391:	48 83 ec 10          	sub    $0x10,%rsp
0x395:	48 89 04 24          	mov    %rax,(%rsp)
0x399:	4c 8b 1d 18 fc ff ff 	mov    -0x3e8(%rip),%r11        # 0xffffffb8
0x3a0:	48 83 ec 10          	sub    $0x10,%rsp
0x3a4:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3a8:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x3ad:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x3b2:	48 8b 15 07 fc ff ff 	mov    -0x3f9(%rip),%rdx        # 0xffffffc0
0x3b9:	b9 14 00 00 00       	mov    $0x14,%ecx
0x3be:	48 8b c6             	mov    %rsi,%rax
0x3c1:	48 8b 00             	mov    (%rax),%rax
0x3c4:	48 63 ff             	movslq %edi,%rdi
0x3c7:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x3cc:	48 8b fa             	mov    %rdx,%rdi
0x3cf:	48 8b d1             	mov    %rcx,%rdx
0x3d2:	b9 03 00 00 00       	mov    $0x3,%ecx
0x3d7:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x3db:	90                   	nop
0x3dc:	90                   	nop
0x3dd:	e8 00 00 00 00       	callq  0x3e2
0x3e2:	90                   	nop
0x3e3:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x3e7:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x3eb:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x3f0:	ff d0                	callq  *%rax
0x3f2:	90                   	nop
0x3f3:	48 8b 3d ce fb ff ff 	mov    -0x432(%rip),%rdi        # 0xffffffc8
0x3fa:	be 1c 00 00 00       	mov    $0x1c,%esi
0x3ff:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x403:	48 8b c8             	mov    %rax,%rcx
0x406:	48 63 f6             	movslq %esi,%rsi
0x409:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x40e:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x414:	0f 8d 07 00 00 00    	jge    0x421
0x41a:	83 c1 01             	add    $0x1,%ecx
0x41d:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x421:	e9 98 00 00 00       	jmpq   0x4be
0x426:	49 8b fe             	mov    %r14,%rdi
0x429:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
0x42d:	85 07                	test   %eax,(%rdi)
0x42f:	e8 00 00 00 00       	callq  0x434
0x434:	90                   	nop
0x435:	48 83 ec 10          	sub    $0x10,%rsp
0x439:	48 89 04 24          	mov    %rax,(%rsp)
0x43d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x441:	48 83 c4 10          	add    $0x10,%rsp
0x445:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0x449:	48 8b 3d 80 fb ff ff 	mov    -0x480(%rip),%rdi        # 0xffffffd0
0x450:	be 18 00 00 00       	mov    $0x18,%esi
0x455:	48 63 f6             	movslq %esi,%rsi
0x458:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x45c:	48 83 ec 10          	sub    $0x10,%rsp
0x460:	48 89 04 24          	mov    %rax,(%rsp)
0x464:	4c 8b 1d 6d fb ff ff 	mov    -0x493(%rip),%r11        # 0xffffffd8
0x46b:	48 83 ec 10          	sub    $0x10,%rsp
0x46f:	4c 89 1c 24          	mov    %r11,(%rsp)
0x473:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x478:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x47d:	48 8b 15 5c fb ff ff 	mov    -0x4a4(%rip),%rdx        # 0xffffffe0
0x484:	b9 1e 00 00 00       	mov    $0x1e,%ecx
0x489:	48 8b c6             	mov    %rsi,%rax
0x48c:	48 8b 00             	mov    (%rax),%rax
0x48f:	48 63 ff             	movslq %edi,%rdi
0x492:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x497:	48 8b fa             	mov    %rdx,%rdi
0x49a:	48 8b d1             	mov    %rcx,%rdx
0x49d:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4a2:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4a6:	90                   	nop
0x4a7:	90                   	nop
0x4a8:	e8 00 00 00 00       	callq  0x4ad
0x4ad:	90                   	nop
0x4ae:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4b2:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4b6:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4bb:	ff d0                	callq  *%rax
0x4bd:	90                   	nop
0x4be:	48 83 c5 40          	add    $0x40,%rbp
0x4c2:	c9                   	leaveq 
0x4c3:	c2 10 00             	retq   $0x10

0x0:	e9 08 00 00 00       	jmpq   0xd
0x5:	90                   	nop
0x6:	90                   	nop
0x7:	90                   	nop
0x8:	e8 00 00 00 00       	callq  0xd
0xd:	c8 90 01 00          	enterq $0x190,$0x0
0x11:	48 83 ed 40          	sub    $0x40,%rbp
0x15:	48 89 84 24 98 e1 ff 	mov    %rax,-0x1e68(%rsp)
0x1c:	ff 
0x1d:	4d 33 db             	xor    %r11,%r11
0x20:	4c 89 1d e9 fe ff ff 	mov    %r11,-0x117(%rip)        # 0xffffff10
0x27:	48 8b 3d ea fe ff ff 	mov    -0x116(%rip),%rdi        # 0xffffff18
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
0x53:	4c 8b 1d c6 fe ff ff 	mov    -0x13a(%rip),%r11        # 0xffffff20
0x5a:	48 83 ec 10          	sub    $0x10,%rsp
0x5e:	4c 89 1c 24          	mov    %r11,(%rsp)
0x62:	4c 8b 1c 24          	mov    (%rsp),%r11
0x66:	48 83 c4 10          	add    $0x10,%rsp
0x6a:	4c 89 5d f0          	mov    %r11,-0x10(%rbp)
0x6e:	4c 8b 1d b3 fe ff ff 	mov    -0x14d(%rip),%r11        # 0xffffff28
0x75:	48 83 ec 10          	sub    $0x10,%rsp
0x79:	4c 89 1c 24          	mov    %r11,(%rsp)
0x7d:	4c 8b 1c 24          	mov    (%rsp),%r11
0x81:	48 83 c4 10          	add    $0x10,%rsp
0x85:	4c 89 5d e0          	mov    %r11,-0x20(%rbp)
0x89:	4c 8b 1d a0 fe ff ff 	mov    -0x160(%rip),%r11        # 0xffffff30
0x90:	48 83 ec 10          	sub    $0x10,%rsp
0x94:	4c 89 1c 24          	mov    %r11,(%rsp)
0x98:	4c 8b 1c 24          	mov    (%rsp),%r11
0x9c:	48 83 c4 10          	add    $0x10,%rsp
0xa0:	4c 89 5d d0          	mov    %r11,-0x30(%rbp)
0xa4:	4c 8b 1d 8d fe ff ff 	mov    -0x173(%rip),%r11        # 0xffffff38
0xab:	48 83 ec 10          	sub    $0x10,%rsp
0xaf:	4c 89 1c 24          	mov    %r11,(%rsp)
0xb3:	4c 8b 1c 24          	mov    (%rsp),%r11
0xb7:	48 83 c4 10          	add    $0x10,%rsp
0xbb:	4c 89 5d c0          	mov    %r11,-0x40(%rbp)
0xbf:	4c 8b 1d 7a fe ff ff 	mov    -0x186(%rip),%r11        # 0xffffff40
0xc6:	48 83 ec 10          	sub    $0x10,%rsp
0xca:	4c 89 1c 24          	mov    %r11,(%rsp)
0xce:	4c 8b 1c 24          	mov    (%rsp),%r11
0xd2:	48 83 c4 10          	add    $0x10,%rsp
0xd6:	4c 89 5d b0          	mov    %r11,-0x50(%rbp)
0xda:	4c 8b 1d 67 fe ff ff 	mov    -0x199(%rip),%r11        # 0xffffff48
0xe1:	48 83 ec 10          	sub    $0x10,%rsp
0xe5:	4c 89 1c 24          	mov    %r11,(%rsp)
0xe9:	4c 8b 1c 24          	mov    (%rsp),%r11
0xed:	48 83 c4 10          	add    $0x10,%rsp
0xf1:	4c 89 5d a0          	mov    %r11,-0x60(%rbp)
0xf5:	4c 8b 1d 54 fe ff ff 	mov    -0x1ac(%rip),%r11        # 0xffffff50
0xfc:	48 83 ec 10          	sub    $0x10,%rsp
0x100:	4c 89 1c 24          	mov    %r11,(%rsp)
0x104:	4c 8b 1c 24          	mov    (%rsp),%r11
0x108:	48 83 c4 10          	add    $0x10,%rsp
0x10c:	4c 89 5d 90          	mov    %r11,-0x70(%rbp)
0x110:	4c 8b 1d 41 fe ff ff 	mov    -0x1bf(%rip),%r11        # 0xffffff58
0x117:	48 83 ec 10          	sub    $0x10,%rsp
0x11b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x11f:	4c 8b 1c 24          	mov    (%rsp),%r11
0x123:	48 83 c4 10          	add    $0x10,%rsp
0x127:	4c 89 5d 80          	mov    %r11,-0x80(%rbp)
0x12b:	4c 8b 1d 2e fe ff ff 	mov    -0x1d2(%rip),%r11        # 0xffffff60
0x132:	48 83 ec 10          	sub    $0x10,%rsp
0x136:	4c 89 1c 24          	mov    %r11,(%rsp)
0x13a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x13e:	48 83 c4 10          	add    $0x10,%rsp
0x142:	4c 89 9d 70 ff ff ff 	mov    %r11,-0x90(%rbp)
0x149:	4c 8b 1d 18 fe ff ff 	mov    -0x1e8(%rip),%r11        # 0xffffff68
0x150:	48 83 ec 10          	sub    $0x10,%rsp
0x154:	4c 89 1c 24          	mov    %r11,(%rsp)
0x158:	4c 8b 1c 24          	mov    (%rsp),%r11
0x15c:	48 83 c4 10          	add    $0x10,%rsp
0x160:	4c 89 9d 60 ff ff ff 	mov    %r11,-0xa0(%rbp)
0x167:	4c 8b 1d 02 fe ff ff 	mov    -0x1fe(%rip),%r11        # 0xffffff70
0x16e:	48 83 ec 10          	sub    $0x10,%rsp
0x172:	4c 89 1c 24          	mov    %r11,(%rsp)
0x176:	4c 8b 1c 24          	mov    (%rsp),%r11
0x17a:	48 83 c4 10          	add    $0x10,%rsp
0x17e:	4c 89 9d 50 ff ff ff 	mov    %r11,-0xb0(%rbp)
0x185:	4c 8b 1d ec fd ff ff 	mov    -0x214(%rip),%r11        # 0xffffff78
0x18c:	48 83 ec 10          	sub    $0x10,%rsp
0x190:	4c 89 1c 24          	mov    %r11,(%rsp)
0x194:	4c 8b 1c 24          	mov    (%rsp),%r11
0x198:	48 83 c4 10          	add    $0x10,%rsp
0x19c:	4c 89 9d 40 ff ff ff 	mov    %r11,-0xc0(%rbp)
0x1a3:	4c 8b 1d d6 fd ff ff 	mov    -0x22a(%rip),%r11        # 0xffffff80
0x1aa:	48 83 ec 10          	sub    $0x10,%rsp
0x1ae:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1b2:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1b6:	48 83 c4 10          	add    $0x10,%rsp
0x1ba:	4c 89 9d 30 ff ff ff 	mov    %r11,-0xd0(%rbp)
0x1c1:	4c 8b 1d c0 fd ff ff 	mov    -0x240(%rip),%r11        # 0xffffff88
0x1c8:	48 83 ec 10          	sub    $0x10,%rsp
0x1cc:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1d0:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1d4:	48 83 c4 10          	add    $0x10,%rsp
0x1d8:	4c 89 9d 20 ff ff ff 	mov    %r11,-0xe0(%rbp)
0x1df:	4c 8b 1d aa fd ff ff 	mov    -0x256(%rip),%r11        # 0xffffff90
0x1e6:	48 83 ec 10          	sub    $0x10,%rsp
0x1ea:	4c 89 1c 24          	mov    %r11,(%rsp)
0x1ee:	4c 8b 1c 24          	mov    (%rsp),%r11
0x1f2:	48 83 c4 10          	add    $0x10,%rsp
0x1f6:	4c 89 9d 10 ff ff ff 	mov    %r11,-0xf0(%rbp)
0x1fd:	4c 8b 1d 94 fd ff ff 	mov    -0x26c(%rip),%r11        # 0xffffff98
0x204:	48 83 ec 10          	sub    $0x10,%rsp
0x208:	4c 89 1c 24          	mov    %r11,(%rsp)
0x20c:	4c 8b 1c 24          	mov    (%rsp),%r11
0x210:	48 83 c4 10          	add    $0x10,%rsp
0x214:	4c 89 9d 00 ff ff ff 	mov    %r11,-0x100(%rbp)
0x21b:	4c 8b 1d 7e fd ff ff 	mov    -0x282(%rip),%r11        # 0xffffffa0
0x222:	48 83 ec 10          	sub    $0x10,%rsp
0x226:	4c 89 1c 24          	mov    %r11,(%rsp)
0x22a:	4c 8b 1c 24          	mov    (%rsp),%r11
0x22e:	48 83 c4 10          	add    $0x10,%rsp
0x232:	4c 89 9d f0 fe ff ff 	mov    %r11,-0x110(%rbp)
0x239:	4c 8b 1d 68 fd ff ff 	mov    -0x298(%rip),%r11        # 0xffffffa8
0x240:	48 83 ec 10          	sub    $0x10,%rsp
0x244:	4c 89 1c 24          	mov    %r11,(%rsp)
0x248:	4c 8b 1c 24          	mov    (%rsp),%r11
0x24c:	48 83 c4 10          	add    $0x10,%rsp
0x250:	4c 89 9d e0 fe ff ff 	mov    %r11,-0x120(%rbp)
0x257:	4c 8b 1d 52 fd ff ff 	mov    -0x2ae(%rip),%r11        # 0xffffffb0
0x25e:	48 83 ec 10          	sub    $0x10,%rsp
0x262:	4c 89 1c 24          	mov    %r11,(%rsp)
0x266:	4c 8b 1c 24          	mov    (%rsp),%r11
0x26a:	48 83 c4 10          	add    $0x10,%rsp
0x26e:	4c 89 9d d0 fe ff ff 	mov    %r11,-0x130(%rbp)
0x275:	4c 8b 1d 3c fd ff ff 	mov    -0x2c4(%rip),%r11        # 0xffffffb8
0x27c:	48 83 ec 10          	sub    $0x10,%rsp
0x280:	4c 89 1c 24          	mov    %r11,(%rsp)
0x284:	4c 8b 1c 24          	mov    (%rsp),%r11
0x288:	48 83 c4 10          	add    $0x10,%rsp
0x28c:	4c 89 9d c0 fe ff ff 	mov    %r11,-0x140(%rbp)
0x293:	41 bb 10 00 00 00    	mov    $0x10,%r11d
0x299:	48 83 ec 10          	sub    $0x10,%rsp
0x29d:	44 89 1c 24          	mov    %r11d,(%rsp)
0x2a1:	4c 8b 5d f0          	mov    -0x10(%rbp),%r11
0x2a5:	48 83 ec 10          	sub    $0x10,%rsp
0x2a9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2ad:	4c 8b 5d e0          	mov    -0x20(%rbp),%r11
0x2b1:	48 83 ec 10          	sub    $0x10,%rsp
0x2b5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2b9:	4c 8b 5d d0          	mov    -0x30(%rbp),%r11
0x2bd:	48 83 ec 10          	sub    $0x10,%rsp
0x2c1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2c5:	4c 8b 5d c0          	mov    -0x40(%rbp),%r11
0x2c9:	48 83 ec 10          	sub    $0x10,%rsp
0x2cd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2d1:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
0x2d5:	48 83 ec 10          	sub    $0x10,%rsp
0x2d9:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2dd:	4c 8b 5d a0          	mov    -0x60(%rbp),%r11
0x2e1:	48 83 ec 10          	sub    $0x10,%rsp
0x2e5:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2e9:	4c 8b 5d 90          	mov    -0x70(%rbp),%r11
0x2ed:	48 83 ec 10          	sub    $0x10,%rsp
0x2f1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x2f5:	4c 8b 5d 80          	mov    -0x80(%rbp),%r11
0x2f9:	48 83 ec 10          	sub    $0x10,%rsp
0x2fd:	4c 89 1c 24          	mov    %r11,(%rsp)
0x301:	4c 8b 9d 70 ff ff ff 	mov    -0x90(%rbp),%r11
0x308:	48 83 ec 10          	sub    $0x10,%rsp
0x30c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x310:	4c 8b 9d 60 ff ff ff 	mov    -0xa0(%rbp),%r11
0x317:	48 83 ec 10          	sub    $0x10,%rsp
0x31b:	4c 89 1c 24          	mov    %r11,(%rsp)
0x31f:	4c 8b 9d 50 ff ff ff 	mov    -0xb0(%rbp),%r11
0x326:	48 83 ec 10          	sub    $0x10,%rsp
0x32a:	4c 89 1c 24          	mov    %r11,(%rsp)
0x32e:	4c 8b 9d 40 ff ff ff 	mov    -0xc0(%rbp),%r11
0x335:	48 83 ec 10          	sub    $0x10,%rsp
0x339:	4c 89 1c 24          	mov    %r11,(%rsp)
0x33d:	4c 8b 9d 30 ff ff ff 	mov    -0xd0(%rbp),%r11
0x344:	48 83 ec 10          	sub    $0x10,%rsp
0x348:	4c 89 1c 24          	mov    %r11,(%rsp)
0x34c:	4c 8b 9d 20 ff ff ff 	mov    -0xe0(%rbp),%r11
0x353:	48 83 ec 10          	sub    $0x10,%rsp
0x357:	4c 89 1c 24          	mov    %r11,(%rsp)
0x35b:	4c 8b 9d 10 ff ff ff 	mov    -0xf0(%rbp),%r11
0x362:	48 83 ec 10          	sub    $0x10,%rsp
0x366:	4c 89 1c 24          	mov    %r11,(%rsp)
0x36a:	4c 8b 9d 00 ff ff ff 	mov    -0x100(%rbp),%r11
0x371:	48 83 ec 10          	sub    $0x10,%rsp
0x375:	4c 89 1c 24          	mov    %r11,(%rsp)
0x379:	4c 8b 9d f0 fe ff ff 	mov    -0x110(%rbp),%r11
0x380:	48 83 ec 10          	sub    $0x10,%rsp
0x384:	4c 89 1c 24          	mov    %r11,(%rsp)
0x388:	4c 8b 9d e0 fe ff ff 	mov    -0x120(%rbp),%r11
0x38f:	48 83 ec 10          	sub    $0x10,%rsp
0x393:	4c 89 1c 24          	mov    %r11,(%rsp)
0x397:	4c 8b 9d d0 fe ff ff 	mov    -0x130(%rbp),%r11
0x39e:	48 83 ec 10          	sub    $0x10,%rsp
0x3a2:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3a6:	4c 8b 9d c0 fe ff ff 	mov    -0x140(%rbp),%r11
0x3ad:	48 83 ec 10          	sub    $0x10,%rsp
0x3b1:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3b5:	90                   	nop
0x3b6:	90                   	nop
0x3b7:	90                   	nop
0x3b8:	e8 00 00 00 00       	callq  0x3bd
0x3bd:	90                   	nop
0x3be:	48 83 ec 10          	sub    $0x10,%rsp
0x3c2:	48 89 04 24          	mov    %rax,(%rsp)
0x3c6:	4c 8b 1c 24          	mov    (%rsp),%r11
0x3ca:	48 83 c4 10          	add    $0x10,%rsp
0x3ce:	4c 89 9d b0 fe ff ff 	mov    %r11,-0x150(%rbp)
0x3d5:	4c 8b 9d b0 fe ff ff 	mov    -0x150(%rbp),%r11
0x3dc:	48 83 ec 10          	sub    $0x10,%rsp
0x3e0:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3e4:	4c 8b 9d c0 fe ff ff 	mov    -0x140(%rbp),%r11
0x3eb:	48 83 ec 10          	sub    $0x10,%rsp
0x3ef:	4c 89 1c 24          	mov    %r11,(%rsp)
0x3f3:	4c 8b 5c 24 10       	mov    0x10(%rsp),%r11
0x3f8:	48 8b 04 24          	mov    (%rsp),%rax
0x3fc:	48 83 c4 20          	add    $0x20,%rsp
0x400:	4c 3b d8             	cmp    %rax,%r11
0x403:	74 33                	je     0x438
0x405:	48 8b 3d b4 fb ff ff 	mov    -0x44c(%rip),%rdi        # 0xffffffc0
0x40c:	be 01 00 00 00       	mov    $0x1,%esi
0x411:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x415:	48 8b c8             	mov    %rax,%rcx
0x418:	48 63 f6             	movslq %esi,%rsi
0x41b:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x420:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x426:	0f 8d 07 00 00 00    	jge    0x433
0x42c:	83 c1 01             	add    $0x1,%ecx
0x42f:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x433:	e9 a3 00 00 00       	jmpq   0x4db
0x438:	48 8b 3d 89 fb ff ff 	mov    -0x477(%rip),%rdi        # 0xffffffc8
0x43f:	be 02 00 00 00       	mov    $0x2,%esi
0x444:	48 8b 47 18          	mov    0x18(%rdi),%rax
0x448:	48 8b c8             	mov    %rax,%rcx
0x44b:	48 63 f6             	movslq %esi,%rsi
0x44e:	48 63 4c b1 18       	movslq 0x18(%rcx,%rsi,4),%rcx
0x453:	81 f9 ff ff ff 7f    	cmp    $0x7fffffff,%ecx
0x459:	0f 8d 07 00 00 00    	jge    0x466
0x45f:	83 c1 01             	add    $0x1,%ecx
0x462:	89 4c b0 18          	mov    %ecx,0x18(%rax,%rsi,4)
0x466:	48 8b 3d 63 fb ff ff 	mov    -0x49d(%rip),%rdi        # 0xffffffd0
0x46d:	be 18 00 00 00       	mov    $0x18,%esi
0x472:	48 63 f6             	movslq %esi,%rsi
0x475:	48 8b 04 37          	mov    (%rdi,%rsi,1),%rax
0x479:	48 83 ec 10          	sub    $0x10,%rsp
0x47d:	48 89 04 24          	mov    %rax,(%rsp)
0x481:	4c 8b 1d 50 fb ff ff 	mov    -0x4b0(%rip),%r11        # 0xffffffd8
0x488:	48 83 ec 10          	sub    $0x10,%rsp
0x48c:	4c 89 1c 24          	mov    %r11,(%rsp)
0x490:	bf 2f 00 00 00       	mov    $0x2f,%edi
0x495:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
0x49a:	48 8b 15 3f fb ff ff 	mov    -0x4c1(%rip),%rdx        # 0xffffffe0
0x4a1:	b9 04 00 00 00       	mov    $0x4,%ecx
0x4a6:	48 8b c6             	mov    %rsi,%rax
0x4a9:	48 8b 00             	mov    (%rax),%rax
0x4ac:	48 63 ff             	movslq %edi,%rdi
0x4af:	48 8b 44 f8 18       	mov    0x18(%rax,%rdi,8),%rax
0x4b4:	48 8b fa             	mov    %rdx,%rdi
0x4b7:	48 8b d1             	mov    %rcx,%rdx
0x4ba:	b9 03 00 00 00       	mov    $0x3,%ecx
0x4bf:	48 89 45 08          	mov    %rax,0x8(%rbp)
0x4c3:	90                   	nop
0x4c4:	90                   	nop
0x4c5:	e8 00 00 00 00       	callq  0x4ca
0x4ca:	90                   	nop
0x4cb:	48 8b 45 08          	mov    0x8(%rbp),%rax
0x4cf:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
0x4d3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
0x4d8:	ff d0                	callq  *%rax
0x4da:	90                   	nop
0x4db:	48 83 c5 40          	add    $0x40,%rbp
0x4df:	c9                   	leaveq 
0x4e0:	c2 10 00             	retq   $0x10

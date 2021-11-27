
hello:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 2f 00 00 	mov    0x2fed(%rip),%rax        # 403ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <puts@plt>:
  401030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 404018 <puts@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <strtol@plt>:
  401040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 404020 <strtol@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <__printf_chk@plt>:
  401050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 404028 <__printf_chk@GLIBC_2.3.4>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <exit@plt>:
  401060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 404030 <exit@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <sleep@plt>:
  401070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 404038 <sleep@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <getc@plt>:
  401080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 404040 <getc@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401090 <_start>:
  401090:	31 ed                	xor    %ebp,%ebp
  401092:	49 89 d1             	mov    %rdx,%r9
  401095:	5e                   	pop    %rsi
  401096:	48 89 e2             	mov    %rsp,%rdx
  401099:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40109d:	50                   	push   %rax
  40109e:	54                   	push   %rsp
  40109f:	49 c7 c0 60 12 40 00 	mov    $0x401260,%r8
  4010a6:	48 c7 c1 00 12 40 00 	mov    $0x401200,%rcx
  4010ad:	48 c7 c7 72 11 40 00 	mov    $0x401172,%rdi
  4010b4:	ff 15 36 2f 00 00    	callq  *0x2f36(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4010ba:	f4                   	hlt    
  4010bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010c0 <_dl_relocate_static_pie>:
  4010c0:	c3                   	retq   
  4010c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010c8:	00 00 00 
  4010cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004010d0 <deregister_tm_clones>:
  4010d0:	b8 58 40 40 00       	mov    $0x404058,%eax
  4010d5:	48 3d 58 40 40 00    	cmp    $0x404058,%rax
  4010db:	74 13                	je     4010f0 <deregister_tm_clones+0x20>
  4010dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4010e2:	48 85 c0             	test   %rax,%rax
  4010e5:	74 09                	je     4010f0 <deregister_tm_clones+0x20>
  4010e7:	bf 58 40 40 00       	mov    $0x404058,%edi
  4010ec:	ff e0                	jmpq   *%rax
  4010ee:	66 90                	xchg   %ax,%ax
  4010f0:	c3                   	retq   
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401100 <register_tm_clones>:
  401100:	be 58 40 40 00       	mov    $0x404058,%esi
  401105:	48 81 ee 58 40 40 00 	sub    $0x404058,%rsi
  40110c:	48 c1 fe 03          	sar    $0x3,%rsi
  401110:	48 89 f0             	mov    %rsi,%rax
  401113:	48 c1 e8 3f          	shr    $0x3f,%rax
  401117:	48 01 c6             	add    %rax,%rsi
  40111a:	48 d1 fe             	sar    %rsi
  40111d:	74 11                	je     401130 <register_tm_clones+0x30>
  40111f:	b8 00 00 00 00       	mov    $0x0,%eax
  401124:	48 85 c0             	test   %rax,%rax
  401127:	74 07                	je     401130 <register_tm_clones+0x30>
  401129:	bf 58 40 40 00       	mov    $0x404058,%edi
  40112e:	ff e0                	jmpq   *%rax
  401130:	c3                   	retq   
  401131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401140 <__do_global_dtors_aux>:
  401140:	80 3d 21 2f 00 00 00 	cmpb   $0x0,0x2f21(%rip)        # 404068 <completed.7963>
  401147:	75 17                	jne    401160 <__do_global_dtors_aux+0x20>
  401149:	55                   	push   %rbp
  40114a:	48 89 e5             	mov    %rsp,%rbp
  40114d:	e8 7e ff ff ff       	callq  4010d0 <deregister_tm_clones>
  401152:	c6 05 0f 2f 00 00 01 	movb   $0x1,0x2f0f(%rip)        # 404068 <completed.7963>
  401159:	5d                   	pop    %rbp
  40115a:	c3                   	retq   
  40115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401160:	c3                   	retq   
  401161:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401170 <frame_dummy>:
  401170:	eb 8e                	jmp    401100 <register_tm_clones>

0000000000401172 <main>:
  401172:	55                   	push   %rbp
  401173:	53                   	push   %rbx
  401174:	48 83 ec 08          	sub    $0x8,%rsp
  401178:	83 ff 04             	cmp    $0x4,%edi
  40117b:	75 0a                	jne    401187 <main+0x15>
  40117d:	48 89 f5             	mov    %rsi,%rbp
  401180:	bb 00 00 00 00       	mov    $0x0,%ebx
  401185:	eb 4d                	jmp    4011d4 <main+0x62>
  401187:	bf 08 20 40 00       	mov    $0x402008,%edi
  40118c:	e8 9f fe ff ff       	callq  401030 <puts@plt>
  401191:	bf 01 00 00 00       	mov    $0x1,%edi
  401196:	e8 c5 fe ff ff       	callq  401060 <exit@plt>
  40119b:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40119f:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  4011a3:	be 30 20 40 00       	mov    $0x402030,%esi
  4011a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4011ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b2:	e8 99 fe ff ff       	callq  401050 <__printf_chk@plt>
  4011b7:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  4011bb:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c0:	be 00 00 00 00       	mov    $0x0,%esi
  4011c5:	e8 76 fe ff ff       	callq  401040 <strtol@plt>
  4011ca:	89 c7                	mov    %eax,%edi
  4011cc:	e8 9f fe ff ff       	callq  401070 <sleep@plt>
  4011d1:	83 c3 01             	add    $0x1,%ebx
  4011d4:	83 fb 07             	cmp    $0x7,%ebx
  4011d7:	7e c2                	jle    40119b <main+0x29>
  4011d9:	48 8b 3d 80 2e 00 00 	mov    0x2e80(%rip),%rdi        # 404060 <stdin@@GLIBC_2.2.5>
  4011e0:	e8 9b fe ff ff       	callq  401080 <getc@plt>
  4011e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ea:	48 83 c4 08          	add    $0x8,%rsp
  4011ee:	5b                   	pop    %rbx
  4011ef:	5d                   	pop    %rbp
  4011f0:	c3                   	retq   
  4011f1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011f8:	00 00 00 
  4011fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401200 <__libc_csu_init>:
  401200:	41 57                	push   %r15
  401202:	49 89 d7             	mov    %rdx,%r15
  401205:	41 56                	push   %r14
  401207:	49 89 f6             	mov    %rsi,%r14
  40120a:	41 55                	push   %r13
  40120c:	41 89 fd             	mov    %edi,%r13d
  40120f:	41 54                	push   %r12
  401211:	4c 8d 25 e8 2b 00 00 	lea    0x2be8(%rip),%r12        # 403e00 <__frame_dummy_init_array_entry>
  401218:	55                   	push   %rbp
  401219:	48 8d 2d e8 2b 00 00 	lea    0x2be8(%rip),%rbp        # 403e08 <__init_array_end>
  401220:	53                   	push   %rbx
  401221:	4c 29 e5             	sub    %r12,%rbp
  401224:	48 83 ec 08          	sub    $0x8,%rsp
  401228:	e8 d3 fd ff ff       	callq  401000 <_init>
  40122d:	48 c1 fd 03          	sar    $0x3,%rbp
  401231:	74 1b                	je     40124e <__libc_csu_init+0x4e>
  401233:	31 db                	xor    %ebx,%ebx
  401235:	0f 1f 00             	nopl   (%rax)
  401238:	4c 89 fa             	mov    %r15,%rdx
  40123b:	4c 89 f6             	mov    %r14,%rsi
  40123e:	44 89 ef             	mov    %r13d,%edi
  401241:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  401245:	48 83 c3 01          	add    $0x1,%rbx
  401249:	48 39 dd             	cmp    %rbx,%rbp
  40124c:	75 ea                	jne    401238 <__libc_csu_init+0x38>
  40124e:	48 83 c4 08          	add    $0x8,%rsp
  401252:	5b                   	pop    %rbx
  401253:	5d                   	pop    %rbp
  401254:	41 5c                	pop    %r12
  401256:	41 5d                	pop    %r13
  401258:	41 5e                	pop    %r14
  40125a:	41 5f                	pop    %r15
  40125c:	c3                   	retq   
  40125d:	0f 1f 00             	nopl   (%rax)

0000000000401260 <__libc_csu_fini>:
  401260:	c3                   	retq   

Disassembly of section .fini:

0000000000401264 <_fini>:
  401264:	48 83 ec 08          	sub    $0x8,%rsp
  401268:	48 83 c4 08          	add    $0x8,%rsp
  40126c:	c3                   	retq   

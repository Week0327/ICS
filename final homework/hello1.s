
hello.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	53                   	push   %rbx
   2:	48 83 ec 08          	sub    $0x8,%rsp
   6:	83 ff 04             	cmp    $0x4,%edi
   9:	75 0a                	jne    15 <main+0x15>
   b:	48 89 f5             	mov    %rsi,%rbp
   e:	bb 00 00 00 00       	mov    $0x0,%ebx
  13:	eb 4d                	jmp    62 <main+0x62>
  15:	bf 00 00 00 00       	mov    $0x0,%edi
			16: R_X86_64_32	.rodata.str1.8
  1a:	e8 00 00 00 00       	callq  1f <main+0x1f>
			1b: R_X86_64_PLT32	puts-0x4
  1f:	bf 01 00 00 00       	mov    $0x1,%edi
  24:	e8 00 00 00 00       	callq  29 <main+0x29>
			25: R_X86_64_PLT32	exit-0x4
  29:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  2d:	48 8b 55 08          	mov    0x8(%rbp),%rdx
  31:	be 00 00 00 00       	mov    $0x0,%esi
			32: R_X86_64_32	.rodata.str1.1
  36:	bf 01 00 00 00       	mov    $0x1,%edi
  3b:	b8 00 00 00 00       	mov    $0x0,%eax
  40:	e8 00 00 00 00       	callq  45 <main+0x45>
			41: R_X86_64_PLT32	__printf_chk-0x4
  45:	48 8b 7d 18          	mov    0x18(%rbp),%rdi
  49:	ba 0a 00 00 00       	mov    $0xa,%edx
  4e:	be 00 00 00 00       	mov    $0x0,%esi
  53:	e8 00 00 00 00       	callq  58 <main+0x58>
			54: R_X86_64_PLT32	strtol-0x4
  58:	89 c7                	mov    %eax,%edi
  5a:	e8 00 00 00 00       	callq  5f <main+0x5f>
			5b: R_X86_64_PLT32	sleep-0x4
  5f:	83 c3 01             	add    $0x1,%ebx
  62:	83 fb 07             	cmp    $0x7,%ebx
  65:	7e c2                	jle    29 <main+0x29>
  67:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 6e <main+0x6e>
			6a: R_X86_64_PC32	stdin-0x4
  6e:	e8 00 00 00 00       	callq  73 <main+0x73>
			6f: R_X86_64_PLT32	getc-0x4
  73:	b8 00 00 00 00       	mov    $0x0,%eax
  78:	48 83 c4 08          	add    $0x8,%rsp
  7c:	5b                   	pop    %rbx
  7d:	5d                   	pop    %rbp
  7e:	c3                   	retq   

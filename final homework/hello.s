	.file	"hello.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"\347\224\250\346\263\225: Hello \345\255\246\345\217\267 \345\247\223\345\220\215 \347\247\222\346\225\260\357\274\201"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Hello %s %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$4, %edi
	jne	.L6
	movq	%rsi, %rbp
	movl	$0, %ebx
	jmp	.L2
.L6:
	movl	$.LC0, %edi
	call	puts
	movl	$1, %edi
	call	exit
.L3:
	movq	16(%rbp), %rcx
	movq	8(%rbp), %rdx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movq	24(%rbp), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol
	movl	%eax, %edi
	call	sleep
	addl	$1, %ebx
.L2:
	cmpl	$7, %ebx
	jle	.L3
	movq	stdin(%rip), %rdi
	call	getc
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits

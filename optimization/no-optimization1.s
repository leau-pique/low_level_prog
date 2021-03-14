	.file	"optimisation1.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d %d"
.LC1:
	.string	"x=%d,y=%d,z=%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-20(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$3, %eax
	jle	.L2
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L3
.L2:
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	imull	%edx, %eax
	sall	$2, %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
.L3:
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits

	.file	"optimisation1.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d %d"
.LC1:
	.string	"x=%d,y=%d,z=%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	leaq	8(%rsp), %rsi
	leaq	12(%rsp), %rdx
	call	__isoc99_scanf@PLT
	movl	12(%rsp), %eax
	movl	8(%rsp), %esi
	imull	%eax, %esi
	cmpl	$3, %eax
	jg	.L3
	leal	0(,%rsi,4), %ecx
	xorl	%edx, %edx
.L2:
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	movl	%esi, %edx
	xorl	%ecx, %ecx
	jmp	.L2
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits

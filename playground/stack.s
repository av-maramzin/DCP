	.file	"stack.c"
	.text
	.local	stack
	.comm	stack,400,32
	.local	head
	.comm	head,4,4
	.section	.rodata
.LC0:
	.string	"[ "
.LC1:
	.string	"%d "
.LC2:
	.string	"]"
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
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	push
	addl	$1, -8(%rbp)
.L2:
	cmpl	$99, -8(%rbp)
	jbe	.L3
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	$0, %eax
	call	pop
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L4:
	cmpl	$99, -4(%rbp)
	jbe	.L5
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC3:
	.string	"stack error: overflow!"
	.text
	.globl	push
	.type	push, @function
push:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	head(%rip), %eax
	cmpl	$99, %eax
	ja	.L8
	movl	head(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, head(%rip)
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	leaq	stack(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rcx,%rax)
	jmp	.L10
.L8:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	push, .-push
	.section	.rodata
	.align 8
.LC4:
	.string	"stack error: popped from an empty stack!"
	.text
	.globl	pop
	.type	pop, @function
pop:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	head(%rip), %eax
	testl	%eax, %eax
	je	.L12
	movl	head(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, head(%rip)
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	stack(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L13
.L12:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pop, .-pop
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

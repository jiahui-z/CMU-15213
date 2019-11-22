	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_switch_eg              ## -- Begin function switch_eg
	.p2align	4, 0x90
_switch_eg:                             ## @switch_eg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$1, -32(%rbp)
	movq	-8(%rbp), %rdx
	decq	%rdx
	movq	%rdx, %rsi
	subq	$5, %rsi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	ja	LBB0_5
## %bb.7:
	leaq	LJTI0_0(%rip), %rax
	movq	-40(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB0_1:
	movq	-16(%rbp), %rax
	imulq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_6
LBB0_2:
	movq	-16(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	movq	%rax, -32(%rbp)
LBB0_3:
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_6
LBB0_4:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jmp	LBB0_6
LBB0_5:
	movq	$2, -32(%rbp)
LBB0_6:
	movq	-32(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_1, LBB0_1-LJTI0_0
.set L0_0_set_2, LBB0_2-LJTI0_0
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
LJTI0_0:
	.long	L0_0_set_1
	.long	L0_0_set_2
	.long	L0_0_set_3
	.long	L0_0_set_5
	.long	L0_0_set_4
	.long	L0_0_set_4
	.end_data_region
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	_atoi
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	callq	_atoi
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rdi
	callq	_atoi
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	_switch_eg
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%r9d, %r9d
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movl	%r9d, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The result for case %ld when the input is %ld and %ld is %ld\n"


.subsections_via_symbols

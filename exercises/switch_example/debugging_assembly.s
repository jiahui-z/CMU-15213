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
	movl	$2, %eax
	decq	%rdi
	cmpq	$5, %rdi
	ja	LBB0_6
## %bb.1:
	movq	%rdx, %r8
	movl	$1, %edx
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rdi
	addq	%rcx, %rdi
	jmpq	*%rdi
LBB0_5:
	movl	$1, %eax
	subq	%r8, %rax
LBB0_6:
	popq	%rbp
	retq
LBB0_2:
	imulq	%rsi, %r8
	movq	%r8, %rax
	popq	%rbp
	retq
LBB0_3:
	movq	%rsi, %rax
	cqto
	idivq	%r8
	movq	%rax, %rdx
LBB0_4:
	addq	%r8, %rdx
	movq	%rdx, %rax
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L0_0_set_2, LBB0_2-LJTI0_0
.set L0_0_set_3, LBB0_3-LJTI0_0
.set L0_0_set_4, LBB0_4-LJTI0_0
.set L0_0_set_6, LBB0_6-LJTI0_0
.set L0_0_set_5, LBB0_5-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_3
	.long	L0_0_set_4
	.long	L0_0_set_6
	.long	L0_0_set_5
	.long	L0_0_set_5
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	8(%rsi), %rdi
	callq	_atoi
	movslq	%eax, %r14
	movq	16(%rbx), %rdi
	callq	_atoi
	movslq	%eax, %r15
	movq	24(%rbx), %rdi
	callq	_atoi
	movslq	%eax, %rbx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_switch_eg
	leaq	L_.str(%rip), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The result for case %ld when the input is %ld and %ld is %ld\n"


.subsections_via_symbols

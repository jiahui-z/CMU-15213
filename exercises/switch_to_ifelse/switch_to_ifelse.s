	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_switch_to_ifelse       ## -- Begin function switch_to_ifelse
	.p2align	4, 0x90
_switch_to_ifelse:                      ## @switch_to_ifelse
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	subq	$1, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	je	LBB0_1
	jmp	LBB0_4
LBB0_4:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	subq	$100000, %rax           ## imm = 0x186A0
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	je	LBB0_2
	jmp	LBB0_3
LBB0_1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -36(%rbp)         ## 4-byte Spill
LBB0_2:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -40(%rbp)         ## 4-byte Spill
LBB0_3:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
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
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	_atoi
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
## %bb.1:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"hello 1"

L_.str.1:                               ## @.str.1
	.asciz	"hello 100000"


.subsections_via_symbols

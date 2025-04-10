	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register %ebp
	subl	$88, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	%eax, -76(%ebp)                 ## 4-byte Spill
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -4(%ebp)
	movl	$0, -68(%ebp)
	leal	-44(%ebp), %ecx
	leal	l___const.main.matrix1-L0$pb(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$20, 8(%esp)
	calll	_memcpy
	movl	-76(%ebp), %eax                 ## 4-byte Reload
	leal	-64(%ebp), %ecx
	leal	l___const.main.matrix2-L0$pb(%eax), %eax
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$20, 8(%esp)
	calll	_memcpy
	movl	$0, -72(%ebp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$5, -72(%ebp)
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-72(%ebp), %eax
	movl	-44(%ebp,%eax,4), %ecx
	movl	-72(%ebp), %eax
	addl	-64(%ebp,%eax,4), %ecx
	movl	-72(%ebp), %eax
	movl	%ecx, -24(%ebp,%eax,4)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-72(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -72(%ebp)
	jmp	LBB0_1
LBB0_4:
	movl	-76(%ebp), %eax                 ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	-4(%ebp), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_6
## %bb.5:
	movl	$1, %eax
	addl	$88, %esp
	popl	%ebp
	retl
LBB0_6:
	calll	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ## @__const.main.matrix1
l___const.main.matrix1:
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	0                               ## 0x0

	.p2align	2, 0x0                          ## @__const.main.matrix2
l___const.main.matrix2:
	.long	2                               ## 0x2
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	0                               ## 0x0
	.long	0                               ## 0x0

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols

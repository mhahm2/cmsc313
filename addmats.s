	.file	"addmats.cpp"
	.text
	.section	.text$_ZN15MatrixFunctionsC1Ei,"x"
	.linkonce discard
	.align 2
	.globl	__ZN15MatrixFunctionsC1Ei
	.def	__ZN15MatrixFunctionsC1Ei;	.scl	2;	.type	32;	.endef
__ZN15MatrixFunctionsC1Ei:
LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2:
	.section	.text$_ZN15MatrixFunctions12addMatraciesEPiS0_S0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	.def	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_;	.scl	2;	.type	32;	.endef
__ZN15MatrixFunctions12addMatraciesEPiS0_S0_:
LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	%ecx, -24(%ebp)
	movl	$0, -8(%ebp)
	jmp	L3
L4:
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %ecx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	leal	0(,%eax,4), %ebx
	movl	8(%ebp), %eax
	addl	%ebx, %eax
	addl	%ecx, %edx
	movl	%edx, (%eax)
	addl	$1, -8(%ebp)
L3:
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, -8(%ebp)
	jl	L4
	nop
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE3:
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB4:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$84, %esp
	call	___main
	pxor	%xmm0, %xmm0
	movups	%xmm0, -48(%ebp)
	movd	%xmm0, -32(%ebp)
	movl	$1, -48(%ebp)
	pxor	%xmm0, %xmm0
	movups	%xmm0, -68(%ebp)
	movd	%xmm0, -52(%ebp)
	movl	$2, -68(%ebp)
	leal	-72(%ebp), %eax
	movl	$5, (%esp)
	movl	%eax, %ecx
	call	__ZN15MatrixFunctionsC1Ei
	subl	$4, %esp
	leal	-72(%ebp), %eax
	leal	-68(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-48(%ebp), %edx
	movl	%edx, 4(%esp)
	leal	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN15MatrixFunctions12addMatraciesEPiS0_S0_
	subl	$12, %esp
	movl	$1, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.def	___main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 14.2.0"

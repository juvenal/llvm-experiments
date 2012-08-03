	.file	"sample-64.ll"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	subl	$28, %esp
	movl	$0, 24(%esp)
	movl	32(%esp), %eax
	movl	%eax, 20(%esp)
	movl	36(%esp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 12(%esp)
	movl	$.L.str, (%esp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	12(%esp), %eax
	incl	%eax
	movl	%eax, 12(%esp)
	movl	%eax, 4(%esp)
	movl	$.L.str1, (%esp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	calll	printf
	cmpl	$10, 12(%esp)
	jle	.LBB0_2
# BB#3:
	xorl	%eax, %eax
	addl	$28, %esp
	ret
.Ltmp0:
	.size	main, .Ltmp0-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.L.str:
	.asciz	 "Starting count...\n"
	.size	.L.str, 19

	.type	.L.str1,@object         # @.str1
	.align	16
.L.str1:
	.asciz	 "Count at stage %d\n"
	.size	.L.str1, 19


	.section	".note.GNU-stack","",@progbits

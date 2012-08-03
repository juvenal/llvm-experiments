	.file	"sample-64.ll"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	subq	$24, %rsp
	movl	$0, 20(%rsp)
	movl	%edi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	$0, 4(%rsp)
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	4(%rsp), %esi
	incl	%esi
	movl	%esi, 4(%rsp)
	movl	$.L.str1, %edi
	xorb	%al, %al
	callq	printf
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, 4(%rsp)
	jle	.LBB0_2
# BB#3:
	xorl	%eax, %eax
	addq	$24, %rsp
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

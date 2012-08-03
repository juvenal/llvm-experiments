	.file	"sample-64.ll"
	.text
	.globl	main
	.align	2
	.type	main,@function
	.section	".opd","aw"     # @main
	.align 3
main:
	.quad .L.main,.TOC.@tocbase
	.previous
.L.main:
# BB#0:
	mflr 0
	std 0, 16(1)
	stdu 1, -144(1)
	li 5, 0
	stw 5, 140(1)
	stw 3, 136(1)
	std 4, 128(1)
	ld 3, .LC0@toc(2)
	stw 5, 124(1)
	bl printf
	nop
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lwz 3, 124(1)
	cmpwi 0, 3, 10
	bgt 0, .LBB0_3
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	lwz 4, 124(1)
	ld 3, .LC1@toc(2)
	addi 4, 4, 1
	stw 4, 124(1)
	lwz 4, 124(1)
	bl printf
	nop
	b .LBB0_1
.LBB0_3:
	li 3, 0
	addi 1, 1, 144
	ld 0, 16(1)
	mtlr 0
	blr 
.Ltmp0:
	.size	main, .Ltmp0-main

	.section	".toc","aw"
.LC0:
	.tc .L.str[TC],.L.str
.LC1:
	.tc .L.str1[TC],.L.str1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	4
.L.str:
	.asciz	 "Starting count...\n"
	.size	.L.str, 19

	.type	.L.str1,@object         # @.str1
	.align	4
.L.str1:
	.asciz	 "Count at stage %d\n"
	.size	.L.str1, 19



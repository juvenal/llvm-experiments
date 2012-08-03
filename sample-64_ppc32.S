	.file	"sample-64.ll"
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:
	mflr 0
	stw 0, 4(1)
	stwu 1, -48(1)
	stw 30, 40(1)
	li 5, 0
	stw 5, 36(1)
	stw 3, 32(1)
	stw 4, 24(1)
	stw 5, 20(1)
	lis 3, ha16(.L.str)
	la 3, lo16(.L.str)(3)
	creqv 0, 0, 0
	bl printf
	lis 3, ha16(.L.str1)
	la 30, lo16(.L.str1)(3)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lwz 3, 20(1)
	cmpwi 0, 3, 10
	bgt 0, .LBB0_3
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	lwz 3, 20(1)
	addi 4, 3, 1
	stw 4, 20(1)
	creqv 0, 0, 0
	mr 3, 30
	bl printf
	b .LBB0_1
.LBB0_3:
	li 3, 0
	lwz 30, 40(1)
	addi 1, 1, 48
	lwz 0, 4(1)
	mtlr 0
	blr 
.Ltmp0:
	.size	main, .Ltmp0-main

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



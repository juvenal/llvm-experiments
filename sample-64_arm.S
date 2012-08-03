	.syntax unified
	.eabi_attribute 6, 2
	.eabi_attribute 8, 1
	.eabi_attribute 9, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.file	"sample-64.ll"
	.text
	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
@ BB#0:
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	bic	sp, sp, #7
	mov	r2, #0
	str	r0, [sp, #12]
	ldr	r0, .LCPI0_0
	str	r2, [sp, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r4, .LCPI0_1
	bl	printf
	b	.LBB0_2
.LBB0_1:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #4]
	add	r1, r0, #1
	str	r1, [sp, #4]
	mov	r0, r4
	bl	printf
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #10
	ble	.LBB0_1
@ BB#3:
	mov	r0, #0
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
@ BB#4:
	.align	2
.LCPI0_0:
	.long	.L.str
	.align	2
.LCPI0_1:
	.long	.L.str1
.Ltmp0:
	.size	main, .Ltmp0-main

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.16,"aMS",%progbits,1
	.align	4
.L.str:
	.asciz	 "Starting count...\n"
	.size	.L.str, 19

	.type	.L.str1,%object         @ @.str1
	.align	4
.L.str1:
	.asciz	 "Count at stage %d\n"
	.size	.L.str1, 19



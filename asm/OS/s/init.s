	.file	1 "init.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	init_all
	.set	nomips16
	.set	nomicromips
	.ent	init_all
	.type	init_all, @function
init_all:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$2,-1342177280			# 0xffffffffb0000000
	addiu	$2,$2,8192
	li	$3,-1342177280			# 0xffffffffb0000000
	addiu	$3,$3,12992
$L2:
	sw	$0,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L2
	nop

	li	$2,-1342177280			# 0xffffffffb0000000
	li	$3,1			# 0x1
	sw	$3,0($2)
	li	$3,20905984			# 0x13f0000
	sw	$3,4($2)
	sw	$0,12($2)
	li	$3,-1437270016			# 0xffffffffaa550000
	addiu	$3,$3,21930
	jal	init_keybuf
	sw	$3,16($2)

	jal	init_timer
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	init_all
	.size	init_all, .-init_all
	.ident	"GCC: (GNU) 7.2.0"

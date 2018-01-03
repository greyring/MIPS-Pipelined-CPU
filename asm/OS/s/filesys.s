	.file	1 "filesys.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	read_
	.set	nomips16
	.set	nomicromips
	.ent	read_
	.type	read_, @function
read_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$2,$5,16
	ori	$2,$2,0x20
	li	$3,-1342177280			# 0xffffffffb0000000
	sw	$2,24($3)
$L2:
	lw	$2,24($3)
	nop
	andi	$2,$2,0x40
	beq	$2,$0,$L2
	li	$2,-1342046208			# 0xffffffffb0020000

	li	$5,-1342046208			# 0xffffffffb0020000
	addiu	$5,$5,512
$L3:
	lw	$3,0($2)
	nop
	sw	$3,0($4)
	addiu	$2,$2,4
	bne	$2,$5,$L3
	addiu	$4,$4,4

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	read_
	.size	read_, .-read_
	.align	2
	.globl	write_
	.set	nomips16
	.set	nomicromips
	.ent	write_
	.type	write_, @function
write_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342046208			# 0xffffffffb0020000
	li	$6,-1342046208			# 0xffffffffb0020000
	addiu	$6,$6,512
$L7:
	lw	$3,0($4)
	nop
	sw	$3,0($2)
	addiu	$2,$2,4
	bne	$2,$6,$L7
	addiu	$4,$4,4

	sll	$2,$5,16
	ori	$2,$2,0x30
	li	$3,-1342177280			# 0xffffffffb0000000
	sw	$2,24($3)
$L8:
	lw	$2,24($3)
	nop
	andi	$2,$2,0x40
	beq	$2,$0,$L8
	nop

	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	write_
	.size	write_, .-write_
	.ident	"GCC: (GNU) 7.2.0"

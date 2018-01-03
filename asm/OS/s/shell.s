	.file	1 "shell.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	shell
	.set	nomips16
	.set	nomicromips
	.ent	shell
	.type	shell, @function
shell:
	.frame	$sp,816,$31		# vars= 768, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-816
	sw	$31,812($sp)
	sw	$22,808($sp)
	sw	$21,804($sp)
	sw	$20,800($sp)
	sw	$19,796($sp)
	sw	$18,792($sp)
	sw	$17,788($sp)
	sw	$16,784($sp)
	addiu	$17,$sp,272
	move	$5,$0
	jal	read_disk
	move	$4,$17

	move	$21,$17
	addiu	$16,$sp,784
$L2:
	lbu	$4,0($17)
	jal	printHex
	addiu	$17,$17,1

	bne	$17,$16,$L2
	nop

	jal	put_char
	li	$4,90			# 0x5a

	sb	$0,783($sp)
	move	$5,$0
	jal	write_disk
	addiu	$4,$sp,272

	lui	$19,%hi(TIP)
	addiu	$19,$19,%lo(TIP)
	lui	$18,%hi(CLS)
	addiu	$18,$18,%lo(CLS)
	lui	$20,%hi(LOAD)
	addiu	$20,$20,%lo(LOAD)
	b	$L3
	lui	$22,%hi(UNKNOWN)

$L4:
	move	$5,$20
	jal	strcmp_short
	addiu	$4,$sp,16

	beq	$2,$0,$L11
	move	$5,$0

	jal	put_string
	addiu	$4,$22,%lo(UNKNOWN)

$L3:
	jal	put_string
	move	$4,$19

	li	$5,128			# 0x80
	jal	gets
	addiu	$4,$sp,16

	li	$6,6			# 0x6
	move	$5,$18
	jal	strcmp_short
	addiu	$4,$sp,16

	bne	$2,$0,$L4
	li	$6,5			# 0x5

	jal	clear_screen
	nop

	b	$L3
	nop

$L11:
	jal	read_disk
	addiu	$4,$sp,272

	move	$16,$21
$L7:
	lbu	$4,0($16)
	jal	printHex
	addiu	$16,$16,1

	bne	$16,$17,$L7
	nop

	jal	put_char
	li	$4,10			# 0xa

	b	$L3
	nop

	.set	macro
	.set	reorder
	.end	shell
	.size	shell, .-shell
	.globl	LOAD
	.section	.data,"aw",@progbits
	.align	2
	.type	LOAD, @object
	.size	LOAD, 10
LOAD:
	.half	108
	.half	111
	.half	97
	.half	100
	.half	0
	.globl	CLS
	.align	2
	.type	CLS, @object
	.size	CLS, 12
CLS:
	.half	99
	.half	108
	.half	101
	.half	97
	.half	114
	.half	0
	.globl	UNKNOWN
	.align	2
	.type	UNKNOWN, @object
	.size	UNKNOWN, 18
UNKNOWN:
	.half	85
	.half	110
	.half	107
	.half	110
	.half	111
	.half	119
	.half	110
	.half	10
	.half	0
	.globl	TIP
	.align	2
	.type	TIP, @object
	.size	TIP, 6
TIP:
	.half	36
	.half	62
	.half	0
	.ident	"GCC: (GNU) 7.2.0"

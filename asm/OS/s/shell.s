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
	.frame	$sp,288,$31		# vars= 256, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-288
	sw	$31,284($sp)
	sw	$18,280($sp)
	sw	$17,276($sp)
	sw	$16,272($sp)
	lui	$17,%hi(TIP)
	addiu	$17,$17,%lo(TIP)
	lui	$16,%hi(CLS)
	addiu	$16,$16,%lo(CLS)
	lui	$18,%hi(UNKNOWN)
	b	$L2
	addiu	$18,$18,%lo(UNKNOWN)

$L3:
	jal	put_string
	move	$4,$18

$L2:
	jal	put_string
	move	$4,$17

	li	$5,128			# 0x80
	jal	gets
	addiu	$4,$sp,16

	li	$6,6			# 0x6
	move	$5,$16
	jal	strcmp_short
	addiu	$4,$sp,16

	bne	$2,$0,$L3
	nop

	jal	clear_screen
	nop

	b	$L2
	nop

	.set	macro
	.set	reorder
	.end	shell
	.size	shell, .-shell
	.globl	CLS
	.section	.data,"aw",@progbits
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

	.file	1 "utils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	kstrcmp_short
	.set	nomips16
	.set	nomicromips
	.ent	kstrcmp_short
	.type	kstrcmp_short, @function
kstrcmp_short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L5
	nop

	lhu	$3,0($5)
	lhu	$2,0($6)
	nop
	bne	$3,$2,$L6
	addiu	$5,$5,2

	addiu	$6,$6,2
	move	$3,$0
$L3:
	addiu	$3,$3,1
	beq	$4,$3,$L8
	nop

	lhu	$8,0($5)
	lhu	$7,0($6)
	addiu	$5,$5,2
	beq	$8,$7,$L3
	addiu	$6,$6,2

	jr	$31
	li	$2,1			# 0x1

$L8:
	jr	$31
	move	$2,$0

$L5:
	jr	$31
	move	$2,$4

$L6:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	kstrcmp_short
	.size	kstrcmp_short, .-kstrcmp_short
	.align	2
	.globl	kstrcmp_char
	.set	nomips16
	.set	nomicromips
	.ent	kstrcmp_char
	.type	kstrcmp_char, @function
kstrcmp_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$4,$0,$L13
	nop

	lbu	$3,0($5)
	lbu	$2,0($6)
	nop
	bne	$3,$2,$L14
	addiu	$3,$5,1

	addiu	$6,$6,1
	addu	$4,$5,$4
$L11:
	beq	$3,$4,$L16
	nop

	lbu	$8,0($3)
	lbu	$7,0($6)
	addiu	$3,$3,1
	beq	$8,$7,$L11
	addiu	$6,$6,1

	jr	$31
	li	$2,1			# 0x1

$L16:
	jr	$31
	move	$2,$0

$L13:
	jr	$31
	move	$2,$4

$L14:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	kstrcmp_char
	.size	kstrcmp_char, .-kstrcmp_char
	.align	2
	.globl	kstrlen_short
	.set	nomips16
	.set	nomicromips
	.ent	kstrlen_short
	.type	kstrlen_short, @function
kstrlen_short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lhu	$2,0($4)
	nop
	beq	$2,$0,$L20
	addiu	$4,$4,2

	move	$2,$0
$L19:
	addiu	$4,$4,2
	lhu	$3,-2($4)
	nop
	bne	$3,$0,$L19
	addiu	$2,$2,1

	jr	$31
	nop

$L20:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	kstrlen_short
	.size	kstrlen_short, .-kstrlen_short
	.align	2
	.globl	kstrlen_char
	.set	nomips16
	.set	nomicromips
	.ent	kstrlen_char
	.type	kstrlen_char, @function
kstrlen_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($4)
	nop
	beq	$2,$0,$L25
	addiu	$4,$4,1

	move	$2,$0
$L24:
	addiu	$4,$4,1
	lbu	$3,-1($4)
	nop
	bne	$3,$0,$L24
	addiu	$2,$2,1

	jr	$31
	nop

$L25:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	kstrlen_char
	.size	kstrlen_char, .-kstrlen_char
	.ident	"GCC: (GNU) 7.2.0"

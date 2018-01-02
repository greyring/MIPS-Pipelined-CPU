	.file	1 "kutils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	kput_char
	.set	nomips16
	.set	nomicromips
	.ent	kput_char
	.type	kput_char, @function
kput_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sll	$5,$5,2
	li	$2,-1342177280			# 0xffffffffb0000000
	addu	$5,$2,$5
	li	$2,1056964608			# 0x3f000000
	or	$4,$4,$2
	jr	$31
	sw	$4,8192($5)

	.set	macro
	.set	reorder
	.end	kput_char
	.size	kput_char, .-kput_char
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
	beq	$6,$0,$L6
	nop

	lhu	$3,0($4)
	lhu	$2,0($5)
	nop
	bne	$3,$2,$L7
	addiu	$4,$4,2

	addiu	$5,$5,2
	move	$3,$0
$L4:
	addiu	$3,$3,1
	beq	$6,$3,$L9
	nop

	lhu	$8,0($4)
	lhu	$7,0($5)
	addiu	$4,$4,2
	beq	$8,$7,$L4
	addiu	$5,$5,2

	jr	$31
	li	$2,1			# 0x1

$L9:
	jr	$31
	move	$2,$0

$L6:
	jr	$31
	move	$2,$6

$L7:
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
	beq	$6,$0,$L14
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	bne	$3,$2,$L15
	addiu	$3,$4,1

	addiu	$5,$5,1
	addu	$6,$4,$6
$L12:
	beq	$3,$6,$L17
	nop

	lbu	$8,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	beq	$8,$7,$L12
	addiu	$5,$5,1

	jr	$31
	li	$2,1			# 0x1

$L17:
	jr	$31
	move	$2,$0

$L14:
	jr	$31
	move	$2,$6

$L15:
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
	beq	$2,$0,$L21
	addiu	$4,$4,2

	move	$2,$0
$L20:
	addiu	$4,$4,2
	lhu	$3,-2($4)
	nop
	bne	$3,$0,$L20
	addiu	$2,$2,1

	jr	$31
	nop

$L21:
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
	beq	$2,$0,$L26
	addiu	$4,$4,1

	move	$2,$0
$L25:
	addiu	$4,$4,1
	lbu	$3,-1($4)
	nop
	bne	$3,$0,$L25
	addiu	$2,$2,1

	jr	$31
	nop

$L26:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	kstrlen_char
	.size	kstrlen_char, .-kstrlen_char
	.align	2
	.globl	kmemcpy
	.set	nomips16
	.set	nomicromips
	.ent	kmemcpy
	.type	kmemcpy, @function
kmemcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L32
	move	$2,$5

	addu	$5,$5,$6
$L30:
	lbu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L30
	addiu	$4,$4,1

$L32:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	kmemcpy
	.size	kmemcpy, .-kmemcpy
	.align	2
	.globl	kshort2char
	.set	nomips16
	.set	nomicromips
	.ent	kshort2char
	.type	kshort2char, @function
kshort2char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L37
	move	$2,$5

	sll	$6,$6,1
	addu	$5,$5,$6
$L35:
	lhu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,2
	bne	$2,$5,$L35
	addiu	$4,$4,1

$L37:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	kshort2char
	.size	kshort2char, .-kshort2char
	.align	2
	.globl	kchar2short
	.set	nomips16
	.set	nomicromips
	.ent	kchar2short
	.type	kchar2short, @function
kchar2short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L42
	move	$2,$4

	sll	$6,$6,1
	addu	$4,$4,$6
$L40:
	lbu	$3,0($5)
	nop
	sh	$3,0($2)
	addiu	$2,$2,2
	bne	$2,$4,$L40
	addiu	$5,$5,1

$L42:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	kchar2short
	.size	kchar2short, .-kchar2short
	.ident	"GCC: (GNU) 7.2.0"

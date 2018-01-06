	.file	1 "input.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	ascii2hex
	.type	ascii2hex, @function
ascii2hex:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$3,$4,-48
	andi	$3,$3,0xffff
	sltu	$3,$3,10
	bne	$3,$0,$L6
	nop

	addiu	$2,$4,-97
	andi	$2,$2,0xffff
	sltu	$2,$2,6
	bne	$2,$0,$L7
	nop

	addiu	$2,$4,-65
	andi	$2,$2,0xffff
	sltu	$2,$2,6
	beq	$2,$0,$L5
	nop

	jr	$31
	addiu	$2,$4,-55

$L6:
	jr	$31
	addiu	$2,$4,-48

$L7:
	jr	$31
	addiu	$2,$4,-87

$L5:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	ascii2hex
	.size	ascii2hex, .-ascii2hex
	.align	2
	.globl	init_input
	.set	nomips16
	.set	nomicromips
	.ent	init_input
	.type	init_input, @function
init_input:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$2,%hi(input_state)
	sw	$0,%lo(input_state)($2)
	lui	$3,%hi(buffer)
	addiu	$2,$3,%lo(buffer)
	sh	$0,6($2)
	sh	$0,4($2)
	sh	$0,2($2)
	sh	$0,%lo(buffer)($3)
	lui	$2,%hi(p_buf)
	sw	$0,%lo(p_buf)($2)
	li	$5,1160			# 0x488
	jal	kput_char
	li	$4,143			# 0x8f

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	init_input
	.size	init_input, .-init_input
	.align	2
	.globl	input_key
	.set	nomips16
	.set	nomicromips
	.ent	input_key
	.type	input_key, @function
input_key:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	li	$2,18			# 0x12
	beq	$5,$2,$L30
	sw	$16,20($sp)

$L11:
	beq	$4,$0,$L14
	lui	$2,%hi(key_state+2)

	lbu	$2,%lo(key_state+2)($2)
	nop
	andi	$2,$2,0x4
	bne	$2,$0,$L15
	lui	$2,%hi(key_state+11)

	lbu	$2,%lo(key_state+11)($2)
	nop
	andi	$2,$2,0x2
	beq	$2,$0,$L16
	lui	$2,%hi(scantoascii_uppercase)

$L15:
	sll	$5,$5,1
	lui	$2,%hi(scantoascii_lowercase)
	addiu	$2,$2,%lo(scantoascii_lowercase)
	addu	$5,$5,$2
	lhu	$16,0($5)
	lui	$2,%hi(input_state)
$L34:
	lw	$2,%lo(input_state)($2)
	nop
	beq	$2,$0,$L13
	addiu	$2,$16,-48

	andi	$2,$2,0xffff
	sltu	$2,$2,10
	bne	$2,$0,$L20
	addiu	$2,$16,-97

	andi	$2,$2,0xffff
	sltu	$2,$2,6
	bne	$2,$0,$L21
	addiu	$2,$16,-65

	andi	$2,$2,0xffff
	sltu	$2,$2,6
	bne	$2,$0,$L37
	lui	$2,%hi(p_buf)

	li	$2,10			# 0xa
	beq	$16,$2,$L31
	li	$2,8			# 0x8

	bne	$16,$2,$L13
	lui	$2,%hi(p_buf)

	lw	$2,%lo(p_buf)($2)
	nop
	beq	$2,$0,$L13
	li	$3,4			# 0x4

	beq	$2,$3,$L32
	li	$5,1165			# 0x48d

	lui	$16,%hi(p_buf)
$L36:
	lw	$5,%lo(p_buf)($16)
	nop
	addiu	$5,$5,1160
	jal	kput_char
	move	$4,$0

	lw	$2,%lo(p_buf)($16)
	nop
	addiu	$2,$2,-1
	sw	$2,%lo(p_buf)($16)
	sll	$2,$2,1
	lui	$3,%hi(buffer)
	addiu	$3,$3,%lo(buffer)
	addu	$2,$2,$3
	sh	$0,0($2)
	b	$L13
	li	$16,65535			# 0xffff

$L30:
	lui	$2,%hi(key_state+2)
	lbu	$2,%lo(key_state+2)($2)
	nop
	andi	$2,$2,0x10
	beq	$2,$0,$L11
	lui	$2,%hi(input_state)

	lw	$2,%lo(input_state)($2)
	nop
	bne	$2,$0,$L12
	lui	$2,%hi(input_state)

	li	$3,1			# 0x1
	sw	$3,%lo(input_state)($2)
	li	$5,1160			# 0x488
	jal	kput_char
	li	$4,144			# 0x90

	b	$L13
	li	$16,65535			# 0xffff

$L12:
	sw	$0,%lo(input_state)($2)
	lui	$3,%hi(buffer)
	addiu	$2,$3,%lo(buffer)
	sh	$0,6($2)
	sh	$0,4($2)
	sh	$0,2($2)
	sh	$0,%lo(buffer)($3)
	lui	$2,%hi(p_buf)
	sw	$0,%lo(p_buf)($2)
	li	$5,1160			# 0x488
	jal	kput_char
	li	$4,143			# 0x8f

	li	$5,1161			# 0x489
	jal	kput_char
	move	$4,$0

	li	$5,1162			# 0x48a
	jal	kput_char
	move	$4,$0

	li	$5,1163			# 0x48b
	jal	kput_char
	move	$4,$0

	li	$5,1164			# 0x48c
	jal	kput_char
	move	$4,$0

	li	$5,1165			# 0x48d
	jal	kput_char
	move	$4,$0

	b	$L13
	li	$16,65535			# 0xffff

$L16:
	sll	$5,$5,1
	addiu	$2,$2,%lo(scantoascii_uppercase)
	addu	$5,$5,$2
	lhu	$16,0($5)
	b	$L34
	lui	$2,%hi(input_state)

$L14:
	lbu	$2,%lo(key_state+2)($2)
	nop
	andi	$2,$2,0x4
	bne	$2,$0,$L18
	nop

	lui	$2,%hi(key_state+11)
	lbu	$2,%lo(key_state+11)($2)
	nop
	andi	$2,$2,0x2
	beq	$2,$0,$L19
	nop

$L18:
	sll	$5,$5,1
	lui	$2,%hi(scantoascii_uppercase)
	addiu	$2,$2,%lo(scantoascii_uppercase)
	addu	$5,$5,$2
	lhu	$16,0($5)
	b	$L34
	lui	$2,%hi(input_state)

$L19:
	sll	$5,$5,1
	lui	$2,%hi(scantoascii_lowercase)
	addiu	$2,$2,%lo(scantoascii_lowercase)
	addu	$5,$5,$2
	lhu	$16,0($5)
	b	$L34
	lui	$2,%hi(input_state)

$L20:
	andi	$2,$2,0xffff
	sltu	$2,$2,6
	beq	$2,$0,$L37
	lui	$2,%hi(p_buf)

$L21:
	addiu	$16,$16,-32
	andi	$16,$16,0xffff
	lui	$2,%hi(p_buf)
$L37:
	lw	$5,%lo(p_buf)($2)
	nop
	sltu	$2,$5,4
	beq	$2,$0,$L26
	sll	$2,$5,1

	lui	$3,%hi(buffer)
	addiu	$3,$3,%lo(buffer)
	addu	$2,$2,$3
	sh	$16,0($2)
	lui	$17,%hi(p_buf)
	addiu	$2,$5,1
	sw	$2,%lo(p_buf)($17)
	addiu	$5,$5,1161
	jal	kput_char
	move	$4,$16

	lw	$3,%lo(p_buf)($17)
	li	$2,4			# 0x4
	beq	$3,$2,$L33
	lui	$17,%hi(buffer)

	b	$L13
	li	$16,65535			# 0xffff

$L33:
	lhu	$4,%lo(buffer)($17)
	jal	ascii2hex
	addiu	$17,$17,%lo(buffer)

	lhu	$4,2($17)
	jal	ascii2hex
	move	$16,$2

	sll	$16,$16,12
	sll	$2,$2,8
	or	$16,$16,$2
	lhu	$4,4($17)
	jal	ascii2hex
	andi	$16,$16,0xffff

	lhu	$4,6($17)
	jal	ascii2hex
	move	$18,$2

	sll	$18,$18,4
	or	$2,$16,$2
	or	$2,$18,$2
	li	$5,1165			# 0x48d
	jal	kput_char
	andi	$4,$2,0xffff

	b	$L13
	li	$16,65535			# 0xffff

$L31:
	lui	$2,%hi(p_buf)
	lw	$3,%lo(p_buf)($2)
	li	$2,4			# 0x4
	bne	$3,$2,$L13
	lui	$19,%hi(buffer)

	lhu	$4,%lo(buffer)($19)
	jal	ascii2hex
	addiu	$17,$19,%lo(buffer)

	lhu	$4,2($17)
	jal	ascii2hex
	move	$16,$2

	sll	$16,$16,12
	sll	$2,$2,8
	or	$16,$16,$2
	lhu	$4,4($17)
	jal	ascii2hex
	andi	$16,$16,0xffff

	lhu	$4,6($17)
	jal	ascii2hex
	move	$18,$2

	sll	$18,$18,4
	or	$16,$16,$2
	or	$16,$18,$16
	andi	$16,$16,0xffff
	lui	$2,%hi(p_buf)
	sw	$0,%lo(p_buf)($2)
	sh	$0,6($17)
	sh	$0,4($17)
	sh	$0,2($17)
	sh	$0,%lo(buffer)($19)
	li	$5,1161			# 0x489
	jal	kput_char
	move	$4,$0

	li	$5,1162			# 0x48a
	jal	kput_char
	move	$4,$0

	li	$5,1163			# 0x48b
	jal	kput_char
	move	$4,$0

	li	$5,1164			# 0x48c
	jal	kput_char
	move	$4,$0

	li	$5,1165			# 0x48d
	jal	kput_char
	move	$4,$0

	b	$L35
	move	$2,$16

$L32:
	jal	kput_char
	move	$4,$0

	b	$L36
	lui	$16,%hi(p_buf)

$L26:
	li	$16,65535			# 0xffff
$L13:
	move	$2,$16
$L35:
	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	input_key
	.size	input_key, .-input_key
	.align	2
	.globl	input_skey
	.set	nomips16
	.set	nomicromips
	.ent	input_skey
	.type	input_skey, @function
input_skey:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,113			# 0x71
	beq	$4,$2,$L40
	nop

	jr	$31
	li	$2,65535			# 0xffff

$L40:
	jr	$31
	li	$2,127			# 0x7f

	.set	macro
	.set	reorder
	.end	input_skey
	.size	input_skey, .-input_skey
	.section	.data,"aw",@progbits
	.align	2
	.type	p_buf, @object
	.size	p_buf, 4
p_buf:
	.space	4
	.align	2
	.type	buffer, @object
	.size	buffer, 8
buffer:
	.space	8
	.align	2
	.type	input_state, @object
	.size	input_state, 4
input_state:
	.space	4
	.align	2
	.type	scantoascii_lowercase, @object
	.size	scantoascii_lowercase, 256
scantoascii_lowercase:
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	9
	.half	96
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	113
	.half	49
	.half	-1
	.half	-1
	.half	-1
	.half	122
	.half	115
	.half	97
	.half	119
	.half	50
	.half	-1
	.half	-1
	.half	99
	.half	120
	.half	100
	.half	101
	.half	52
	.half	51
	.half	-1
	.half	-1
	.half	32
	.half	118
	.half	102
	.half	116
	.half	114
	.half	53
	.half	-1
	.half	-1
	.half	110
	.half	98
	.half	104
	.half	103
	.half	121
	.half	54
	.half	-1
	.half	-1
	.half	-1
	.half	109
	.half	106
	.half	117
	.half	55
	.half	56
	.half	-1
	.half	-1
	.half	44
	.half	107
	.half	105
	.half	111
	.half	48
	.half	57
	.half	-1
	.half	-1
	.half	46
	.half	47
	.half	108
	.half	59
	.half	112
	.half	45
	.half	-1
	.half	-1
	.half	-1
	.half	39
	.half	-1
	.half	91
	.half	61
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	10
	.half	93
	.half	-1
	.half	92
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	8
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	27
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.align	2
	.type	scantoascii_uppercase, @object
	.size	scantoascii_uppercase, 256
scantoascii_uppercase:
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	9
	.half	126
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	81
	.half	33
	.half	-1
	.half	-1
	.half	-1
	.half	90
	.half	83
	.half	65
	.half	87
	.half	64
	.half	-1
	.half	-1
	.half	67
	.half	88
	.half	68
	.half	69
	.half	36
	.half	35
	.half	-1
	.half	-1
	.half	32
	.half	86
	.half	70
	.half	84
	.half	82
	.half	37
	.half	-1
	.half	-1
	.half	78
	.half	66
	.half	72
	.half	71
	.half	89
	.half	94
	.half	-1
	.half	-1
	.half	-1
	.half	77
	.half	74
	.half	85
	.half	38
	.half	42
	.half	-1
	.half	-1
	.half	60
	.half	75
	.half	73
	.half	79
	.half	41
	.half	40
	.half	-1
	.half	-1
	.half	62
	.half	63
	.half	76
	.half	58
	.half	80
	.half	95
	.half	-1
	.half	-1
	.half	-1
	.half	34
	.half	-1
	.half	123
	.half	43
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	10
	.half	125
	.half	-1
	.half	124
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	8
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	27
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.half	-1
	.ident	"GCC: (GNU) 7.2.0"

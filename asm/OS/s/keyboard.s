	.file	1 "keyboard.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	init_keybuf
	.set	nomips16
	.set	nomicromips
	.ent	init_keybuf
	.type	init_keybuf, @function
init_keybuf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(keybuf_head)
	li	$3,31			# 0x1f
	sw	$3,%lo(keybuf_head)($2)
	lui	$2,%hi(keybuf_tail)
	jr	$31
	sw	$0,%lo(keybuf_tail)($2)

	.set	macro
	.set	reorder
	.end	init_keybuf
	.size	init_keybuf, .-init_keybuf
	.align	2
	.globl	get_from_keybuf
	.set	nomips16
	.set	nomicromips
	.ent	get_from_keybuf
	.type	get_from_keybuf, @function
get_from_keybuf:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(keybuf_tail)
	lw	$3,%lo(keybuf_tail)($2)
	lui	$2,%hi(keybuf_head)
	lw	$2,%lo(keybuf_head)($2)
	nop
	addiu	$2,$2,1
	andi	$2,$2,0x1f
	beq	$2,$3,$L4
	lui	$4,%hi(keybuf)

	sll	$2,$3,1
	addiu	$4,$4,%lo(keybuf)
	addu	$2,$2,$4
	lbu	$2,1($2)
	addiu	$3,$3,1
	andi	$3,$3,0x1f
	lui	$4,%hi(keybuf_tail)
	jr	$31
	sw	$3,%lo(keybuf_tail)($4)

$L4:
	jr	$31
	li	$2,255			# 0xff

	.set	macro
	.set	reorder
	.end	get_from_keybuf
	.size	get_from_keybuf, .-get_from_keybuf
	.align	2
	.globl	handle_keyboard
	.set	nomips16
	.set	nomicromips
	.ent	handle_keyboard
	.type	handle_keyboard, @function
handle_keyboard:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	lbu	$3,20($2)
	lui	$2,%hi(keyboard_state)
	lw	$2,%lo(keyboard_state)($2)
	li	$4,1			# 0x1
	beq	$2,$4,$L7
	slt	$4,$2,2

	bne	$4,$0,$L25
	li	$4,2			# 0x2

	beq	$2,$4,$L10
	li	$4,3			# 0x3

	bne	$2,$4,$L36
	srl	$4,$3,3

	lui	$2,%hi(skey_state)
	addiu	$2,$2,%lo(skey_state)
	addu	$4,$4,$2
	andi	$3,$3,0x7
	li	$2,1			# 0x1
	sll	$3,$2,$3
	nor	$3,$0,$3
	lbu	$2,0($4)
	nop
	and	$3,$3,$2
	sb	$3,0($4)
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

$L25:
	bne	$2,$0,$L36
	li	$2,224			# 0xe0

	beq	$3,$2,$L28
	li	$2,240			# 0xf0

	beq	$3,$2,$L29
	srl	$2,$3,3

	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$4,%hi(key_state)
	addiu	$4,$4,%lo(key_state)
	addu	$2,$2,$4
	andi	$5,$3,0x7
	li	$4,1			# 0x1
	sll	$4,$4,$5
	lbu	$5,0($2)
	nop
	or	$4,$4,$5
	sb	$4,0($2)
	li	$2,88			# 0x58
	beq	$3,$2,$L30
	lui	$2,%hi(capslock)

$L14:
	lui	$4,%hi(key_state)
$L35:
	addiu	$4,$4,%lo(key_state)
	lbu	$2,2($4)
	nop
	andi	$2,$2,0x4
	lbu	$4,11($4)
	nop
	andi	$4,$4,0x2
	or	$2,$2,$4
	lui	$4,%hi(capslock)
	lw	$4,%lo(capslock)($4)
	nop
	or	$2,$2,$4
	beq	$2,$0,$L17
	lui	$2,%hi(scantoascii_lowercase)

	lui	$2,%hi(scantoascii_uppercase)
	addiu	$2,$2,%lo(scantoascii_uppercase)
	addu	$3,$2,$3
	lbu	$5,0($3)
	nop
	andi	$4,$5,0xffff
	li	$2,255			# 0xff
	beq	$4,$2,$L18
	lui	$2,%hi(keybuf_head)

	lw	$2,%lo(keybuf_head)($2)
	nop
	addiu	$3,$2,2
	andi	$3,$3,0x1f
	lui	$6,%hi(keybuf_tail)
	lw	$6,%lo(keybuf_tail)($6)
	nop
	beq	$3,$6,$L18
	addiu	$2,$2,1

	andi	$2,$2,0x1f
	lui	$3,%hi(keybuf_head)
	sw	$2,%lo(keybuf_head)($3)
	sll	$2,$2,1
	lui	$3,%hi(keybuf)
	addiu	$3,$3,%lo(keybuf)
	addu	$2,$2,$3
	jal	_put_char
	sh	$5,0($2)

$L18:
	lui	$2,%hi(keyboard_state)
$L34:
	sw	$0,%lo(keyboard_state)($2)
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L36:
	jr	$31
	nop

$L28:
	lui	$2,%hi(keyboard_state)
	li	$3,2			# 0x2
	jr	$31
	sw	$3,%lo(keyboard_state)($2)

$L29:
	lui	$2,%hi(keyboard_state)
	li	$3,1			# 0x1
	jr	$31
	sw	$3,%lo(keyboard_state)($2)

$L30:
	lw	$2,%lo(capslock)($2)
	nop
	beq	$2,$0,$L15
	li	$4,2			# 0x2

	bne	$2,$4,$L35
	lui	$4,%hi(key_state)

	lui	$2,%hi(capslock)
	b	$L35
	sw	$0,%lo(capslock)($2)

$L15:
	lui	$2,%hi(capslock)
	li	$4,1			# 0x1
	b	$L14
	sw	$4,%lo(capslock)($2)

$L17:
	addiu	$2,$2,%lo(scantoascii_lowercase)
	addu	$3,$2,$3
	lbu	$5,0($3)
	nop
	andi	$4,$5,0xffff
	li	$2,255			# 0xff
	beq	$4,$2,$L18
	lui	$2,%hi(keybuf_head)

	lw	$2,%lo(keybuf_head)($2)
	nop
	addiu	$3,$2,2
	andi	$3,$3,0x1f
	lui	$6,%hi(keybuf_tail)
	lw	$6,%lo(keybuf_tail)($6)
	nop
	beq	$3,$6,$L18
	addiu	$2,$2,1

	andi	$2,$2,0x1f
	lui	$3,%hi(keybuf_head)
	sw	$2,%lo(keybuf_head)($3)
	sll	$2,$2,1
	lui	$3,%hi(keybuf)
	addiu	$3,$3,%lo(keybuf)
	addu	$2,$2,$3
	jal	_put_char
	sh	$5,0($2)

	b	$L34
	lui	$2,%hi(keyboard_state)

$L7:
	srl	$4,$3,3
	lui	$2,%hi(key_state)
	addiu	$2,$2,%lo(key_state)
	addu	$4,$4,$2
	andi	$5,$3,0x7
	li	$2,1			# 0x1
	sll	$2,$2,$5
	nor	$2,$0,$2
	lbu	$5,0($4)
	nop
	and	$2,$2,$5
	sb	$2,0($4)
	li	$2,88			# 0x58
	beq	$3,$2,$L31
	lui	$2,%hi(capslock)

$L19:
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

$L31:
	lw	$3,%lo(capslock)($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L32
	lui	$2,%hi(capslock)

	b	$L19
	sw	$0,%lo(capslock)($2)

$L32:
	li	$3,2			# 0x2
	b	$L19
	sw	$3,%lo(capslock)($2)

$L10:
	li	$2,240			# 0xf0
	beq	$3,$2,$L33
	srl	$2,$3,3

	lui	$4,%hi(skey_state)
	addiu	$4,$4,%lo(skey_state)
	addu	$2,$2,$4
	andi	$4,$3,0x7
	li	$3,1			# 0x1
	sll	$3,$3,$4
	lbu	$4,0($2)
	nop
	or	$3,$3,$4
	sb	$3,0($2)
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

$L33:
	lui	$2,%hi(keyboard_state)
	li	$3,3			# 0x3
	jr	$31
	sw	$3,%lo(keyboard_state)($2)

	.set	macro
	.set	reorder
	.end	handle_keyboard
	.size	handle_keyboard, .-handle_keyboard
	.globl	keybuf_tail
	.section	.data,"aw",@progbits
	.align	2
	.type	keybuf_tail, @object
	.size	keybuf_tail, 4
keybuf_tail:
	.space	4
	.globl	keybuf_head
	.align	2
	.type	keybuf_head, @object
	.size	keybuf_head, 4
keybuf_head:
	.space	4
	.globl	keybuf
	.align	2
	.type	keybuf, @object
	.size	keybuf, 64
keybuf:
	.space	64
	.align	2
	.type	capslock, @object
	.size	capslock, 4
capslock:
	.space	4
	.align	2
	.type	keyboard_state, @object
	.size	keyboard_state, 4
keyboard_state:
	.word	1
	.globl	skey_state
	.align	2
	.type	skey_state, @object
	.size	skey_state, 16
skey_state:
	.space	16
	.globl	key_state
	.align	2
	.type	key_state, @object
	.size	key_state, 16
key_state:
	.space	16
	.globl	scantoascii_lowercase
	.data
	.align	2
	.type	scantoascii_lowercase, @object
	.size	scantoascii_lowercase, 128
scantoascii_lowercase:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	9
	.byte	96
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	113
	.byte	49
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	122
	.byte	115
	.byte	97
	.byte	119
	.byte	50
	.byte	-1
	.byte	-1
	.byte	99
	.byte	120
	.byte	100
	.byte	101
	.byte	52
	.byte	51
	.byte	-1
	.byte	-1
	.byte	32
	.byte	118
	.byte	102
	.byte	116
	.byte	114
	.byte	53
	.byte	-1
	.byte	-1
	.byte	110
	.byte	98
	.byte	104
	.byte	103
	.byte	121
	.byte	54
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	109
	.byte	106
	.byte	117
	.byte	55
	.byte	56
	.byte	-1
	.byte	-1
	.byte	44
	.byte	107
	.byte	105
	.byte	111
	.byte	48
	.byte	57
	.byte	-1
	.byte	-1
	.byte	46
	.byte	47
	.byte	108
	.byte	59
	.byte	112
	.byte	45
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	39
	.byte	-1
	.byte	91
	.byte	61
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	93
	.byte	-1
	.byte	92
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	27
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.globl	scantoascii_uppercase
	.align	2
	.type	scantoascii_uppercase, @object
	.size	scantoascii_uppercase, 128
scantoascii_uppercase:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	9
	.byte	126
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	81
	.byte	33
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	90
	.byte	83
	.byte	65
	.byte	87
	.byte	64
	.byte	-1
	.byte	-1
	.byte	67
	.byte	88
	.byte	68
	.byte	69
	.byte	36
	.byte	35
	.byte	-1
	.byte	-1
	.byte	32
	.byte	86
	.byte	70
	.byte	84
	.byte	82
	.byte	37
	.byte	-1
	.byte	-1
	.byte	78
	.byte	66
	.byte	72
	.byte	71
	.byte	89
	.byte	94
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	77
	.byte	74
	.byte	85
	.byte	38
	.byte	42
	.byte	-1
	.byte	-1
	.byte	60
	.byte	75
	.byte	73
	.byte	79
	.byte	41
	.byte	40
	.byte	-1
	.byte	-1
	.byte	62
	.byte	63
	.byte	76
	.byte	58
	.byte	80
	.byte	95
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	34
	.byte	-1
	.byte	123
	.byte	43
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	125
	.byte	-1
	.byte	124
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	27
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.ident	"GCC: (GNU) 7.2.0"

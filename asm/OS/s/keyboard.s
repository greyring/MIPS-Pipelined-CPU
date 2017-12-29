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
	sw	$0,%lo(keybuf_tail)($2)
	lui	$2,%hi(capslock)
	sw	$0,%lo(capslock)($2)
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

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
	lhu	$2,0($2)
	addiu	$3,$3,1
	andi	$3,$3,0x1f
	lui	$4,%hi(keybuf_tail)
	jr	$31
	sw	$3,%lo(keybuf_tail)($4)

$L4:
	jr	$31
	li	$2,65535			# 0xffff

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
	lbu	$2,20($2)
	lui	$3,%hi(keyboard_state)
	lw	$3,%lo(keyboard_state)($3)
	li	$4,1			# 0x1
	beq	$3,$4,$L7
	slt	$4,$3,2

	bne	$4,$0,$L25
	li	$4,2			# 0x2

	beq	$3,$4,$L10
	li	$4,3			# 0x3

	bne	$3,$4,$L36
	srl	$4,$2,3

	lui	$3,%hi(skey_state)
	addiu	$3,$3,%lo(skey_state)
	addu	$4,$4,$3
	andi	$2,$2,0x7
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$2,$0,$2
	lbu	$3,0($4)
	nop
	and	$2,$2,$3
	sb	$2,0($4)
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

$L25:
	bne	$3,$0,$L36
	li	$3,224			# 0xe0

	beq	$2,$3,$L28
	li	$3,240			# 0xf0

	beq	$2,$3,$L29
	srl	$3,$2,3

	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lui	$4,%hi(key_state)
	addiu	$4,$4,%lo(key_state)
	addu	$3,$3,$4
	andi	$5,$2,0x7
	li	$4,1			# 0x1
	sll	$4,$4,$5
	lbu	$5,0($3)
	nop
	or	$4,$4,$5
	sb	$4,0($3)
	li	$3,88			# 0x58
	beq	$2,$3,$L30
	lui	$3,%hi(capslock)

$L14:
	lui	$4,%hi(key_state)
$L35:
	addiu	$4,$4,%lo(key_state)
	lbu	$3,2($4)
	nop
	andi	$3,$3,0x4
	lbu	$4,11($4)
	nop
	andi	$4,$4,0x2
	or	$3,$3,$4
	lui	$4,%hi(capslock)
	lw	$4,%lo(capslock)($4)
	nop
	or	$3,$3,$4
	beq	$3,$0,$L17
	lui	$3,%hi(scantoascii_lowercase)

	sll	$2,$2,1
	lui	$3,%hi(scantoascii_uppercase)
	addiu	$3,$3,%lo(scantoascii_uppercase)
	addu	$2,$2,$3
	lhu	$4,0($2)
	li	$2,65535			# 0xffff
	beq	$4,$2,$L18
	lui	$2,%hi(keybuf_head)

	lw	$2,%lo(keybuf_head)($2)
	nop
	addiu	$3,$2,2
	andi	$3,$3,0x1f
	lui	$5,%hi(keybuf_tail)
	lw	$5,%lo(keybuf_tail)($5)
	nop
	beq	$3,$5,$L18
	addiu	$2,$2,1

	andi	$2,$2,0x1f
	lui	$3,%hi(keybuf_head)
	sw	$2,%lo(keybuf_head)($3)
	sll	$2,$2,1
	lui	$3,%hi(keybuf)
	addiu	$3,$3,%lo(keybuf)
	addu	$2,$2,$3
	jal	_put_char
	sh	$4,0($2)

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
	lw	$3,%lo(capslock)($3)
	nop
	beq	$3,$0,$L15
	li	$4,2			# 0x2

	bne	$3,$4,$L35
	lui	$4,%hi(key_state)

	lui	$3,%hi(capslock)
	b	$L35
	sw	$0,%lo(capslock)($3)

$L15:
	lui	$3,%hi(capslock)
	li	$4,1			# 0x1
	b	$L14
	sw	$4,%lo(capslock)($3)

$L17:
	sll	$2,$2,1
	addiu	$3,$3,%lo(scantoascii_lowercase)
	addu	$2,$2,$3
	lhu	$4,0($2)
	li	$2,65535			# 0xffff
	beq	$4,$2,$L18
	lui	$2,%hi(keybuf_head)

	lw	$2,%lo(keybuf_head)($2)
	nop
	addiu	$3,$2,2
	andi	$3,$3,0x1f
	lui	$5,%hi(keybuf_tail)
	lw	$5,%lo(keybuf_tail)($5)
	nop
	beq	$3,$5,$L18
	addiu	$2,$2,1

	andi	$2,$2,0x1f
	lui	$3,%hi(keybuf_head)
	sw	$2,%lo(keybuf_head)($3)
	sll	$2,$2,1
	lui	$3,%hi(keybuf)
	addiu	$3,$3,%lo(keybuf)
	addu	$2,$2,$3
	jal	_put_char
	sh	$4,0($2)

	b	$L34
	lui	$2,%hi(keyboard_state)

$L7:
	srl	$4,$2,3
	lui	$3,%hi(key_state)
	addiu	$3,$3,%lo(key_state)
	addu	$4,$4,$3
	andi	$5,$2,0x7
	li	$3,1			# 0x1
	sll	$3,$3,$5
	nor	$3,$0,$3
	lbu	$5,0($4)
	nop
	and	$3,$3,$5
	sb	$3,0($4)
	li	$3,88			# 0x58
	beq	$2,$3,$L31
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
	li	$3,240			# 0xf0
	beq	$2,$3,$L33
	srl	$3,$2,3

	lui	$4,%hi(skey_state)
	addiu	$4,$4,%lo(skey_state)
	addu	$3,$3,$4
	andi	$4,$2,0x7
	li	$2,1			# 0x1
	sll	$2,$2,$4
	lbu	$4,0($3)
	nop
	or	$2,$2,$4
	sb	$2,0($3)
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
	.space	4
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
	.globl	scantoascii_uppercase
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

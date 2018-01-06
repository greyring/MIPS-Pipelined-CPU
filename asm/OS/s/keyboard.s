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
	lui	$2,%hi(skey_state)
	addiu	$2,$2,%lo(skey_state)
	lui	$3,%hi(key_state)
	addiu	$3,$3,%lo(key_state)
	addiu	$4,$2,16
$L2:
	sb	$0,0($2)
	sb	$0,0($3)
	addiu	$2,$2,1
	bne	$2,$4,$L2
	addiu	$3,$3,1

	lui	$2,%hi(keybuf_head)
	li	$3,31			# 0x1f
	sw	$3,%lo(keybuf_head)($2)
	lui	$2,%hi(keybuf_tail)
	sw	$0,%lo(keybuf_tail)($2)
	lui	$2,%hi(keyboard_state)
	sw	$0,%lo(keyboard_state)($2)
	lui	$2,%hi(capslock)
	jr	$31
	sw	$0,%lo(capslock)($2)

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
	beq	$2,$3,$L6
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

$L6:
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
	lbu	$5,20($2)
	lui	$2,%hi(keyboard_state)
	lw	$2,%lo(keyboard_state)($2)
	li	$3,1			# 0x1
	beq	$2,$3,$L9
	srl	$3,$5,3

	addiu	$sp,$sp,-24
	beq	$2,$0,$L10
	sw	$31,20($sp)

	li	$3,2			# 0x2
	beq	$2,$3,$L11
	li	$3,3			# 0x3

	beq	$2,$3,$L12
	srl	$3,$5,3

$L7:
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L10:
	li	$2,224			# 0xe0
	beq	$5,$2,$L28
	li	$2,240			# 0xf0

	beq	$5,$2,$L29
	srl	$3,$5,3

	lui	$2,%hi(key_state)
	addiu	$2,$2,%lo(key_state)
	addu	$2,$3,$2
	lbu	$4,0($2)
	andi	$6,$5,0x7
	sra	$2,$4,$6
	andi	$2,$2,0x1
	bne	$2,$0,$L7
	lui	$2,%hi(key_state)

	addiu	$2,$2,%lo(key_state)
	addu	$3,$3,$2
	li	$2,1			# 0x1
	sll	$2,$2,$6
	or	$2,$2,$4
	sb	$2,0($3)
	li	$2,88			# 0x58
	beq	$5,$2,$L30
	lui	$2,%hi(capslock)

$L34:
$L35:
	lw	$4,%lo(capslock)($2)
	jal	input_key
	nop

	li	$3,65535			# 0xffff
	beq	$2,$3,$L18
	lui	$3,%hi(keybuf_head)

	lw	$3,%lo(keybuf_head)($3)
	nop
	addiu	$4,$3,2
	andi	$4,$4,0x1f
	lui	$5,%hi(keybuf_tail)
	lw	$5,%lo(keybuf_tail)($5)
	nop
	beq	$4,$5,$L18
	addiu	$3,$3,1

	andi	$3,$3,0x1f
	lui	$4,%hi(keybuf_head)
	sw	$3,%lo(keybuf_head)($4)
	sll	$3,$3,1
	lui	$4,%hi(keybuf)
	addiu	$4,$4,%lo(keybuf)
	addu	$3,$3,$4
	sh	$2,0($3)
$L18:
	lui	$2,%hi(keyboard_state)
	b	$L7
	sw	$0,%lo(keyboard_state)($2)

$L28:
	lui	$2,%hi(keyboard_state)
	li	$3,2			# 0x2
	b	$L7
	sw	$3,%lo(keyboard_state)($2)

$L29:
	lui	$2,%hi(keyboard_state)
	li	$3,1			# 0x1
	b	$L7
	sw	$3,%lo(keyboard_state)($2)

$L30:
	lw	$2,%lo(capslock)($2)
	nop
	beq	$2,$0,$L16
	li	$3,2			# 0x2

	bne	$2,$3,$L34
	lui	$2,%hi(capslock)

	b	$L34
	sw	$0,%lo(capslock)($2)

$L16:
	lui	$2,%hi(capslock)
	li	$3,1			# 0x1
	b	$L35
	sw	$3,%lo(capslock)($2)

$L9:
	lui	$2,%hi(key_state)
	addiu	$2,$2,%lo(key_state)
	addu	$3,$3,$2
	andi	$4,$5,0x7
	li	$2,1			# 0x1
	sll	$2,$2,$4
	nor	$2,$0,$2
	lbu	$4,0($3)
	nop
	and	$2,$2,$4
	sb	$2,0($3)
	li	$2,88			# 0x58
	beq	$5,$2,$L31
	nop

$L19:
	lui	$2,%hi(keyboard_state)
	jr	$31
	sw	$0,%lo(keyboard_state)($2)

$L31:
	lui	$2,%hi(capslock)
	lw	$3,%lo(capslock)($2)
	li	$2,1			# 0x1
	beq	$3,$2,$L32
	nop

	lui	$2,%hi(capslock)
	b	$L19
	sw	$0,%lo(capslock)($2)

$L32:
	lui	$2,%hi(capslock)
	li	$3,2			# 0x2
	b	$L19
	sw	$3,%lo(capslock)($2)

$L11:
	li	$2,240			# 0xf0
	beq	$5,$2,$L33
	srl	$3,$5,3

	lui	$2,%hi(skey_state)
	addiu	$2,$2,%lo(skey_state)
	addu	$2,$3,$2
	lbu	$4,0($2)
	andi	$6,$5,0x7
	sra	$2,$4,$6
	andi	$2,$2,0x1
	beq	$2,$0,$L22
	lui	$2,%hi(keyboard_state)

	b	$L7
	sw	$0,%lo(keyboard_state)($2)

$L33:
	lui	$2,%hi(keyboard_state)
	li	$3,3			# 0x3
	b	$L7
	sw	$3,%lo(keyboard_state)($2)

$L22:
	lui	$2,%hi(skey_state)
	addiu	$2,$2,%lo(skey_state)
	addu	$3,$3,$2
	li	$2,1			# 0x1
	sll	$6,$2,$6
	or	$4,$6,$4
	sb	$4,0($3)
	jal	input_skey
	move	$4,$5

	li	$3,65535			# 0xffff
	beq	$2,$3,$L23
	lui	$3,%hi(keybuf_head)

	lw	$3,%lo(keybuf_head)($3)
	nop
	addiu	$4,$3,2
	andi	$4,$4,0x1f
	lui	$5,%hi(keybuf_tail)
	lw	$5,%lo(keybuf_tail)($5)
	nop
	beq	$4,$5,$L23
	addiu	$3,$3,1

	andi	$3,$3,0x1f
	lui	$4,%hi(keybuf_head)
	sw	$3,%lo(keybuf_head)($4)
	sll	$3,$3,1
	lui	$4,%hi(keybuf)
	addiu	$4,$4,%lo(keybuf)
	addu	$3,$3,$4
	sh	$2,0($3)
$L23:
	lui	$2,%hi(keyboard_state)
	b	$L7
	sw	$0,%lo(keyboard_state)($2)

$L12:
	lui	$2,%hi(skey_state)
	addiu	$2,$2,%lo(skey_state)
	addu	$3,$3,$2
	andi	$5,$5,0x7
	li	$2,1			# 0x1
	sll	$5,$2,$5
	nor	$5,$0,$5
	lbu	$2,0($3)
	nop
	and	$5,$5,$2
	sb	$5,0($3)
	lui	$2,%hi(keyboard_state)
	b	$L7
	sw	$0,%lo(keyboard_state)($2)

	.set	macro
	.set	reorder
	.end	handle_keyboard
	.size	handle_keyboard, .-handle_keyboard
	.section	.data,"aw",@progbits
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
	.align	2
	.type	keybuf_tail, @object
	.size	keybuf_tail, 4
keybuf_tail:
	.space	4
	.align	2
	.type	keybuf_head, @object
	.size	keybuf_head, 4
keybuf_head:
	.space	4
	.align	2
	.type	keybuf, @object
	.size	keybuf, 64
keybuf:
	.space	64
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
	.ident	"GCC: (GNU) 7.2.0"

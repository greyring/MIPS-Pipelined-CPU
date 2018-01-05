	.file	1 "kutils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	_scroll_screen
	.set	nomips16
	.set	nomicromips
	.ent	_scroll_screen
	.type	_scroll_screen, @function
_scroll_screen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$2,$4,-1
	sltu	$2,$2,29
	beq	$2,$0,$L9
	li	$3,-1342177280			# 0xffffffffb0000000

	sll	$2,$4,2
	addu	$2,$2,$4
	sll	$7,$2,5
	addiu	$2,$3,8192
	addu	$2,$7,$2
	addiu	$3,$3,12832
	sltu	$3,$2,$3
	beq	$3,$0,$L10
	move	$8,$7

	li	$6,-1342177280			# 0xffffffffb0000000
	addiu	$6,$6,12832
$L4:
	lw	$5,0($2)
	subu	$3,$2,$8
	sw	$5,0($3)
	addiu	$2,$2,4
	sltu	$3,$2,$6
	bne	$3,$0,$L4
	li	$3,-4			# 0xfffffffffffffffc

	li	$2,4639			# 0x121f
	subu	$2,$2,$7
	and	$2,$2,$3
	li	$3,-1342177280			# 0xffffffffb0000000
	addiu	$5,$3,8196
	addu	$2,$2,$5
	addiu	$3,$3,12832
	sltu	$3,$2,$3
	beq	$3,$0,$L5
	nop

$L3:
	li	$5,-1342177280			# 0xffffffffb0000000
	addiu	$5,$5,12832
$L6:
	sw	$0,0($2)
	addiu	$2,$2,4
	sltu	$3,$2,$5
	bne	$3,$0,$L6
	nop

$L5:
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$3,4($2)
	sll	$2,$4,2
	addu	$4,$2,$4
	sll	$4,$4,3
	andi	$2,$3,0x7ff
	sltu	$2,$4,$2
	beq	$2,$0,$L7
	nop

	subu	$3,$3,$4
$L8:
	li	$2,-1342177280			# 0xffffffffb0000000
	sw	$3,4($2)
	jr	$31
	li	$2,1			# 0x1

$L10:
	li	$2,-1342177280			# 0xffffffffb0000000
	b	$L3
	addiu	$2,$2,8192

$L7:
	li	$4,-2048			# 0xfffffffffffff800
	b	$L8
	and	$3,$3,$4

$L9:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	_scroll_screen
	.size	_scroll_screen, .-_scroll_screen
	.align	2
	.globl	_put_char
	.set	nomips16
	.set	nomicromips
	.ent	_put_char
	.type	_put_char, @function
_put_char:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$2,4($2)
	li	$3,10			# 0xa
	beq	$4,$3,$L31
	li	$3,9			# 0x9

	beq	$4,$3,$L32
	li	$3,8			# 0x8

	beq	$4,$3,$L33
	andi	$3,$2,0x7ff

	sll	$5,$3,2
	li	$3,-1342177280			# 0xffffffffb0000000
	addu	$3,$3,$5
	li	$5,1056964608			# 0x3f000000
	or	$4,$4,$5
	sw	$4,8192($3)
	b	$L17
	addiu	$2,$2,1

$L31:
	andi	$3,$2,0x7ff
	sltu	$4,$3,40
	bne	$4,$0,$L15
	nop

$L16:
	addiu	$3,$3,-40
	sltu	$4,$3,40
	beq	$4,$0,$L16
	nop

$L15:
	addiu	$2,$2,40
	subu	$2,$2,$3
$L17:
	li	$3,-1342177280			# 0xffffffffb0000000
	sw	$2,4($3)
$L37:
	andi	$2,$2,0x7ff
	sltu	$2,$2,1160
	beq	$2,$0,$L34
	li	$2,1			# 0x1

	jr	$31
	nop

$L32:
	andi	$3,$2,0x7ff
	sll	$4,$3,2
	li	$3,-1342177280			# 0xffffffffb0000000
	addu	$3,$3,$4
	li	$4,9			# 0x9
	sw	$4,8192($3)
$L19:
	addiu	$2,$2,1
	andi	$3,$2,0x3
	bne	$3,$0,$L19
	li	$3,-1342177280			# 0xffffffffb0000000

	b	$L37
	sw	$2,4($3)

$L33:
	andi	$5,$2,0x7ff
	sll	$3,$5,2
	li	$4,-1342177280			# 0xffffffffb0000000
	addiu	$4,$4,8192
	addu	$3,$3,$4
	lw	$4,0($3)
	nop
	bne	$4,$0,$L21
	nop

	beq	$5,$0,$L21
	nop

	li	$6,-1342177280			# 0xffffffffb0000000
	addiu	$6,$6,8192
	addiu	$2,$2,-1
$L36:
	andi	$4,$2,0x7ff
	sll	$3,$4,2
	addu	$3,$3,$6
	lw	$5,0($3)
	nop
	bne	$5,$0,$L21
	nop

	bne	$4,$0,$L36
	addiu	$2,$2,-1

	addiu	$2,$2,1
$L21:
	b	$L17
	sw	$0,0($3)

$L34:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	_scroll_screen
	li	$4,1			# 0x1

	li	$2,1			# 0x1
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	_put_char
	.size	_put_char, .-_put_char
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
	.globl	kprintHex
	.set	nomips16
	.set	nomicromips
	.ent	kprintHex
	.type	kprintHex, @function
kprintHex:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	srl	$4,$4,4
	sltu	$2,$4,10
	beq	$2,$0,$L40
	nop

	jal	_put_char
	addiu	$4,$4,48

	andi	$16,$16,0xf
$L46:
	sltu	$2,$16,10
	bne	$2,$0,$L45
	nop

	jal	_put_char
	addiu	$4,$16,55

$L39:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L40:
	jal	_put_char
	addiu	$4,$4,55

	b	$L46
	andi	$16,$16,0xf

$L45:
	jal	_put_char
	addiu	$4,$16,48

	b	$L39
	nop

	.set	macro
	.set	reorder
	.end	kprintHex
	.size	kprintHex, .-kprintHex
	.align	2
	.globl	kprintDec
	.set	nomips16
	.set	nomicromips
	.ent	kprintDec
	.type	kprintDec, @function
kprintDec:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	sltu	$2,$4,10000
	bne	$2,$0,$L56
	move	$16,$4

	move	$2,$0
$L49:
	addiu	$2,$2,1
	addiu	$16,$16,-10000
	andi	$16,$16,0xffff
	sltu	$3,$16,10000
	beq	$3,$0,$L49
	andi	$2,$2,0xffff

$L48:
	addiu	$4,$2,48
	jal	_put_char
	andi	$4,$4,0xffff

	sltu	$2,$16,1000
	bne	$2,$0,$L57
	nop

	move	$2,$0
$L51:
	addiu	$2,$2,1
	addiu	$16,$16,-1000
	andi	$16,$16,0xffff
	sltu	$3,$16,1000
	beq	$3,$0,$L51
	andi	$2,$2,0xffff

$L50:
	addiu	$4,$2,48
	jal	_put_char
	andi	$4,$4,0xffff

	sltu	$2,$16,100
	bne	$2,$0,$L58
	nop

	move	$2,$0
$L53:
	addiu	$2,$2,1
	addiu	$16,$16,-100
	andi	$16,$16,0xffff
	sltu	$3,$16,100
	beq	$3,$0,$L53
	andi	$2,$2,0xffff

$L52:
	addiu	$4,$2,48
	jal	_put_char
	andi	$4,$4,0xffff

	sltu	$2,$16,10
	bne	$2,$0,$L59
	nop

	move	$2,$0
$L55:
	addiu	$2,$2,1
	addiu	$16,$16,-10
	andi	$16,$16,0xffff
	sltu	$3,$16,10
	beq	$3,$0,$L55
	andi	$2,$2,0xffff

$L54:
	addiu	$4,$2,48
	jal	_put_char
	andi	$4,$4,0xffff

	addiu	$4,$16,48
	jal	_put_char
	andi	$4,$4,0xffff

	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L56:
	b	$L48
	move	$2,$0

$L57:
	b	$L50
	move	$2,$0

$L58:
	b	$L52
	move	$2,$0

$L59:
	b	$L54
	move	$2,$0

	.set	macro
	.set	reorder
	.end	kprintDec
	.size	kprintDec, .-kprintDec
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
	beq	$6,$0,$L69
	nop

	lhu	$3,0($4)
	lhu	$2,0($5)
	nop
	bne	$3,$2,$L70
	addiu	$4,$4,2

	addiu	$5,$5,2
	move	$3,$0
$L67:
	addiu	$3,$3,1
	beq	$6,$3,$L72
	nop

	lhu	$8,0($4)
	lhu	$7,0($5)
	addiu	$4,$4,2
	beq	$8,$7,$L67
	addiu	$5,$5,2

	jr	$31
	li	$2,1			# 0x1

$L72:
	jr	$31
	move	$2,$0

$L69:
	jr	$31
	move	$2,$6

$L70:
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
	beq	$6,$0,$L77
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	bne	$3,$2,$L78
	addiu	$3,$4,1

	addiu	$5,$5,1
	addu	$6,$4,$6
$L75:
	beq	$3,$6,$L80
	nop

	lbu	$8,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	beq	$8,$7,$L75
	addiu	$5,$5,1

	jr	$31
	li	$2,1			# 0x1

$L80:
	jr	$31
	move	$2,$0

$L77:
	jr	$31
	move	$2,$6

$L78:
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
	beq	$2,$0,$L84
	addiu	$4,$4,2

	move	$2,$0
$L83:
	addiu	$4,$4,2
	lhu	$3,-2($4)
	nop
	bne	$3,$0,$L83
	addiu	$2,$2,1

	jr	$31
	nop

$L84:
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
	beq	$2,$0,$L89
	addiu	$4,$4,1

	move	$2,$0
$L88:
	addiu	$4,$4,1
	lbu	$3,-1($4)
	nop
	bne	$3,$0,$L88
	addiu	$2,$2,1

	jr	$31
	nop

$L89:
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
	beq	$6,$0,$L95
	move	$2,$5

	addu	$5,$5,$6
$L93:
	lbu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L93
	addiu	$4,$4,1

$L95:
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
	beq	$6,$0,$L100
	move	$2,$5

	sll	$6,$6,1
	addu	$5,$5,$6
$L98:
	lhu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,2
	bne	$2,$5,$L98
	addiu	$4,$4,1

$L100:
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
	beq	$6,$0,$L105
	move	$2,$4

	sll	$6,$6,1
	addu	$4,$4,$6
$L103:
	lbu	$3,0($5)
	nop
	sh	$3,0($2)
	addiu	$2,$2,2
	bne	$2,$4,$L103
	addiu	$5,$5,1

$L105:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	kchar2short
	.size	kchar2short, .-kchar2short
	.ident	"GCC: (GNU) 7.2.0"

	.file	1 "syscall.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
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
	sll	$3,$4,2

	addu	$3,$3,$4
	sll	$3,$3,5
	move	$7,$3
	li	$2,-1342177280			# 0xffffffffb0000000
	addiu	$5,$2,8192
	addu	$3,$3,$5
	addiu	$2,$2,12832
	sltu	$2,$3,$2
	beq	$2,$0,$L10
	nop

	move	$2,$5
	li	$6,4640			# 0x1220
	subu	$6,$6,$7
$L4:
	lw	$5,0($3)
	nop
	sw	$5,0($2)
	addiu	$3,$3,4
	addu	$5,$6,$3
	sltu	$5,$3,$5
	bne	$5,$0,$L4
	addiu	$2,$2,4

	li	$3,-1342177280			# 0xffffffffb0000000
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
	li	$2,10			# 0xa
	beq	$4,$2,$L24
	li	$3,-1342177280			# 0xffffffffb0000000

	lw	$2,4($3)
	nop
	andi	$5,$2,0x7ff
	sll	$5,$5,2
	addu	$3,$3,$5
	li	$5,1056964608			# 0x3f000000
	or	$4,$4,$5
	sw	$4,8192($3)
	addiu	$2,$2,1
$L17:
	li	$3,-1342177280			# 0xffffffffb0000000
	sw	$2,4($3)
	andi	$2,$2,0x7ff
	sltu	$2,$2,1160
	beq	$2,$0,$L25
	li	$2,1			# 0x1

	jr	$31
	nop

$L24:
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$2,4($2)
	nop
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
	b	$L17
	subu	$2,$2,$3

$L25:
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
	.globl	put_seg
	.set	nomips16
	.set	nomicromips
	.ent	put_seg
	.type	put_seg, @function
put_seg:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,92($4)
	li	$2,-1342177280			# 0xffffffffb0000000
	sw	$3,16($2)
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	put_seg
	.size	put_seg, .-put_seg
	.align	2
	.globl	get_sw
	.set	nomips16
	.set	nomicromips
	.ent	get_sw
	.type	get_sw, @function
get_sw:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$2,8($2)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_sw
	.size	get_sw, .-get_sw
	.align	2
	.globl	get_btn
	.set	nomips16
	.set	nomicromips
	.ent	get_btn
	.type	get_btn, @function
get_btn:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$2,28($2)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_btn
	.size	get_btn, .-get_btn
	.align	2
	.globl	put_led
	.set	nomips16
	.set	nomicromips
	.ent	put_led
	.type	put_led, @function
put_led:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$3,92($4)
	li	$2,-1342177280			# 0xffffffffb0000000
	sw	$3,12($2)
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	put_led
	.size	put_led, .-put_led
	.align	2
	.globl	set_vga
	.set	nomips16
	.set	nomicromips
	.ent	set_vga
	.type	set_vga, @function
set_vga:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$5,-1342177280			# 0xffffffffb0000000
	lw	$2,0($5)
	li	$3,-4			# 0xfffffffffffffffc
	and	$2,$2,$3
	lw	$3,92($4)
	nop
	andi	$3,$3,0x11
	or	$2,$2,$3
	sw	$2,0($5)
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	set_vga
	.size	set_vga, .-set_vga
	.align	2
	.globl	set_cursor
	.set	nomips16
	.set	nomicromips
	.ent	set_cursor
	.type	set_cursor, @function
set_cursor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$5,88($4)
	lw	$2,92($4)
	nop
	sll	$2,$2,24
	li	$3,285212672			# 0x11000000
	and	$2,$2,$3
	lw	$3,84($4)
	nop
	andi	$3,$3,0x7ff
	or	$2,$2,$3
	lbu	$3,2($5)
	nop
	srl	$3,$3,6
	sll	$3,$3,20
	or	$2,$2,$3
	lbu	$3,1($5)
	nop
	srl	$3,$3,6
	sll	$3,$3,18
	or	$2,$2,$3
	lbu	$3,0($5)
	nop
	srl	$3,$3,6
	sll	$3,$3,16
	or	$2,$3,$2
	li	$3,-1342177280			# 0xffffffffb0000000
	sw	$2,4($3)
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	set_cursor
	.size	set_cursor, .-set_cursor
	.align	2
	.globl	get_cursor
	.set	nomips16
	.set	nomicromips
	.ent	get_cursor
	.type	get_cursor, @function
get_cursor:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	lw	$2,4($2)
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_cursor
	.size	get_cursor, .-get_cursor
	.align	2
	.globl	scroll_screen
	.set	nomips16
	.set	nomicromips
	.ent	scroll_screen
	.type	scroll_screen, @function
scroll_screen:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	_scroll_screen
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	scroll_screen
	.size	scroll_screen, .-scroll_screen
	.align	2
	.globl	clear_screen
	.set	nomips16
	.set	nomicromips
	.ent	clear_screen
	.type	clear_screen, @function
clear_screen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	addiu	$2,$2,8192
	li	$3,-1342177280			# 0xffffffffb0000000
	addiu	$3,$3,12832
$L36:
	sw	$0,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L36
	nop

	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	clear_screen
	.size	clear_screen, .-clear_screen
	.align	2
	.globl	put_charAt
	.set	nomips16
	.set	nomicromips
	.ent	put_charAt
	.type	put_charAt, @function
put_charAt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,88($4)
	nop
	sltu	$3,$2,1200
	beq	$3,$0,$L40
	li	$6,-1342177280			# 0xffffffffb0000000

	lw	$3,84($4)
	sll	$2,$2,2
	addu	$6,$6,$2
	lbu	$2,2($3)
	nop
	srl	$2,$2,6
	sll	$2,$2,28
	lbu	$5,1($3)
	nop
	srl	$5,$5,6
	sll	$5,$5,26
	or	$2,$2,$5
	lbu	$5,0($3)
	nop
	srl	$5,$5,6
	sll	$5,$5,24
	or	$2,$2,$5
	lbu	$5,5($3)
	nop
	srl	$5,$5,6
	sll	$5,$5,20
	or	$2,$2,$5
	lbu	$5,4($3)
	nop
	srl	$5,$5,6
	sll	$5,$5,18
	or	$2,$2,$5
	lbu	$3,3($3)
	nop
	srl	$3,$3,6
	sll	$3,$3,16
	or	$2,$2,$3
	lhu	$3,94($4)
	nop
	or	$2,$2,$3
	sw	$2,8192($6)
	jr	$31
	li	$2,1			# 0x1

$L40:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_charAt
	.size	put_charAt, .-put_charAt
	.align	2
	.globl	put_char
	.set	nomips16
	.set	nomicromips
	.ent	put_char
	.type	put_char, @function
put_char:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lhu	$4,94($4)
	jal	_put_char
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_char
	.size	put_char, .-put_char
	.align	2
	.globl	put_string
	.set	nomips16
	.set	nomicromips
	.ent	put_string
	.type	put_string, @function
put_string:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lw	$16,92($4)
	nop
	lhu	$4,0($16)
	nop
	beq	$4,$0,$L48
	li	$2,1			# 0x1

$L45:
	jal	_put_char
	addiu	$16,$16,2

	lhu	$4,0($16)
	nop
	bne	$4,$0,$L45
	li	$2,1			# 0x1

$L48:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_string
	.size	put_string, .-put_string
	.align	2
	.globl	put_pixel
	.set	nomips16
	.set	nomicromips
	.ent	put_pixel
	.type	put_pixel, @function
put_pixel:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$5,92($4)
	lw	$3,88($4)
	sltu	$2,$5,640
	beq	$2,$0,$L51
	nop

	sltu	$2,$3,480
	beq	$2,$0,$L51
	nop

	lw	$6,84($4)
	sll	$2,$3,2
	addu	$2,$2,$3
	sll	$2,$2,7
	addu	$2,$2,$5
	sll	$2,$2,2
	li	$4,-1342111744			# 0xffffffffb0010000
	addu	$4,$4,$2
	lbu	$2,2($6)
	nop
	srl	$2,$2,5
	sll	$2,$2,6
	lbu	$3,1($6)
	nop
	srl	$3,$3,5
	sll	$3,$3,3
	or	$2,$2,$3
	lbu	$3,0($6)
	nop
	srl	$3,$3,5
	or	$2,$2,$3
	sh	$2,0($4)
	jr	$31
	li	$2,1			# 0x1

$L51:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_pixel
	.size	put_pixel, .-put_pixel
	.ident	"GCC: (GNU) 7.2.0"

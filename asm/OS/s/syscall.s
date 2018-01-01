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
	beq	$4,$3,$L30
	li	$3,9			# 0x9

	beq	$4,$3,$L19
	li	$3,8			# 0x8

	beq	$4,$3,$L31
	andi	$3,$2,0x7ff

	sll	$5,$3,2
	li	$3,-1342177280			# 0xffffffffb0000000
	addu	$3,$3,$5
	li	$5,1056964608			# 0x3f000000
	or	$4,$4,$5
	sw	$4,8192($3)
	b	$L17
	addiu	$2,$2,1

$L30:
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
$L34:
	andi	$2,$2,0x7ff
	sltu	$2,$2,1160
	beq	$2,$0,$L32
	nop

$L27:
	jr	$31
	li	$2,1			# 0x1

$L19:
	addiu	$2,$2,1
	andi	$3,$2,0x3
	bne	$3,$0,$L19
	li	$3,-1342177280			# 0xffffffffb0000000

	b	$L34
	sw	$2,4($3)

$L31:
	andi	$4,$2,0x7ff
	sll	$5,$4,2
	li	$3,-1342177280			# 0xffffffffb0000000
	addu	$3,$3,$5
	beq	$4,$0,$L21
	sw	$0,8192($3)

	b	$L17
	addiu	$2,$2,-1

$L32:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	_scroll_screen
	li	$4,1			# 0x1

	li	$2,1			# 0x1
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L21:
	li	$3,-1342177280			# 0xffffffffb0000000
	b	$L27
	sw	$2,4($3)

	.set	macro
	.set	reorder
	.end	_put_char
	.size	_put_char, .-_put_char
	.align	2
	.globl	put_seg_
	.set	nomips16
	.set	nomicromips
	.ent	put_seg_
	.type	put_seg_, @function
put_seg_:
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
	.end	put_seg_
	.size	put_seg_, .-put_seg_
	.align	2
	.globl	get_sw_
	.set	nomips16
	.set	nomicromips
	.ent	get_sw_
	.type	get_sw_, @function
get_sw_:
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
	.end	get_sw_
	.size	get_sw_, .-get_sw_
	.align	2
	.globl	get_btn_
	.set	nomips16
	.set	nomicromips
	.ent	get_btn_
	.type	get_btn_, @function
get_btn_:
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
	.end	get_btn_
	.size	get_btn_, .-get_btn_
	.align	2
	.globl	put_led_
	.set	nomips16
	.set	nomicromips
	.ent	put_led_
	.type	put_led_, @function
put_led_:
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
	.end	put_led_
	.size	put_led_, .-put_led_
	.align	2
	.globl	set_vga_
	.set	nomips16
	.set	nomicromips
	.ent	set_vga_
	.type	set_vga_, @function
set_vga_:
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
	.end	set_vga_
	.size	set_vga_, .-set_vga_
	.align	2
	.globl	set_cursor_
	.set	nomips16
	.set	nomicromips
	.ent	set_cursor_
	.type	set_cursor_, @function
set_cursor_:
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
	.end	set_cursor_
	.size	set_cursor_, .-set_cursor_
	.align	2
	.globl	get_cursor_
	.set	nomips16
	.set	nomicromips
	.ent	get_cursor_
	.type	get_cursor_, @function
get_cursor_:
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
	.end	get_cursor_
	.size	get_cursor_, .-get_cursor_
	.align	2
	.globl	scroll_screen_
	.set	nomips16
	.set	nomicromips
	.ent	scroll_screen_
	.type	scroll_screen_, @function
scroll_screen_:
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
	.end	scroll_screen_
	.size	scroll_screen_, .-scroll_screen_
	.align	2
	.globl	clear_screen_
	.set	nomips16
	.set	nomicromips
	.ent	clear_screen_
	.type	clear_screen_, @function
clear_screen_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,-1342177280			# 0xffffffffb0000000
	addiu	$2,$2,8192
	li	$3,-1342177280			# 0xffffffffb0000000
	addiu	$3,$3,12832
$L45:
	sw	$0,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L45
	li	$4,-2048			# 0xfffffffffffff800

	li	$3,-1342177280			# 0xffffffffb0000000
	lw	$2,4($3)
	nop
	and	$2,$2,$4
	sw	$2,4($3)
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	clear_screen_
	.size	clear_screen_, .-clear_screen_
	.align	2
	.globl	put_charAt_
	.set	nomips16
	.set	nomicromips
	.ent	put_charAt_
	.type	put_charAt_, @function
put_charAt_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,88($4)
	nop
	sltu	$3,$2,1160
	beq	$3,$0,$L49
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
	lhu	$3,92($4)
	nop
	or	$2,$2,$3
	sw	$2,8192($6)
	jr	$31
	li	$2,1			# 0x1

$L49:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_charAt_
	.size	put_charAt_, .-put_charAt_
	.align	2
	.globl	put_char_
	.set	nomips16
	.set	nomicromips
	.ent	put_char_
	.type	put_char_, @function
put_char_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lhu	$4,92($4)
	jal	_put_char
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_char_
	.size	put_char_, .-put_char_
	.align	2
	.globl	put_string_
	.set	nomips16
	.set	nomicromips
	.ent	put_string_
	.type	put_string_, @function
put_string_:
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
	beq	$4,$0,$L57
	li	$2,1			# 0x1

$L54:
	jal	_put_char
	addiu	$16,$16,2

	lhu	$4,0($16)
	nop
	bne	$4,$0,$L54
	li	$2,1			# 0x1

$L57:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_string_
	.size	put_string_, .-put_string_
	.align	2
	.globl	put_pixel_
	.set	nomips16
	.set	nomicromips
	.ent	put_pixel_
	.type	put_pixel_, @function
put_pixel_:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$5,92($4)
	lw	$3,88($4)
	sltu	$2,$5,640
	beq	$2,$0,$L60
	nop

	sltu	$2,$3,480
	beq	$2,$0,$L60
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

$L60:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_pixel_
	.size	put_pixel_, .-put_pixel_
	.align	2
	.globl	get_char_
	.set	nomips16
	.set	nomicromips
	.ent	get_char_
	.type	get_char_, @function
get_char_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	get_from_keybuf
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	get_char_
	.size	get_char_, .-get_char_
	.align	2
	.globl	_kput_char
	.set	nomips16
	.set	nomicromips
	.ent	_kput_char
	.type	_kput_char, @function
_kput_char:
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
	.end	_kput_char
	.size	_kput_char, .-_kput_char
	.globl	syscall_tbl
	.section	.data,"aw",@progbits
	.align	2
	.type	syscall_tbl, @object
	.size	syscall_tbl, 128
syscall_tbl:
	.word	put_seg_
	.word	get_sw_
	.word	get_btn_
	.word	put_led_
	.word	set_vga_
	.word	set_cursor_
	.word	get_cursor_
	.word	scroll_screen_
	.word	clear_screen_
	.word	put_charAt_
	.word	put_char_
	.word	put_string_
	.word	put_pixel_
	.word	get_char_
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (GNU) 7.2.0"

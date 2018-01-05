	.file	1 "syscall.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
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
$L9:
	sw	$0,0($2)
	addiu	$2,$2,4
	bne	$2,$3,$L9
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
	beq	$3,$0,$L13
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

$L13:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_charAt_
	.size	put_charAt_, .-put_charAt_
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
	beq	$2,$0,$L16
	nop

	sltu	$2,$3,480
	beq	$2,$0,$L16
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

$L16:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	put_pixel_
	.size	put_pixel_, .-put_pixel_
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
	beq	$4,$0,$L26
	li	$2,1			# 0x1

$L23:
	jal	_put_char
	addiu	$16,$16,2

	lhu	$4,0($16)
	nop
	bne	$4,$0,$L23
	li	$2,1			# 0x1

$L26:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_string_
	.size	put_string_, .-put_string_
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
	.globl	pwd_
	.set	nomips16
	.set	nomicromips
	.ent	pwd_
	.type	pwd_, @function
pwd_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$5,88($4)
	lw	$4,92($4)
	jal	pwd__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	pwd_
	.size	pwd_, .-pwd_
	.align	2
	.globl	cd_
	.set	nomips16
	.set	nomicromips
	.ent	cd_
	.type	cd_, @function
cd_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	cd__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	cd_
	.size	cd_, .-cd_
	.align	2
	.globl	crt_file_
	.set	nomips16
	.set	nomicromips
	.ent	crt_file_
	.type	crt_file_, @function
crt_file_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	crt_file__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	crt_file_
	.size	crt_file_, .-crt_file_
	.align	2
	.globl	del_file_
	.set	nomips16
	.set	nomicromips
	.ent	del_file_
	.type	del_file_, @function
del_file_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	del_file__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	del_file_
	.size	del_file_, .-del_file_
	.align	2
	.globl	fopen_
	.set	nomips16
	.set	nomicromips
	.ent	fopen_
	.type	fopen_, @function
fopen_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	fopen__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fopen_
	.size	fopen_, .-fopen_
	.align	2
	.globl	fclose_
	.set	nomips16
	.set	nomicromips
	.ent	fclose_
	.type	fclose_, @function
fclose_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	fclose__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fclose_
	.size	fclose_, .-fclose_
	.align	2
	.globl	fread_
	.set	nomips16
	.set	nomicromips
	.ent	fread_
	.type	fread_, @function
fread_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$6,84($4)
	lw	$5,88($4)
	lw	$4,92($4)
	jal	fread__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fread_
	.size	fread_, .-fread_
	.align	2
	.globl	fwrite_
	.set	nomips16
	.set	nomicromips
	.ent	fwrite_
	.type	fwrite_, @function
fwrite_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$6,84($4)
	lw	$5,88($4)
	lw	$4,92($4)
	jal	fwrite__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fwrite_
	.size	fwrite_, .-fwrite_
	.align	2
	.globl	fseek_
	.set	nomips16
	.set	nomicromips
	.ent	fseek_
	.type	fseek_, @function
fseek_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$6,84($4)
	lw	$5,88($4)
	lw	$4,92($4)
	jal	fseek__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fseek_
	.size	fseek_, .-fseek_
	.align	2
	.globl	dir_
	.set	nomips16
	.set	nomicromips
	.ent	dir_
	.type	dir_, @function
dir_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	dir__
	nop

	li	$2,1			# 0x1
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	dir_
	.size	dir_, .-dir_
	.align	2
	.globl	feof_
	.set	nomips16
	.set	nomicromips
	.ent	feof_
	.type	feof_, @function
feof_:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	lw	$4,92($4)
	jal	feof__
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	feof_
	.size	feof_, .-feof_
	.align	2
	.globl	init_syscall
	.set	nomips16
	.set	nomicromips
	.ent	init_syscall
	.type	init_syscall, @function
init_syscall:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(syscall_tbl)
	lui	$3,%hi(put_seg_)
	addiu	$3,$3,%lo(put_seg_)
	sw	$3,%lo(syscall_tbl)($2)
	addiu	$2,$2,%lo(syscall_tbl)
	lui	$3,%hi(get_sw_)
	addiu	$3,$3,%lo(get_sw_)
	sw	$3,4($2)
	lui	$3,%hi(get_btn_)
	addiu	$3,$3,%lo(get_btn_)
	sw	$3,8($2)
	lui	$3,%hi(put_led_)
	addiu	$3,$3,%lo(put_led_)
	sw	$3,12($2)
	lui	$3,%hi(set_vga_)
	addiu	$3,$3,%lo(set_vga_)
	sw	$3,16($2)
	lui	$3,%hi(set_cursor_)
	addiu	$3,$3,%lo(set_cursor_)
	sw	$3,20($2)
	lui	$3,%hi(get_cursor_)
	addiu	$3,$3,%lo(get_cursor_)
	sw	$3,24($2)
	lui	$3,%hi(scroll_screen_)
	addiu	$3,$3,%lo(scroll_screen_)
	sw	$3,28($2)
	lui	$3,%hi(clear_screen_)
	addiu	$3,$3,%lo(clear_screen_)
	sw	$3,32($2)
	lui	$3,%hi(put_charAt_)
	addiu	$3,$3,%lo(put_charAt_)
	sw	$3,36($2)
	lui	$3,%hi(put_char_)
	addiu	$3,$3,%lo(put_char_)
	sw	$3,40($2)
	lui	$3,%hi(put_string_)
	addiu	$3,$3,%lo(put_string_)
	sw	$3,44($2)
	lui	$3,%hi(put_pixel_)
	addiu	$3,$3,%lo(put_pixel_)
	sw	$3,48($2)
	lui	$3,%hi(get_char_)
	addiu	$3,$3,%lo(get_char_)
	sw	$3,52($2)
	lui	$3,%hi(pwd_)
	addiu	$3,$3,%lo(pwd_)
	sw	$3,56($2)
	lui	$3,%hi(cd_)
	addiu	$3,$3,%lo(cd_)
	sw	$3,60($2)
	lui	$3,%hi(crt_file_)
	addiu	$3,$3,%lo(crt_file_)
	sw	$3,64($2)
	lui	$3,%hi(del_file_)
	addiu	$3,$3,%lo(del_file_)
	sw	$3,68($2)
	lui	$3,%hi(fopen_)
	addiu	$3,$3,%lo(fopen_)
	sw	$3,72($2)
	lui	$3,%hi(fclose_)
	addiu	$3,$3,%lo(fclose_)
	sw	$3,76($2)
	lui	$3,%hi(fread_)
	addiu	$3,$3,%lo(fread_)
	sw	$3,80($2)
	lui	$3,%hi(fwrite_)
	addiu	$3,$3,%lo(fwrite_)
	sw	$3,84($2)
	lui	$3,%hi(fseek_)
	addiu	$3,$3,%lo(fseek_)
	sw	$3,88($2)
	lui	$3,%hi(dir_)
	addiu	$3,$3,%lo(dir_)
	sw	$3,92($2)
	lui	$3,%hi(feof_)
	addiu	$3,$3,%lo(feof_)
	jr	$31
	sw	$3,96($2)

	.set	macro
	.set	reorder
	.end	init_syscall
	.size	init_syscall, .-init_syscall
	.globl	syscall_tbl
	.section	.data,"aw",@progbits
	.align	2
	.type	syscall_tbl, @object
	.size	syscall_tbl, 128
syscall_tbl:
	.space	128
	.ident	"GCC: (GNU) 7.2.0"

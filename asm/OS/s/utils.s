	.file	1 "utils.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
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
 #APP
 # 5 "utils.c" 1
	li	$a0, 1
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
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
 #APP
 # 6 "utils.c" 1
	li	$a0, 2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	get_btn
	.size	get_btn, .-get_btn
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
 #APP
 # 7 "utils.c" 1
	li	$a0, 6
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	get_cursor
	.size	get_cursor, .-get_cursor
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
 #APP
 # 8 "utils.c" 1
	li	$a0, 8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	clear_screen
	.size	clear_screen, .-clear_screen
	.align	2
	.globl	get_char
	.set	nomips16
	.set	nomicromips
	.ent	get_char
	.type	get_char, @function
get_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
 #APP
 # 9 "utils.c" 1
	li	$a0, 13
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	get_char
	.size	get_char, .-get_char
	.align	2
	.globl	dir
	.set	nomips16
	.set	nomicromips
	.ent	dir
	.type	dir, @function
dir:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
 #APP
 # 10 "utils.c" 1
	li	$a0, 23
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	dir
	.size	dir, .-dir
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
	move	$2,$4
 #APP
 # 12 "utils.c" 1
	li	$a0, 0
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_seg
	.size	put_seg, .-put_seg
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
	move	$2,$4
 #APP
 # 13 "utils.c" 1
	li	$a0, 3
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
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
	move	$2,$4
 #APP
 # 14 "utils.c" 1
	li	$a0, 4
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	set_vga
	.size	set_vga, .-set_vga
	.align	2
	.globl	scroll_screen
	.set	nomips16
	.set	nomicromips
	.ent	scroll_screen
	.type	scroll_screen, @function
scroll_screen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 15 "utils.c" 1
	li	$a0, 7
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	scroll_screen
	.size	scroll_screen, .-scroll_screen
	.align	2
	.globl	put_char
	.set	nomips16
	.set	nomicromips
	.ent	put_char
	.type	put_char, @function
put_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 16 "utils.c" 1
	li	$a0, 10
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_char
	.size	put_char, .-put_char
	.align	2
	.globl	put_string
	.set	nomips16
	.set	nomicromips
	.ent	put_string
	.type	put_string, @function
put_string:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 17 "utils.c" 1
	li	$a0, 11
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_string
	.size	put_string, .-put_string
	.align	2
	.globl	cd
	.set	nomips16
	.set	nomicromips
	.ent	cd
	.type	cd, @function
cd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 18 "utils.c" 1
	li	$a0, 15
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	cd
	.size	cd, .-cd
	.align	2
	.globl	crt_file
	.set	nomips16
	.set	nomicromips
	.ent	crt_file
	.type	crt_file, @function
crt_file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 19 "utils.c" 1
	li	$a0, 16
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	crt_file
	.size	crt_file, .-crt_file
	.align	2
	.globl	del_file
	.set	nomips16
	.set	nomicromips
	.ent	del_file
	.type	del_file, @function
del_file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 20 "utils.c" 1
	li	$a0, 17
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	del_file
	.size	del_file, .-del_file
	.align	2
	.globl	fopen
	.set	nomips16
	.set	nomicromips
	.ent	fopen
	.type	fopen, @function
fopen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 21 "utils.c" 1
	li	$a0, 18
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	fopen
	.size	fopen, .-fopen
	.align	2
	.globl	fclose
	.set	nomips16
	.set	nomicromips
	.ent	fclose
	.type	fclose, @function
fclose:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 22 "utils.c" 1
	li	$a0, 19
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	fclose
	.size	fclose, .-fclose
	.align	2
	.globl	feof
	.set	nomips16
	.set	nomicromips
	.ent	feof
	.type	feof, @function
feof:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
 #APP
 # 23 "utils.c" 1
	li	$a0, 24
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	feof
	.size	feof, .-feof
	.align	2
	.globl	pwd
	.set	nomips16
	.set	nomicromips
	.ent	pwd
	.type	pwd, @function
pwd:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
 #APP
 # 25 "utils.c" 1
	li	$a0, 14
	move	$a1, $2
	move	$a2, $3
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	pwd
	.size	pwd, .-pwd
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
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 29 "utils.c" 1
	li	$a0, 5
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	set_cursor
	.size	set_cursor, .-set_cursor
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
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 30 "utils.c" 1
	li	$a0, 9
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_charAt
	.size	put_charAt, .-put_charAt
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
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 31 "utils.c" 1
	li	$a0, 12
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_pixel
	.size	put_pixel, .-put_pixel
	.align	2
	.globl	fread
	.set	nomips16
	.set	nomicromips
	.ent	fread
	.type	fread, @function
fread:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 32 "utils.c" 1
	li	$a0, 20
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	fread
	.size	fread, .-fread
	.align	2
	.globl	fwrite
	.set	nomips16
	.set	nomicromips
	.ent	fwrite
	.type	fwrite, @function
fwrite:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 33 "utils.c" 1
	li	$a0, 21
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	fwrite
	.size	fwrite, .-fwrite
	.align	2
	.globl	fseek
	.set	nomips16
	.set	nomicromips
	.ent	fseek
	.type	fseek, @function
fseek:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
	move	$8,$6
 #APP
 # 34 "utils.c" 1
	li	$a0, 22
	move	$a1, $2
	move	$a2, $3
	move	$a3, $8
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	fseek
	.size	fseek, .-fseek
	.align	2
	.globl	getc
	.set	nomips16
	.set	nomicromips
	.ent	getc
	.type	getc, @function
getc:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	li	$16,65535			# 0xffff
$L27:
	jal	get_char
	nop

	andi	$3,$2,0xffff
	beq	$3,$16,$L27
	andi	$2,$2,0x00ff

	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	getc
	.size	getc, .-getc
	.align	2
	.globl	putc
	.set	nomips16
	.set	nomicromips
	.ent	putc
	.type	putc, @function
putc:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	jal	put_char
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	putc
	.size	putc, .-putc
	.align	2
	.globl	gets
	.set	nomips16
	.set	nomicromips
	.ent	gets
	.type	gets, @function
gets:
	.frame	$sp,48,$31		# vars= 0, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L47
	nop

	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$22,40($sp)
	sw	$21,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$19,$5
	move	$20,$4
	move	$17,$0
	li	$16,65535			# 0xffff
	li	$21,8			# 0x8
	b	$L34
	li	$22,10			# 0xa

$L35:
	jal	put_char
	nop

	lbu	$2,0($18)
	nop
	beq	$2,$22,$L45
	addiu	$17,$17,1

$L36:
	sltu	$2,$17,$19
$L46:
	beq	$2,$0,$L32
	nop

$L34:
	jal	get_char
	nop

	andi	$3,$2,0xffff
	beq	$3,$16,$L34
	andi	$4,$2,0x00ff

	addu	$18,$20,$17
	bne	$3,$21,$L35
	sb	$4,0($18)

	beq	$17,$0,$L36
	nop

	jal	put_char
	addiu	$17,$17,-1

	b	$L46
	sltu	$2,$17,$19

$L45:
	sb	$0,0($18)
$L32:
	lw	$31,44($sp)
	lw	$22,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,48

$L47:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gets
	.size	gets, .-gets
	.align	2
	.globl	puts
	.set	nomips16
	.set	nomicromips
	.ent	puts
	.type	puts, @function
puts:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	lbu	$4,0($4)
	nop
	beq	$4,$0,$L48
	nop

$L50:
	jal	put_char
	addiu	$16,$16,1

	lbu	$4,0($16)
	nop
	bne	$4,$0,$L50
	nop

$L48:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	puts
	.size	puts, .-puts
	.align	2
	.globl	strncmp
	.set	nomips16
	.set	nomicromips
	.ent	strncmp
	.type	strncmp, @function
strncmp:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L57
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	bne	$3,$2,$L58
	addiu	$3,$4,1

	addiu	$5,$5,1
	addu	$6,$4,$6
$L55:
	beq	$3,$6,$L60
	nop

	lbu	$8,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	beq	$8,$7,$L55
	addiu	$5,$5,1

	jr	$31
	li	$2,1			# 0x1

$L60:
	jr	$31
	move	$2,$0

$L57:
	jr	$31
	move	$2,$6

$L58:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	strncmp
	.size	strncmp, .-strncmp
	.align	2
	.globl	strlen
	.set	nomips16
	.set	nomicromips
	.ent	strlen
	.type	strlen, @function
strlen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($4)
	nop
	beq	$2,$0,$L64
	addiu	$4,$4,1

	move	$2,$0
$L63:
	addiu	$4,$4,1
	lbu	$3,-1($4)
	nop
	bne	$3,$0,$L63
	addiu	$2,$2,1

	jr	$31
	nop

$L64:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strlen
	.size	strlen, .-strlen
	.align	2
	.globl	memncpy
	.set	nomips16
	.set	nomicromips
	.ent	memncpy
	.type	memncpy, @function
memncpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L70
	move	$2,$5

	addu	$5,$5,$6
$L68:
	lbu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L68
	addiu	$4,$4,1

$L70:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memncpy
	.size	memncpy, .-memncpy
	.align	2
	.globl	printHex
	.set	nomips16
	.set	nomicromips
	.ent	printHex
	.type	printHex, @function
printHex:
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
	beq	$2,$0,$L72
	nop

	jal	put_char
	addiu	$4,$4,48

	andi	$16,$16,0xf
$L78:
	sltu	$2,$16,10
	bne	$2,$0,$L77
	nop

	jal	put_char
	addiu	$4,$16,55

$L71:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L72:
	jal	put_char
	addiu	$4,$4,55

	b	$L78
	andi	$16,$16,0xf

$L77:
	jal	put_char
	addiu	$4,$16,48

	b	$L71
	nop

	.set	macro
	.set	reorder
	.end	printHex
	.size	printHex, .-printHex
	.ident	"GCC: (GNU) 7.2.0"

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
 # 11 "utils.c" 1
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
 # 12 "utils.c" 1
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
 # 13 "utils.c" 1
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
 # 14 "utils.c" 1
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
 # 15 "utils.c" 1
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
 # 16 "utils.c" 1
	li	$a0, 11
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_string
	.size	put_string, .-put_string
	.align	2
	.globl	read_disk
	.set	nomips16
	.set	nomicromips
	.ent	read_disk
	.type	read_disk, @function
read_disk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
 #APP
 # 18 "utils.c" 1
	li	$a0, 14
	move	$a1, $2
	move	$a2, $3
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	read_disk
	.size	read_disk, .-read_disk
	.align	2
	.globl	write_disk
	.set	nomips16
	.set	nomicromips
	.ent	write_disk
	.type	write_disk, @function
write_disk:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$2,$4
	move	$3,$5
 #APP
 # 19 "utils.c" 1
	li	$a0, 15
	move	$a1, $2
	move	$a2, $3
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	write_disk
	.size	write_disk, .-write_disk
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
 # 21 "utils.c" 1
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
 # 22 "utils.c" 1
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
 # 23 "utils.c" 1
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
$L18:
	jal	get_char
	nop

	andi	$2,$2,0xffff
	beq	$2,$16,$L18
	nop

	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	getc
	.size	getc, .-getc
	.align	2
	.globl	gets
	.set	nomips16
	.set	nomicromips
	.ent	gets
	.type	gets, @function
gets:
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L34
	nop

	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$18,$5
	move	$19,$4
	move	$17,$0
	li	$20,8			# 0x8
	b	$L26
	li	$21,10			# 0xa

$L23:
	jal	put_char
	move	$4,$2

	lhu	$2,0($16)
	nop
	beq	$2,$21,$L32
	addiu	$17,$17,1

$L24:
	sltu	$2,$17,$18
$L33:
	beq	$2,$0,$L21
	nop

$L26:
	sll	$16,$17,1
	jal	getc
	addu	$16,$19,$16

	bne	$2,$20,$L23
	sh	$2,0($16)

	beq	$17,$0,$L33
	sltu	$2,$17,$18

	jal	put_char
	move	$4,$20

	b	$L24
	addiu	$17,$17,-1

$L32:
	sh	$0,0($16)
$L21:
	lw	$31,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,48

$L34:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gets
	.size	gets, .-gets
	.align	2
	.globl	strcmp_short
	.set	nomips16
	.set	nomicromips
	.ent	strcmp_short
	.type	strcmp_short, @function
strcmp_short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L39
	nop

	lhu	$3,0($4)
	lhu	$2,0($5)
	nop
	bne	$3,$2,$L40
	addiu	$4,$4,2

	addiu	$5,$5,2
	move	$3,$0
$L37:
	addiu	$3,$3,1
	beq	$6,$3,$L42
	nop

	lhu	$8,0($4)
	lhu	$7,0($5)
	addiu	$4,$4,2
	beq	$8,$7,$L37
	addiu	$5,$5,2

	jr	$31
	li	$2,1			# 0x1

$L42:
	jr	$31
	move	$2,$0

$L39:
	jr	$31
	move	$2,$6

$L40:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	strcmp_short
	.size	strcmp_short, .-strcmp_short
	.align	2
	.globl	strcmp_char
	.set	nomips16
	.set	nomicromips
	.ent	strcmp_char
	.type	strcmp_char, @function
strcmp_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L47
	nop

	lbu	$3,0($4)
	lbu	$2,0($5)
	nop
	bne	$3,$2,$L48
	addiu	$3,$4,1

	addiu	$5,$5,1
	addu	$6,$4,$6
$L45:
	beq	$3,$6,$L50
	nop

	lbu	$8,0($3)
	lbu	$7,0($5)
	addiu	$3,$3,1
	beq	$8,$7,$L45
	addiu	$5,$5,1

	jr	$31
	li	$2,1			# 0x1

$L50:
	jr	$31
	move	$2,$0

$L47:
	jr	$31
	move	$2,$6

$L48:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	strcmp_char
	.size	strcmp_char, .-strcmp_char
	.align	2
	.globl	strlen_short
	.set	nomips16
	.set	nomicromips
	.ent	strlen_short
	.type	strlen_short, @function
strlen_short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lhu	$2,0($4)
	nop
	beq	$2,$0,$L54
	addiu	$4,$4,2

	move	$2,$0
$L53:
	addiu	$4,$4,2
	lhu	$3,-2($4)
	nop
	bne	$3,$0,$L53
	addiu	$2,$2,1

	jr	$31
	nop

$L54:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strlen_short
	.size	strlen_short, .-strlen_short
	.align	2
	.globl	strlen_char
	.set	nomips16
	.set	nomicromips
	.ent	strlen_char
	.type	strlen_char, @function
strlen_char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lbu	$2,0($4)
	nop
	beq	$2,$0,$L59
	addiu	$4,$4,1

	move	$2,$0
$L58:
	addiu	$4,$4,1
	lbu	$3,-1($4)
	nop
	bne	$3,$0,$L58
	addiu	$2,$2,1

	jr	$31
	nop

$L59:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	strlen_char
	.size	strlen_char, .-strlen_char
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
	beq	$6,$0,$L65
	move	$2,$5

	addu	$5,$5,$6
$L63:
	lbu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,1
	bne	$2,$5,$L63
	addiu	$4,$4,1

$L65:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	memncpy
	.size	memncpy, .-memncpy
	.align	2
	.globl	short2char
	.set	nomips16
	.set	nomicromips
	.ent	short2char
	.type	short2char, @function
short2char:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L70
	move	$2,$5

	sll	$6,$6,1
	addu	$5,$5,$6
$L68:
	lhu	$3,0($2)
	nop
	sb	$3,0($4)
	addiu	$2,$2,2
	bne	$2,$5,$L68
	addiu	$4,$4,1

$L70:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	short2char
	.size	short2char, .-short2char
	.align	2
	.globl	char2short
	.set	nomips16
	.set	nomicromips
	.ent	char2short
	.type	char2short, @function
char2short:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L75
	move	$2,$4

	sll	$6,$6,1
	addu	$4,$4,$6
$L73:
	lbu	$3,0($5)
	nop
	sh	$3,0($2)
	addiu	$2,$2,2
	bne	$2,$4,$L73
	addiu	$5,$5,1

$L75:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	char2short
	.size	char2short, .-char2short
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
	beq	$2,$0,$L77
	nop

	jal	put_char
	addiu	$4,$4,48

	andi	$16,$16,0xf
$L83:
	sltu	$2,$16,10
	bne	$2,$0,$L82
	nop

	jal	put_char
	addiu	$4,$16,55

$L76:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L77:
	jal	put_char
	addiu	$4,$4,55

	b	$L83
	andi	$16,$16,0xf

$L82:
	jal	put_char
	addiu	$4,$16,48

	b	$L76
	nop

	.set	macro
	.set	reorder
	.end	printHex
	.size	printHex, .-printHex
	.ident	"GCC: (GNU) 7.2.0"

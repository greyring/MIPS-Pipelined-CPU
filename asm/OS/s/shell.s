	.file	1 "shell.c"
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
 # 64 "./include/unistd.h" 1
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
 # 65 "./include/unistd.h" 1
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
 # 66 "./include/unistd.h" 1
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
 # 67 "./include/unistd.h" 1
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
 # 68 "./include/unistd.h" 1
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
 # 70 "./include/unistd.h" 1
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
 # 71 "./include/unistd.h" 1
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
 # 72 "./include/unistd.h" 1
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
 # 73 "./include/unistd.h" 1
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
 # 74 "./include/unistd.h" 1
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
 # 75 "./include/unistd.h" 1
	li	$a0, 11
	move	$a1, $2
	syscall
	
 # 0 "" 2
 #NO_APP
	jr	$31
	.end	put_string
	.size	put_string, .-put_string
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
 #APP
 # 77 "./include/unistd.h" 1
	li	$a0, 5
	move	$a1, $2
	move	$a2, $5
	move	$a3, $6
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
 #APP
 # 78 "./include/unistd.h" 1
	li	$a0, 9
	move	$a1, $2
	move	$a2, $5
	move	$a3, $6
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
 #APP
 # 79 "./include/unistd.h" 1
	li	$a0, 12
	move	$a1, $2
	move	$a2, $5
	move	$a3, $6
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
$L16:
	jal	get_char
	nop

	andi	$2,$2,0xffff
	beq	$2,$16,$L16
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
	beq	$4,$0,$L31
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
	b	$L23
	li	$20,8			# 0x8

$L21:
	jal	put_char
	li	$4,10			# 0xa

	addiu	$16,$16,2
	addu	$16,$18,$16
	lhu	$3,0($16)
	li	$2,10			# 0xa
	beq	$3,$2,$L29
	addiu	$17,$17,1

$L22:
	sltu	$2,$17,$19
$L30:
	beq	$2,$0,$L19
	nop

$L23:
	sll	$16,$17,1
	jal	getc
	addu	$21,$18,$16

	bne	$2,$20,$L21
	sh	$2,0($21)

	beq	$17,$0,$L22
	nop

	lhu	$4,-2($21)
	jal	put_char
	addiu	$17,$17,-1

	b	$L30
	sltu	$2,$17,$19

$L29:
	sh	$0,0($16)
$L19:
	lw	$31,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,48

$L31:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	gets
	.size	gets, .-gets
	.align	2
	.globl	shell
	.set	nomips16
	.set	nomicromips
	.ent	shell
	.type	shell, @function
shell:
	.frame	$sp,288,$31		# vars= 256, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-288
	sw	$31,284($sp)
	sw	$18,280($sp)
	sw	$17,276($sp)
	sw	$16,272($sp)
	lui	$17,%hi(TIP)
	addiu	$17,$17,%lo(TIP)
	lui	$16,%hi(CLS)
	addiu	$16,$16,%lo(CLS)
	lui	$18,%hi(UNKNOWN)
	b	$L33
	addiu	$18,$18,%lo(UNKNOWN)

$L34:
	jal	put_string
	move	$4,$18

$L33:
	jal	put_string
	move	$4,$17

	addiu	$5,$sp,16
	jal	gets
	li	$4,128			# 0x80

	move	$6,$16
	addiu	$5,$sp,16
	jal	kstrcmp_short
	li	$4,6			# 0x6

	bne	$2,$0,$L34
	nop

	jal	clear_screen
	nop

	b	$L33
	nop

	.set	macro
	.set	reorder
	.end	shell
	.size	shell, .-shell
	.globl	CLS
	.section	.data,"aw",@progbits
	.align	2
	.type	CLS, @object
	.size	CLS, 12
CLS:
	.half	99
	.half	108
	.half	101
	.half	97
	.half	114
	.half	0
	.globl	UNKNOWN
	.align	2
	.type	UNKNOWN, @object
	.size	UNKNOWN, 18
UNKNOWN:
	.half	85
	.half	110
	.half	107
	.half	110
	.half	111
	.half	119
	.half	110
	.half	10
	.half	0
	.globl	TIP
	.align	2
	.type	TIP, @object
	.size	TIP, 6
TIP:
	.half	36
	.half	62
	.half	0
	.ident	"GCC: (GNU) 7.2.0"

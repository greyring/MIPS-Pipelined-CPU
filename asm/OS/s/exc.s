	.file	1 "exc.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	handle_syscall
	.set	nomips16
	.set	nomicromips
	.ent	handle_syscall
	.type	handle_syscall, @function
handle_syscall:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$4,$7
 #APP
 # 45 "exc.c" 1
	addiu	$s0, $2, 4
	mtc0	$s0, $14
	
 # 0 "" 2
 #NO_APP
	lw	$2,96($7)
	#nop
	sll	$2,$2,2
	lui	$3,%hi(syscall_tbl)
	addiu	$3,$3,%lo(syscall_tbl)
	addu	$2,$2,$3
	lw	$2,0($2)
	#nop
	jalr	$2
	lw	$31,20($sp)
	lw	$16,16($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	handle_syscall
	.size	handle_syscall, .-handle_syscall
	.align	2
	.globl	handle_interrupt
	.set	nomips16
	.set	nomicromips
	.ent	handle_interrupt
	.type	handle_interrupt, @function
handle_interrupt:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	andi	$2,$5,0x8000
	bne	$2,$0,$L7
	sw	$31,20($sp)

	andi	$5,$5,0x4000
	bne	$5,$0,$L8
	nop

$L3:
	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L7:
	jal	handle_timer
	nop

	b	$L3
	nop

$L8:
	jal	handle_keyboard
	nop

	b	$L3
	nop

	.set	macro
	.set	reorder
	.end	handle_interrupt
	.size	handle_interrupt, .-handle_interrupt
	.align	2
	.globl	handle_exception
	.set	nomips16
	.set	nomicromips
	.ent	handle_exception
	.type	handle_exception, @function
handle_exception:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	andi	$2,$5,0x7c
	lui	$3,%hi(exc_tbl)
	addiu	$3,$3,%lo(exc_tbl)
	addu	$2,$2,$3
	lw	$2,0($2)
	nop
	jalr	$2
	nop

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	handle_exception
	.size	handle_exception, .-handle_exception
	.globl	syscall_tbl
	.data
	.align	2
	.type	syscall_tbl, @object
	.size	syscall_tbl, 128
syscall_tbl:
	.word	put_seg
	.word	get_sw
	.word	get_btn
	.word	put_led
	.word	set_vga
	.word	set_cursor
	.word	get_cursor
	.word	scroll_screen
	.word	clear_screen
	.word	put_charAt
	.word	put_char
	.word	put_string
	.word	put_pixel
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
	.word	0
	.globl	exc_tbl
	.align	2
	.type	exc_tbl, @object
	.size	exc_tbl, 128
exc_tbl:
	.word	handle_interrupt
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	handle_syscall
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
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.ident	"GCC: (GNU) 7.2.0"

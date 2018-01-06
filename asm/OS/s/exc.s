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
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lw	$2,108($4)
	nop
	addiu	$2,$2,4
	sw	$2,108($4)
	lw	$2,96($4)
	nop
	sll	$2,$2,2
	lui	$3,%hi(syscall_tbl)
	addiu	$3,$3,%lo(syscall_tbl)
	addu	$2,$2,$3
	lw	$2,0($2)
	nop
	jalr	$2
	move	$16,$4

	sw	$2,104($16)
	lw	$31,20($sp)
	lw	$16,16($sp)
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
	sw	$31,20($sp)
	lw	$2,112($4)
	nop
	andi	$3,$2,0x8000
	bne	$3,$0,$L7
	andi	$2,$2,0x4000

	bne	$2,$0,$L8
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
	lw	$2,112($4)
	nop
	andi	$2,$2,0x7c
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
	.align	2
	.globl	init_exc
	.set	nomips16
	.set	nomicromips
	.ent	init_exc
	.type	init_exc, @function
init_exc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(exc_tbl)
	lui	$3,%hi(handle_interrupt)
	addiu	$3,$3,%lo(handle_interrupt)
	sw	$3,%lo(exc_tbl)($2)
	addiu	$2,$2,%lo(exc_tbl)
	lui	$3,%hi(handle_syscall)
	addiu	$3,$3,%lo(handle_syscall)
	jr	$31
	sw	$3,32($2)

	.set	macro
	.set	reorder
	.end	init_exc
	.size	init_exc, .-init_exc
	.section	.data,"aw",@progbits
	.align	2
	.type	exc_tbl, @object
	.size	exc_tbl, 128
exc_tbl:
	.space	128
	.ident	"GCC: (GNU) 7.2.0"

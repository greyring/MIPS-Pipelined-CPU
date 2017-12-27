	.file	1 "timer.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	init_timer
	.set	nomips16
	.set	nomicromips
	.ent	init_timer
	.type	init_timer, @function
init_timer:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	lui	$3,%hi(inner_time)
	li	$2,48			# 0x30
	sh	$2,%lo(inner_time)($3)
	addiu	$3,$3,%lo(inner_time)
	sh	$2,2($3)
	li	$4,58			# 0x3a
	sh	$4,4($3)
	sh	$2,6($3)
	sh	$2,8($3)
	sh	$4,10($3)
	sh	$2,12($3)
	sh	$2,14($3)
	move	$2,$3
	addiu	$5,$3,16
	li	$4,-1342177280			# 0xffffffffb0000000
	addiu	$4,$4,12960
	li	$6,1056964608			# 0x3f000000
$L2:
	lhu	$3,0($2)
	#nop
	or	$3,$3,$6
	sw	$3,0($4)
	addiu	$2,$2,2
	.set	noreorder
	.set	nomacro
	bne	$2,$5,$L2
	addiu	$4,$4,4
	.set	macro
	.set	reorder

 #APP
 # 27 "timer.c" 1
	li	$s0, 50000000
	mtc0	$0, $9
	mtc0	$s0, $11
	
 # 0 "" 2
 #NO_APP
	lw	$16,4($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

	.end	init_timer
	.size	init_timer, .-init_timer
	.align	2
	.globl	handle_timer
	.set	nomips16
	.set	nomicromips
	.ent	handle_timer
	.type	handle_timer, @function
handle_timer:
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	lui	$2,%hi(inner_time+14)
	lhu	$2,%lo(inner_time+14)($2)
	li	$3,57			# 0x39
	.set	noreorder
	.set	nomacro
	beq	$2,$3,$L16
	addiu	$2,$2,1
	.set	macro
	.set	reorder

	lui	$3,%hi(inner_time+14)
	sh	$2,%lo(inner_time+14)($3)
$L11:
	lui	$2,%hi(inner_time)
$L23:
	addiu	$2,$2,%lo(inner_time)
	addiu	$6,$2,16
	li	$4,-1342177280			# 0xffffffffb0000000
	addiu	$4,$4,12960
	li	$5,1056964608			# 0x3f000000
$L13:
	lhu	$3,0($2)
	#nop
	or	$3,$3,$5
	sw	$3,0($4)
	addiu	$2,$2,2
	.set	noreorder
	.set	nomacro
	bne	$2,$6,$L13
	addiu	$4,$4,4
	.set	macro
	.set	reorder

 #APP
 # 94 "timer.c" 1
	li	$s0, 50000000
	mtc0	$0, $9
	mtc0	$s0, $11
	
 # 0 "" 2
 #NO_APP
	lw	$16,4($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

$L16:
	lui	$2,%hi(inner_time)
	addiu	$2,$2,%lo(inner_time)
	li	$3,48			# 0x30
	sh	$3,14($2)
	lhu	$2,12($2)
	li	$3,53			# 0x35
	.set	noreorder
	.set	nomacro
	beq	$2,$3,$L17
	addiu	$2,$2,1
	.set	macro
	.set	reorder

	lui	$3,%hi(inner_time+12)
	.set	noreorder
	.set	nomacro
	b	$L11
	sh	$2,%lo(inner_time+12)($3)
	.set	macro
	.set	reorder

$L17:
	lui	$2,%hi(inner_time)
	addiu	$2,$2,%lo(inner_time)
	li	$3,48			# 0x30
	sh	$3,12($2)
	lhu	$2,8($2)
	li	$3,57			# 0x39
	.set	noreorder
	.set	nomacro
	beq	$2,$3,$L18
	addiu	$2,$2,1
	.set	macro
	.set	reorder

	lui	$3,%hi(inner_time+8)
	.set	noreorder
	.set	nomacro
	b	$L11
	sh	$2,%lo(inner_time+8)($3)
	.set	macro
	.set	reorder

$L18:
	lui	$2,%hi(inner_time)
	addiu	$2,$2,%lo(inner_time)
	li	$3,48			# 0x30
	sh	$3,8($2)
	lhu	$2,6($2)
	li	$3,53			# 0x35
	.set	noreorder
	.set	nomacro
	beq	$2,$3,$L19
	addiu	$2,$2,1
	.set	macro
	.set	reorder

	lui	$3,%hi(inner_time+6)
	.set	noreorder
	.set	nomacro
	b	$L11
	sh	$2,%lo(inner_time+6)($3)
	.set	macro
	.set	reorder

$L19:
	lui	$2,%hi(inner_time)
	addiu	$3,$2,%lo(inner_time)
	li	$4,48			# 0x30
	sh	$4,6($3)
	lhu	$3,%lo(inner_time)($2)
	li	$2,50			# 0x32
	.set	noreorder
	.set	nomacro
	beq	$3,$2,$L20
	lui	$2,%hi(inner_time+2)
	.set	macro
	.set	reorder

$L22:
	lhu	$2,%lo(inner_time+2)($2)
	li	$4,57			# 0x39
	.set	noreorder
	.set	nomacro
	beq	$2,$4,$L21
	addiu	$2,$2,1
	.set	macro
	.set	reorder

	lui	$3,%hi(inner_time+2)
	.set	noreorder
	.set	nomacro
	b	$L11
	sh	$2,%lo(inner_time+2)($3)
	.set	macro
	.set	reorder

$L20:
	lhu	$4,%lo(inner_time+2)($2)
	li	$2,51			# 0x33
	.set	noreorder
	.set	nomacro
	bne	$4,$2,$L22
	lui	$2,%hi(inner_time+2)
	.set	macro
	.set	reorder

	lui	$2,%hi(inner_time)
	li	$3,48			# 0x30
	sh	$3,%lo(inner_time)($2)
	addiu	$2,$2,%lo(inner_time)
	.set	noreorder
	.set	nomacro
	b	$L11
	sh	$3,2($2)
	.set	macro
	.set	reorder

$L21:
	lui	$2,%hi(inner_time)
	addiu	$4,$2,%lo(inner_time)
	li	$5,48			# 0x30
	sh	$5,2($4)
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	b	$L23
	sh	$3,%lo(inner_time)($2)
	.set	macro
	.set	reorder

	.end	handle_timer
	.size	handle_timer, .-handle_timer
	.globl	inner_time
	.section	.data,"aw",@progbits
	.align	2
	.type	inner_time, @object
	.size	inner_time, 16
inner_time:
	.space	16
	.ident	"GCC: (GNU) 7.2.0"

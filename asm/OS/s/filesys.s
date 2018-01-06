	.file	1 "filesys.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	get_file_name
	.type	get_file_name, @function
get_file_name:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	move	$2,$0
	move	$3,$0
	li	$7,1			# 0x1
	li	$8,47			# 0x2f
	li	$13,11			# 0xb
	li	$12,46			# 0x2e
	li	$14,8			# 0x8
	addiu	$11,$4,8
	b	$L25
	li	$10,32			# 0x20

$L3:
	lw	$6,0($5)
	nop
	lbu	$6,0($6)
	nop
	beq	$6,$0,$L8
	nop

	beq	$6,$8,$L8
	nop

	beq	$6,$12,$L29
	nop

	beq	$3,$14,$L34
	addu	$9,$4,$3

	sb	$6,0($9)
	addiu	$3,$3,1
$L2:
	lw	$6,0($5)
	nop
	addiu	$6,$6,1
	sw	$6,0($5)
	sltu	$6,$3,12
	beq	$6,$0,$L30
	nop

$L25:
	beq	$2,$0,$L3
	nop

	bne	$2,$7,$L2
	nop

	lw	$6,0($5)
	nop
	lbu	$6,0($6)
	nop
	beq	$6,$0,$L16
	nop

	beq	$6,$8,$L16
	nop

	beq	$3,$13,$L21
	addu	$9,$4,$3

	sb	$6,0($9)
	b	$L2
	addiu	$3,$3,1

$L8:
	sltu	$2,$3,11
	beq	$2,$0,$L31
	addu	$3,$4,$3

	addiu	$4,$4,11
	li	$2,32			# 0x20
$L10:
	sb	$2,0($3)
	addiu	$3,$3,1
	bne	$4,$3,$L10
	nop

	jr	$31
	li	$2,1			# 0x1

$L31:
	jr	$31
	li	$2,1			# 0x1

$L29:
	sltu	$2,$3,8
	beq	$2,$0,$L2
	move	$2,$7

	addu	$3,$4,$3
$L12:
	sb	$10,0($3)
	addiu	$3,$3,1
	bne	$3,$11,$L12
	nop

	lw	$2,0($5)
	nop
	addiu	$2,$2,1
	sw	$2,0($5)
	move	$3,$14
	b	$L25
	move	$2,$7

$L16:
	sltu	$5,$3,11
	beq	$5,$0,$L34
	addu	$3,$4,$3

	addiu	$4,$4,11
	li	$5,32			# 0x20
$L18:
	sb	$5,0($3)
	addiu	$3,$3,1
	bne	$3,$4,$L18
	nop

$L34:
	jr	$31
	nop

$L30:
	jr	$31
	move	$2,$0

$L21:
$L7 = .
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	get_file_name
	.size	get_file_name, .-get_file_name
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	do_open
	.type	do_open, @function
do_open:
	.frame	$sp,40,$31		# vars= 0, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$20,32($sp)
	sw	$19,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	move	$20,$5
	move	$19,$6
	move	$18,$7
	addiu	$17,$6,4
	addu	$17,$17,$7
	lbu	$2,11($17)
	nop
	sb	$2,0($4)
	lhu	$2,26($17)
	nop
	addiu	$2,$2,-2
	sh	$2,2($4)
	lw	$2,28($17)
	nop
	sw	$2,4($4)
	li	$6,8			# 0x8
	jal	kmemcpy
	addiu	$4,$4,8

	li	$6,3			# 0x3
	addiu	$5,$20,8
	jal	kmemcpy
	addiu	$4,$16,16

	lhu	$2,26($17)
	nop
	sw	$2,24($16)
	sw	$0,28($16)
	sw	$0,32($16)
	lhu	$2,2($19)
	nop
	sh	$2,20($16)
	sh	$18,22($16)
	lw	$31,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	do_open
	.size	do_open, .-do_open
	.align	2
	.globl	read_
	.set	nomips16
	.set	nomicromips
	.ent	read_
	.type	read_, @function
read_:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sll	$2,$5,16
	ori	$2,$2,0x20
	sw	$2,0($sp)
	lw	$3,0($sp)
	li	$2,-1342177280			# 0xffffffffb0000000
	sw	$3,24($2)
	li	$3,-1342177280			# 0xffffffffb0000000
$L38:
	lw	$2,24($3)
	nop
	andi	$2,$2,0x40
	beq	$2,$0,$L38
	li	$2,-1342046208			# 0xffffffffb0020000

	li	$5,-1342046208			# 0xffffffffb0020000
	addiu	$5,$5,512
$L39:
	lw	$3,0($2)
	nop
	sw	$3,0($4)
	addiu	$2,$2,4
	bne	$2,$5,$L39
	addiu	$4,$4,4

	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	read_
	.size	read_, .-read_
	.align	2
	.globl	write_
	.set	nomips16
	.set	nomicromips
	.ent	write_
	.type	write_, @function
write_:
	.frame	$sp,8,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	li	$2,-1342046208			# 0xffffffffb0020000
	li	$6,-1342046208			# 0xffffffffb0020000
	addiu	$6,$6,512
$L44:
	lw	$3,0($4)
	nop
	sw	$3,0($2)
	addiu	$2,$2,4
	bne	$2,$6,$L44
	addiu	$4,$4,4

	sll	$2,$5,16
	ori	$2,$2,0x30
	sw	$2,0($sp)
	lw	$3,0($sp)
	li	$2,-1342177280			# 0xffffffffb0000000
	sw	$3,24($2)
	li	$3,-1342177280			# 0xffffffffb0000000
$L45:
	lw	$2,24($3)
	nop
	andi	$2,$2,0x40
	beq	$2,$0,$L45
	nop

	jr	$31
	addiu	$sp,$sp,8

	.set	macro
	.set	reorder
	.end	write_
	.size	write_, .-write_
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	write_buffer
	.type	write_buffer, @function
write_buffer:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(_sect_buffer)
	lbu	$2,%lo(_sect_buffer)($2)
	nop
	bne	$2,$0,$L55
	lui	$4,%hi(_sect_buffer+4)

	jr	$31
	nop

$L55:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lui	$16,%hi(_sect_buffer)
	addiu	$2,$16,%lo(_sect_buffer)
	lhu	$5,2($2)
	jal	write_
	addiu	$4,$4,%lo(_sect_buffer+4)

	sb	$0,%lo(_sect_buffer)($16)
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	write_buffer
	.size	write_buffer, .-write_buffer
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	read_disk
	.type	read_disk, @function
read_disk:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	jal	write_buffer
	move	$16,$4

	andi	$5,$16,0xffff
	lui	$16,%hi(_sect_buffer)
	addiu	$16,$16,%lo(_sect_buffer)
	sh	$5,2($16)
	lui	$4,%hi(_sect_buffer+4)
	jal	read_
	addiu	$4,$4,%lo(_sect_buffer+4)

	move	$2,$16
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	read_disk
	.size	read_disk, .-read_disk
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	get_next_sect
	.type	get_next_sect, @function
get_next_sect:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	move	$16,$4
	lw	$2,24($4)
	nop
	srl	$2,$2,8
	lui	$3,%hi(_volume+8)
	lw	$4,%lo(_volume+8)($3)
	jal	read_disk
	addu	$4,$2,$4

	lw	$5,24($16)
	nop
	sll	$3,$5,1
	andi	$3,$3,0x1fe
	addu	$2,$2,$3
	lhu	$17,4($2)
	nop
	addiu	$2,$17,-1
	andi	$2,$2,0xffff
	li	$3,65527			# 0xfff7
	sltu	$2,$2,$3
	bne	$2,$0,$L64
	lui	$2,%hi(_volume+24)

$L61 = .
	lw	$4,%lo(_volume+24)($2)
	nop
	addiu	$4,$4,-2
	jal	read_disk
	addu	$4,$4,$5

	move	$2,$0
$L60:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,32

$L64:
	lw	$4,%lo(_volume+24)($2)
	nop
	addiu	$4,$4,-2
	jal	read_disk
	addu	$4,$4,$17

	sw	$2,36($16)
	sw	$17,24($16)
	lw	$2,28($16)
	nop
	addiu	$2,$2,512
	sw	$2,28($16)
	b	$L60
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	get_next_sect
	.size	get_next_sect, .-get_next_sect
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	seek_sect
	.type	seek_sect, @function
seek_sect:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lhu	$5,2($4)
	li	$2,65534			# 0xfffe
	beq	$5,$2,$L71
	nop

	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	lw	$2,32($4)
	lw	$3,28($4)
	nop
	sltu	$4,$2,$3
	bne	$4,$0,$L67
	addiu	$3,$3,512

	sltu	$2,$2,$3
	beq	$2,$0,$L69
	lui	$2,%hi(_volume+24)

	lw	$2,%lo(_volume+24)($2)
	nop
	addiu	$2,$2,-2
	lw	$4,24($16)
	jal	read_disk
	addu	$4,$2,$4

	sw	$2,36($16)
	b	$L65
	li	$2,1			# 0x1

$L67:
	lui	$2,%hi(_volume+24)
	lw	$4,%lo(_volume+24)($2)
	jal	read_disk
	addu	$4,$5,$4

	sw	$2,36($16)
	sw	$0,28($16)
	lhu	$2,2($16)
	nop
	addiu	$2,$2,2
	b	$L69
	sw	$2,24($16)

$L70:
	jal	get_next_sect
	move	$4,$16

	beq	$2,$0,$L65
	nop

$L69:
	lw	$2,32($16)
	lw	$3,28($16)
	nop
	sltu	$4,$2,$3
	bne	$4,$0,$L70
	addiu	$3,$3,512

	sltu	$2,$2,$3
	beq	$2,$0,$L70
	li	$2,1			# 0x1

$L65:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L71:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	seek_sect
	.size	seek_sect, .-seek_sect
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	dget_next_sect
	.type	dget_next_sect, @function
dget_next_sect:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lbu	$2,0($4)
	li	$3,1			# 0x1
	beq	$2,$3,$L83
	move	$16,$4

	bne	$2,$0,$L84
	move	$2,$0

	jal	get_next_sect
	addiu	$4,$4,4

	beq	$2,$0,$L84
	move	$2,$0

	lw	$2,40($16)
$L76:
$L84:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L83:
	lhu	$4,2($4)
	lui	$2,%hi(_volume+20)
	lw	$2,%lo(_volume+20)($2)
	nop
	beq	$4,$2,$L79
	nop

	addiu	$4,$4,1
	andi	$4,$4,0xffff
	jal	read_disk
	sh	$4,2($16)

	b	$L76
	nop

$L79:
	b	$L76
	move	$2,$0

	b	$L76
	move	$2,$0

	.set	macro
	.set	reorder
	.end	dget_next_sect
	.size	dget_next_sect, .-dget_next_sect
	.align	2
	.globl	seek_file
	.set	nomips16
	.set	nomicromips
	.ent	seek_file
	.type	seek_file, @function
seek_file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$6,$0,$L87
	li	$2,1			# 0x1

	beq	$6,$2,$L93
	li	$2,2			# 0x2

	beq	$6,$2,$L94
	move	$2,$0

	jr	$31
	nop

$L93:
	lw	$2,32($4)
	nop
	addu	$5,$5,$2
$L87:
	bltz	$5,$L91
	nop

	lw	$2,4($4)
	nop
	sltu	$2,$5,$2
	beq	$2,$0,$L92
	nop

	sw	$5,32($4)
	jr	$31
	li	$2,1			# 0x1

$L94:
	lw	$2,4($4)
	b	$L87
	addu	$5,$5,$2

$L91:
	jr	$31
	move	$2,$0

$L92:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	seek_file
	.size	seek_file, .-seek_file
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	dget_first_sect
	.type	dget_first_sect, @function
dget_first_sect:
	.frame	$sp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0x80030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	lbu	$2,0($4)
	li	$3,1			# 0x1
	beq	$2,$3,$L101
	move	$16,$4

	bne	$2,$0,$L98
	addiu	$17,$4,4

	move	$6,$0
	move	$5,$0
	jal	seek_file
	move	$4,$17

	jal	seek_sect
	move	$4,$17

	beq	$2,$0,$L102
	move	$2,$0

	lw	$2,40($16)
$L95:
$L102:
	lw	$31,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,32

$L101:
	lui	$2,%hi(_volume)
	addiu	$2,$2,%lo(_volume)
	lw	$3,16($2)
	nop
	sh	$3,2($4)
	lw	$4,16($2)
	jal	read_disk
	nop

	b	$L95
	nop

$L98:
	b	$L95
	move	$2,$0

	.set	macro
	.set	reorder
	.end	dget_first_sect
	.size	dget_first_sect, .-dget_first_sect
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	do_cd
	.type	do_cd, @function
do_cd:
	.frame	$sp,368,$31		# vars= 320, regs= 8/0, args= 16, gp= 0
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-368
	sw	$31,364($sp)
	sw	$22,360($sp)
	sw	$21,356($sp)
	sw	$20,352($sp)
	sw	$19,348($sp)
	sw	$18,344($sp)
	sw	$17,340($sp)
	sw	$16,336($sp)
	move	$20,$4
	sw	$5,372($sp)
	li	$6,3			# 0x3
	lui	$4,%hi(_ROOT_STR)
	jal	kstrcmp_char
	addiu	$4,$4,%lo(_ROOT_STR)

	beq	$2,$0,$L139
	move	$2,$20

	addiu	$3,$sp,16
	addiu	$4,$20,304
$L106:
	lw	$8,0($2)
	lw	$7,4($2)
	lw	$6,8($2)
	lw	$5,12($2)
	sw	$8,0($3)
	sw	$7,4($3)
	sw	$6,8($3)
	sw	$5,12($3)
	addiu	$2,$2,16
	bne	$2,$4,$L106
	addiu	$3,$3,16

	b	$L143
	li	$18,512			# 0x200

$L139:
	li	$2,1			# 0x1
	sb	$2,16($sp)
	lui	$2,%hi(_volume+16)
	lw	$2,%lo(_volume+16)($2)
	nop
	sh	$2,18($sp)
	li	$6,3			# 0x3
	lui	$5,%hi(_ROOT_STR)
	addiu	$5,$5,%lo(_ROOT_STR)
	jal	kmemcpy
	addiu	$4,$sp,60

	li	$2,3			# 0x3
	sb	$2,316($sp)
	lw	$2,372($sp)
	nop
	addiu	$2,$2,3
	sw	$2,372($sp)
	li	$18,512			# 0x200
$L143:
	lui	$19,%hi(_volume)
	b	$L107
	addiu	$19,$19,%lo(_volume)

$L141:
	addiu	$16,$16,2
	b	$L107
	sw	$16,372($sp)

$L142:
	b	$L103
	move	$17,$0

$L112:
	addiu	$16,$16,2
	sw	$16,372($sp)
$L114:
	lbu	$3,316($sp)
	nop
	addiu	$2,$3,-1
	andi	$2,$2,0x00ff
	sb	$2,316($sp)
	addu	$4,$sp,$2
	lbu	$5,59($4)
	li	$4,47			# 0x2f
	beq	$5,$4,$L115
	nop

	addiu	$2,$3,-2
	andi	$2,$2,0x00ff
	b	$L116
	li	$5,47			# 0x2f

$L130:
	move	$2,$3
$L116:
	addiu	$3,$2,-1
	addiu	$4,$sp,16
	addu	$4,$4,$2
	lbu	$4,43($4)
	nop
	bne	$4,$5,$L130
	andi	$3,$3,0x00ff

	sb	$2,316($sp)
$L115:
	li	$3,3			# 0x3
	bne	$2,$3,$L117
	li	$2,46			# 0x2e

	li	$2,1			# 0x1
	sb	$2,16($sp)
	lw	$2,16($19)
	nop
	sh	$2,18($sp)
	lw	$2,372($sp)
	nop
	lbu	$2,0($2)
	nop
	bne	$2,$0,$L107
	nop

$L118:
	addiu	$2,$sp,16
	addiu	$3,$sp,320
$L127:
	lw	$7,0($2)
	lw	$6,4($2)
	lw	$5,8($2)
	lw	$4,12($2)
	sw	$7,0($20)
	sw	$6,4($20)
	sw	$5,8($20)
	sw	$4,12($20)
	addiu	$2,$2,16
	bne	$2,$3,$L127
	addiu	$20,$20,16

	b	$L103
	li	$17,1			# 0x1

$L117:
	sb	$2,320($sp)
	sb	$2,321($sp)
	addiu	$2,$sp,322
	addiu	$4,$sp,331
	li	$3,32			# 0x20
$L119:
	sb	$3,0($2)
	addiu	$2,$2,1
	bne	$2,$4,$L119
	nop

	b	$L120
	nop

$L108:
	jal	get_file_name
	addiu	$4,$sp,320

	beq	$2,$0,$L103
	move	$17,$2

	lbu	$4,316($sp)
	lw	$6,372($sp)
	nop
	subu	$6,$6,$16
	move	$5,$16
	addiu	$2,$sp,60
	jal	kmemcpy
	addu	$4,$2,$4

	lw	$2,372($sp)
	nop
	subu	$3,$2,$16
	lbu	$16,316($sp)
	nop
	addu	$3,$3,$16
	andi	$3,$3,0x00ff
	sb	$3,316($sp)
	addu	$4,$sp,$3
	lbu	$5,59($4)
	li	$4,47			# 0x2f
	beq	$5,$4,$L121
	addu	$4,$sp,$3

	li	$5,47			# 0x2f
	sb	$5,60($4)
	addiu	$3,$3,1
	sb	$3,316($sp)
$L121:
	lbu	$4,0($2)
	li	$3,47			# 0x2f
	bne	$4,$3,$L120
	addiu	$2,$2,1

	li	$4,47			# 0x2f
$L122:
	sw	$2,372($sp)
	addiu	$2,$2,1
	lbu	$3,-1($2)
	nop
	beq	$3,$4,$L122
	nop

$L120:
	jal	dget_first_sect
	addiu	$4,$sp,16

	beq	$2,$0,$L131
	move	$22,$2

$L125:
	addiu	$21,$22,4
	move	$16,$0
	li	$6,11			# 0xb
$L144:
	addiu	$5,$sp,320
	jal	kstrcmp_char
	addu	$4,$21,$16

	beq	$2,$0,$L140
	move	$17,$2

	addiu	$16,$16,32
	bne	$16,$18,$L144
	li	$6,11			# 0xb

	jal	dget_next_sect
	addiu	$4,$sp,16

	bne	$2,$0,$L125
	move	$22,$2

	b	$L103
	move	$17,$0

$L140:
	move	$7,$16
	move	$6,$22
	addiu	$5,$sp,320
	jal	do_open
	addiu	$4,$sp,20

	lbu	$2,20($sp)
	nop
	andi	$2,$2,0x10
	beq	$2,$0,$L145
	move	$2,$17

	sb	$0,16($sp)
$L107:
	lw	$16,372($sp)
	nop
	lbu	$2,0($16)
	nop
	beq	$2,$0,$L118
	li	$3,46			# 0x2e

	bne	$2,$3,$L108
	addiu	$5,$sp,372

	lbu	$2,1($16)
	nop
	beq	$2,$0,$L128
	li	$3,47			# 0x2f

	beq	$2,$3,$L141
	li	$3,46			# 0x2e

	bne	$2,$3,$L129
	nop

	lbu	$2,2($16)
	nop
	beq	$2,$0,$L112
	li	$3,47			# 0x2f

	bne	$2,$3,$L142
	addiu	$16,$16,3

	b	$L114
	sw	$16,372($sp)

$L128:
	b	$L103
	move	$17,$0

$L129:
	b	$L103
	move	$17,$0

$L131:
	move	$17,$0
$L103:
	move	$2,$17
$L145:
	lw	$31,364($sp)
	lw	$22,360($sp)
	lw	$21,356($sp)
	lw	$20,352($sp)
	lw	$19,348($sp)
	lw	$18,344($sp)
	lw	$17,340($sp)
	lw	$16,336($sp)
	jr	$31
	addiu	$sp,$sp,368

	.set	macro
	.set	reorder
	.end	do_cd
	.size	do_cd, .-do_cd
	.align	2
	.globl	open_file
	.set	nomips16
	.set	nomicromips
	.ent	open_file
	.type	open_file, @function
open_file:
	.frame	$sp,360,$31		# vars= 320, regs= 6/0, args= 16, gp= 0
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-360
	sw	$31,356($sp)
	sw	$20,352($sp)
	sw	$19,348($sp)
	sw	$18,344($sp)
	sw	$17,340($sp)
	sw	$16,336($sp)
	move	$16,$4
	jal	kstrlen_char
	move	$19,$5

	addiu	$2,$2,-1
	addu	$2,$16,$2
	sltu	$3,$16,$2
	beq	$3,$0,$L147
	sw	$2,320($sp)

	lbu	$4,0($2)
	li	$3,47			# 0x2f
	beq	$4,$3,$L148
	addiu	$3,$2,-1

	move	$5,$16
	li	$6,47			# 0x2f
$L149:
	move	$2,$3
	beq	$3,$5,$L147
	sw	$3,320($sp)

	addiu	$3,$3,-1
	lbu	$4,1($3)
	nop
	bne	$4,$6,$L149
	nop

$L148:
	lui	$3,%hi(_pwd_DCB)
	addiu	$3,$3,%lo(_pwd_DCB)
	addiu	$4,$sp,16
	addiu	$5,$3,304
$L156:
	lw	$9,0($3)
	lw	$8,4($3)
	lw	$7,8($3)
	lw	$6,12($3)
	sw	$9,0($4)
	sw	$8,4($4)
	sw	$7,8($4)
	sw	$6,12($4)
	addiu	$3,$3,16
	bne	$3,$5,$L156
	addiu	$4,$4,16

	sb	$0,0($2)
$L166:
	lw	$2,320($sp)
	nop
	addiu	$2,$2,1
	sw	$2,320($sp)
	move	$5,$16
	jal	do_cd
	addiu	$4,$sp,16

	addiu	$5,$sp,320
$L168:
	jal	get_file_name
	addiu	$4,$sp,324

	jal	dget_first_sect
	addiu	$4,$sp,16

	beq	$2,$0,$L158
	move	$20,$2

	li	$18,512			# 0x200
$L155:
	addiu	$17,$20,4
	move	$16,$0
	li	$6,11			# 0xb
$L167:
	addiu	$5,$sp,324
	jal	kstrcmp_char
	addu	$4,$17,$16

	beq	$2,$0,$L165
	move	$7,$16

	addiu	$16,$16,32
	bne	$16,$18,$L167
	li	$6,11			# 0xb

	jal	dget_next_sect
	addiu	$4,$sp,16

	bne	$2,$0,$L155
	move	$20,$2

	b	$L146
	move	$2,$0

$L147:
	lui	$3,%hi(_pwd_DCB)
	addiu	$3,$3,%lo(_pwd_DCB)
	addiu	$4,$sp,16
	addiu	$5,$3,304
$L150:
	lw	$9,0($3)
	lw	$8,4($3)
	lw	$7,8($3)
	lw	$6,12($3)
	sw	$9,0($4)
	sw	$8,4($4)
	sw	$7,8($4)
	sw	$6,12($4)
	addiu	$3,$3,16
	bne	$3,$5,$L150
	addiu	$4,$4,16

	beq	$16,$2,$L168
	addiu	$5,$sp,320

	b	$L166
	sb	$0,0($2)

$L165:
	move	$6,$20
	addiu	$5,$sp,324
	jal	do_open
	move	$4,$19

	li	$2,1			# 0x1
$L146:
	lw	$31,356($sp)
	lw	$20,352($sp)
	lw	$19,348($sp)
	lw	$18,344($sp)
	lw	$17,340($sp)
	lw	$16,336($sp)
	jr	$31
	addiu	$sp,$sp,360

$L158:
	b	$L146
	move	$2,$0

	.set	macro
	.set	reorder
	.end	open_file
	.size	open_file, .-open_file
	.align	2
	.globl	read_file
	.set	nomips16
	.set	nomicromips
	.ent	read_file
	.type	read_file, @function
read_file:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	bne	$5,$0,$L177
	sw	$16,20($sp)

	move	$17,$0
$L169:
	move	$2,$17
$L178:
	lw	$31,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,40

$L177:
	move	$16,$6
	move	$19,$5
	move	$18,$4
	jal	seek_sect
	move	$4,$6

	beq	$2,$0,$L169
	move	$17,$2

	lw	$2,32($16)
	lw	$5,36($16)
	nop
	addiu	$5,$5,4
	lw	$3,28($16)
	nop
	subu	$3,$2,$3
	addu	$5,$5,$3
	lw	$3,4($16)
	nop
	sltu	$3,$2,$3
	beq	$3,$0,$L175
	nop

	b	$L171
	move	$17,$0

$L172:
	lbu	$2,0($5)
	nop
	sb	$2,0($18)
	lw	$2,32($16)
	nop
	addiu	$2,$2,1
	sw	$2,32($16)
	addiu	$17,$17,1
	beq	$19,$17,$L169
	addiu	$5,$5,1

	lw	$3,4($16)
	nop
	sltu	$3,$2,$3
	beq	$3,$0,$L169
	addiu	$18,$18,1

$L171:
	lw	$3,28($16)
	nop
	addiu	$3,$3,512
	sltu	$2,$2,$3
	bne	$2,$0,$L172
	nop

	jal	get_next_sect
	move	$4,$16

	beq	$2,$0,$L178
	move	$2,$17

	lw	$5,36($16)
	b	$L172
	addiu	$5,$5,4

$L175:
	b	$L169
	move	$17,$0

	.set	macro
	.set	reorder
	.end	read_file
	.size	read_file, .-read_file
	.align	2
	.globl	write_file
	.set	nomips16
	.set	nomicromips
	.ent	write_file
	.type	write_file, @function
write_file:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	beq	$5,$0,$L180
	move	$16,$6

	move	$18,$4
	move	$19,$5
	jal	seek_sect
	move	$4,$6

	bne	$2,$0,$L181
	move	$17,$2

	lhu	$3,2($16)
	li	$2,65534			# 0xfffe
	beq	$3,$2,$L202
	lui	$2,%hi(_volume+8)

$L180:
	jal	seek_sect
	move	$4,$16

	move	$17,$0
	move	$2,$17
$L205:
	lw	$31,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,56

$L202:
	lw	$4,%lo(_volume+8)($2)
	jal	read_disk
	li	$20,256			# 0x100

	lui	$21,%hi(_volume)
	addiu	$21,$21,%lo(_volume)
$L182:
	lhu	$3,4($2)
	nop
	beq	$3,$0,$L196
	addiu	$6,$2,4

	addiu	$3,$2,6
	li	$4,1			# 0x1
$L185:
	lhu	$5,0($3)
	nop
	beq	$5,$0,$L183
	move	$6,$3

	addiu	$4,$4,1
	bne	$4,$20,$L185
	addiu	$3,$3,2

	lhu	$4,2($2)
	lw	$2,12($21)
	nop
	sltu	$2,$4,$2
	beq	$2,$0,$L180
	nop

	jal	read_disk
	addiu	$4,$4,1

	b	$L182
	nop

$L196:
	move	$4,$17
$L183:
	li	$3,1			# 0x1
	sb	$3,0($2)
	li	$3,-1			# 0xffffffffffffffff
	sh	$3,0($6)
	lhu	$17,2($2)
	lui	$2,%hi(_volume)
	addiu	$2,$2,%lo(_volume)
	lw	$3,8($2)
	nop
	subu	$17,$17,$3
	sll	$17,$17,8
	addu	$17,$17,$4
	addiu	$3,$17,-2
	sh	$3,2($16)
	lw	$4,24($2)
	nop
	addiu	$4,$4,-2
	jal	read_disk
	addu	$4,$4,$17

	sw	$2,36($16)
	sw	$17,24($16)
	sw	$0,28($16)
$L181:
	lw	$2,36($16)
	li	$3,1			# 0x1
	sb	$3,0($2)
	lw	$2,36($16)
	nop
	addiu	$2,$2,4
	lw	$3,32($16)
	lw	$4,28($16)
	nop
	subu	$3,$3,$4
	addu	$2,$2,$3
	move	$17,$0
	lui	$21,%hi(_volume)
	addiu	$21,$21,%lo(_volume)
	b	$L194
	li	$20,256			# 0x100

$L204:
	jal	get_next_sect
	move	$4,$16

	beq	$2,$0,$L203
	move	$22,$2

$L187:
	lw	$2,36($16)
	li	$3,1			# 0x1
	sb	$3,0($2)
	lw	$2,36($16)
	b	$L186
	addiu	$2,$2,4

$L203:
	lw	$4,8($21)
	jal	read_disk
	nop

	beq	$2,$0,$L188
	nop

$L192:
	lhu	$3,4($2)
	nop
	beq	$3,$0,$L197
	addiu	$6,$2,4

	addiu	$3,$2,6
	li	$5,1			# 0x1
$L191:
	lhu	$4,0($3)
	nop
	beq	$4,$0,$L189
	move	$6,$3

	addiu	$5,$5,1
	bne	$5,$20,$L191
	addiu	$3,$3,2

	lhu	$4,2($2)
	lw	$2,12($21)
	nop
	sltu	$2,$4,$2
	beq	$2,$0,$L188
	nop

	jal	read_disk
	addiu	$4,$4,1

	bne	$2,$0,$L192
	nop

$L188:
	jal	seek_sect
	move	$4,$16

	b	$L205
	move	$2,$17

$L197:
	move	$5,$22
$L189:
	li	$22,1			# 0x1
	sb	$22,0($2)
	li	$3,-1			# 0xffffffffffffffff
	sh	$3,0($6)
	lw	$4,8($21)
	lhu	$23,2($2)
	nop
	subu	$23,$23,$4
	sll	$23,$23,8
	addu	$23,$23,$5
	lw	$2,24($16)
	nop
	srl	$2,$2,8
	jal	read_disk
	addu	$4,$2,$4

	sb	$22,0($2)
	lw	$3,24($16)
	nop
	sll	$3,$3,1
	andi	$3,$3,0x1fe
	addu	$2,$2,$3
	sh	$23,4($2)
	lw	$4,24($21)
	nop
	addiu	$4,$4,-2
	jal	read_disk
	addu	$4,$4,$23

	sw	$2,36($16)
	sw	$23,24($16)
	lw	$2,28($16)
	nop
	addiu	$2,$2,512
	b	$L187
	sw	$2,28($16)

$L193:
	lbu	$3,0($18)
	nop
	sb	$3,0($2)
	lw	$3,32($16)
	nop
	addiu	$3,$3,1
	sw	$3,32($16)
	addiu	$2,$2,1
	addiu	$17,$17,1
	beq	$19,$17,$L188
	addiu	$18,$18,1

$L194:
	lw	$3,28($16)
	nop
	addiu	$4,$3,512
	lw	$3,32($16)
	nop
	sltu	$3,$3,$4
	beq	$3,$0,$L204
	nop

$L186:
	lw	$4,32($16)
	lw	$3,4($16)
	nop
	sltu	$3,$4,$3
	bne	$3,$0,$L193
	addiu	$4,$4,1

	b	$L193
	sw	$4,4($16)

	.set	macro
	.set	reorder
	.end	write_file
	.size	write_file, .-write_file
	.align	2
	.globl	close_file
	.set	nomips16
	.set	nomicromips
	.ent	close_file
	.type	close_file, @function
close_file:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	move	$16,$4
	lhu	$4,20($4)
	jal	read_disk
	nop

	li	$3,1			# 0x1
	sb	$3,0($2)
	addiu	$2,$2,4
	lhu	$3,22($16)
	nop
	addu	$2,$2,$3
	lhu	$3,2($16)
	nop
	addiu	$3,$3,2
	sh	$3,26($2)
	lw	$3,4($16)
	jal	write_buffer
	sw	$3,28($2)

	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	close_file
	.size	close_file, .-close_file
	.align	2
	.globl	end_file
	.set	nomips16
	.set	nomicromips
	.ent	end_file
	.type	end_file, @function
end_file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lw	$2,32($4)
	lw	$3,4($4)
	nop
	sltu	$2,$2,$3
	jr	$31
	xori	$2,$2,0x1

	.set	macro
	.set	reorder
	.end	end_file
	.size	end_file, .-end_file
	.align	2
	.globl	init_fs
	.set	nomips16
	.set	nomicromips
	.ent	init_fs
	.type	init_fs, @function
init_fs:
	.frame	$sp,32,$31		# vars= 0, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$18,24($sp)
	sw	$17,20($sp)
	sw	$16,16($sp)
	lui	$16,%hi(_sect_buffer)
	sb	$0,%lo(_sect_buffer)($16)
	lui	$2,%hi(_FCB_empty)
	li	$17,1			# 0x1
	sb	$17,%lo(_FCB_empty)($2)
	addiu	$2,$2,%lo(_FCB_empty)
	sb	$17,1($2)
	sb	$17,2($2)
	sb	$17,3($2)
	jal	read_disk
	move	$4,$0

	addiu	$16,$16,%lo(_sect_buffer)
	lhu	$2,458($16)
	lhu	$18,460($16)
	nop
	sll	$18,$18,16
	addu	$18,$18,$2
	jal	read_disk
	move	$4,$18

	lui	$6,%hi(_volume)
	addiu	$4,$6,%lo(_volume)
	sw	$18,4($4)
	lhu	$3,18($16)
	nop
	addu	$5,$3,$18
	sw	$5,8($4)
	lbu	$2,20($16)
	nop
	sb	$2,%lo(_volume)($6)
	lhu	$3,26($16)
	nop
	addiu	$6,$3,-1
	addu	$18,$6,$18
	addu	$18,$18,$5
	sw	$18,12($4)
	mult	$2,$3
	mflo	$3
	addu	$3,$3,$5
	sw	$3,16($4)
	lbu	$5,21($16)
	lbu	$2,22($16)
	nop
	sll	$2,$2,8
	or	$2,$2,$5
	srl	$2,$2,4
	addu	$2,$2,$3
	sw	$2,24($4)
	addiu	$2,$2,-1
	sw	$2,20($4)
	lui	$2,%hi(_pwd_DCB)
	sb	$17,%lo(_pwd_DCB)($2)
	addiu	$2,$2,%lo(_pwd_DCB)
	sh	$3,2($2)
	li	$3,65			# 0x41
	sb	$3,44($2)
	li	$3,58			# 0x3a
	sb	$3,45($2)
	li	$3,47			# 0x2f
	sb	$3,46($2)
	li	$3,3			# 0x3
	sb	$3,300($2)
	lw	$31,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,32

	.set	macro
	.set	reorder
	.end	init_fs
	.size	init_fs, .-init_fs
	.align	2
	.globl	pwd__
	.set	nomips16
	.set	nomicromips
	.ent	pwd__
	.type	pwd__, @function
pwd__:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(_pwd_DCB+300)
	lbu	$2,%lo(_pwd_DCB+300)($2)
	nop
	sltu	$5,$5,$2
	bne	$5,$0,$L215
	nop

	beq	$2,$0,$L213
	move	$6,$0

	lui	$2,%hi(_pwd_DCB+44)
	addiu	$2,$2,%lo(_pwd_DCB+44)
	move	$5,$4
	lui	$7,%hi(_pwd_DCB)
	addiu	$7,$7,%lo(_pwd_DCB)
	li	$8,-43			# 0xffffffffffffffd5
	subu	$8,$8,$7
$L214:
	lbu	$3,0($2)
	nop
	sb	$3,0($5)
	addu	$6,$8,$2
	addiu	$2,$2,1
	lbu	$3,300($7)
	nop
	slt	$3,$6,$3
	bne	$3,$0,$L214
	addiu	$5,$5,1

$L213:
	addu	$4,$4,$6
	sb	$0,0($4)
	jr	$31
	li	$2,1			# 0x1

$L215:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	pwd__
	.size	pwd__, .-pwd__
	.align	2
	.globl	cd__
	.set	nomips16
	.set	nomicromips
	.ent	cd__
	.type	cd__, @function
cd__:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	move	$5,$4
	lui	$4,%hi(_pwd_DCB)
	jal	do_cd
	addiu	$4,$4,%lo(_pwd_DCB)

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	cd__
	.size	cd__, .-cd__
	.align	2
	.globl	crt_file__
	.set	nomips16
	.set	nomicromips
	.ent	crt_file__
	.type	crt_file__, @function
crt_file__:
	.frame	$sp,416,$31		# vars= 384, regs= 4/0, args= 16, gp= 0
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-416
	sw	$31,412($sp)
	sw	$18,408($sp)
	sw	$17,404($sp)
	sw	$16,400($sp)
	jal	kstrlen_char
	move	$16,$4

	addiu	$2,$2,-1
	addu	$3,$16,$2
	sltu	$2,$16,$3
	beq	$2,$0,$L221
	sw	$3,360($sp)

	lbu	$4,0($3)
	li	$2,47			# 0x2f
	beq	$4,$2,$L222
	addiu	$2,$3,-1

	move	$5,$16
	li	$6,47			# 0x2f
$L223:
	move	$3,$2
	beq	$2,$5,$L221
	sw	$2,360($sp)

	addiu	$2,$2,-1
	lbu	$4,1($2)
	nop
	bne	$4,$6,$L223
	nop

$L221:
	lui	$2,%hi(_pwd_DCB)
	addiu	$2,$2,%lo(_pwd_DCB)
	addiu	$4,$sp,56
	addiu	$5,$2,304
$L224:
	lw	$9,0($2)
	lw	$8,4($2)
	lw	$7,8($2)
	lw	$6,12($2)
	sw	$9,0($4)
	sw	$8,4($4)
	sw	$7,8($4)
	sw	$6,12($4)
	addiu	$2,$2,16
	bne	$2,$5,$L224
	addiu	$4,$4,16

	lbu	$4,0($3)
	li	$2,47			# 0x2f
	beq	$4,$2,$L243
	nop

	addiu	$2,$sp,364
$L260:
	addiu	$3,$sp,396
$L226:
	sb	$0,0($2)
	addiu	$2,$2,1
	bne	$3,$2,$L226
	nop

	addiu	$5,$sp,360
	jal	get_file_name
	addiu	$4,$sp,364

	beq	$2,$0,$L220
	nop

	lbu	$3,372($sp)
	li	$2,32			# 0x20
	beq	$3,$2,$L256
	nop

$L228:
	sw	$0,392($sp)
	jal	dget_first_sect
	addiu	$4,$sp,56

	beq	$2,$0,$L230
	nop

$L229:
	addiu	$16,$2,4
	addiu	$17,$2,516
	li	$6,11			# 0xb
$L261:
	move	$5,$16
	jal	kstrcmp_char
	addiu	$4,$sp,364

	beq	$2,$0,$L220
	addiu	$16,$16,32

	bne	$17,$16,$L261
	li	$6,11			# 0xb

	jal	dget_next_sect
	addiu	$4,$sp,56

	bne	$2,$0,$L229
	nop

$L230:
	jal	dget_first_sect
	addiu	$4,$sp,56

	beq	$2,$0,$L233
	move	$18,$2

	li	$17,229			# 0xe5
$L232:
	lbu	$2,4($18)
	nop
	beq	$2,$0,$L244
	addiu	$4,$18,4

	beq	$2,$17,$L257
	addiu	$2,$18,36

	move	$5,$4
	addiu	$6,$4,512
$L236:
	subu	$16,$2,$5
	lbu	$3,0($2)
	nop
	beq	$3,$0,$L234
	move	$4,$2

	beq	$3,$17,$L234
	addiu	$2,$2,32

	bne	$2,$6,$L236
	nop

	jal	dget_next_sect
	addiu	$4,$sp,56

	bne	$2,$0,$L232
	move	$18,$2

	b	$L233
	nop

$L256:
	lbu	$3,373($sp)
	nop
	bne	$3,$2,$L228
	nop

	lbu	$3,374($sp)
	nop
	bne	$3,$2,$L228
	li	$2,16			# 0x10

	b	$L228
	sb	$2,375($sp)

$L244:
	move	$16,$0
$L234:
	li	$2,1			# 0x1
	sb	$2,0($18)
	li	$6,32			# 0x20
	jal	kmemcpy
	addiu	$5,$sp,364

	jal	write_buffer
	nop

	move	$7,$16
	move	$6,$18
	lw	$5,360($sp)
	jal	do_open
	addiu	$4,$sp,16

$L233:
	lbu	$3,375($sp)
	li	$2,16			# 0x10
	bne	$3,$2,$L238
	li	$2,32			# 0x20

	sb	$2,365($sp)
	sb	$2,366($sp)
	sb	$2,367($sp)
	sb	$2,368($sp)
	sb	$2,369($sp)
	sb	$2,370($sp)
	sb	$2,371($sp)
	li	$2,46			# 0x2e
	sb	$2,364($sp)
	lhu	$2,18($sp)
	nop
	addiu	$2,$2,2
	sh	$2,390($sp)
	sw	$0,392($sp)
	addiu	$6,$sp,16
	li	$5,32			# 0x20
	jal	write_file
	addiu	$4,$sp,364

	li	$3,32			# 0x20
	bne	$2,$3,$L258
	li	$3,1			# 0x1

	li	$2,46			# 0x2e
	sb	$2,365($sp)
	lbu	$2,56($sp)
	nop
	beq	$2,$3,$L259
	addiu	$6,$sp,16

	bne	$2,$0,$L262
	nop

	lhu	$2,62($sp)
	nop
	addiu	$2,$2,2
	b	$L262
	sh	$2,390($sp)

$L257:
	b	$L234
	move	$16,$0

$L258:
	jal	close_file
	addiu	$4,$sp,16

	b	$L220
	move	$2,$0

$L259:
	sh	$0,390($sp)
$L262:
	li	$5,32			# 0x20
	jal	write_file
	addiu	$4,$sp,364

	li	$3,32			# 0x20
	beq	$2,$3,$L238
	nop

	jal	close_file
	addiu	$4,$sp,16

	b	$L220
	move	$2,$0

$L238:
	jal	close_file
	addiu	$4,$sp,16

	li	$2,1			# 0x1
$L220:
	lw	$31,412($sp)
	lw	$18,408($sp)
	lw	$17,404($sp)
	lw	$16,400($sp)
	jr	$31
	addiu	$sp,$sp,416

$L222:
	lui	$2,%hi(_pwd_DCB)
	addiu	$2,$2,%lo(_pwd_DCB)
	addiu	$4,$sp,56
	addiu	$5,$2,304
$L242:
	lw	$9,0($2)
	lw	$8,4($2)
	lw	$7,8($2)
	lw	$6,12($2)
	sw	$9,0($4)
	sw	$8,4($4)
	sw	$7,8($4)
	sw	$6,12($4)
	addiu	$2,$2,16
	bne	$2,$5,$L242
	addiu	$4,$4,16

$L243:
	sb	$0,0($3)
	lw	$2,360($sp)
	nop
	addiu	$2,$2,1
	sw	$2,360($sp)
	move	$5,$16
	jal	do_cd
	addiu	$4,$sp,56

	b	$L260
	addiu	$2,$sp,364

	.set	macro
	.set	reorder
	.end	crt_file__
	.size	crt_file__, .-crt_file__
	.align	2
	.globl	del_file__
	.set	nomips16
	.set	nomicromips
	.ent	del_file__
	.type	del_file__, @function
del_file__:
	.frame	$sp,112,$31		# vars= 72, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$19,104($sp)
	sw	$18,100($sp)
	sw	$17,96($sp)
	sw	$16,92($sp)
	jal	open_file
	addiu	$5,$sp,16

	beq	$2,$0,$L263
	nop

	lbu	$2,16($sp)
	nop
	andi	$2,$2,0x10
	beq	$2,$0,$L266
	li	$16,229			# 0xe5

	li	$17,46			# 0x2e
$L273:
	lw	$2,48($sp)
	lw	$3,20($sp)
	nop
	sltu	$2,$2,$3
	beq	$2,$0,$L266
	addiu	$6,$sp,16

	li	$5,32			# 0x20
	jal	read_file
	addiu	$4,$sp,56

	lbu	$2,56($sp)
	nop
	beq	$2,$16,$L273
	nop

	beq	$2,$0,$L273
	nop

	beq	$2,$17,$L273
	move	$2,$0

	b	$L263
	nop

$L266:
	lhu	$2,18($sp)
	nop
	addiu	$16,$2,2
	addiu	$2,$2,3
	andi	$2,$2,0xffff
	sltu	$2,$2,2
	bne	$2,$0,$L268
	andi	$16,$16,0xffff

	lui	$17,%hi(_volume)
	addiu	$17,$17,%lo(_volume)
	li	$19,1			# 0x1
	li	$18,65535			# 0xffff
$L269:
	srl	$4,$16,8
	lw	$2,8($17)
	jal	read_disk
	addu	$4,$4,$2

	beq	$2,$0,$L271
	addiu	$3,$2,4

	sll	$16,$16,1
	andi	$16,$16,0x1fe
	addu	$3,$3,$16
	lhu	$16,0($3)
	sb	$19,0($2)
	bne	$16,$18,$L269
	sh	$0,0($3)

$L268:
	lhu	$4,36($sp)
	jal	read_disk
	nop

	beq	$2,$0,$L272
	li	$3,1			# 0x1

	sb	$3,0($2)
	lhu	$3,38($sp)
	nop
	addu	$2,$2,$3
	li	$3,-27			# 0xffffffffffffffe5
	sb	$3,4($2)
	li	$2,1			# 0x1
$L263:
	lw	$31,108($sp)
	lw	$19,104($sp)
	lw	$18,100($sp)
	lw	$17,96($sp)
	lw	$16,92($sp)
	jr	$31
	addiu	$sp,$sp,112

$L271:
	b	$L263
	move	$2,$0

$L272:
	b	$L263
	move	$2,$0

	.set	macro
	.set	reorder
	.end	del_file__
	.size	del_file__, .-del_file__
	.align	2
	.globl	fopen__
	.set	nomips16
	.set	nomicromips
	.ent	fopen__
	.type	fopen__, @function
fopen__:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	lui	$2,%hi(_FCB_empty)
	lbu	$2,%lo(_FCB_empty)($2)
	nop
	bne	$2,$0,$L281
	lui	$2,%hi(_FCB_empty+1)

	lbu	$2,%lo(_FCB_empty+1)($2)
	nop
	bne	$2,$0,$L282
	lui	$2,%hi(_FCB_empty+2)

	lbu	$2,%lo(_FCB_empty+2)($2)
	nop
	bne	$2,$0,$L283
	lui	$2,%hi(_FCB_empty+3)

	lbu	$3,%lo(_FCB_empty+3)($2)
	move	$2,$0
	bne	$3,$0,$L278
	li	$16,3			# 0x3

$L277:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

$L282:
	b	$L278
	li	$16,1			# 0x1

$L283:
	b	$L278
	li	$16,2			# 0x2

$L281:
	move	$16,$0
$L278:
	sll	$2,$16,2
	addu	$2,$2,$16
	sll	$2,$2,3
	lui	$5,%hi(_FCB_list)
	addiu	$5,$5,%lo(_FCB_list)
	jal	open_file
	addu	$5,$5,$2

	beq	$2,$0,$L277
	nop

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$16,$2
	sb	$0,0($2)
	b	$L277
	addiu	$2,$16,1

	.set	macro
	.set	reorder
	.end	fopen__
	.size	fopen__, .-fopen__
	.align	2
	.globl	fclose__
	.set	nomips16
	.set	nomicromips
	.ent	fclose__
	.type	fclose__, @function
fclose__:
	.frame	$sp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$16,16($sp)
	addiu	$16,$4,-1
	sltu	$2,$16,4
	beq	$2,$0,$L288
	lui	$2,%hi(_FCB_empty)

	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$16,$2
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L291
	lui	$4,%hi(_FCB_list)

	b	$L286
	move	$2,$0

$L291:
	sll	$2,$16,2
	addu	$2,$2,$16
	sll	$2,$2,3
	addiu	$4,$4,%lo(_FCB_list)
	jal	close_file
	addu	$4,$4,$2

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$16,$16,$2
	li	$2,1			# 0x1
	sb	$2,0($16)
	b	$L286
	li	$2,1			# 0x1

$L288:
	move	$2,$0
$L286:
	lw	$31,20($sp)
	lw	$16,16($sp)
	jr	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	fclose__
	.size	fclose__, .-fclose__
	.align	2
	.globl	fread__
	.set	nomips16
	.set	nomicromips
	.ent	fread__
	.type	fread__, @function
fread__:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	sltu	$2,$6,4
	beq	$2,$0,$L294
	nop

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$6,$2
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L300
	move	$2,$0

	jr	$31
	nop

$L300:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sll	$2,$6,2
	addu	$6,$2,$6
	sll	$6,$6,3
	lui	$2,%hi(_FCB_list)
	addiu	$2,$2,%lo(_FCB_list)
	jal	read_file
	addu	$6,$2,$6

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L294:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	fread__
	.size	fread__, .-fread__
	.align	2
	.globl	fwrite__
	.set	nomips16
	.set	nomicromips
	.ent	fwrite__
	.type	fwrite__, @function
fwrite__:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	sltu	$2,$6,4
	beq	$2,$0,$L305
	nop

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$6,$2
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L311
	move	$2,$0

	jr	$31
	nop

$L311:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sll	$2,$6,2
	addu	$6,$2,$6
	sll	$6,$6,3
	lui	$2,%hi(_FCB_list)
	addiu	$2,$2,%lo(_FCB_list)
	jal	write_file
	addu	$6,$2,$6

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L305:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	fwrite__
	.size	fwrite__, .-fwrite__
	.align	2
	.globl	fseek__
	.set	nomips16
	.set	nomicromips
	.ent	fseek__
	.type	fseek__, @function
fseek__:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$4,$4,-1
	sltu	$2,$4,4
	beq	$2,$0,$L316
	nop

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$4,$2
	lbu	$2,0($2)
	nop
	beq	$2,$0,$L322
	move	$2,$0

	jr	$31
	nop

$L322:
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sll	$2,$4,2
	addu	$4,$2,$4
	sll	$4,$4,3
	andi	$6,$6,0x00ff
	lui	$2,%hi(_FCB_list)
	addiu	$2,$2,%lo(_FCB_list)
	jal	seek_file
	addu	$4,$2,$4

	lw	$31,20($sp)
	nop
	jr	$31
	addiu	$sp,$sp,24

$L316:
	jr	$31
	move	$2,$0

	.set	macro
	.set	reorder
	.end	fseek__
	.size	fseek__, .-fseek__
	.align	2
	.globl	feof__
	.set	nomips16
	.set	nomicromips
	.ent	feof__
	.type	feof__, @function
feof__:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$4,$4,-1
	sltu	$2,$4,4
	beq	$2,$0,$L327
	nop

	lui	$2,%hi(_FCB_empty)
	addiu	$2,$2,%lo(_FCB_empty)
	addu	$2,$4,$2
	lbu	$2,0($2)
	nop
	bne	$2,$0,$L328
	nop

	sll	$2,$4,2
	addu	$4,$2,$4
	sll	$2,$4,3
	lui	$4,%hi(_FCB_list)
	addiu	$4,$4,%lo(_FCB_list)
	addu	$4,$4,$2
	lw	$2,32($4)
	lw	$3,4($4)
	nop
	sltu	$2,$2,$3
	jr	$31
	xori	$2,$2,0x1

$L327:
	jr	$31
	li	$2,1			# 0x1

$L328:
	jr	$31
	li	$2,1			# 0x1

	.set	macro
	.set	reorder
	.end	feof__
	.size	feof__, .-feof__
	.align	2
	.globl	dir__
	.set	nomips16
	.set	nomicromips
	.ent	dir__
	.type	dir__, @function
dir__:
	.frame	$sp,56,$31		# vars= 0, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	lui	$4,%hi(_pwd_DCB)
	jal	dget_first_sect
	addiu	$4,$4,%lo(_pwd_DCB)

	beq	$2,$0,$L330
	li	$21,229			# 0xe5

	li	$20,32			# 0x20
	lui	$22,%hi(_pwd_DCB)
	b	$L339
	addiu	$22,$22,%lo(_pwd_DCB)

$L350:
	jal	_put_char
	li	$4,9			# 0x9

	b	$L351
	addiu	$16,$16,32

$L336:
	jal	_put_char
	li	$4,9			# 0x9

$L331:
	addiu	$16,$16,32
$L351:
	beq	$16,$19,$L349
	nop

$L338:
	lbu	$4,0($16)
	nop
	beq	$4,$0,$L331
	move	$18,$16

	beq	$4,$21,$L331
	nop

	lbu	$2,11($16)
	nop
	andi	$2,$2,0xc
	bne	$2,$0,$L331
	nop

	beq	$4,$20,$L332
	nop

	jal	_put_char
	addiu	$23,$16,7

	move	$17,$16
$L334:
	lbu	$4,1($17)
	nop
	beq	$4,$20,$L332
	nop

	jal	_put_char
	addiu	$17,$17,1

	bne	$23,$17,$L334
	nop

$L332:
	lbu	$2,11($18)
	nop
	andi	$2,$2,0x10
	bne	$2,$0,$L350
	nop

	jal	_put_char
	li	$4,46			# 0x2e

	lbu	$4,8($18)
	nop
	beq	$4,$20,$L336
	nop

	jal	_put_char
	nop

	lbu	$4,9($18)
	nop
	beq	$4,$20,$L336
	nop

	jal	_put_char
	nop

	lbu	$4,10($18)
	nop
	beq	$4,$20,$L336
	nop

	jal	_put_char
	nop

	b	$L336
	nop

$L349:
	jal	dget_next_sect
	move	$4,$22

	beq	$2,$0,$L330
	nop

$L339:
	addiu	$16,$2,4
	b	$L338
	addiu	$19,$2,516

$L330:
	jal	_put_char
	li	$4,10			# 0xa

	lw	$31,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	jr	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	dir__
	.size	dir__, .-dir__
	.globl	_ROOT_STR
	.section	.data,"aw",@progbits
	.align	2
	.type	_ROOT_STR, @object
	.size	_ROOT_STR, 4
_ROOT_STR:
	.ascii	"A:/\000"
	.globl	_FCB_empty
	.align	2
	.type	_FCB_empty, @object
	.size	_FCB_empty, 4
_FCB_empty:
	.space	4
	.globl	_FCB_list
	.align	2
	.type	_FCB_list, @object
	.size	_FCB_list, 160
_FCB_list:
	.space	160
	.globl	_pwd_DCB
	.align	2
	.type	_pwd_DCB, @object
	.size	_pwd_DCB, 304
_pwd_DCB:
	.space	304
	.globl	_volume
	.align	2
	.type	_volume, @object
	.size	_volume, 28
_volume:
	.space	28
	.globl	_sect_buffer
	.align	2
	.type	_sect_buffer, @object
	.size	_sect_buffer, 516
_sect_buffer:
	.space	516
	.ident	"GCC: (GNU) 7.2.0"

	.file	1 "load.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	init_task
	.set	nomips16
	.set	nomicromips
	.ent	init_task
	.type	init_task, @function
init_task:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$2,%hi(current+1)
	jr	$31
	sb	$0,%lo(current+1)($2)

	.set	macro
	.set	reorder
	.end	init_task
	.size	init_task, .-init_task
	.align	2
	.globl	unload__
	.set	nomips16
	.set	nomicromips
	.ent	unload__
	.type	unload__, @function
unload__:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lui	$2,%hi(current+1)
	lbu	$2,%lo(current+1)($2)
	#nop
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L3
	move	$3,$0
	.set	macro
	.set	reorder

	li	$2,-1342177280			# 0xffffffffb0000000
 #APP
 # 85 "load.c" 1
	mtc0	$2, $10
	mtc0	$0, $2
	mtc0	$0, $3
	mtc0	$3, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	li	$3,1			# 0x1
 #APP
 # 95 "load.c" 1
	mtc0	$2, $10
	mtc0	$0, $2
	mtc0	$0, $3
	mtc0	$3, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	lui	$2,%hi(current+1)
	sb	$0,%lo(current+1)($2)
$L3:
	.set	noreorder
	.set	nomacro
	jr	$31
	li	$2,1			# 0x1
	.set	macro
	.set	reorder

	.end	unload__
	.size	unload__, .-unload__
	.align	2
	.globl	load__
	.set	nomips16
	.set	nomicromips
	.ent	load__
	.type	load__, @function
load__:
	.frame	$sp,664,$31		# vars= 592, regs= 10/0, args= 32, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-664
	sw	$31,660($sp)
	sw	$fp,656($sp)
	sw	$23,652($sp)
	sw	$22,648($sp)
	sw	$21,644($sp)
	sw	$20,640($sp)
	sw	$19,636($sp)
	sw	$18,632($sp)
	sw	$17,628($sp)
	sw	$16,624($sp)
	move	$16,$4
	lui	$3,%hi(current)
	addiu	$2,$3,%lo(current)
	lw	$7,16($2)
	lw	$6,20($2)
	lw	$5,24($2)
	lw	$4,28($2)
	sw	$7,16($sp)
	sw	$6,20($sp)
	sw	$5,24($sp)
	sw	$4,28($sp)
	lw	$4,%lo(current)($3)
	lw	$5,4($2)
	lw	$6,8($2)
	lw	$7,12($2)
	jal	unload__
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L13
	addiu	$5,$sp,32
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	open_file
	move	$4,$16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L4
	li	$20,-1			# 0xffffffffffffffff
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	li	$5,52			# 0x34
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,72
	.set	macro
	.set	reorder

	lw	$20,96($sp)
	lw	$16,104($sp)
	lhu	$19,120($sp)
	addiu	$5,$16,-40
	sll	$2,$19,2
	addu	$2,$2,$19
	sll	$2,$2,3
	move	$6,$0
	addu	$5,$5,$2
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	li	$5,40			# 0x28
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,72
	.set	macro
	.set	reorder

	lw	$22,88($sp)
	.set	noreorder
	.set	nomacro
	beq	$19,$0,$L7
	move	$18,$0
	.set	macro
	.set	reorder

	move	$17,$0
	lui	$2,%hi(TEXT)
	addiu	$2,$2,%lo(TEXT)
	sw	$2,600($sp)
	lui	$2,%hi(DATA)
	addiu	$2,$2,%lo(DATA)
	.set	noreorder
	.set	nomacro
	b	$L11
	sw	$2,604($sp)
	.set	macro
	.set	reorder

$L8:
	lw	$5,604($sp)
	.set	noreorder
	.set	nomacro
	jal	kstrcmp_char
	addiu	$4,$sp,584
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L17
	li	$2,3			# 0x3
	.set	macro
	.set	reorder

	ori	$18,$18,0x2
	lw	$2,84($sp)
	#nop
	sw	$2,608($sp)
	lw	$2,88($sp)
	#nop
	sw	$2,616($sp)
	lw	$2,92($sp)
	#nop
	sw	$2,612($sp)
$L9:
	li	$2,3			# 0x3
$L17:
	beq	$18,$2,$L10
	addiu	$17,$17,1
	.set	noreorder
	.set	nomacro
	beq	$19,$17,$L7
	addiu	$16,$16,40
	.set	macro
	.set	reorder

$L11:
	move	$6,$0
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	li	$5,40			# 0x28
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,72
	.set	macro
	.set	reorder

	move	$6,$0
	lw	$5,72($sp)
	#nop
	addu	$5,$22,$5
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	li	$5,6			# 0x6
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,584
	.set	macro
	.set	reorder

	li	$6,6			# 0x6
	lw	$5,600($sp)
	.set	noreorder
	.set	nomacro
	jal	kstrcmp_char
	addiu	$4,$sp,584
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L8
	li	$6,6			# 0x6
	.set	macro
	.set	reorder

	lw	$21,84($sp)
	lw	$23,88($sp)
	lw	$fp,92($sp)
	.set	noreorder
	.set	nomacro
	b	$L9
	ori	$18,$18,0x1
	.set	macro
	.set	reorder

$L10:
	.set	noreorder
	.set	nomacro
	beq	$19,$17,$L7
	li	$17,-8192			# 0xffffffffffffe000
	.set	macro
	.set	reorder

	and	$18,$21,$17
	ori	$18,$18,0x2
	li	$16,8388608			# 0x800000
	addiu	$2,$16,6
	addiu	$3,$16,70
	move	$19,$0
 #APP
 # 138 "load.c" 1
	mtc0	$18, $10
	mtc0	$2, $2
	mtc0	$3, $3
	mtc0	$19, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	move	$6,$0
	move	$5,$23
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	move	$5,$fp
	.set	noreorder
	.set	nomacro
	jal	read_file
	move	$4,$21
	.set	macro
	.set	reorder

	addiu	$2,$16,2
	addiu	$3,$16,66
 #APP
 # 153 "load.c" 1
	mtc0	$18, $10
	mtc0	$2, $2
	mtc0	$3, $3
	mtc0	$19, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	lw	$19,608($sp)
	#nop
	and	$17,$19,$17
	ori	$17,$17,0x2
	addiu	$2,$16,134
	addiu	$16,$16,198
	li	$18,1			# 0x1
 #APP
 # 167 "load.c" 1
	mtc0	$17, $10
	mtc0	$2, $2
	mtc0	$16, $3
	mtc0	$18, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	move	$6,$0
	lw	$17,616($sp)
	#nop
	move	$5,$17
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	addiu	$6,$sp,32
	lw	$16,612($sp)
	#nop
	move	$5,$16
	.set	noreorder
	.set	nomacro
	jal	read_file
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	close_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	lui	$2,%hi(current)
	li	$3,2			# 0x2
	sb	$3,%lo(current)($2)
	addiu	$2,$2,%lo(current)
	sb	$18,1($2)
	sw	$20,4($2)
	sw	$21,8($2)
	sw	$fp,12($2)
	sw	$23,16($2)
	sw	$19,20($2)
	sw	$16,24($2)
	.set	noreorder
	.set	nomacro
	b	$L4
	sw	$17,28($2)
	.set	macro
	.set	reorder

$L7:
	.set	noreorder
	.set	nomacro
	jal	close_file
	addiu	$4,$sp,32
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	b	$L4
	li	$20,-1			# 0xffffffffffffffff
	.set	macro
	.set	reorder

$L13:
	li	$20,-1			# 0xffffffffffffffff
$L4:
	move	$2,$20
	lw	$31,660($sp)
	lw	$fp,656($sp)
	lw	$23,652($sp)
	lw	$22,648($sp)
	lw	$21,644($sp)
	lw	$20,640($sp)
	lw	$19,636($sp)
	lw	$18,632($sp)
	lw	$17,628($sp)
	lw	$16,624($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,664
	.set	macro
	.set	reorder

	.end	load__
	.size	load__, .-load__
	.globl	DATA
	.section	.data,"aw",@progbits
	.align	2
	.type	DATA, @object
	.size	DATA, 6
DATA:
	.ascii	".data\000"
	.globl	TEXT
	.align	2
	.type	TEXT, @object
	.size	TEXT, 6
TEXT:
	.ascii	".text\000"
	.globl	current
	.align	2
	.type	current, @object
	.size	current, 32
current:
	.space	32
	.ident	"GCC: (GNU) 7.2.0"

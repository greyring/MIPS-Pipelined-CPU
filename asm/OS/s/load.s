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
 # 91 "load.c" 1
	mtc0	$2, $10
	mtc0	$0, $2
	mtc0	$0, $3
	mtc0	$3, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	li	$3,1			# 0x1
 #APP
 # 101 "load.c" 1
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
	.frame	$sp,608,$31		# vars= 552, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-608
	sw	$31,604($sp)
	sw	$fp,600($sp)
	sw	$23,596($sp)
	sw	$22,592($sp)
	sw	$21,588($sp)
	sw	$20,584($sp)
	sw	$19,580($sp)
	sw	$18,576($sp)
	sw	$17,572($sp)
	sw	$16,568($sp)
	.set	noreorder
	.set	nomacro
	jal	open_file
	addiu	$5,$sp,16
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L9
	li	$16,-1			# 0xffffffffffffffff
	.set	macro
	.set	reorder

$L4:
	move	$2,$16
	lw	$31,604($sp)
	lw	$fp,600($sp)
	lw	$23,596($sp)
	lw	$22,592($sp)
	lw	$21,588($sp)
	lw	$20,584($sp)
	lw	$19,580($sp)
	lw	$18,576($sp)
	lw	$17,572($sp)
	lw	$16,568($sp)
	.set	noreorder
	.set	nomacro
	jr	$31
	addiu	$sp,$sp,608
	.set	macro
	.set	reorder

$L9:
	addiu	$6,$sp,16
	li	$5,52			# 0x34
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,56
	.set	macro
	.set	reorder

	lw	$16,80($sp)
	move	$6,$0
	lw	$5,88($sp)
	#nop
	addiu	$5,$5,40
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,16
	.set	macro
	.set	reorder

	addiu	$6,$sp,16
	li	$5,80			# 0x50
	.set	noreorder
	.set	nomacro
	jal	read_file
	addiu	$4,$sp,56
	.set	macro
	.set	reorder

	lw	$20,68($sp)
	lw	$23,72($sp)
	lw	$fp,76($sp)
	lw	$19,108($sp)
	lw	$21,112($sp)
	lw	$22,116($sp)
	jal	unload__
	.set	noreorder
	.set	nomacro
	beq	$2,$0,$L7
	li	$2,-8192			# 0xffffffffffffe000
	.set	macro
	.set	reorder

	and	$18,$20,$2
	ori	$18,$18,0x2
	li	$17,8388608			# 0x800000
	addiu	$2,$17,6
	addiu	$3,$17,70
	move	$4,$0
 #APP
 # 142 "load.c" 1
	mtc0	$18, $10
	mtc0	$2, $2
	mtc0	$3, $3
	mtc0	$4, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	move	$6,$0
	move	$5,$23
	addiu	$3,$sp,16
	.set	noreorder
	.set	nomacro
	jal	seek_file
	move	$4,$3
	.set	macro
	.set	reorder

	addiu	$6,$sp,16
	move	$5,$fp
	.set	noreorder
	.set	nomacro
	jal	read_file
	move	$4,$20
	.set	macro
	.set	reorder

	addiu	$2,$17,2
	addiu	$3,$17,66
	move	$4,$0
 #APP
 # 157 "load.c" 1
	mtc0	$18, $10
	mtc0	$2, $2
	mtc0	$3, $3
	mtc0	$4, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	li	$2,-8192			# 0xffffffffffffe000
	and	$2,$19,$2
	ori	$2,$2,0x2
	addiu	$3,$17,134
	addiu	$17,$17,198
	li	$18,1			# 0x1
 #APP
 # 171 "load.c" 1
	mtc0	$2, $10
	mtc0	$3, $2
	mtc0	$17, $3
	mtc0	$18, $0
	tlbwi
	
 # 0 "" 2
 #NO_APP
	move	$6,$0
	move	$5,$21
	.set	noreorder
	.set	nomacro
	jal	seek_file
	addiu	$4,$sp,16
	.set	macro
	.set	reorder

	addiu	$6,$sp,16
	move	$5,$22
	.set	noreorder
	.set	nomacro
	jal	read_file
	move	$4,$19
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	jal	close_file
	addiu	$4,$sp,16
	.set	macro
	.set	reorder

	lui	$2,%hi(current)
	li	$3,2			# 0x2
	sb	$3,%lo(current)($2)
	addiu	$2,$2,%lo(current)
	sb	$18,1($2)
	sw	$16,4($2)
	sw	$20,8($2)
	sw	$fp,12($2)
	sw	$23,16($2)
	sw	$19,20($2)
	sw	$22,24($2)
	.set	noreorder
	.set	nomacro
	b	$L4
	sw	$21,28($2)
	.set	macro
	.set	reorder

$L7:
	.set	noreorder
	.set	nomacro
	b	$L4
	li	$16,-1			# 0xffffffffffffffff
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

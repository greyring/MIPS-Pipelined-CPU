	.file	1 "shell.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	shell
	.set	nomips16
	.set	nomicromips
	.ent	shell
	.type	shell, @function
shell:
	.frame	$sp,312,$31		# vars= 256, regs= 9/0, args= 16, gp= 0
	.mask	0x80ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$23,304($sp)
	sw	$22,300($sp)
	sw	$21,296($sp)
	sw	$20,292($sp)
	sw	$19,288($sp)
	sw	$18,284($sp)
	sw	$17,280($sp)
	sw	$16,276($sp)
	sb	$0,272($sp)
	lui	$17,%hi(TIP)
	addiu	$17,$17,%lo(TIP)
	lui	$16,%hi(CLS)
	addiu	$16,$16,%lo(CLS)
	lui	$19,%hi(CD)
	addiu	$19,$19,%lo(CD)
	lui	$20,%hi(LS)
	lui	$21,%hi(TOUCH)
	addiu	$21,$21,%lo(TOUCH)
	b	$L2
	lui	$22,%hi(CAT)

$L33:
	jal	clear_screen
	nop

$L2:
	li	$5,127			# 0x7f
$L40:
	jal	pwd
	addiu	$4,$sp,144

	sb	$0,272($sp)
	jal	puts
	addiu	$4,$sp,144

	jal	puts
	move	$4,$17

	li	$5,128			# 0x80
	jal	gets
	addiu	$4,$sp,16

	li	$6,3			# 0x3
	move	$5,$16
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L33
	li	$6,2			# 0x2

	move	$5,$19
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L34
	li	$6,2			# 0x2

	addiu	$5,$20,%lo(LS)
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L35
	li	$6,5			# 0x5

	move	$5,$21
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L36
	li	$6,3			# 0x3

	addiu	$5,$22,%lo(CAT)
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L37
	li	$6,5			# 0x5

	lui	$5,%hi(WRITE)
	addiu	$5,$5,%lo(WRITE)
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L38
	li	$6,2			# 0x2

	lui	$5,%hi(CP)
	addiu	$5,$5,%lo(CP)
	jal	strncmp
	addiu	$4,$sp,16

	beq	$2,$0,$L39
	li	$6,2			# 0x2

	lui	$5,%hi(RM)
	addiu	$5,$5,%lo(RM)
	jal	strncmp
	addiu	$4,$sp,16

	bne	$2,$0,$L21
	lui	$4,%hi(UNKNOWN)

	jal	del_file
	addiu	$4,$sp,19

	b	$L40
	li	$5,127			# 0x7f

$L34:
	jal	cd
	addiu	$4,$sp,19

	b	$L40
	li	$5,127			# 0x7f

$L35:
	jal	dir
	nop

	b	$L40
	li	$5,127			# 0x7f

$L36:
	jal	crt_file
	addiu	$4,$sp,22

	b	$L40
	li	$5,127			# 0x7f

$L37:
	jal	fopen
	addiu	$4,$sp,20

	bne	$2,$0,$L9
	move	$18,$2

	b	$L40
	li	$5,127			# 0x7f

$L10:
	li	$5,127			# 0x7f
	jal	fread
	addiu	$4,$sp,144

	addiu	$3,$sp,16
	addu	$2,$3,$2
	sb	$0,128($2)
	jal	puts
	addiu	$4,$sp,144

$L9:
	jal	feof
	move	$4,$18

	beq	$2,$0,$L10
	move	$6,$18

	jal	fclose
	move	$4,$18

	jal	putc
	li	$4,10			# 0xa

	b	$L40
	li	$5,127			# 0x7f

$L38:
	lbu	$2,22($sp)
	li	$3,32			# 0x20
	beq	$2,$3,$L24
	addiu	$18,$sp,22

	beq	$2,$0,$L40
	li	$5,127			# 0x7f

	addiu	$18,$18,1
$L41:
	lbu	$2,0($18)
	nop
	beq	$2,$3,$L12
	nop

	bne	$2,$0,$L41
	addiu	$18,$18,1

	addiu	$18,$18,-1
	b	$L40
	li	$5,127			# 0x7f

$L25:
	b	$L14
	move	$5,$4

$L39:
	lbu	$2,19($sp)
	li	$3,32			# 0x20
	beq	$2,$3,$L26
	addiu	$18,$sp,19

	beq	$2,$0,$L40
	li	$5,127			# 0x7f

	addiu	$18,$18,1
$L42:
	lbu	$2,0($18)
	nop
	beq	$2,$3,$L17
	nop

	bne	$2,$0,$L42
	addiu	$18,$18,1

	addiu	$18,$18,-1
	b	$L40
	li	$5,127			# 0x7f

$L20:
	li	$5,127			# 0x7f
	jal	fread
	addiu	$4,$sp,144

	move	$6,$18
	move	$5,$2
	jal	fwrite
	addiu	$4,$sp,144

$L19:
	jal	feof
	move	$4,$23

	beq	$2,$0,$L20
	move	$6,$23

	jal	fclose
	move	$4,$23

	jal	fclose
	move	$4,$18

	b	$L40
	li	$5,127			# 0x7f

$L21:
	jal	puts
	addiu	$4,$4,%lo(UNKNOWN)

	b	$L40
	li	$5,127			# 0x7f

$L24:
$L12:
	sb	$0,0($18)
	jal	fopen
	addiu	$4,$sp,22

	beq	$2,$0,$L2
	move	$23,$2

	lbu	$2,1($18)
	nop
	beq	$2,$0,$L25
	addiu	$4,$18,1

	move	$5,$4
$L15:
	addiu	$5,$5,1
	lbu	$2,0($5)
	nop
	bne	$2,$0,$L15
	nop

$L14:
	move	$6,$23
	jal	fwrite
	subu	$5,$5,$4

	jal	fclose
	move	$4,$23

	b	$L40
	li	$5,127			# 0x7f

$L26:
$L17:
	sb	$0,0($18)
	jal	fopen
	addiu	$4,$sp,19

	beq	$2,$0,$L2
	move	$23,$2

	jal	fopen
	addiu	$4,$18,1

	bne	$2,$0,$L19
	move	$18,$2

	b	$L40
	li	$5,127			# 0x7f

	.set	macro
	.set	reorder
	.end	shell
	.size	shell, .-shell
	.globl	RM
	.section	.data,"aw",@progbits
	.align	2
	.type	RM, @object
	.size	RM, 3
RM:
	.ascii	"rm\000"
	.globl	CP
	.align	2
	.type	CP, @object
	.size	CP, 3
CP:
	.ascii	"cp\000"
	.globl	WRITE
	.align	2
	.type	WRITE, @object
	.size	WRITE, 6
WRITE:
	.ascii	"write\000"
	.globl	CAT
	.align	2
	.type	CAT, @object
	.size	CAT, 4
CAT:
	.ascii	"cat\000"
	.globl	TOUCH
	.align	2
	.type	TOUCH, @object
	.size	TOUCH, 6
TOUCH:
	.ascii	"touch\000"
	.globl	LS
	.align	2
	.type	LS, @object
	.size	LS, 3
LS:
	.ascii	"ls\000"
	.globl	CD
	.align	2
	.type	CD, @object
	.size	CD, 3
CD:
	.ascii	"cd\000"
	.globl	CLS
	.align	2
	.type	CLS, @object
	.size	CLS, 4
CLS:
	.ascii	"cls\000"
	.globl	UNKNOWN
	.align	2
	.type	UNKNOWN, @object
	.size	UNKNOWN, 9
UNKNOWN:
	.ascii	"Unknown\012\000"
	.globl	TIP
	.align	2
	.type	TIP, @object
	.size	TIP, 3
TIP:
	.ascii	"$>\000"
	.ident	"GCC: (GNU) 7.2.0"

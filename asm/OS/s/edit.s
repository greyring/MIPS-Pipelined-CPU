	.file	1 "edit.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	get_ploc_inline
	.set	nomips16
	.set	nomicromips
	.ent	get_ploc_inline
	.type	get_ploc_inline, @function
get_ploc_inline:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L3
	move	$2,$5

	addiu	$3,$5,-1
	addu	$4,$4,$3
	lbu	$5,0($4)
	li	$4,10			# 0xa
	beq	$5,$4,$L3
	nop

	move	$2,$3
$L3:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_ploc_inline
	.size	get_ploc_inline, .-get_ploc_inline
	.align	2
	.globl	get_ploc
	.set	nomips16
	.set	nomicromips
	.ent	get_ploc
	.type	get_ploc, @function
get_ploc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L22
	move	$2,$5

	addiu	$3,$5,-1
	addu	$5,$4,$3
	lbu	$6,0($5)
	li	$5,10			# 0xa
	beq	$6,$5,$L14
	addiu	$6,$2,-2

	addu	$6,$4,$6
$L7:
	beq	$3,$0,$L22
	addiu	$6,$6,-1

	lbu	$7,1($6)
	nop
	beq	$7,$5,$L6
	addiu	$8,$3,-1

	b	$L7
	move	$3,$8

$L15:
	jr	$31
	move	$2,$6

$L14:
	move	$3,$2
$L6:
	addiu	$6,$3,-1
	blez	$6,$L9
	addu	$5,$4,$6

	lbu	$7,-1($5)
	li	$5,10			# 0xa
	beq	$7,$5,$L9
	addiu	$7,$3,-3

	addu	$7,$4,$7
	li	$8,10			# 0xa
	addiu	$6,$6,-1
$L20:
	beq	$6,$0,$L9
	addiu	$7,$7,-1

	lbu	$5,1($7)
	nop
	bne	$5,$8,$L20
	addiu	$6,$6,-1

	addiu	$6,$6,1
$L9:
	addu	$7,$4,$6
	lbu	$8,0($7)
	li	$7,10			# 0xa
	beq	$8,$7,$L15
	nop

	subu	$2,$2,$3
	beq	$2,$0,$L11
	addu	$3,$4,$6

	lbu	$7,1($3)
	li	$3,10			# 0xa
	beq	$7,$3,$L11
	addiu	$7,$6,2

	addu	$4,$4,$7
	addu	$2,$6,$2
	addiu	$6,$6,1
$L21:
	beq	$6,$2,$L11
	addiu	$4,$4,1

	lbu	$5,-1($4)
	nop
	bne	$5,$3,$L21
	addiu	$6,$6,1

	addiu	$6,$6,-1
$L11:
	jr	$31
	move	$2,$6

$L22:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_ploc
	.size	get_ploc, .-get_ploc
	.align	2
	.globl	get_nloc
	.set	nomips16
	.set	nomicromips
	.ent	get_nloc
	.type	get_nloc, @function
get_nloc:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	beq	$5,$0,$L33
	move	$2,$5

	addiu	$3,$5,-1
	addu	$5,$4,$3
	lbu	$7,0($5)
	li	$5,10			# 0xa
	beq	$7,$5,$L34
	addiu	$7,$2,-2

	addu	$7,$4,$7
	li	$10,10			# 0xa
$L25:
	beq	$3,$0,$L24
	addiu	$7,$7,-1

	lbu	$8,1($7)
	nop
	beq	$8,$10,$L24
	addiu	$9,$3,-1

	b	$L25
	move	$3,$9

$L33:
	move	$3,$5
$L24:
	sltu	$5,$2,$6
	beq	$5,$0,$L35
	addu	$5,$4,$2

	lbu	$7,0($5)
	li	$5,10			# 0xa
	beq	$7,$5,$L36
	addiu	$8,$2,1

	addu	$8,$4,$8
	move	$7,$2
	li	$10,10			# 0xa
	addiu	$7,$7,1
$L44:
	beq	$6,$7,$L27
	addiu	$8,$8,1

	lbu	$9,-1($8)
	nop
	bne	$9,$10,$L44
	addiu	$7,$7,1

	addiu	$7,$7,-1
$L32:
	addiu	$5,$7,1
$L45:
	addu	$8,$4,$5
	lbu	$9,0($8)
	li	$8,10			# 0xa
	beq	$9,$8,$L37
	addiu	$6,$6,-1

	sltu	$8,$5,$6
	beq	$8,$0,$L38
	subu	$3,$2,$3

	beq	$3,$0,$L39
	nop

	addiu	$2,$7,2
	addu	$8,$4,$2
	lbu	$9,0($8)
	li	$8,10			# 0xa
	beq	$9,$8,$L40
	addiu	$8,$7,3

	addu	$4,$4,$8
	addiu	$3,$3,1
	addu	$7,$3,$7
	b	$L31
	li	$8,10			# 0xa

$L34:
	b	$L24
	move	$3,$2

$L35:
	move	$7,$2
$L27:
	addu	$5,$4,$7
	lbu	$8,0($5)
	li	$5,10			# 0xa
	beq	$8,$5,$L45
	addiu	$5,$7,1

$L47:
	jr	$31
	nop

$L41:
	move	$2,$5
$L31:
	beq	$6,$2,$L46
	nop

	beq	$2,$7,$L47
	addiu	$4,$4,1

	lbu	$3,-1($4)
	nop
	bne	$3,$8,$L41
	addiu	$5,$2,1

$L46:
	jr	$31
	nop

$L37:
	jr	$31
	move	$2,$5

$L38:
	jr	$31
	move	$2,$5

$L39:
	jr	$31
	move	$2,$5

$L40:
	jr	$31
	move	$2,$5

$L36:
	b	$L32
	move	$7,$2

	.set	macro
	.set	reorder
	.end	get_nloc
	.size	get_nloc, .-get_nloc
	.align	2
	.globl	get_nloc_inline
	.set	nomips16
	.set	nomicromips
	.ent	get_nloc_inline
	.type	get_nloc_inline, @function
get_nloc_inline:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$6,$6,-1
	beq	$6,$5,$L50
	move	$2,$5

	addiu	$3,$5,1
	addu	$4,$4,$3
	lbu	$5,0($4)
	li	$4,10			# 0xa
	beq	$5,$4,$L50
	nop

	move	$2,$3
$L50:
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	get_nloc_inline
	.size	get_nloc_inline, .-get_nloc_inline
	.align	2
	.globl	edit
	.set	nomips16
	.set	nomicromips
	.ent	edit
	.type	edit, @function
edit:
	.frame	$sp,1288,$31		# vars= 1232, regs= 10/0, args= 16, gp= 0
	.mask	0xc0ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-1288
	sw	$31,1284($sp)
	sw	$fp,1280($sp)
	sw	$23,1276($sp)
	sw	$22,1272($sp)
	sw	$21,1268($sp)
	sw	$20,1264($sp)
	sw	$19,1260($sp)
	sw	$18,1256($sp)
	sw	$17,1252($sp)
	sw	$16,1248($sp)
	lui	$16,%hi(NOFILE)
	addiu	$16,$16,%lo(NOFILE)
	li	$5,128			# 0x80
$L151:
	jal	gets
	addiu	$4,$sp,16

	jal	fopen
	addiu	$4,$sp,16

	bne	$2,$0,$L102
	move	$20,$2

	jal	puts
	move	$4,$16

	b	$L151
	li	$5,128			# 0x80

$L54:
	addiu	$fp,$fp,512
$L52:
	li	$6,1			# 0x1
	li	$5,512			# 0x200
	jal	fseek
	move	$4,$20

	bne	$2,$0,$L54
	move	$22,$2

	move	$6,$20
	li	$5,512			# 0x200
	jal	fread
	addiu	$4,$sp,16

	move	$19,$2
	addiu	$2,$sp,16
	addu	$2,$2,$19
	jal	clear_screen
	sb	$0,0($2)

	move	$6,$0
	lui	$16,%hi(CURSOR_RGB)
	addiu	$5,$16,%lo(CURSOR_RGB)
	jal	set_cursor
	move	$4,$0

	jal	puts
	addiu	$4,$sp,16

	move	$6,$0
	addiu	$5,$16,%lo(CURSOR_RGB)
	jal	set_cursor
	li	$4,3			# 0x3

	sb	$0,1220($sp)
	move	$17,$22
	move	$21,$22
	li	$2,3			# 0x3
	sw	$2,1240($sp)
	sw	$0,1244($sp)
	addiu	$2,$16,%lo(CURSOR_RGB)
	sw	$2,1232($sp)
	b	$L55
	addiu	$23,$sp,16

$L102:
	b	$L52
	move	$fp,$0

$L105:
	b	$L55
	move	$21,$19

$L124:
	move	$5,$17
	jal	get_ploc_inline
	move	$4,$23

	move	$17,$2
$L101:
	jal	clear_screen
	nop

	move	$6,$0
	lw	$5,1232($sp)
	jal	set_cursor
	move	$4,$0

	beq	$17,$0,$L97
	addiu	$16,$sp,16

	addu	$18,$17,$16
$L98:
	lbu	$4,0($16)
	jal	putc
	addiu	$16,$16,1

	bne	$16,$18,$L98
	nop

$L97:
	jal	get_cursor
	nop

	andi	$2,$2,0x7ff
	sw	$2,1236($sp)
	sltu	$2,$17,$19
	beq	$2,$0,$L99
	addu	$16,$23,$17

	addu	$18,$23,$19
$L100:
	lbu	$4,0($16)
	jal	putc
	addiu	$16,$16,1

	bne	$16,$18,$L100
	nop

$L99:
	li	$6,1120			# 0x460
	lw	$16,1232($sp)
	nop
	move	$5,$16
	jal	set_cursor
	li	$4,3			# 0x3

	jal	puts
	addiu	$4,$sp,1220

	jal	kprintHex_long
	move	$4,$19

	jal	kprintHex_long
	move	$4,$17

	lw	$6,1236($sp)
	lw	$4,1240($sp)
	jal	set_cursor
	move	$5,$16

$L55:
	jal	getc
	nop

	bne	$21,$0,$L56
	li	$3,2			# 0x2

	li	$3,104			# 0x68
	beq	$2,$3,$L124
	li	$3,106			# 0x6a

	beq	$2,$3,$L125
	li	$3,107			# 0x6b

	beq	$2,$3,$L126
	li	$3,108			# 0x6c

	beq	$2,$3,$L127
	li	$3,105			# 0x69

	beq	$2,$3,$L128
	li	$3,97			# 0x61

	beq	$2,$3,$L129
	li	$3,120			# 0x78

	beq	$2,$3,$L130
	li	$3,114			# 0x72

	beq	$2,$3,$L106
	li	$3,58			# 0x3a

	bne	$2,$3,$L101
	li	$2,58			# 0x3a

	sb	$2,1220($sp)
	sb	$0,1221($sp)
	li	$21,1			# 0x1
	li	$2,1			# 0x1
	b	$L101
	sw	$2,1244($sp)

$L125:
	move	$6,$19
	move	$5,$17
	jal	get_nloc
	move	$4,$23

	b	$L101
	move	$17,$2

$L126:
	move	$5,$17
	jal	get_ploc
	move	$4,$23

	b	$L101
	move	$17,$2

$L127:
	move	$6,$19
	move	$5,$17
	jal	get_nloc_inline
	move	$4,$23

	b	$L101
	move	$17,$2

$L128:
	beq	$19,$0,$L103
	li	$2,2			# 0x2

	sw	$2,1240($sp)
	b	$L101
	li	$21,2			# 0x2

$L129:
	beq	$19,$0,$L104
	li	$2,2			# 0x2

	addiu	$17,$17,1
	sw	$2,1240($sp)
	b	$L101
	li	$21,5			# 0x5

$L130:
	beq	$19,$0,$L105
	addiu	$5,$19,-1

	sltu	$2,$17,$5
	beq	$2,$0,$L66
	addiu	$3,$sp,15

	addu	$2,$23,$17
	addu	$4,$3,$19
$L67:
	lbu	$3,1($2)
	nop
	sb	$3,0($2)
	addiu	$2,$2,1
	bne	$4,$2,$L67
	nop

$L66:
	beq	$19,$17,$L131
	addu	$2,$23,$5

$L152:
	sb	$0,0($2)
	b	$L101
	move	$19,$5

$L131:
	beq	$17,$0,$L152
	nop

	b	$L152
	addiu	$17,$17,-1

$L56:
	beq	$21,$3,$L132
	li	$3,1			# 0x1

	beq	$21,$3,$L133
	li	$3,3			# 0x3

	beq	$21,$3,$L134
	li	$3,5			# 0x5

	beq	$21,$3,$L135
	li	$3,27			# 0x1b

$L81:
	li	$2,4			# 0x4
	bne	$21,$2,$L101
	nop

	jal	fclose
	move	$4,$20

	lw	$31,1284($sp)
	lw	$fp,1280($sp)
	lw	$23,1276($sp)
	lw	$22,1272($sp)
	lw	$21,1268($sp)
	lw	$20,1264($sp)
	lw	$19,1260($sp)
	lw	$18,1256($sp)
	lw	$17,1252($sp)
	lw	$16,1248($sp)
	jr	$31
	addiu	$sp,$sp,1288

$L132:
	li	$3,27			# 0x1b
	beq	$2,$3,$L107
	li	$3,8			# 0x8

	beq	$2,$3,$L136
	li	$3,127			# 0x7f

	beq	$2,$3,$L101
	nop

	bne	$19,$0,$L74
	sltu	$3,$19,1119

	sb	$2,16($sp)
	sb	$0,17($sp)
	b	$L101
	li	$19,1			# 0x1

$L136:
	bne	$17,$0,$L137
	addiu	$4,$17,-1

$L71:
	jal	clear_screen
	move	$17,$22

	move	$6,$0
	lw	$5,1232($sp)
	jal	set_cursor
	move	$4,$0

	b	$L97
	nop

$L137:
	addiu	$3,$19,-1
	sltu	$2,$4,$3
	beq	$2,$0,$L153
	addu	$2,$23,$3

	addu	$17,$23,$17
	addu	$19,$23,$19
$L73:
	lbu	$2,0($17)
	nop
	sb	$2,-1($17)
	addiu	$17,$17,1
	bne	$19,$17,$L73
	addu	$2,$23,$3

$L153:
	sb	$0,0($2)
	move	$17,$4
	b	$L101
	move	$19,$3

$L74:
	beq	$3,$0,$L101
	addiu	$5,$17,1

	sltu	$3,$19,$5
	bne	$3,$0,$L75
	addu	$3,$23,$19

$L76:
	lbu	$4,-1($3)
	nop
	sb	$4,0($3)
	addiu	$3,$3,-1
	subu	$4,$3,$23
	sltu	$4,$4,$5
	beq	$4,$0,$L76
	nop

$L75:
	addu	$17,$23,$17
	sb	$2,0($17)
	addiu	$19,$19,1
	addu	$2,$23,$19
	sb	$0,0($2)
	b	$L101
	move	$17,$5

$L133:
	li	$3,10			# 0xa
	beq	$2,$3,$L138
	li	$3,8			# 0x8

	beq	$2,$3,$L139
	li	$3,27			# 0x1b

	beq	$2,$3,$L140
	li	$3,127			# 0x7f

	beq	$2,$3,$L101
	li	$3,9			# 0x9

	lw	$4,1244($sp)
	nop
	beq	$4,$3,$L101
	addu	$3,$23,$4

	sb	$2,1204($3)
	addiu	$2,$4,1
	andi	$2,$2,0x00ff
	sw	$2,1244($sp)
	addu	$2,$23,$2
	b	$L101
	sb	$0,1204($2)

$L138:
	li	$2,2			# 0x2
	lw	$3,1244($sp)
	nop
	beq	$3,$2,$L141
	move	$21,$22

$L79:
	sb	$0,1220($sp)
	b	$L81
	sw	$0,1244($sp)

$L141:
	lbu	$2,1221($sp)
	li	$3,119			# 0x77
	beq	$2,$3,$L142
	li	$3,113			# 0x71

	beq	$2,$3,$L143
	nop

	b	$L79
	move	$21,$22

$L142:
	move	$6,$0
	move	$5,$fp
	jal	fseek
	move	$4,$20

	move	$6,$20
	move	$5,$19
	jal	fwrite
	move	$4,$23

	b	$L79
	move	$21,$22

$L143:
	b	$L79
	li	$21,4			# 0x4

$L139:
	lw	$3,1244($sp)
	nop
	sltu	$2,$3,2
	bne	$2,$0,$L101
	addiu	$2,$3,-1

	andi	$2,$2,0x00ff
	sw	$2,1244($sp)
	addu	$2,$23,$2
	b	$L101
	sb	$0,1204($2)

$L140:
	sb	$0,1220($sp)
	move	$21,$22
	b	$L101
	sw	$0,1244($sp)

$L134:
	li	$3,27			# 0x1b
	beq	$2,$3,$L144
	li	$3,8			# 0x8

	beq	$2,$3,$L145
	li	$3,127			# 0x7f

	beq	$2,$3,$L101
	sltu	$3,$19,1119

	beq	$3,$0,$L55
	nop

	beq	$19,$17,$L146
	nop

$L89:
	addu	$3,$23,$17
	sb	$2,0($3)
	b	$L101
	addiu	$17,$17,1

$L144:
	beq	$19,$17,$L147
	nop

	sw	$21,1240($sp)
	b	$L101
	move	$21,$22

$L147:
	beq	$17,$0,$L111
	nop

	addiu	$17,$17,-1
	sw	$21,1240($sp)
	b	$L101
	move	$21,$22

$L145:
	beq	$17,$0,$L71
	addiu	$4,$17,-1

	addiu	$3,$19,-1
	sltu	$2,$4,$3
	beq	$2,$0,$L154
	addu	$2,$23,$3

	addu	$17,$23,$17
	addu	$19,$23,$19
$L88:
	lbu	$2,0($17)
	nop
	sb	$2,-1($17)
	addiu	$17,$17,1
	bne	$17,$19,$L88
	addu	$2,$23,$3

$L154:
	sb	$0,0($2)
	move	$17,$4
	b	$L101
	move	$19,$3

$L146:
	addiu	$19,$19,1
	addu	$3,$23,$19
	b	$L89
	sb	$0,0($3)

$L135:
	beq	$2,$3,$L148
	li	$3,8			# 0x8

	beq	$2,$3,$L149
	li	$3,127			# 0x7f

	beq	$2,$3,$L101
	sltu	$3,$19,1119

	beq	$3,$0,$L55
	addiu	$5,$17,1

	sltu	$3,$19,$5
	bne	$3,$0,$L94
	addu	$3,$23,$19

$L95:
	lbu	$4,-1($3)
	nop
	sb	$4,0($3)
	addiu	$3,$3,-1
	subu	$4,$3,$23
	sltu	$4,$4,$5
	beq	$4,$0,$L95
	nop

$L94:
	addu	$17,$23,$17
	sb	$2,0($17)
	addiu	$19,$19,1
	addu	$2,$23,$19
	sb	$0,0($2)
	b	$L101
	move	$17,$5

$L148:
	beq	$19,$17,$L150
	move	$21,$22

	li	$2,3			# 0x3
	b	$L101
	sw	$2,1240($sp)

$L150:
	beq	$17,$0,$L113
	li	$2,3			# 0x3

	addiu	$17,$17,-1
	move	$21,$22
	b	$L101
	sw	$2,1240($sp)

$L149:
	beq	$17,$0,$L71
	addiu	$4,$17,-1

	addiu	$3,$19,-1
	sltu	$2,$4,$3
	beq	$2,$0,$L155
	addu	$2,$23,$3

	addu	$17,$23,$17
	addu	$19,$23,$19
$L93:
	lbu	$2,0($17)
	nop
	sb	$2,-1($17)
	addiu	$17,$17,1
	bne	$17,$19,$L93
	addu	$2,$23,$3

$L155:
	sb	$0,0($2)
	move	$17,$4
	b	$L101
	move	$19,$3

$L103:
	sw	$2,1240($sp)
	b	$L101
	li	$21,5			# 0x5

$L104:
	sw	$2,1240($sp)
	b	$L101
	li	$21,5			# 0x5

$L106:
	li	$2,1			# 0x1
	sw	$2,1240($sp)
	b	$L101
	li	$21,3			# 0x3

$L107:
	move	$21,$22
	li	$2,3			# 0x3
	b	$L101
	sw	$2,1240($sp)

$L111:
	sw	$21,1240($sp)
	move	$21,$17
	b	$L71
	move	$19,$17

$L113:
	move	$21,$17
	move	$19,$17
	b	$L71
	sw	$2,1240($sp)

	.set	macro
	.set	reorder
	.end	edit
	.size	edit, .-edit
	.globl	FONT_RGB
	.section	.data,"aw",@progbits
	.align	2
	.type	FONT_RGB, @object
	.size	FONT_RGB, 6
FONT_RGB:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	0
	.byte	0
	.globl	CURSOR_RGB
	.align	2
	.type	CURSOR_RGB, @object
	.size	CURSOR_RGB, 3
CURSOR_RGB:
	.byte	-1
	.byte	-1
	.byte	-1
	.globl	NOFILE
	.align	2
	.type	NOFILE, @object
	.size	NOFILE, 15
NOFILE:
	.ascii	"File not find\012\000"
	.ident	"GCC: (GNU) 7.2.0"

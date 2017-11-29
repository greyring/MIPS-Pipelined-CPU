.text
.set noat
.set noreorder
_start:
lui $29, 0xe000;

addi $30, $0, 1;
#arithmetic test
sw  $30, 0($29);
addi $1, $0, 1;#$1 = 1 addi
beq  $1, $0, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add  $2, $1, $1;#$2 = 2 add
bne  $2, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
addi $3, $0, 4;
sub  $3, $3, $1;#$3 = 3 sub
bne  $3, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
sll  $4, $1, 2;#$4 = 4 sll
bne  $4, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
sll  $5, $1, 3;
srl  $5, $5, 1;
addi $5, $5, 1;#$5 = 5 sll
bne  $5, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
lui  $6, 0xc000;
srl  $6, $6, 29;#$6 = 6 lui
bne  $6, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
sll  $7, $1, 31;
addiu $8, $7, -1;#7fffffff
subu $9, $0, $7;#80000000
addu $7, $7, $7;
addi $7, $7, 7;#$7 = 7 addu
bne  $7, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
addiu $8, $8, 1;
srl  $8, $8, 28;#$8 = 8 addiu
bne  $8, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
srl  $9, $9, 28;
add  $9, $9, $1;#$9 = 9 subu
bne  $9, $30, print_err;
nop;
addi $30, $30, 1;


#bitwise test
sw  $30, 0($29);
or   $10, $8, $2;#$10 = 10 or
bne  $10, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
ori  $11, $8, 3;#$11 = 11 ori
bne  $11, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
and  $12, $10, $8;
or   $12, $12, $4;#$12 = 12 and
bne  $12, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
addi $13, $0, 15;
andi $13, $13, 13;#$13 = 13 andi
bne  $13, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor  $14, $0, $0;
addi $14, $14, 15;#$14 = 14 nor
bne  $14, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
xor  $15, $8, $4;
xor  $15, $15, $7;
addi $15, $15, 4;#$15 = 15 xor
bne  $15, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
xori $16, $0, 0x0f;
xori $16, $16, 0x1f;#$16 = 16 xori
bne  $16, $30, print_err;
nop;
addi $30, $30, 1;

#compare test
sw  $30, 0($29);
nor $17, $0, $0;
slt  $17, $17, $0;
add $17, $17, $16;#$17 = 17 slt
bne  $17, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
slti $18, $0, 0xffff;
addi $18, $18, 18;#$18 = 18 slti
bne  $18, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add  $19, $0, $0;
beq  $19, $1, label_1;
nop;
add  $19, $19, $16;
label_1:
beq $1, $1, label_2;
nop;
addi $19, $19, 1;
label_2:
add $19, $19, $3;#$19 = 19 beq
beq  $19, $30, beq_next;
nop;
j print_err;
nop;
beq_next:
addi $30, $30, 1;

sw  $30, 0($29);
add $20, $0, $0;
bne $1, $1, label_3;
nop;
add $20, $20, $16;
label_3:
bne $1, $0, label_4;
nop;
addi $20, $20, 1;
label_4:
add $20, $20, $4;#$20 = 20 bne
beq $20, $30, bne_next;
nop;
j print_err;
nop;
bne_next:
addi $30, $30, 1;

#jump test
sw  $30, 0($29);
add $21, $0, $16;
j label_5;
nop;
add $21, $21, $1;
label_5:
add $21, $21, $5;#$21 = 21 j
bne $21, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add $22, $0, $16;
jal label_6;
nop;
add $22, $22, $1;
j label_7;
nop;
label_6:
add $22, $22, $1;
jr  $31;
nop;
label_7:
add $22, $22, $4;#$22 = 22 jal jr
bne  $22, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add $23, $0, $16;
li  $31, label_8;
jalr $24, $31;
nop;

add $23, $23, $1;
j label_9;
nop;

label_8:
add $23, $23, $4;
jr $24;
nop;

label_9:
add $23, $23, $2;#$23 = 23 jalr
bne  $23, $30, print_err;
nop;
addi $30, $30, 1;

#memory test
sw  $30, 0($29);
sw $4, 92($30);
sw $0, 96($30);
lw $24, 92($30);
lw $0, 96($30);
add $24, $24, $20;#$24 = 24 lw sw
bne  $24, $30, print_err;
nop;
addi $30, $30, 1;

#reg test   ##  NOTE: 24 IS CHANGED!!!
sw  $30, 0($29);  # test branch in 2 cases: > 0 and == 0, if right, then 25 in $25 is not changed
addi $25, $zero, 26;
addi $24, $zero, 2; # 2 > 0
bgtz $24, label_10;
nop;
addi $25, $25, -1;
label_10:
add $24, $zero, $zero; # 0 == 0
bgtz $24, label_11;
nop;
addi $25, $25, -1;
label_11:
bne  $25, $30, print_err;   # $25 = 25 BGTZ
nop;
addi $30, $30, 1;

sw  $30, 0($29);
addi $26, $zero, 26;
addi $24, $zero, -2; # -2 < 0
blez $24, label_12;
nop;
addi $26, $26, -1;
label_12:
add $24, $zero, $zero; # 0 == 0
blez $24, label_13;
nop;
addi $26, $26, -1;
label_13:
bne  $26, $30, print_err;  # $26 = 26 BLEZ
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add $27, $26, $1; # $26 + $1 = 26 + 1 = 27
sb $27, 200($30);
sb $0, 201($30);
lb $27, 200($30);
lb $0, 201($30);
bne  $27, $30, print_err;  # 27 SB, LB
nop;
addi $30, $30, 1;

sw  $30, 0($29);
add $28, $27, $1;
sh $28, 240($30);
sh $0, 242($30);
lh $28, 240($30);
lh $0, 242($30);
bne  $28, $30, print_err; # 28 LH, SH
nop;
addi $30, $30, 1;

addi $30, $30, 1;

#mul test
sw  $30, 0($29);
addi $1, $0, 30;
mtlo $1;
mflo $1;              #30  mtlo mflo
bne $1, $30, print_err;
nop;
addi $30, $30, 1; 

sw  $30, 0($29);
addi $1, $0, 31;
mthi $1;
mfhi $1;              #31 mthi mfhi
bne $1, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
mul $1, $1, $1;
mul $1, $1, $4;
mul $1, $1, $8;       #32 mul
bne $1, $30, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
multu $1, $1;
mfhi $1;             #33 multu hilo = fffffffe 1
addi $1, $1, 2;
bne $1, $0, print_err;
nop;
mflo $1;
addi $1, $1, -1;
bne $1, $0, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
mult $1, $1;
mfhi $1;             #34 mult  hilo = 1
bne $1, $0, print_err;
nop;
mflo $1;
addi $1, $1, -1;
bne $1, $0, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
msub $1, $1;
mfhi $1;
bne $1, $0, print_err;
nop;
mflo $1;
bne $1, $0, print_err; #35 msub hilo = 0
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
msubu $1, $1;
mflo $1;
addi $1, $1, -1;
bne $1, $0, print_err;
nop;
mfhi $1;
addi $1, $1, 2;
bne $1, $0, print_err; #36 msubu hilo=fffffffe 1
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
madd $1, $1;
mflo $1;
addi $1, $1, -2;
bne $1, $0, print_err;
nop;
mfhi $1;
addi $1, $1, 2;
bne $1, $0, print_err; #37 madd hilo = fffffffe 2
nop;
addi $30, $30, 1;

sw  $30, 0($29);
nor $1, $0, $0;
maddu $1, $1;
mfhi $1;
addi $1, $1, 4;
bne $1, $0, print_err;
nop;
mflo $1;
addi $1, $1, -3;
bne $1, $0, print_err; #38 maddu hi lo =fffffffc 3
nop;
addi $30, $30, 1;

mult $0, $0; # hi lo = 0 0

lui $31, 0xe000;
nor $30, $0, $0;
sw  $30, 0($31);
j   test_end;
nop;

sw $30, 0($29); # 39 sltu 1 < -1
addi $2, $zero, -1
add $3, $zero, 1
sltu $1, $2, $3  # $1 == 1 if -1 < 1  
bne $1, $0, print_err;
nop;
addi $30, $30, 1;

sw $30, 0($29); # 39 sltui 1 < -1
addi $2, $zero, -1
sltiu $1, $2, 1  # $1 == 1 if -1 < 1  
bne $1, $0, print_err;
nop;
addi $30, $30, 1;

sw  $30, 0($29);  #41 LBU, LHU
addi $24, $0, -1; 
sb $24, 400($30);
sh $1, 402($30);
lbu $24, 400($30);
lhu $1, 402($30);
bne  $1, $0, print_err;  # 27 SB, LB
nop;
addi $30, $30, 1;


print_err:
test_end:
j test_end;
nop;



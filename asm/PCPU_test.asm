.text
.set noat
#.set noreorder
_start:
j start;
add $zero, $zero, $zero;
add $zero, $zero, $zero;
add $zero, $zero, $zero;
add $zero, $zero, $zero;
add $zero, $zero, $zero;
add $zero, $zero, $zero;
add $zero, $zero, $zero;

start:
lui $v1, 0xf000;
lui $a0, 0xe000;
lui $t0, 0x8000;

addiu $s4, $zero, 0x003f;
lui $a2, 0xf800;

loop:
  nor $at, $zero, $zero;
  slt $v0, $zero, $at;
  addiu $t2, $at, -1;

loop1:
  sw $a2, 4($v1);
  lw $a1, 0($v1);
  addu $a1, $a1, $a1;
  addu $a1, $a1, $a1;
  sw $a1, 0($v1);
  addiu $t1, $t1, 1;
  sw $t1, 0($a0);
  lw $t5, 0x14($zero);

loop2:
lw $a1, 0($v1);
addu $a1, $a1, $a1;
addu $a1, $a1, $a1;
sw $a1, 0($v1);

lw $a1, 0($v1);
and $t3, $a1, $t0;
#bne $t3, $t0, l_next;
addiu $t5, $t5, 1;
bne $t5, $zero, l_next;
jal C_init;

l_next:
lw $a1, 0($v1);
addiu $s2, $zero, 0x0008;
addu $s6, $s2, $s2;
addu $s2, $s2, $s6;
and $t3, $a1, $s2;
beq $t3, $zero, L00;
beq $t3, $s2, L11;
addiu $s2, $zero, 0x0008;
beq $t3, $s2, L01;
sw $t1, 0($a0);
j loop2;

L00:
bne $t2, $at, L3;

L4:
nor $t2, $zero, $zero;
addu $t2, $t2, $t2;
#addi $t2, $at, -1;

L3:
sw $t2, 0($a0);
j loop2;

L11:
lw $t1, 0x60($s1);
sw $t1, 0($a0);
j loop2;

L01:
lw $t1, 0x20($s1);
sw $t1, 0($a0);
j loop2;

C_init:
lw $t5, 0x14($zero);
addu $t2, $t2, $t2;
ori $t2, $t2, 1;
addiu $s1, $s1, 4;
and $s1, $s1, $s4;
addu $t1, $t1, $v0;
bne $t1, $at, L7;

addiu $t1, $t1, 5;

L7:
lw $a1, 0($v1);
addu $t3, $a1, $a1;
addu $t3, $t3, $t3;
sw $t3, 0($v1);
sw $a2, 4($v1);
jr $ra;
#.set reorder

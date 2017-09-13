lui $s0, 0xb800;
add $t0, $zero, $zero;
lui $t1, 0xfff0;

loop:
  or $t2, $t1, $t0;
  #ori $t2, $t1, 127;
  add $t3, $t0, $t0;
  add $t3, $t3, $t3;
  add $t3, $t3, $s0;
  sw $t2, 0($t3);
  addi $t0, $t0, 1;
  addi $t2, $zero, 256;
  bne $t0, $t2, loop;

lui $s1,0xf000;//SW
lui $s2,0xb000;//显示模式
lui $s3,0xb100;//光标模式
loop2:
lw $t0, 0($s1);
andi $t1, $t0, 0x0300;//SW[9:8]显示模式
andi $t2, $t0, 0x0c00;//SW[11:10]光标模式
srl $t1, $t1, 8;
sw $t1, 0($s2);

srl $t2, $t2, 10;
lui $t3, 0xffff;
addi $t4, $zero, 224;
add $t4, $t4, $t4;
add $t4, $t4, $t4;
add $t4, $t4, $t4;//左移3位
or $t3, $t3, $t4;
or $t3, $t3, $t2;
sw $t3, 0($s3);
j loop2;




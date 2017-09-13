#graph: 0xa0000000;
#text: 0xb8000000;
#reg: 0xb0000000;

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

lui $t2, 0xffff;
ori $t2, $t2, 224;
lui $s0, 0xb100;
sw $t2, 0($s0);

done:
j done;
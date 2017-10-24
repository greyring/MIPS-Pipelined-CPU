.section .text
li $s0, 0xb0010004;
sw $0, 0($s0); #text mode

add $t0, $0, $0;
addi $t1, $0, 256;
li $s0, 0xb0000000;
lui $t2, 0x0fc0;

loop:
or $t3, $t0, $t2;
sw $t3, 0($s0);
addi $t0, $t0, 1;
addi $s0, $s0, 4;
bne $t0, $t1, loop;

li $s0, 0xb0010000;
li $t0, 0x003f01ff;
sw $t0, 0($s0);
end:
j end
#0000 0000 0011 1111
#0000 0001 1111 1111

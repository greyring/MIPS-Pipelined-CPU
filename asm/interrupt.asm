SEG	EQU 0xe0000000;
KEY	EQU 0xc0000000;
j START_;
TEMP: RESD:1;
BaseAddre: 0x180;
li $k0, KEY;
lw $k0, 0($k0);
li $k0, TEMP;
lw $k1, 0($k0);
addi $k1, $k1, 1;
sw $k1, 0($k0);
li $k0,SEG;
sw $k1, 0($k0);
DD: 0x42000018;
DD: 0x00000000;
//eret

TRAP:
j TRAP;

START_:
li $t0, TEMP;
add $t1, $zero, $zero;
sw $t1, 0($t0);
LOOP:
add $zero, $zero, $zero;
j LOOP;
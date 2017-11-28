# An interrupt handler in the interrupt vector table
#
# When the counter signals an interrupt, this code is executed to count and print the time
# 
counter: .word 0
CONST: .word 48
DISPLAY_ADDR: .word 0xe0000000
DISPLAY_CONTENT: .asciiz "Now hh:mm:ss"
# interrupt handler
addi $sp, $sp, -8;
sw $s0, 0($sp);
sw $s1, 4($sp);
la $s1, counter;
lw $s0, 0($s1);
addi $s0, $s0, 1;
sw $s0, 0($s1);
lw $s0, 0($sp);
lw $s1, 4($sp);
addi $sp, $sp, 8;
eret;
nop;

# main
la $s0, CONST; 
lw $s0, 0($s0);
R0:
#addi $t0, $t0, 1 # t0: counter
	la $t0, counter;
	lw $t0, 0($t0);
	slt $t1, $t0, $s0; # t1 == 1 if t0 < s0
	bne $t1, $zero, R0;
	xor $t0, $t0, $t0; # set counter to 0
	addi $s1, $s1, 1; # inc sec
	sltiu $t1, $s1, 60; # t1 == 1 if sec < 60 
	bne $t1, $zero, DISPLAY;
	addi $s2, $s2, 1; 
	xor $s1, $s1, $s1; # inc min and reset sec
	sltiu $t1, $s2, 60; 
	bne $t1, $zero, DISPLAY;
	addi $s3, $s3, 1; 
	xor $s2, $s2, $s2; # inc hour and reset min
	sltiu $t1, $s3, 24;
	bne $t1, $zero, DISPLAY;
	xor $s3, $s3, $s3; # reset hour if hour == 24
DISPLAY:
	la $t2, DISPLAY_CONTENT;
	# separate s1 = 10 * t3 + t4
	add $t3, $zero, $zero; # 10 * t3
	add $t4, $s1, $zero; # t4
	sltiu $t1, $s1, 10;
	bne  $t1, $zero, END;
	sltiu $t1, $s1, 20;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END;
	sltiu $t1, $s1, 30;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END;
	sltiu $t1, $s1, 40;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END;
	sltiu $t1, $s1, 50;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
END:
	sb $t3, 10($t2);
    sb $t4, 11($t2);

	add $t3, $zero, $zero; # 10 * t3
	add $t4, $s2, $zero; # t4
	sltiu $t1, $s2, 10;
	bne  $t1, $zero, END1;
	sltiu $t1, $s2, 20;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END1;
	sltiu $t1, $s2, 30;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END1;
	sltiu $t1, $s2, 40;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END1;
	sltiu $t1, $s2, 50;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne $t1, $zero, END1;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
END1:
	sb $t3, 8($t2);
    sb $t4, 9($t2);

	add $t3, $zero, $zero; # 10 * t3
	add $t4, $s1, $zero; # t4
	sltiu $t1, $s1, 10;
	bne  $t1, $zero, END2;
	sltiu $t1, $s1, 20;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
	bne  $t1, $zero, END2;
	addi $t3, $t3, 10;
	addi $t4, $t4, -10;
END2:
	sb $t3, 5($t2);
    sb $t4, 6($t2);

    #la $t1, DISPLAY_ADDR
    #sw DISPLAY_CONTENT, 0(DISPLAY_ADDR)
    jal PRINT_STRING;

PRINT_STRING:
	addi $sp, $sp, -20;
	sw $t0, 4($sp);
	sw $t1, 8($sp);
	sw $t2, 12($sp);
	sw $t3, 16($sp);
	sw $t4, 20($sp);
	add $t0, $zero, $zero;
	la $t1, DISPLAY_ADDR;
	la $t2, DISPLAY_CONTENT; 
Loop:
	add $t3, $t0, $t2;  # t3 = &str[i]
	lb $t3, 0($t3);
	sltiu $t4, $t3, 1; # t4 == 1 if t3 == '\0', then string is END
	bne $t4, $zero, END3;
	sw $t3, 0($t1);
	addi $t0, $t0, 1;
	j Loop;
END3:
	lw $t0, 4($sp);
	lw $t1, 8($sp);
	lw $t2, 12($sp);
	lw $t3, 16($sp);
	lw $t4, 20($sp);
	addi $sp, $sp, 20;
	jr $ra;



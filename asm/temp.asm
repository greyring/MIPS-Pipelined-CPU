start:
add $R0, $R0, $R0;
lui $R1, 0x8000;
add $R2, $R1, $R1;
j start;
andi $r3, $r3, 0xff01;
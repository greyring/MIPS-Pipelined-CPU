
lui $s0, 0xb000;

addi $t0, $zero, 1;
sw $t0, 0($s0);
done:
j done;
//只写入一遍似乎不行,复位后ram开始运作的那一段时间似乎是无法写入的，但txt测试的时候就没有这个问题
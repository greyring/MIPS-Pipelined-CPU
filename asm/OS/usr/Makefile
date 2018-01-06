CC=mips-gcc -nostdlib -S -O1 -Wall -EL -nostdlib -Wno-builtin-declaration-mismatch
AS=mips-as -mips32 -EL 
LD=mips-ld -Ttext 0x00000000 -Tdata 0x00002000 -e main -EL
shell.elf:utils.c shell.c unistd.h utils.h
	$(CC) utils.c -o utils.s
	$(CC) shell.c -o shell.s
	$(AS) utils.s -o utils.o
	$(AS) shell.s -o shell.o
	$(LD) utils.o shell.o -o shell.elf
	rm shell.s utils.s shell.o utils.o
	mips-objdump -d -j.text shell.elf >1.txt
	mips-objdump -h shell.elf
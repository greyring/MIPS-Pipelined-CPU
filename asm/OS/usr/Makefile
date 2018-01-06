CC=mips-gcc -nostdlib -S -O1 -Wall -EL -nostdlib -Wno-builtin-declaration-mismatch
AS=mips-as -mips32 -EL 
LD=mips-ld -Ttext 0x00000000 -Tdata 0x00002000 -e main -EL

all:
	make shell.elf
	make hello.elf
	make edit.elf

shell.elf:shell.c utils.o
	$(CC) shell.c -o shell.s
	$(AS) shell.s -o shell.o
	$(LD) utils.o shell.o -o shell.elf
	rm shell.s shell.o
	mips-objdump -d -j.text shell.elf >shell.txt
	mips-objdump -h shell.elf

hello.elf:hello.c utils.o
	$(CC) hello.c -o hello.s
	$(AS) hello.s -o hello.o
	$(LD) hello.o utils.o -o hello.elf
	rm hello.s hello.o
	mips-objdump -d -j.text hello.elf > hello.txt
	mips-objdump -h hello.elf 

edit.elf:edit.c utils.o
	$(CC) edit.c -o edit.s
	$(AS) edit.s -o edit.o
	$(LD) edit.o utils.o -o edit.elf
	rm edit.s edit.o
	mips-objdump -d -j.text edit.elf > edit.txt
	mips-objdump -h edit.elf

utils.o:utils.c utils.h unistd.h
	$(CC) utils.c -o utils.s
	$(AS) utils.s -o utils.o
	rm utils.s

clean:
	rm *.elf
	rm *.o
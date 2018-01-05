CC=mips-gcc -nostdlib -S -O1 -Wall -EL
AS=mips-as -mips32 -EL
LD=mips-ld -Ttext 0xBFC00000 -e _start -EL
all:
	$(CC) bios.c -o temp.s
	$(AS) bios.s -o temp0.o
	$(AS) temp.s -o temp1.o
	$(LD) temp0.o temp1.o -o bios.bin
	./out2coe.exe
	rm temp.s
	rm temp0.o
	rm temp1.o
	mips-objdump -d -j.text bios.bin >1.txt
	mips-objdump -h bios.bin
	
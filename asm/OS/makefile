OBJS=init.o keyboard.o timer.o syscall.o exc.o utils.o shell.o input.o
CC=mips-gcc -I$(INCLUDEPATH) -S -O1 -Wall -EL
AS=mips-as -mips32 -EL
LD=mips-ld -Ttext 0x80000000 -e _start -Tdata 0x80002000 -EL
INCLUDEPATH=./include
SDIR=./s
OUTDIR=./out

all:
	$(CC) init.c -o $(SDIR)/init.s
	$(CC) keyboard.c -o $(SDIR)/keyboard.s
	$(CC) timer.c -o $(SDIR)/timer.s
	$(CC) syscall.c -o $(SDIR)/syscall.s
	$(CC) exc.c -o $(SDIR)/exc.s
	$(CC) utils.c -o $(SDIR)/utils.s
	$(CC) shell.c -o $(SDIR)/shell.s
	$(CC) input.c -o $(SDIR)/input.s
	$(AS) start.mips -o $(OUTDIR)/start.o
	$(AS) $(SDIR)/init.s -o $(OUTDIR)/init.o
	$(AS) $(SDIR)/keyboard.s -o $(OUTDIR)/keyboard.o
	$(AS) $(SDIR)/timer.s -o $(OUTDIR)/timer.o
	$(AS) $(SDIR)/syscall.s -o $(OUTDIR)/syscall.o
	$(AS) $(SDIR)/exc.s -o $(OUTDIR)/exc.o
	$(AS) $(SDIR)/utils.s -o $(OUTDIR)/utils.o
	$(AS) $(SDIR)/shell.s -o $(OUTDIR)/shell.o
	$(AS) $(SDIR)/input.s -o $(OUTDIR)/input.o
	$(LD) $(OUTDIR)/start.o $(OUTDIR)/init.o $(OUTDIR)/keyboard.o $(OUTDIR)/timer.o \
		  $(OUTDIR)/syscall.o $(OUTDIR)/exc.o  $(OUTDIR)/utils.o $(OUTDIR)/shell.o \
		  $(OUTDIR)/input.o -o os.bin
	./out2coe.exe
	mips-objdump -d -j.text os.bin >1.txt
	mips-objdump -d -j.data os.bin >2.txt

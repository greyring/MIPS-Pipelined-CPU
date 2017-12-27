CC=mips-gcc -I$(INCLUDEPATH) -S -O1 -Wall
AS=mips-as -mips32
LD=mips-ld -Ttext 0x80000000 -e _start -Tdata 0x80002000 
INCLUDEPATH=./include
SDIR=./s
OUTDIR=./out

all:
	$(CC) init.c -o $(SDIR)/init.s
	$(CC) keyboard.c -o $(SDIR)/keyboard.s
	$(CC) timer.c -o $(SDIR)/timer.s
	$(CC) syscall.c -o $(SDIR)/syscall.s
	$(CC) exc.c -o $(SDIR)/exc.s
	$(AS) start.mips -o $(OUTDIR)/start.o
	$(AS) $(SDIR)/init.s -o $(OUTDIR)/init.o
	$(AS) $(SDIR)/keyboard.s -o $(OUTDIR)/keyboard.o
	$(AS) $(SDIR)/timer.s -o $(OUTDIR)/timer.o
	$(AS) $(SDIR)/syscall.s -o $(OUTDIR)/syscall.o
	$(AS) $(SDIR)/exc.s -o $(OUTDIR)/exc.o
	$(LD) $(OUTDIR)/start.o $(OUTDIR)/init.o $(OUTDIR)/keyboard.o $(OUTDIR)/timer.o \
		  $(OUTDIR)/syscall.o $(OUTDIR)/exc.o  -o os.bin

OBJS=init.o keyboard.o timer.o syscall.o exc.o filesys.o kutils.o input.o load.o
CC=mips-gcc -nostdlib -I$(INCLUDEPATH) -S -O1 -Wall -EL
AS=mips-as -mips32 -EL
LD=mips-ld -Ttext 0x80000000 -e _start -Tdata 0x80006000 -EL
INCLUDEPATH=./include
SDIR=./s
OUTDIR=./out

all:
	$(CC) init.c -o $(SDIR)/init.s
	$(CC) keyboard.c -o $(SDIR)/keyboard.s
	$(CC) timer.c -o $(SDIR)/timer.s
	$(CC) syscall.c -o $(SDIR)/syscall.s
	$(CC) exc.c -o $(SDIR)/exc.s
	$(CC) filesys.c -o $(SDIR)/filesys.s
	$(CC) kutils.c -o $(SDIR)/kutils.s
	$(CC) load.c -o $(SDIR)/load.s
	$(CC) input.c -o $(SDIR)/input.s
	$(AS) start.mips -o $(OUTDIR)/start.o
	$(AS) $(SDIR)/init.s -o $(OUTDIR)/init.o
	$(AS) $(SDIR)/keyboard.s -o $(OUTDIR)/keyboard.o
	$(AS) $(SDIR)/timer.s -o $(OUTDIR)/timer.o
	$(AS) $(SDIR)/syscall.s -o $(OUTDIR)/syscall.o
	$(AS) $(SDIR)/exc.s -o $(OUTDIR)/exc.o
	$(AS) $(SDIR)/filesys.s -o $(OUTDIR)/filesys.o
	$(AS) $(SDIR)/kutils.s -o $(OUTDIR)/kutils.o
	$(AS) $(SDIR)/load.s -o $(OUTDIR)/load.o
	$(AS) $(SDIR)/input.s -o $(OUTDIR)/input.o
	$(LD) $(OUTDIR)/start.o $(OUTDIR)/init.o $(OUTDIR)/keyboard.o $(OUTDIR)/timer.o \
		  $(OUTDIR)/syscall.o $(OUTDIR)/exc.o $(OUTDIR)/filesys.o $(OUTDIR)/kutils.o \
		  $(OUTDIR)/load.o $(OUTDIR)/input.o -o os.bin
	./out2coe.exe
	./write2vhd.exe
	mips-objdump -d -j.text os.bin >1.txt
	mips-objdump -d -j.data os.bin >2.txt
	mips-objdump -h os.bin

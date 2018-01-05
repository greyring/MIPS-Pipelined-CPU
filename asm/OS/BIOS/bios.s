.extern load_OS
.global _start
.equ START, 0x80000400

.text
.set noreorder
.org 0
#0xbfc00000 0x1fc00000 0x00000000
#ERL is set BEV is set KSU is set to kernel when first boot
_start:
b BIOS_START;
.org 0x580
#initialize registers
BIOS_START:
add $v0, $0, $0
add $v1, $0, $0
add $a0, $0, $0
add $a1, $0, $0
add $a2, $0, $0
add $t0, $0, $0
add $t1, $0, $0
add $t2, $0, $0
add $t3, $0, $0
add $t4, $0, $0
add $t5, $0, $0
add $t6, $0, $0
add $t7, $0, $0
add $t8, $0, $0
add $t9, $0, $0
add $s0, $0, $0
add $s1, $0, $0
add $s2, $0, $0
add $s3, $0, $0
add $s4, $0, $0
add $s5, $0, $0
add $s6, $0, $0
add $s7, $0, $0
add $at, $0, $0
add $gp, $0, $0
add $fp, $0, $0
add $ra, $0, $0

la $sp, 0x80006000#########        notice

#initialize tlb
li   $k0, 0xb0000000
mtc0 $0, $2#entry lo 0
mtc0 $0, $3#entry lo 1
mtc0 $k0, $10#entry hi
addi $k0, $0, 16
_start_loop:
mtc0 $k0, $0#index
tlbwi
addi $k0, $k0, -1
bgtz $k0, _start_loop
nop

#notice stack
jal load_OS
nop
li $k0, START
jr $k0
nop

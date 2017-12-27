#include "timer.h"
#include "keyboard.h"
#include "syscall.h"

void handle_interrupt(unsigned long status, unsigned long cause, unsigned long epc, unsigned long *sp);
void handle_syscall(unsigned long status, unsigned long cause, unsigned long epc, unsigned long *sp);

void (*exc_tbl[32])(unsigned long, unsigned long, unsigned long, unsigned long *)={
    handle_interrupt, 0, 0, 0, 0, 0, 0, 0, 
    handle_syscall, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0
};

unsigned long (*syscall_tbl[32])(unsigned long *)={
    put_seg, get_sw, get_btn, put_led,
    set_vga, set_cursor, get_cursor, scroll_screen, 
    clear_screen, put_charAt, put_char, put_string, 
    put_pixel, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0
};

void handle_exception(unsigned long status, unsigned long cause, unsigned long epc, unsigned long *sp)
{
    exc_tbl[(cause>>2) & 0x1f](status, cause, epc, sp);
}

void handle_interrupt(unsigned long status, unsigned long cause, unsigned long epc, unsigned long *sp)
{
    if (cause & (1<<15))//timer
    {
        handle_timer();
    }
    else if (cause & (1<<14))//keyboard
    {
        handle_keyboard();
    }
}

void handle_syscall(unsigned long status, unsigned long cause, unsigned long epc, unsigned long *sp)
{
    asm volatile(
        "addiu\t$s0, %0, 4\n\t"
        "mtc0\t$s0, $14\n\t"
        :"=r"(epc)
        :
        :"$s0"
    );
    syscall_tbl[sp[24]](sp);//sp[24] is a0
}
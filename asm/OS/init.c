#include "arch.h"
#include "syscall.h"
#include "keyboard.h"
#include "timer.h"
#include "input.h"
#include "filesys.h"

void init_all()
{
    int i;
    unsigned long p;
    p = TEXT_ADDR;
    for (i = 0; i<1200; i++)
    {
        *(unsigned long *)(p) = 0;
        p += 4;
    }
    /*
    p = GRAPH_ADDR;
    for (i = 0; i<480*640; i++)
    {
        *(unsigned short *)(p) = 0;
        p += 2;
    }
    */
    p = VGA_REG_ADDR;
    *(unsigned long *)(p) = 1;//text mode

    p = CURSOR_ADDR;
    *(unsigned long *)(p) = 0x013f0000;//cursor at left up

    p = LED_ADDR;
    *(unsigned long *)(p) = 0;

    p = SEG_ADDR;
    *(unsigned long *)(p) = 0xAA5555AA;

    init_syscall();
    init_keybuf();
    init_input();
    init_timer();
    init_fs();
}
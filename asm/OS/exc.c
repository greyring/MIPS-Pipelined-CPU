#include "exc.h"
#include "timer.h"
#include "keyboard.h"
#include "syscall.h"

static void __attribute__((section (".data"))) (*exc_tbl[32])(context *);

void handle_exception(context *sp)
{
    exc_tbl[((sp->cause)>>2) & 0x1f](sp);
}

void handle_interrupt(context *sp)
{
    if ((sp->cause) & (1<<15))//timer
    {
        handle_timer();
    }
    else if ((sp->cause) & (1<<14))//keyboard
    {
        handle_keyboard();
    }
}

void handle_syscall(context *sp)
{
    sp->epc += 4;
    sp->v0 = syscall_tbl[sp->a0](sp);
}

void init_exc()
{
    exc_tbl[0] = handle_interrupt;
    exc_tbl[8] = handle_syscall;
}
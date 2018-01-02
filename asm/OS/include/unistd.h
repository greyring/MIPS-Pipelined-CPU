#ifndef _UNISTD_H_
#define _UNISTD_H_

#define _NUM_put_seg       0
#define _NUM_get_sw        1
#define _NUM_get_btn       2
#define _NUM_put_led       3
#define _NUM_set_vga       4
#define _NUM_set_cursor    5
#define _NUM_get_cursor    6
#define _NUM_scroll_screen 7
#define _NUM_clear_screen  8
#define _NUM_put_charAt    9
#define _NUM_put_char      10
#define _NUM_put_string    11
#define _NUM_put_pixel     12
#define _NUM_get_char      13

#define _syscall0(name) \
unsigned long name()\
{\
unsigned long res;\
__asm__ volatile (\
    "li\t$a0, %1\n\t"\
    "syscall\n\t"\
    :"=r"(res)\
    :"i"(_NUM_##name)\
    :"$a0");\
return res;\
}

#define _syscall1(name, atype, a) \
unsigned long name(atype a)\
{\
unsigned long res;\
__asm__ volatile(\
    "li\t$a0, %1\n\t"\
    "move\t$a1, %2\n\t"\
    "syscall\n\t"\
    :"=r"(res)\
    :"i"(_NUM_##name),"r"((unsigned long)a)\
    :"$a0");\
return res;\
}

#define _syscall3(name, atype, a, btype, b, ctype, c) \
unsigned long name(atype a, btype b, ctype c)\
{\
unsigned long res;\
__asm__ volatile(\
    "li\t$a0, %1\n\t"\
    "move\t$a1, %2\n\t"\
    "move\t$a2, %3\n\t"\
    "move\t$a3, %4\n\t"\
    "syscall\n\t"\
    :"=r"(res)\
    :"i"(_NUM_##name),"r"((unsigned long)a),"r"((unsigned long)b),"r"((unsigned long)c)\
    :"$a0");\
return res;\
}

#endif

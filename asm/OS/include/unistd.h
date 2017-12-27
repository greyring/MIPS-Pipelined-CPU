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

_syscall0(get_sw);
_syscall0(get_btn);
_syscall0(get_cursor);
_syscall0(clear_screen);
_syscall0(get_char);

_syscall1(put_seg, unsigned long, data);
_syscall1(put_led, unsigned long, data);
_syscall1(set_vga, unsigned long, mode);//0 1 3
_syscall1(scroll_screen, unsigned long, line);
_syscall1(put_char, unsigned short, c);
_syscall1(put_string, unsigned short *, str);

_syscall3(set_cursor, unsigned long, mode, unsigned char *, rgb, unsigned long, loc);//mode 0 1 2 3
_syscall3(put_charAt, unsigned short, c, unsigned long, loc, unsigned char *, fbrgb);
_syscall3(put_pixel, unsigned long, x, unsigned long, y, unsigned char *, rgb);

unsigned short getc()
{
    unsigned short c;
    while((c = get_char())==0x0000ffff);
    return c;
}

void gets(unsigned long n, unsigned short* str)
{
    unsigned long i = 0;
    while(i<n)
    {
        str[i] = getc();
        if (str[i] == 0x000a)//enter
        {
            str[i] = 0;
            break;
        }
        i++;
    }
}

#endif

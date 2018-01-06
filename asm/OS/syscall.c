#include "arch.h"
#include "unistd.h"
#include "syscall.h"
#include "keyboard.h"
#include "input.h"
#include "filesys.h"
#include "kutils.h"

unsigned long __attribute__((section (".data"))) (*syscall_tbl[32])(context *);

SYSCALL put_seg_(context *sp)
{
    *(unsigned long *)(SEG_ADDR) = sp->a1;
    return 1;
}

SYSCALL get_sw_()
{
    return *(unsigned long *)(SW_ADDR);
}

SYSCALL get_btn_()
{
    return *(unsigned long *)(BTN_ADDR);
}

SYSCALL put_led_(context *sp)
{
    *(unsigned long *)(LED_ADDR) = (sp->a1);//a1
    return 1;
}

//0 graph 1 text 3 mix
SYSCALL set_vga_(context *sp)
{
    unsigned long old_VGA = *(unsigned long *)(VGA_REG_ADDR);
    *(unsigned long *)(VGA_REG_ADDR) = (old_VGA & 0xfffffffc) | ((sp->a1) & 0x11);
    return 1;
}

SYSCALL set_cursor_(context *sp)
{
    //(sp->a1);//a1 mode
    //(sp->a2);//a2 *rgb
    //(sp->a3);//a3 location

    unsigned char *rgb = (unsigned char*)((sp->a2));
    unsigned long new_cursor;
    new_cursor = ((sp->a1) & 0x11)<<24;
    new_cursor = new_cursor | ((rgb[2]>>6)<<20) 
                            | ((rgb[1]>>6)<<18) 
                            | ((rgb[0]>>6)<<16);
    new_cursor = new_cursor | ((sp->a3) & 0x7ff);
    *(unsigned long *)(CURSOR_ADDR) = new_cursor;
    return 1;
}

SYSCALL get_cursor_()
{
    return *(unsigned long *)(CURSOR_ADDR);
}

SYSCALL scroll_screen_(context *sp)
{
    return _scroll_screen((sp->a1));//a1
}

SYSCALL clear_screen_()
{
    unsigned long p0 = TEXT_ADDR;
    unsigned long cursor;
    while (p0 < TEXT_ADDR + 4640)
    {
        *(unsigned long *)p0 = 0;
        p0 += 4;
    }
    cursor = *(unsigned long *)(CURSOR_ADDR);
    cursor = (cursor >> 11 )<<11;
    *(unsigned long *)(CURSOR_ADDR) = cursor;
    return 1;
}

SYSCALL put_charAt_(context *sp)
{
    //(sp->a1)//a1 c
    //(sp->a2)//a2 place
    //(sp->a3)//a3 fontrgb backrgb
    unsigned char *fontRGB = (unsigned char*)(sp->a3);
    unsigned char *backRGB = (unsigned char*)(sp->a3)+3;
    unsigned long temp;
    if ((sp->a2)<0 || (sp->a2)>=1160) return 0;
    temp = ((fontRGB[2]>>6)<<28) | ((fontRGB[1]>>6)<<26) | ((fontRGB[0]>>6)<<24)
        |  ((backRGB[2]>>6)<<20) | ((backRGB[1]>>6)<<18) | ((backRGB[0]>>6)<<16)
        |  ((sp->a1) & 0xffff);
    *((unsigned long *)(TEXT_ADDR)+(sp->a2)) = temp;
    return 1;
}

SYSCALL put_char_(context *sp)
{
    return _put_char((unsigned short)(sp->a1));//a1
}

SYSCALL put_string_(context *sp)
{
    unsigned short *str = (unsigned short *)(sp->a1);
    while(*str)
    {
        _put_char(*str);
        str++;
    }
    return 1;
}

SYSCALL put_pixel_(context *sp)
{
    unsigned long x, y;
    unsigned char * RGB;
    unsigned long offset;
    unsigned short color;
    x = (sp->a1);//a1
    y = (sp->a2);//a2
    RGB = (unsigned char *)(sp->a3);//a3

    if ((x < 0) | (x >= 640) | (y < 0) | (y >= 480)) return 0;
    offset = (y * 640 + x)<<1;
    color = ((RGB[2]>>5)<<6) | ((RGB[1]>>5)<<3) | (RGB[0]>>5);
    *((unsigned short *)(GRAPH_ADDR)+offset) = color;

    return 1;
}

SYSCALL get_char_()
{
    return get_from_keybuf();
}

SYSCALL pwd_(context *sp)
{
    return pwd__((unsigned char*)(sp->a1), (sp->a2));
}

SYSCALL cd_(context *sp)
{
    return cd__((unsigned char*)(sp->a1));
}

SYSCALL crt_file_(context *sp)
{
    return crt_file__((unsigned char*)(sp->a1));
}

SYSCALL del_file_(context *sp)
{
    return del_file__((unsigned char*)(sp->a1));
}

SYSCALL fopen_(context *sp)
{
    return fopen__((unsigned char*)(sp->a1));
}

SYSCALL fclose_(context *sp)
{
    return fclose__(sp->a1);
}

SYSCALL fread_(context *sp)
{
    return fread__((unsigned char*)(sp->a1), (sp->a2), (sp->a3));
}

SYSCALL fwrite_(context *sp)
{
    return fwrite__((unsigned char*)(sp->a1), (sp->a2), (sp->a3));
}

SYSCALL fseek_(context *sp)
{
    return fseek__((sp->a1), (sp->a2), (sp->a3));
}

SYSCALL dir_()
{
    dir__();
    return 1;
}

SYSCALL feof_(context *sp)
{
    return feof__((sp->a1));
}

void init_syscall()
{
    registe_syscall(put_seg);
    registe_syscall(get_sw);
    registe_syscall(get_btn);
    registe_syscall(put_led);
    registe_syscall(set_vga);
    registe_syscall(set_cursor);
    registe_syscall(get_cursor);
    registe_syscall(scroll_screen);
    registe_syscall(clear_screen);
    registe_syscall(put_charAt);
    registe_syscall(put_char);
    registe_syscall(put_string);
    registe_syscall(put_pixel);
    registe_syscall(get_char);
    registe_syscall(pwd);
    registe_syscall(cd);
    registe_syscall(crt_file);
    registe_syscall(del_file);
    registe_syscall(fopen);
    registe_syscall(fclose);
    registe_syscall(fread);
    registe_syscall(fwrite);
    registe_syscall(fseek);
    registe_syscall(dir);
    registe_syscall(feof);
    //registe_syscall(read_disk);
    //registe_syscall(write_disk);
}

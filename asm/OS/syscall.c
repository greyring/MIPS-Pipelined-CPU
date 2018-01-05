#include "arch.h"
#include "unistd.h"
#include "syscall.h"
#include "keyboard.h"
#include "input.h"
#include "filesys.h"
#include "kutils.h"

unsigned long __attribute__((section (".data"))) (*syscall_tbl[32])(unsigned long *);

SYSCALL put_seg_(unsigned long *sp)
{
    *(unsigned long *)(SEG_ADDR) = sp[23];//a1
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

SYSCALL put_led_(unsigned long *sp)
{
    *(unsigned long *)(LED_ADDR) = sp[23];//a1
    return 1;
}

//0 graph 1 text 3 mix
SYSCALL set_vga_(unsigned long *sp)
{
    unsigned long old_VGA = *(unsigned long *)(VGA_REG_ADDR);
    *(unsigned long *)(VGA_REG_ADDR) = (old_VGA & 0xfffffffc) | (sp[23] & 0x11);
    return 1;
}

SYSCALL set_cursor_(unsigned long *sp)
{
    //sp[23];//a1 mode
    //sp[22];//a2 *rgb
    //sp[21];//a3 location

    unsigned char *rgb = (unsigned char*)(sp[22]);
    unsigned long new_cursor;
    new_cursor = (sp[23] & 0x11)<<24;
    new_cursor = new_cursor | ((rgb[2]>>6)<<20) 
                            | ((rgb[1]>>6)<<18) 
                            | ((rgb[0]>>6)<<16);
    new_cursor = new_cursor | (sp[21] & 0x7ff);
    *(unsigned long *)(CURSOR_ADDR) = new_cursor;
    return 1;
}

SYSCALL get_cursor_()
{
    return *(unsigned long *)(CURSOR_ADDR);
}

SYSCALL scroll_screen_(unsigned long *sp)
{
    return _scroll_screen(sp[23]);//a1
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

SYSCALL put_charAt_(unsigned long *sp)
{
    //sp[23]//a1 c
    //sp[22]//a2 place
    //sp[21]//a3 fontrgb backrgb
    unsigned char *fontRGB = (unsigned char*)sp[21];
    unsigned char *backRGB = (unsigned char*)sp[21]+3;
    unsigned long temp;
    if (sp[22]<0 || sp[22]>=1160) return 0;
    temp = ((fontRGB[2]>>6)<<28) | ((fontRGB[1]>>6)<<26) | ((fontRGB[0]>>6)<<24)
        |  ((backRGB[2]>>6)<<20) | ((backRGB[1]>>6)<<18) | ((backRGB[0]>>6)<<16)
        |  (sp[23] & 0xffff);
    *((unsigned long *)(TEXT_ADDR)+sp[22]) = temp;
    return 1;
}

SYSCALL put_char_(unsigned long *sp)
{
    return _put_char((unsigned short)sp[23]);//a1
}

SYSCALL put_string_(unsigned long *sp)
{
    unsigned short *str = (unsigned short *)sp[23];
    while(*str)
    {
        _put_char(*str);
        str++;
    }
    return 1;
}

SYSCALL put_pixel_(unsigned long *sp)
{
    unsigned long x, y;
    unsigned char * RGB;
    unsigned long offset;
    unsigned short color;
    x = sp[23];//a1
    y = sp[22];//a2
    RGB = (unsigned char *)sp[21];//a3

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

SYSCALL pwd_(unsigned long *sp)
{
    return pwd__((unsigned char*)sp[23], sp[22]);
}

SYSCALL cd_(unsigned long *sp)
{
    return cd__((unsigned char*)sp[23]);
}

SYSCALL crt_file_(unsigned long *sp)
{
    return crt_file__((unsigned char*)sp[23]);
}

SYSCALL del_file_(unsigned long *sp)
{
    return del_file__((unsigned char*)sp[23]);
}

SYSCALL fopen_(unsigned long *sp)
{
    return fopen__((unsigned char*)sp[23]);
}

SYSCALL fclose_(unsigned long *sp)
{
    return fclose__(sp[23]);
}

SYSCALL fread_(unsigned long *sp)
{
    return fread__((unsigned char*)sp[23], sp[22], sp[21]);
}

SYSCALL fwrite_(unsigned long *sp)
{
    return fwrite__((unsigned char*)sp[23], sp[22], sp[21]);
}

SYSCALL fseek_(unsigned long *sp)
{
    return fseek__(sp[23], sp[22], sp[21]);
}

SYSCALL dir_()
{
    dir__();
    return 1;
}

SYSCALL feof_(unsigned long *sp)
{
    return feof__(sp[23]);
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

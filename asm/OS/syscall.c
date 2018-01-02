#include "arch.h"
#include "syscall.h"
#include "keyboard.h"
#include "input.h"

static unsigned long _scroll_screen(unsigned long line)
{
    unsigned long p0;
    unsigned long p1 = TEXT_ADDR;
    unsigned long temp;
    unsigned long cursor;

    if (line <=0 || line>=30) return 0;

    p0 = p1 + line * 160;
    while(p0 < TEXT_ADDR + 4640)
    {
        temp = *(unsigned long *)p0;
        *(unsigned long *)p1 = temp;
        p0 += 4; p1 += 4;
    }
    while(p1 < TEXT_ADDR + 4640)
    {
        *(unsigned long *)p1 = 0;
        p1 += 4;
    }

    cursor = *(unsigned long *)(CURSOR_ADDR);
    if ((cursor & 0x7ff) > line*40)
    {
        cursor = cursor - line*40;
    }
    else
    {
        cursor = (cursor >> 11)<<11;
    }
    
    *(unsigned long *)(CURSOR_ADDR) = cursor;
    return 1;
}

static unsigned long _put_char(unsigned short c)
{
    unsigned long cursor;
    unsigned long temp;

    cursor = *(unsigned long *)(CURSOR_ADDR);
    if (c == ZCODE_ENTER)
    {
        temp = cursor & 0x7ff;
        while(temp >= 40) temp -= 40;
        cursor = cursor - temp + 40;
    }
    else if (c == ZCODE_TAB)
    {
        while(++cursor & 0x3);
    }
    else if (c == ZCODE_BACKSPACE)
    {
        *((unsigned long *)(TEXT_ADDR) + (cursor & 0x7ff)) = 0;
        if (cursor & 0x7ff) cursor--;
    }
    else
    {
        temp = (0x3f<<24) | c;
        *((unsigned long *)(TEXT_ADDR) + (cursor & 0x7ff)) = temp;
        cursor = cursor + 1;
    }
    *(unsigned long *)(CURSOR_ADDR) = cursor;
    
    if ((cursor & 0x7ff) >= 1160)
    {
        _scroll_screen(1);
    }
    return 1;
}

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

unsigned long __attribute__((section (".data"))) (*syscall_tbl[32])(unsigned long *)={
    put_seg_, get_sw_, get_btn_, put_led_,
    set_vga_, set_cursor_, get_cursor_, scroll_screen_, 
    clear_screen_, put_charAt_, put_char_, put_string_, 
    put_pixel_, get_char_, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0,
    0, 0, 0, 0
};

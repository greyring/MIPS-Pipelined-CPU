#include "arch.h"
#include "kutils.h"
#include "input.h"

unsigned long _scroll_screen(unsigned long line)
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

unsigned long _put_char(unsigned short c)
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
        *((unsigned long *)(TEXT_ADDR) + (cursor & 0x7ff)) = ZCODE_TAB;
        while(++cursor & 0x3);
    }
    else if (c == ZCODE_BACKSPACE)
    {
        while((*((unsigned long *)(TEXT_ADDR) + (cursor & 0x7ff)) == 0)
                && (cursor & 0x7ff)) cursor--;
        *((unsigned long *)(TEXT_ADDR) + (cursor & 0x7ff)) = 0;
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

void kput_char(unsigned short c, unsigned long place)
{
    *((unsigned long *)(TEXT_ADDR) + place) = (0x3f<<24) | (c & 0x0ffff);
}

void kprintHex(unsigned char hex)
{
    unsigned short temp;
    temp = (unsigned short)(hex & 0xf0) >> 4;
    if (temp < 10)
    {
        _put_char(temp + '0');
    }
    else
    {
        _put_char(temp - 10 + 'A');
    }
    temp = (unsigned short)(hex & 0x0f);
    if (temp < 10)
    {
        _put_char(temp + '0');
    }
    else
    {
        _put_char(temp - 10 + 'A');
    }
}

void kprintDec(unsigned short dec)
{
    unsigned short temp;
    temp = 0;
    while(dec >= 10000)
    {
        temp++;
        dec -= 10000;
    }
    _put_char(temp + '0');
    temp = 0;
    while(dec >= 1000)
    {
        temp++;
        dec -= 1000;
    }
    _put_char(temp + '0');
    temp = 0;
    while(dec >= 100)
    {
        temp++;
        dec -= 100;
    }
    _put_char(temp + '0');
    temp = 0;
    while(dec >= 10)
    {
        temp++;
        dec -= 10;
    }
    _put_char(temp +'0');
    _put_char(dec + '0');
}

unsigned long kstrcmp_short(unsigned short *str0, unsigned short *str1, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        if (str0[i] != str1[i]) return 1;
    }
    return 0;
}

unsigned long kstrcmp_char(unsigned char *str0, unsigned char *str1, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        if (str0[i] != str1[i]) return 1;
    }
    return 0;
}

unsigned long kstrlen_short(unsigned short *str)
{
    unsigned long i = 0;
    while(str[i])
    {
        i++;
    }
    return i;
}

unsigned long kstrlen_char(unsigned char *str)
{
    unsigned long i = 0;
    while(str[i])
    {
        i++;
    }
    return i;
}

void kmemcpy(unsigned char *dst, unsigned char *src, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        *(dst + i) = *(src + i);
    }
}

void kshort2char(unsigned char *dst, unsigned short *src, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        dst[i] = (unsigned char)(src[i] & 0x0ffff);
    }
}

void kchar2short(unsigned short *dst, unsigned char *src, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        dst[i] = src[i];
    }
}

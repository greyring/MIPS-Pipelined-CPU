#include "unistd.h"
#include "utils.h"
#include "input.h"

_syscall0(get_sw);
_syscall0(get_btn);
_syscall0(get_cursor);
_syscall0(clear_screen);
_syscall0(get_char);
_syscall0(dir);

_syscall1(put_seg, unsigned long, data);
_syscall1(put_led, unsigned long, data);
_syscall1(set_vga, unsigned long, mode);//0 1 3
_syscall1(scroll_screen, unsigned long, line);
_syscall1(put_char, unsigned short, c);
_syscall1(put_string, unsigned short *, str);
_syscall1(cd, unsigned char*, path);
_syscall1(crt_file, unsigned char*, file_path);
_syscall1(del_file, unsigned char*, file_path);
_syscall1(fopen, unsigned char *, file_path);
_syscall1(fclose, unsigned long, fd);
_syscall1(feof, unsigned long, fd);

_syscall2(pwd, unsigned char*, dst, unsigned long, len);
//_syscall2(read_disk, unsigned long *, buf, unsigned short, sector);
//_syscall2(write_disk, unsigned long *, buf, unsigned short, sector);

_syscall3(set_cursor, unsigned long, mode, unsigned char *, rgb, unsigned long, loc);//mode 0 1 2 3
_syscall3(put_charAt, unsigned short, c, unsigned long, loc, unsigned char *, fbrgb);
_syscall3(put_pixel, unsigned long, x, unsigned long, y, unsigned char *, rgb);
_syscall3(fread, unsigned char*, dst, unsigned long, size, unsigned long, fd);
_syscall3(fwrite, unsigned char*, src, unsigned long, size, unsigned long, fd);
_syscall3(fseek, unsigned long, fd, unsigned long, offset, unsigned long, base);


unsigned char getc()
{
    unsigned short c;
    while((c = get_char()) == 0x0000ffff);
    return c;
}

void putc(unsigned char c)
{
    put_char(c);
}

void gets(unsigned char *str, unsigned long n)
{
    unsigned long i = 0;
    unsigned short c;
    while(i<n)
    {
        while((c = get_char()) == 0x0000ffff);
        str[i] = c;
        if (c == ZCODE_BACKSPACE)
        {
            if (i!=0)
            {
                put_char(str[i]);
                i--;
            }
        }
        else 
        {
            put_char(str[i]);
            if (str[i] == ZCODE_ENTER)//enter
            {
                str[i] = 0;
                break;
            }
            i++;
        }
    }
}

void puts(unsigned char *str)
{
    while(*str)
    {
        put_char(*str);
        str++;
    }
}

unsigned long strncmp(unsigned char *str0, unsigned char *str1, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        if (str0[i] != str1[i]) return 1;
    }
    return 0;
}

unsigned long strlen(unsigned char *str)
{
    unsigned long i = 0;
    while(str[i])
    {
        i++;
    }
    return i;
}

void memncpy(unsigned char *dst, unsigned char *src, unsigned long n)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        *(dst + i) = *(src + i);
    }
}

void printHex(unsigned char hex)
{
    unsigned short temp;
    temp = (unsigned short)(hex & 0xf0) >> 4;
    if (temp < 10)
    {
        put_char(temp + '0');
    }
    else
    {
        put_char(temp - 10 + 'A');
    }
    temp = (unsigned short)(hex & 0x0f);
    if (temp < 10)
    {
        put_char(temp + '0');
    }
    else
    {
        put_char(temp - 10 + 'A');
    }
}

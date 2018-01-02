#include "arch.h"
#include "kutils.h"

void kput_char(unsigned short c, unsigned long place)
{
    *((unsigned long *)(TEXT_ADDR) + place) = (0x3f<<24) | (c & 0x0ffff);
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
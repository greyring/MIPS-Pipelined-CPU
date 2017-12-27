#include "utils.h"

unsigned long kstrcmp_short(unsigned long n, unsigned short *str0, unsigned short *str1)
{
    unsigned long i;
    for (i = 0; i<n; i++)
    {
        if (str0[i] != str1[i]) return 1;
    }
    return 0;
}

unsigned long kstrcmp_char(unsigned long n, unsigned char *str0, unsigned char *str1)
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
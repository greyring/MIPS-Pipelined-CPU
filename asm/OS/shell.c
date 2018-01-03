#include "utils.h"

unsigned short __attribute__((section(".data"))) TIP[] = {'$', '>', 0};
unsigned short __attribute__((section(".data"))) UNKNOWN[] = {'U','n','k','n','o','w','n','\n', 0};
unsigned short __attribute__((section(".data"))) CLS[] = {'c','l','e','a','r',0};
unsigned short __attribute__((section(".data"))) LOAD[] = {'l','o','a','d',0};

void shell()
{
    unsigned long i;
    unsigned short input[128];
    unsigned char buf[512];
    read_disk((unsigned long *)buf, 0);
    for (i = 0; i<512; i++)
    {
        printHex(buf[i]);
    }
    put_char(0x5a);
    buf[511] = 0;
    write_disk((unsigned long *)buf, 0);
    while(1)
    {
        put_string(TIP);
        gets(input, 128);
        if (strcmp_short(input, CLS, 6) == 0)
        {
            clear_screen();
        }
        else if (strcmp_short(input, LOAD, 5) == 0)
        {
            read_disk((unsigned long *)buf, 0);
            for (i = 0; i<512; i++)
            {
                printHex(buf[i]);
            }
            put_char(0x0a);
        }
        else
        {
            put_string(UNKNOWN);
        }
    }
}
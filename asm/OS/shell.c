#include "utils.h"

unsigned short __attribute__((section(".data"))) TIP[] = {'$', '>', 0};
unsigned short __attribute__((section(".data"))) UNKNOWN[] = {'U','n','k','n','o','w','n','\n', 0};
unsigned short __attribute__((section(".data"))) CLS[] = {'c','l','e','a','r',0};

void shell()
{
    unsigned short input[128];
    while(1)
    {
        put_string(TIP);
        gets(input, 128);
        if (strcmp_short(input, CLS, 6) == 0)
        {
            clear_screen();
        }
        else
        {
            put_string(UNKNOWN);
        }
    }
}
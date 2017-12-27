#include "arch.h"

unsigned short __attribute__((section (".data"))) inner_time[8];

void init_timer()
{
    int i;
    unsigned long *p = 0;
    inner_time[0] = '0';
    inner_time[1] = '0';
    inner_time[2] = ':';
    inner_time[3] = '0';
    inner_time[4] = '0';
    inner_time[5] = ':';
    inner_time[6] = '0';
    inner_time[7] = '0';
    
    p = (unsigned long *)TEXT_ADDR + 1192;
    for (i = 0; i<8; i++)
    {
        p[i] = (0x3f<<24) | inner_time[i];
    }

    /*
    如果是用$t0传递，编译器不会保证它的值不变
    */
    asm volatile(
        "li\t$s0, %0\n\t"
        "mtc0\t$0, $9\n\t"//count
        "mtc0\t$s0, $11\n\t"//compare
        :
        :"i"(TIMER_CYCLE)
        :"$s0"
    );
}

void handle_timer()
{
    int i;
    unsigned long *p = 0;
    *(unsigned long *)(SEG_ADDR) = 0x00000001;
    if (inner_time[7]=='9')
    {
        inner_time[7] = '0';
        if (inner_time[6] == '5')
        {
            inner_time[6] = '0';
            if (inner_time[4] == '9')
            {
                inner_time[4] = '0';
                if (inner_time[3] == '5')
                {
                    inner_time[3] = '0';
                    if (inner_time[0] == '2' && inner_time[1] == '3')
                    {
                        inner_time[0] = '0';
                        inner_time[1] = '0';
                    }
                    else if (inner_time[1] == '9')
                    {
                        inner_time[1] = '0';
                        inner_time[0]++;
                    }
                    else
                    {
                        inner_time[1]++;
                    }
                }
                else
                {
                    inner_time[3]++;
                }
            }
            else
            {
                inner_time[4]++;
            }
        }
        else
        {
            inner_time[6]++;
        }
    }   
    else
    {
        inner_time[7]++;
    }

    p = (unsigned long *)TEXT_ADDR + 1192;
    for (i = 0; i<8; i++)
    {
        p[i] = (0x3f<<24) | inner_time[i];
    }

    asm volatile(
        "li\t$s0, %0\n\t"
        "mtc0\t$0, $9\n\t"//count
        "mtc0\t$s0, $11\n\t"//compare
        :
        :"i"(TIMER_CYCLE)
        :"$s0"
    );
}
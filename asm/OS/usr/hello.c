#include "utils.h"

unsigned char __attribute__((section(".data"))) HELLO[] = "Hello World!\n";

int main()
{
    puts(HELLO);
    unload();
    return 0;
}
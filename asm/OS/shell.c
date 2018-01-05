#include "utils.h"
#include "filesys.h"

unsigned char __attribute__((section(".data"))) TIP[] = "$>";
unsigned char __attribute__((section(".data"))) UNKNOWN[] = "Unknown\n";
unsigned char __attribute__((section(".data"))) CLS[] = "cls";
unsigned char __attribute__((section(".data"))) CD[] = "cd";
unsigned char __attribute__((section(".data"))) LS[] = "ls";
unsigned char __attribute__((section(".data"))) TOUCH[] = "touch";
unsigned char __attribute__((section(".data"))) CAT[] = "cat";
unsigned char __attribute__((section(".data"))) WRITE[] = "write";
unsigned char __attribute__((section(".data"))) CP[] = "cp";
unsigned char __attribute__((section(".data"))) RM[] = "rm";

void shell()
{
    unsigned long i;
    unsigned char * temp, *temp2;
    unsigned long len;
    unsigned long fd, fd2;
    unsigned char com[128];
    unsigned char buf[128];
    buf[128] = 0;
    while(1)
    {
        pwd(buf, 127);
        buf[128] = 0;
        puts(buf);
        puts(TIP);
        gets(com, 128);
        if (strncmp(com, CLS, 3) == 0)
        {
            clear_screen();
        }
        else if (strncmp(com, CD, 2) == 0)
        {
            cd(com + 3);
        }
        else if (strncmp(com, LS, 2) == 0)
        {
            dir();
        }
        else if (strncmp(com, TOUCH, 5) == 0)
        {
            //puts(com+6);
            crt_file(com + 6);
        }
        else if (strncmp(com, CAT, 3) == 0)
        {
            fd = fopen(com + 4);
            if (!fd) continue;
            while(!feof(fd))
            {
                len = fread(buf, 127, fd);
                buf[len] = 0;
                puts(buf);
            }
            fclose(fd);
            putc('\n');
        }
        else if (strncmp(com, WRITE, 5) == 0)
        {
            temp = com + 6;
            while(*temp != ' ' && *temp)temp++;
            if (*temp == 0) continue;
            *temp = 0;
            fd = fopen(com + 6);
            if (!fd) continue;
            temp++;
            temp2 = temp;
            while(*temp) temp++;
            fwrite(temp2, temp-temp2, fd);
            fclose(fd);
        }
        else if (strncmp(com, CP, 2) == 0)
        {
            temp = com + 3;
            while(*temp != ' ' && *temp)temp++;
            if (*temp == 0) continue;
            *temp = 0;
            fd = fopen(com + 3);
            if (!fd) continue;
            temp++;
            fd2 = fopen(temp);
            if (!fd2) continue;
            while(!feof(fd))
            {
                len = fread(buf, 127, fd);
                fwrite(buf, len, fd2);
            }
            fclose(fd);
            fclose(fd2);
        }
        else if (strncmp(com, RM, 2) == 0)
        {
            del_file(com + 3);
        }
        else
        {
            puts(UNKNOWN);
        }
    }
}
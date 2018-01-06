#include "utils.h"

unsigned char __attribute__((section(".data"))) NOFILE[] = "File not find\n";
unsigned char __attribute__((section(".data"))) CURSOR_RGB[] = {255, 255, 255};
unsigned char __attribute__((section(".data"))) FONT_RGB[] = {255, 255, 255, 0, 0, 0};

#define WAIT_STATE 0
#define COM_STATE  1
#define INSERT_STATE 2
#define REPLACE_STATE 3
#define QUIT_STATE 4
#define APPEND_STATE 5

#define WINDOW_WIDTH 40
#define WINDOW_HEIGHT 30
#define MAX_LEN 1119

unsigned long get_ploc_inline(unsigned char *buf, unsigned long loc)
{
    if (loc == 0) return loc;
    else if (buf[loc-1]!=ZCODE_ENTER) return loc-1;
    else return loc;
}

unsigned long get_ploc(unsigned char *buf, unsigned long loc)
{
    unsigned long temp;
    long temp2;
    temp = loc;
    while(temp > 0 && buf[temp-1] != ZCODE_ENTER) temp--;
    if (temp == 0) return loc;
    temp2 = temp;
    temp = loc - temp;
    temp2--;
    while(temp2>0 && buf[temp2-1] != ZCODE_ENTER) temp2--;//the first in previous
    if (buf[temp2] == ZCODE_ENTER) return temp2;
    while(temp > 0 && buf[temp2 + 1] != ZCODE_ENTER)
    {
        temp--;
        temp2++;
    }
    return temp2;
}

unsigned long get_nloc(unsigned char *buf, unsigned long loc, unsigned long len)
{
    unsigned long temp, temp2;
    temp = loc;
    while(temp > 0 && buf[temp-1] != ZCODE_ENTER) temp--;
    temp = loc - temp;
    temp2 = loc;
    while(temp2<len && buf[temp2] != ZCODE_ENTER) temp2++;
    if (buf[temp2] != ZCODE_ENTER) return loc;
    temp2++;
    if (buf[temp2] == ZCODE_ENTER) return temp2;
    while(temp2<len -1 && temp && buf[temp2 + 1] != ZCODE_ENTER)
    {
        temp--; 
        temp2++;
    }
    return temp2;
}

unsigned long get_nloc_inline(unsigned char *buf, unsigned long loc, unsigned long len)
{
    if (loc == len-1) return loc;
    else if (buf[loc+1] == ZCODE_ENTER) return loc;
    else return loc+1;
}

void edit()
{
    unsigned long i;
    unsigned long fd;
    unsigned char buf[1201];
    unsigned char com[10];
    unsigned char com_len;
    unsigned long len;
    unsigned long mode;
    unsigned char key;
    unsigned long loc;
    unsigned long cursor_loc;
    unsigned long cursor_mode;
    unsigned long offset;
    while(1)
    {
        gets(buf, 128);
        fd = fopen(buf);
        if (!fd) puts(NOFILE);
        else break;
    }
    offset = 0;
    while (fseek(fd, 512, SEEK_CUR))
    {
        offset+=512;
    }
    len = fread(buf, 512, fd);
    buf[len] = 0;

    clear_screen();

    set_cursor(CURSOR_NO, CURSOR_RGB, 0);
    puts(buf);

    loc = 0;
    cursor_mode = CURSOR_BLOCK;
    cursor_loc = 0;
    set_cursor(cursor_mode, CURSOR_RGB, cursor_loc);

    com[0] = 0;
    com_len = 0;

    mode = WAIT_STATE;

    while(1)
    {
        key = getc();
        
        if (mode == WAIT_STATE)
        {
            if (key == 'h')
            {
                loc = get_ploc_inline(buf, loc);
            }
            else if (key == 'j')
            {
                loc = get_nloc(buf, loc, len);
            }
            else if (key == 'k')
            {
                loc = get_ploc(buf, loc);
            }
            else if (key == 'l')
            {
                loc = get_nloc_inline(buf, loc, len);
            }
            else if (key == 'i')
            {
                if (len == 0)
                {
                    cursor_mode = CURSOR_VERT;
                    mode = APPEND_STATE;
                }
                else
                {
                    cursor_mode = CURSOR_VERT;
                    mode = INSERT_STATE;
                }
            }
            else if (key == 'a')
            {
                if (len != 0)
                    loc++;
                cursor_mode = CURSOR_VERT;
                mode = APPEND_STATE;
            }
            else if (key == 'x')
            {
                if (len == 0) continue;
                for (i = loc; i<len-1; i++)
                {
                    buf[i] = buf[i+1];
                }
                if (loc == len && loc > 0)
                {
                    loc--;
                }
                len--;
                buf[len] = 0;
            }
            else if (key == 'r')
            {
                cursor_mode = CURSOR_UNDER;
                mode = REPLACE_STATE;
            }
            else if (key == ':')
            {
                mode = COM_STATE;
                com[0] = ':';
                com[1] = 0; 
                com_len = 1;
            }
        }
        else if (mode == INSERT_STATE)
        {
            if (key == ZCODE_ESC)
            {
                cursor_mode = CURSOR_BLOCK;
                mode = WAIT_STATE;
            }
            else if (key == ZCODE_BACKSPACE)
            {
                if (loc > 0)
                {
                    loc--;
                    for (i = loc; i<len-1; i++)
                    {
                        buf[i] = buf[i+1];
                    }
                    len--;
                    buf[len] = 0;
                }
            }
            else if (key != ZCODE_DEL)
            {
                if (len == 0)
                {
                    buf[0] = key;
                    len = 1;
                    buf[len] = 0;
                }
                else if (len < MAX_LEN)
                {
                    for (i = len; i>=loc+1; i--)
                    {
                        buf[i] = buf[i-1];
                    }
                    buf[loc] = key;
                    loc++;
                    len++;
                    buf[len] = 0;
                }
            }
        }
        else if (mode == COM_STATE)
        {
            if (key == ZCODE_ENTER)
            {
                mode = WAIT_STATE;
                if (com_len == 2)
                {
                    if (com[1] == 'w')
                    {
                        fseek(fd, offset, SEEK_SET);
                        fwrite(buf, len, fd);
                    }
                    else if (com[1] == 'q')
                    {
                        mode = QUIT_STATE;
                    }
                }
                com[0] = 0;
                com_len = 0;
            }
            else if (key == ZCODE_BACKSPACE)
            {
                if (com_len > 1)
                {
                    com_len--;
                    com[com_len] = 0;
                }
            }
            else if (key == ZCODE_ESC)
            {
                com[0] = 0;
                com_len = 0;
                mode = WAIT_STATE;
            }
            else if (key != ZCODE_DEL)
            {
                if (com_len != 9)
                {
                    com[com_len] = key;
                    com_len++;
                    com[com_len] = 0;
                }
            }
        }
        else if (mode == REPLACE_STATE)
        {
            if (key == ZCODE_ESC)
            {
                if (loc == len && loc != 0)
                {
                    loc--;
                }
                cursor_mode = CURSOR_BLOCK;
                mode = WAIT_STATE;
            }
            else if (key == ZCODE_BACKSPACE)
            {
                if (loc > 0)
                {
                    loc--;
                    for (i = loc; i<len-1; i++)
                    {
                        buf[i] = buf[i+1];
                    }
                    len--;
                    buf[len] = 0;
                }
            }
            else if (key != ZCODE_DEL)
            {
                if (len >= MAX_LEN) continue;
                if (loc == len)
                {
                    len++;
                    buf[len] = 0;
                }
                buf[loc] = key;
                loc++;
            }
        }
        else if (mode == APPEND_STATE)
        {
            if (key == ZCODE_ESC)
            {
                if (loc == len && loc != 0)
                {
                    loc--;
                }
                cursor_mode = CURSOR_BLOCK;
                mode = WAIT_STATE;
            }
            else if (key == ZCODE_BACKSPACE)
            {
                if (loc > 0)
                {
                    loc--;
                    for (i = loc; i<len-1; i++)
                    {
                        buf[i] = buf[i+1];
                    }
                    len--;
                    buf[len] = 0;
                }
            }
            else if (key != ZCODE_DEL)
            {
                if (len >= MAX_LEN) continue;
                for (i = len; i>=loc+1; i--)
                {
                    buf[i] = buf[i-1];
                }
                buf[loc] = key;
                loc++;
                len++;
                buf[len] = 0;
            }
        }

        if (mode == QUIT_STATE) break;
        clear_screen();
        
        set_cursor(CURSOR_NO, CURSOR_RGB, 0);
        for (i = 0; i<loc; i++)
        {
            putc(buf[i]);
        }
        cursor_loc = get_cursor() & 0x7ff;
        for (i = loc; i<len; i++)
        {
            putc(buf[i]);
        }

        set_cursor(CURSOR_BLOCK, CURSOR_RGB, 1120);
        puts(com);

        set_cursor(cursor_mode, CURSOR_RGB, cursor_loc);
    }
    fclose(fd);
}
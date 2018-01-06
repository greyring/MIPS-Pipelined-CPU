#include "kutils.h"
#include "input.h"
#include "keyboard.h"

static unsigned short __attribute__((section (".data"))) scantoascii_uppercase[] = {
    0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0009, 0x007E, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0051,
    0x0021, 0xffff, 0xffff, 0xffff, 0x005a, 0x0053, 0x0041, 0x0057, 0x0040, 0xffff, 0xffff, 0x0043, 0x0058, 0x0044, 0x0045, 0x0024, 0x0023, 0xffff, 0xffff, 0x0020, 0x0056, 0x0046,
    0x0054, 0x0052, 0x0025, 0xffff, 0xffff, 0x004e, 0x0042, 0x0048, 0x0047, 0x0059, 0x005E, 0xffff, 0xffff, 0xffff, 0x004d, 0x004a, 0x0055, 0x0026, 0x002A, 0xffff, 0xffff, 0x003c,
    0x004b, 0x0049, 0x004f, 0x0029, 0x0028, 0xffff, 0xffff, 0x003E, 0x003f, 0x004c, 0x003A, 0x0050, 0x005F, 0xffff, 0xffff, 0xffff, 0x0022, 0xffff, 0x007B, 0x002B, 0xffff, 0xffff,
    0xffff, 0xffff, 0x000a, 0x007D, 0xffff, 0x007C, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0008, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
    0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x001B, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff};
static unsigned short __attribute__((section (".data"))) scantoascii_lowercase[] = {
    0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0009, 0x0060, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0071,
    0x0031, 0xffff, 0xffff, 0xffff, 0x007a, 0x0073, 0x0061, 0x0077, 0x0032, 0xffff, 0xffff, 0x0063, 0x0078, 0x0064, 0x0065, 0x0034, 0x0033, 0xffff, 0xffff, 0x0020, 0x0076, 0x0066,
    0x0074, 0x0072, 0x0035, 0xffff, 0xffff, 0x006e, 0x0062, 0x0068, 0x0067, 0x0079, 0x0036, 0xffff, 0xffff, 0xffff, 0x006d, 0x006a, 0x0075, 0x0037, 0x0038, 0xffff, 0xffff, 0x002c,
    0x006b, 0x0069, 0x006f, 0x0030, 0x0039, 0xffff, 0xffff, 0x002e, 0x002f, 0x006c, 0x003b, 0x0070, 0x002d, 0xffff, 0xffff, 0xffff, 0x0027, 0xffff, 0x005b, 0x003d, 0xffff, 0xffff,
    0xffff, 0xffff, 0x000a, 0x005d, 0xffff, 0x005c, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x0008, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff,
    0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0x001B, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff, 0xffff};

static unsigned long __attribute__((section (".data"))) input_state;
static unsigned short __attribute__((section (".data"))) buffer[4];
static unsigned long __attribute__((section (".data"))) p_buf;

static unsigned long ascii2hex(unsigned short key)
{
    if (key >= ZCODE_0 && key <= ZCODE_9) return (key - ZCODE_0);
    else if (key >= ZCODE_a && key <= ZCODE_f) return (key - ZCODE_a + 10);
    else if (key >= ZCODE_A && key <= ZCODE_F) return (key - ZCODE_A + 10);
    return 0;
}

void init_input()
{
    input_state = INPUT_ENGLISH;
    buffer[0] = buffer[1] = buffer[2] = buffer[3] = 0;
    p_buf = 0;
    kput_char(ZCODE_YING, DISPLAY_BASE);
}

unsigned short input_key(unsigned long capslock, unsigned short key)
{
    unsigned short t_key;
    if (key == LSHIFT_SC && get_key_state(LCTRL_SC))//swith input mode
    {
        if (input_state == INPUT_ENGLISH)
        {
            input_state = INPUT_CODE;
            kput_char(ZCODE_QU, DISPLAY_BASE);
        }
        else
        {
            input_state = INPUT_ENGLISH;
            buffer[0] = buffer[1] = buffer[2] = buffer[3] = 0;
            p_buf = 0;
            kput_char(ZCODE_YING, DISPLAY_BASE);
            kput_char(0, DISPLAY_BASE + 1);
            kput_char(0, DISPLAY_BASE + 2);
            kput_char(0, DISPLAY_BASE + 3);
            kput_char(0, DISPLAY_BASE + 4);
            kput_char(0, DISPLAY_BASE + 5);
        }
        return 0x0ffff;
    }

    //transform key
    if (capslock)
    {
        if (get_key_state(LSHIFT_SC) || get_key_state(RSHIFT_SC))
        {
            t_key = scantoascii_lowercase[key];
        }
        else
        {
            t_key = scantoascii_uppercase[key];
        }
    }
    else
    {
        if (get_key_state(LSHIFT_SC) || get_key_state(RSHIFT_SC))
        {
            t_key = scantoascii_uppercase[key];
        }
        else
        {
            t_key = scantoascii_lowercase[key];
        }
    }

    //input mode
    if (input_state == INPUT_ENGLISH)
    {
        return t_key;
    }
    else
    {//0-9a-fA-F enter backspace others
        if ((t_key >= ZCODE_0 && t_key <= ZCODE_9)
            ||(t_key >= ZCODE_a && t_key <= ZCODE_f)
            ||(t_key >= ZCODE_A && t_key <= ZCODE_F))
        {
            if (t_key >= ZCODE_a && t_key <= ZCODE_f)
            {
                t_key = t_key - ZCODE_a + ZCODE_A;
            }

            if (p_buf < 4)
            {
                buffer[p_buf] = t_key;
                p_buf++;
                kput_char(t_key, DISPLAY_BASE + p_buf);
                if (p_buf == 4)
                {
                    kput_char((ascii2hex(buffer[0])<<12)
                                |(ascii2hex(buffer[1])<<8)
                                |(ascii2hex(buffer[2])<<4)
                                |ascii2hex(buffer[3]), DISPLAY_BASE + 5);
                }
            }
            return 0x0ffff;
        }
        else if (t_key == ZCODE_ENTER && p_buf == 4)
        {
            unsigned short res;
            res = ((ascii2hex(buffer[0])<<12)
                    |(ascii2hex(buffer[1])<<8)
                    |(ascii2hex(buffer[2])<<4)
                    |ascii2hex(buffer[3]));
            p_buf = 0;
            buffer[0] = buffer[1] = buffer[2] = buffer[3] = 0;
            kput_char(0, DISPLAY_BASE + 1);
            kput_char(0, DISPLAY_BASE + 2);
            kput_char(0, DISPLAY_BASE + 3);
            kput_char(0, DISPLAY_BASE + 4);
            kput_char(0, DISPLAY_BASE + 5);
            return res;
        }
        else if (t_key == ZCODE_BACKSPACE && p_buf != 0)
        {
            if (p_buf == 4)
            {
                kput_char(0, DISPLAY_BASE + 5);
            }
            kput_char(0, DISPLAY_BASE + p_buf);
            p_buf--;
            buffer[p_buf] = 0;
            return 0x0ffff;
        }
        else
            return t_key;
    }
}

unsigned short input_skey(unsigned short key)
{
    if (key == DEL_SSC)
    {
        return ZCODE_DEL;
    }
    else
        return 0x0FFFF;
}
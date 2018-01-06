#include "arch.h"
#include "keyboard.h"
#include "syscall.h"
#include "input.h"

//0 for up, 1 for down
unsigned char __attribute__((section (".data"))) key_state[16];
unsigned char __attribute__((section (".data"))) skey_state[16];//special key
static unsigned short __attribute__((section (".data"))) keybuf[32];
static unsigned long  __attribute__((section (".data"))) keybuf_head;
static unsigned long  __attribute__((section (".data"))) keybuf_tail;

static unsigned long __attribute__((section (".data"))) keyboard_state;
static unsigned long __attribute__((section (".data"))) capslock;

void init_keybuf()
{
    unsigned long i;
    for (i = 0; i<16; i++)
    {
        key_state[i] = skey_state[i] = 0;
    }
    keybuf_head = 31;
    keybuf_tail = 0;
    keyboard_state = KEY_WAIT;
    capslock = CAP_UP;
}

static __inline__ void send_to_keybuf(unsigned short key)
{
    if (key == 0x0ffff) return;
    if (((keybuf_head + 2)&0x1f) == keybuf_tail) return;
    keybuf_head = (keybuf_head + 1)&0x1f;
    keybuf[keybuf_head] = key;
}

unsigned short get_from_keybuf()
{
    unsigned short key;
    if (((keybuf_head + 1)&0x1f) == keybuf_tail) return 0x0ffff;
    key = keybuf[keybuf_tail];
    keybuf_tail = (keybuf_tail + 1)&0x1f;
    return key;
}

void handle_keyboard()
{
    unsigned char key;
    key = *(unsigned char *)(KEY_ADDR);

    switch(keyboard_state)
    {
        case KEY_WAIT:
        {
            if (key == 0x00e0) keyboard_state = KEY_SPECIAL;
            else if (key == 0x00f0) keyboard_state = KEY_RELEASE;
            else
            {
                if (get_key_state(key))
                {
                    keyboard_state = KEY_WAIT;
                    return;
                }

                set_key_state(key);
                if (key == CAPS_SC)
                {
                    switch(capslock)
                    {
                        case CAP_UP     : capslock = CAP_DOWN; break;
                        case CAP_DOWN   : capslock = CAP_DOWN; break;
                        case CAP_RELEASE: capslock = CAP_UP;   break;
                    }
                }

                send_to_keybuf(input_key(capslock, key));
                keyboard_state = KEY_WAIT;
            }
            break;
        }

        case KEY_RELEASE:
        {
            clr_key_state(key);
            if (key == CAPS_SC)
            {
                if (capslock == CAP_DOWN) capslock = CAP_RELEASE;
                else capslock = CAP_UP;
            }
            keyboard_state = KEY_WAIT;
            break;
        }

        case KEY_SPECIAL:
        {
            if (key == 0x00f0) keyboard_state = KEY_SPRELEASE;
            else
            {
                if (get_skey_state(key))
                {
                    keyboard_state = KEY_WAIT;
                    return;
                }
                set_skey_state(key);
                send_to_keybuf(input_skey(key));
                keyboard_state = KEY_WAIT;
            }
            break;
        }

        case KEY_SPRELEASE:
        {
            clr_skey_state(key);
            keyboard_state = KEY_WAIT;
            break;
        }
    }
}
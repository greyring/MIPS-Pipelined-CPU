#ifndef _KEYBOARD_H_
#define _KEYBOARD_H_

/*scan code*/
#define LALT_SC    0x11
#define LSHIFT_SC  0x12
#define LCTRL_SC   0x14
#define CAPS_SC    0x58
#define RSHIFT_SC  0x59
#define ENTER_SC   0x5A
#define ESC_SC     0x76

/*special key scan code*/
#define RCTRL_SSC  0x14
#define RALT_SSC   0x11
#define LARROW_SSC 0x6B
#define INSERT_SSC 0x70
#define DARROW_SSC 0x72
#define RARROW_SSC 0x74
#define UARROW_SSC 0x75

/*keyboard state*/
#define KEY_WAIT      0
#define KEY_RELEASE   1
#define KEY_SPECIAL   2
#define KEY_SPRELEASE 3

/*capslock state*/
#define CAP_UP      0
#define CAP_DOWN    1
#define CAP_RELEASE 2

extern unsigned char key_state[16];
extern unsigned char skey_state[16];

#define get_key_state(code) (key_state[code>>3]&(1<<(code&7)))
#define set_key_state(code) {key_state[code>>3]|=(1<<(code&7));}
#define clr_key_state(code) {key_state[code>>3]&=~(1<<(code&7));}

/*for special key*/
#define get_skey_state(code) (skey_state[code>>3]&(1<<(code&7)))
#define set_skey_state(code) {skey_state[code>>3]|=(1<<(code&7));}
#define clr_skey_state(code) {skey_state[code>>3]&=~(1<<(code&7));}

unsigned char get_frome_keybuf();
void handle_keyboard();
void init_keybuf();

#endif
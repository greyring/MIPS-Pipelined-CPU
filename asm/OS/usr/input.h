#ifndef _INPUT_H_
#define _INPUT_H_

#define ZCODE_YING      0x08f
#define ZCODE_QU        0x090
#define ZCODE_DEL       0x07f
#define ZCODE_ESC       0x01b
#define ZCODE_ENTER     0x00a
#define ZCODE_TAB       0x009
#define ZCODE_BACKSPACE 0x008
#define ZCODE_0         0x030
#define ZCODE_9         0x039
#define ZCODE_a         0x061
#define ZCODE_f         0x066
#define ZCODE_A         0x041
#define ZCODE_F         0x046

#define INPUT_ENGLISH 0
#define INPUT_CODE    1

#define DISPLAY_BASE 1160

void init_input();
unsigned short input_key(unsigned long capslock, unsigned short key);
unsigned short input_skey(unsigned short key);

#endif
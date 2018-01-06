#ifndef _ARCH_H_
#define _ARCH_H_

#define DATA_RAM_ADDR    0xa0000000//0xa0000000-0xafffffff
#define TEXT_ADDR        0xb0002000//0xb0002000-0xb0003fff 8K
#define GRAPH_ADDR       0xb0010000//0xb0010000-0xb001ffff 64K
#define DMARAM_ADDR      0xb0020000//0xb0020000-0xb00201ff 512B
#define VGA_REG_ADDR     0xb0000000
#define CURSOR_ADDR      0xb0000004
#define SW_ADDR          0xb0000008
#define LED_ADDR         0xb000000c
#define SEG_ADDR         0xb0000010
#define KEY_ADDR         0xb0000014
#define DMA_ADDR         0xb0000018
#define BTN_ADDR         0xb000001c
#define BISO_ADDR        0xbfc00000//0xbfc00000-0xbfffffff 4M
#define MAIN_MEM         0x20000000

#define TIMER_CYCLE      50000000

#endif
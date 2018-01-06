#ifndef _UTILS_H_
#define _UTILS_H_

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

#include "input.h"

unsigned long get_sw();
unsigned long get_btn();
unsigned long get_cursor();
unsigned long clear_screen();
unsigned long get_char();
unsigned long dir();
unsigned long unload();


unsigned long put_seg(unsigned long data);
unsigned long put_led(unsigned long data);
unsigned long put_vga(unsigned long mode);
unsigned long scroll_screen(unsigned long line);
unsigned long put_char(unsigned short c);
unsigned long put_string(unsigned short* str);
unsigned long cd(unsigned char *path);
unsigned long crt_file(unsigned char *file_path);
unsigned long del_file(unsigned char *file_path);
unsigned long fopen(unsigned char *file_path);
unsigned long fclose(unsigned long fd);
unsigned long feof(unsigned long fd);
unsigned long load(unsigned char*file_path);

unsigned long pwd(unsigned char *dst, unsigned long len);
//unsigned long read_disk(unsigned long *buf, unsigned short sector);
//unsigned long write_disk(unsigned long *buf, unsigned short sector);

unsigned long set_cursor(unsigned long mode, unsigned char *rgb, unsigned long loc);
unsigned long put_charAt(unsigned short c, unsigned long loc, unsigned char * fbrgb);
unsigned long put_pixel(unsigned long x, unsigned long y, unsigned char * rgb);
unsigned long fread(unsigned char *dst, unsigned long size, unsigned long fd);
unsigned long fwrite(unsigned char *src, unsigned long size, unsigned long fd);
unsigned long fseek(unsigned long fd, unsigned long offset, unsigned long base);

///////////////////////////////////////
unsigned char getc();
void putc(unsigned char c);
void gets(unsigned char* str, unsigned long n);
void puts(unsigned char* str);
unsigned long strncmp(unsigned char *str0, unsigned char *str1, unsigned long n);
unsigned long strlen(unsigned char *str);
void memncpy(unsigned char *dst, unsigned char *src, unsigned long n);

void printHex(unsigned char hex);

#define CURSOR_BLOCK 3
#define CURSOR_VERT  2
#define CURSOR_UNDER 1
#define CURSOR_NO    0

#endif
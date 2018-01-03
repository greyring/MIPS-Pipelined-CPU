#ifndef _UTILS_H_
#define _UTILS_H_
unsigned long get_sw();
unsigned long get_btn();
unsigned long get_cursor();
unsigned long clear_screen();
unsigned long get_char();

unsigned long put_seg(unsigned long data);
unsigned long put_led(unsigned long data);
unsigned long put_vga(unsigned long mode);
unsigned long scroll_screen(unsigned long line);
unsigned long put_char(unsigned short c);
unsigned long put_string(unsigned short* str);

unsigned long read_disk(unsigned long *buf, unsigned short sector);
unsigned long write_disk(unsigned long *buf, unsigned short sector);

unsigned long set_cursor(unsigned long mode, unsigned char *rgb, unsigned long loc);
unsigned long put_charAt(unsigned short c, unsigned long loc, unsigned char * fbrgb);
unsigned long put_pixel(unsigned long x, unsigned long y, unsigned char * rgb);

unsigned short getc();
void gets(unsigned short* str, unsigned long n);
unsigned long strcmp_short(unsigned short *str0, unsigned short *str1, unsigned long n);
unsigned long strcmp_char(unsigned char *str0, unsigned char *str1, unsigned long n);
unsigned long strlen_short(unsigned short *str);
unsigned long strlen_char(unsigned char *str);
void memncpy(unsigned char *dst, unsigned char *src, unsigned long n);
void short2char(unsigned char *dst, unsigned short *src, unsigned long n);
void char2short(unsigned short *dst, unsigned char *src, unsigned long n);

void printHex(unsigned char hex);

#endif
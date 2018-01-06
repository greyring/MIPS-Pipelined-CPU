#ifndef _KUTILS_H_
#define _KUTILS_H_

unsigned long _scroll_screen(unsigned long line);
unsigned long _put_char(unsigned short c);
void kprintHex(unsigned char hex);
void kprintHex_long(unsigned long hex);
void kprintDec(unsigned short dec);
void kput_char(unsigned short c, unsigned long place);
void kputs(unsigned char *str);
unsigned long kstrcmp_short(unsigned short *str0, unsigned short *str1, unsigned long n);
unsigned long kstrcmp_char(unsigned char *str0, unsigned char *str1, unsigned long n);
unsigned long kstrlen_short(unsigned short *str);
unsigned long kstrlen_char(unsigned char *str);
void kmemcpy(unsigned char *dst, unsigned char *src, unsigned long n);
void kshort2char(unsigned char *dst, unsigned short *src, unsigned long n);
void kchar2short(unsigned short *dst, unsigned char *src, unsigned long n);
void kwaitSW2();

#endif
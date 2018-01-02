#ifndef _KUTILS_H_
#define _KUTILS_H_

void kput_char(unsigned short c, unsigned long place);
unsigned long kstrcmp_short(unsigned short *str0, unsigned short *str1, unsigned long n);
unsigned long kstrcmp_char(unsigned char *str0, unsigned char *str1, unsigned long n);
unsigned long kstrlen_short(unsigned short *str);
unsigned long kstrlen_char(unsigned char *str);
void kmemcpy(unsigned char *dst, unsigned char *src, unsigned long n);
void kshort2char(unsigned char *dst, unsigned short *src, unsigned long n);
void kchar2short(unsigned short *dst, unsigned char *src, unsigned long n);

#endif
#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#define SYSCALL __attribute__((__used__)) unsigned long

SYSCALL put_seg(unsigned long *);
SYSCALL get_sw();
SYSCALL get_btn();
SYSCALL put_led(unsigned long *);
SYSCALL set_vga(unsigned long *);
SYSCALL set_cursor(unsigned long *);
SYSCALL get_cursor();
SYSCALL scroll_screen(unsigned long *);
SYSCALL clear_screen();
SYSCALL put_charAt(unsigned long *);
SYSCALL put_char(unsigned long *);
SYSCALL put_string(unsigned long *);
SYSCALL put_pixel(unsigned long *);

unsigned long _put_char(unsigned short c);

#endif
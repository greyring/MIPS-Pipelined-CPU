#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#define SYSCALL __attribute__((__used__)) unsigned long

void _kput_char(unsigned short c, unsigned long place);
extern unsigned long (*syscall_tbl[32])(unsigned long *);

#endif
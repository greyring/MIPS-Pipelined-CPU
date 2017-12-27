#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#define SYSCALL __attribute__((__used__)) unsigned long

unsigned long _put_char(unsigned short c);
extern unsigned long (*syscall_tbl[32])(unsigned long *);

#endif
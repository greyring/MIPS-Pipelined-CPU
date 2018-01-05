#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#define SYSCALL __attribute__((__used__)) unsigned long

extern unsigned long (*syscall_tbl[32])(unsigned long *);
void init_syscall();

#endif
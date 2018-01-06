#ifndef _SYSCALL_H_
#define _SYSCALL_H_

#define SYSCALL __attribute__((__used__)) unsigned long

typedef struct
{
    unsigned long ra;
    unsigned long fp;
    unsigned long gp;
    unsigned long t9;
    unsigned long t8;
    unsigned long s7;
    unsigned long s6;
    unsigned long s5;
    unsigned long s4;
    unsigned long s3;
    unsigned long s2;
    unsigned long s1;
    unsigned long s0;
    unsigned long t7;
    unsigned long t6;
    unsigned long t5;
    unsigned long t4;
    unsigned long t3;
    unsigned long t2;
    unsigned long t1;
    unsigned long t0;
    unsigned long a3;
    unsigned long a2;
    unsigned long a1;
    unsigned long a0;
    unsigned long v1;
    unsigned long v0;
    unsigned long epc;
    unsigned long cause;
    unsigned long status;
    unsigned long usp;
}context;

extern unsigned long (*syscall_tbl[32])(context *);
void init_syscall();

#endif
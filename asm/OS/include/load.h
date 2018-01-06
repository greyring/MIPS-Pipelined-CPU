#ifndef _LOAD_H_
#define _LOAD_H_


typedef struct
{
    unsigned long entry;
    unsigned long text_vaddr;
    unsigned long text_len;
    unsigned long text_offset;
    unsigned long data_vaddr;
    unsigned long data_len;
    unsigned long data_offset;
}ELF_FILE;

#define RUNNING     1
#define DEAD        0
typedef struct
{
    unsigned char ASID;
    unsigned char state;
    ELF_FILE      elf;
}task_struct;

extern task_struct current;

#define PAGE_DIRTY  (1<<2)
#define PAGE_VALID  (1<<1)
#define PAGE_GLOBAL (1)

#define PAGE_SIZE   (1<<12)

void init_task();
unsigned long unload__();
unsigned long load__(unsigned char *file_path);

#endif
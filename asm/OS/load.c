#include "arch.h"
#include "load.h"
#include "filesys.h"
#include "kutils.h"

task_struct __attribute__((section(".data"))) current;

unsigned char __attribute__((section(".data"))) TEXT[] = ".text";
unsigned char __attribute__((section(".data"))) DATA[] = ".data";
//the first two section must be text and data
static unsigned long load_elf(FCB *file, ELF_FILE *elf, unsigned char *file_path)
{
    unsigned long i;
    //unsigned long len;
    unsigned char flag;
    unsigned char buf[512];
    unsigned char name[10];
    unsigned long sechead_addr;
    unsigned short sechead_num;
    unsigned long entry_addr;
    unsigned long entry_offset;

    flag = 0;
    if (!open_file(file_path, file)) goto load_elf0;
    read_file(buf, 52, file);
    elf->entry = *(unsigned long *)(buf + 24);
    sechead_addr = *(unsigned long *)(buf + 32);
    sechead_num  = *(unsigned short*)(buf + 48);
    
    seek_file(file, sechead_addr + 40 * sechead_num - 40, SEEK_SET);
    read_file(buf, 40, file);
    entry_addr = *(unsigned long *)(buf + 16);

    for (i = 0; i<sechead_num; i++)
    {
        seek_file(file, sechead_addr + 40 * i, SEEK_SET);
        read_file(buf, 40, file);
        entry_offset = *(unsigned long *)(buf);//read sec

        seek_file(file, entry_addr + entry_offset, SEEK_SET);
        read_file(name, 6, file);//read name
        if (kstrcmp_char(name, TEXT, 6) == 0)
        {
            flag |= 1;
            elf->text_vaddr = *(unsigned long *)(buf + 12);
            elf->text_offset = *(unsigned long *)(buf + 16);
            elf->text_len   = *(unsigned long *)(buf + 20);
        }
        else if (kstrcmp_char(name, DATA, 6) == 0)
        {
            flag |= 2;
            elf->data_vaddr = *(unsigned long *)(buf + 12);
            elf->data_offset = *(unsigned long *)(buf + 16);
            elf->data_len   = *(unsigned long *)(buf + 20);
        }
        if (flag == 3) break;
    }
    if (i == sechead_num)
    {
        close_file(file);
        goto load_elf0;
    }
    
    return 1;
    load_elf0:
    return 0;
}

/*

*/

void init_task()
{
    current.state = DEAD;
}

unsigned long unload__()
{
    unsigned long hi, index;
    if (current.state == DEAD) goto unload1;

    hi = 0xb0000000;
    index = 0;
    asm volatile(
        "mtc0\t%0, $10\n\t"//hi
        "mtc0\t$0, $2\n\t"//lo0
        "mtc0\t$0, $3\n\t"//lo1
        "mtc0\t%1, $0\n\t"//index
        "tlbwi\n\t"
        :
        :"r"(hi), "r"(index)
    );
    index = 1;
    asm volatile(
        "mtc0\t%0, $10\n\t"//hi
        "mtc0\t$0, $2\n\t"//lo0
        "mtc0\t$0, $3\n\t"//lo1
        "mtc0\t%1, $0\n\t"//index
        "tlbwi\n\t"
        :
        :"r"(hi), "r"(index)
    );

    current.state = DEAD;
    unload1:
    return 1;
}

//return execute address
//if failed return 0xffffffff
unsigned long load__(unsigned char *file_path)
{
    FCB file;
    ELF_FILE elf;
    unsigned long hi, lo0, lo1, index;
    /*
    unsigned long temp;
    asm volatile(
        "move\t%0, $ra\n\t"
        :"=r"(temp)
    );
    kprintHex_long(temp);
    asm volatile(
        "move\t%0, $sp\n\t"
        :"=r"(temp)
    );
    kprintHex_long(temp);
    */
    if (!unload__(current)) goto load0;
    if (!load_elf(&file, &elf, file_path)) goto load0;

    hi = (elf.text_vaddr & 0xffffe000) | 2;//asid = 2 if user
    lo0 = ((unsigned long)(MAIN_MEM & 0xfffff000))>>6 | PAGE_DIRTY | PAGE_VALID;
    lo1 = ((unsigned long)((MAIN_MEM + PAGE_SIZE) & 0xfffff000))>>6 | PAGE_DIRTY |PAGE_VALID;
    index = 0;

    asm volatile(
        "mtc0\t%0, $10\n\t"//hi
        "mtc0\t%1, $2\n\t"//lo0
        "mtc0\t%2, $3\n\t"//lo1
        "mtc0\t%3, $0\n\t"//index
        "tlbwi\n\t"
        :
        :"r"(hi), "r"(lo0), "r"(lo1), "r"(index)
    );
    
    seek_file(&file, elf.text_offset, SEEK_SET);
    read_file((unsigned char *)elf.text_vaddr, elf.text_len, &file);//read text from disk

    lo0 = ((unsigned long)(MAIN_MEM & 0xfffff000))>>6 | PAGE_VALID;
    lo1 = ((unsigned long)((MAIN_MEM + PAGE_SIZE) & 0xfffff000))>>6 |PAGE_VALID;
    asm volatile(
        "mtc0\t%0, $10\n\t"//hi
        "mtc0\t%1, $2\n\t"//lo0
        "mtc0\t%2, $3\n\t"//lo1
        "mtc0\t%3, $0\n\t"//index
        "tlbwi\n\t"
        :
        :"r"(hi), "r"(lo0), "r"(lo1), "r"(index)
    );

    hi = (elf.data_vaddr & 0xffffe000) | 2;//asid = 2 if user
    lo0 = ((unsigned long)((MAIN_MEM + 2*PAGE_SIZE) & 0xfffff000))>>6 | PAGE_DIRTY | PAGE_VALID;
    lo1 = ((unsigned long)((MAIN_MEM + 3*PAGE_SIZE) & 0xfffff000))>>6 | PAGE_DIRTY |PAGE_VALID;
    index = 1;
    asm volatile(
        "mtc0\t%0, $10\n\t"//hi
        "mtc0\t%1, $2\n\t"//lo0
        "mtc0\t%2, $3\n\t"//lo1
        "mtc0\t%3, $0\n\t"//index
        "tlbwi\n\t"
        :
        :"r"(hi), "r"(lo0), "r"(lo1), "r"(index)
    );

    seek_file(&file, elf.data_offset, SEEK_SET);
    read_file((unsigned char *)elf.data_vaddr, elf.data_len, &file);//read text from disk

    close_file(&file);
    current.ASID = 2;
    current.state = RUNNING;
    current.elf = elf;

    return elf.entry;
    load0:
    return 0xffffffff;
}

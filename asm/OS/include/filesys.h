#ifndef _FILESYS_H_
#define _FILESYS_H_

#include "syscall.h"

void read_(unsigned long *buf, unsigned short sector);
void write_(unsigned long *buf, unsigned short sector);

#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

/*
*basic type define
*/
typedef unsigned char  byte;
typedef unsigned short byte_2;
typedef unsigned int   byte_4;

typedef struct
{
	byte	FAT_num;
	byte_4 	sect0;		//offset in disk
	byte_4	sect_FAT1;//offset in disk
	byte_4	sect_FAT1_END;//offset in disk
	byte_4	sect_DIR;	//offset in disk
	byte_4	sect_DIR_END;
	byte_4	sect_DATA;//offset in disk
}Volume_record;

typedef struct
{
	byte 	dirty;
	byte_2 	sector;		 //sect offset in disk
	byte 	section[512];//actual buffer
}Sect_buffer;

typedef struct
{

	struct
	{
		byte	 		read_only		:1;//低位
		byte			hide			:1;
		byte			sys				:1;
		byte			vol				:1;
		byte			dir				:1;//高位
	}property;

	byte_2		first_sect;//volume->sect_DATA + first_sect;减2之后
	byte_4		file_len;
	byte		file_name[8];
	byte		file_ext[3];

	byte_2		dir_sect;	//sect offset in disk
	byte_2		dir_offset;//byte offset in sect

	byte_4		sect_offset;//sect offset in DATA 减2之前
	byte_4		pos_sect;		//offset of this sect in file in bytes
	byte_4 		p;					//bytes pointer in file
	Sect_buffer *bufp;
}FCB;

#define ROOT 1
#define DIR 0
typedef struct
{
	byte type;
	byte_2 sect_offset;
	FCB  fcb;
	unsigned char pwd[256];
	unsigned char pwd_len;
}DCB;

#define FCB_NUM 4

unsigned long pwd__(unsigned char *dst, unsigned long len);
unsigned long cd__(unsigned char *path);
unsigned long crt_file__(unsigned char *file_path);
unsigned long del_file__(unsigned char *file_path);
unsigned long fopen__(unsigned char *file_path);
unsigned long fclose__(unsigned long fd);
unsigned long fread__(unsigned char *dst, unsigned long size, unsigned long fd);
unsigned long fwrite__(unsigned char *src, unsigned long size, unsigned long fd);
unsigned long fseek__(unsigned long fd, unsigned long offset, unsigned long base);
unsigned long feof__(unsigned long fd);
void dir__();

void init_fs();
unsigned long open_file(unsigned char *file_path, FCB *fp);
unsigned long seek_file(FCB *fp,	byte_4 offset, byte base);
unsigned long read_file(byte *dst, byte_4 total, FCB *fp);
unsigned long write_file(byte *src, byte_4 total, FCB *fp);
void close_file(FCB *fp);
unsigned long end_file(FCB *fp);


#endif
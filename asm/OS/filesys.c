#include "arch.h"
#include "filesys.h"
#include "kutils.h"

void read_(unsigned long *buf, unsigned short sector)
{
	unsigned long offset;
	volatile unsigned long temp;
	volatile unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	temp = ((sector & 0xffff) << 16) | (1<<5);//read
	*DMA = temp;
	//temp &= 0xffff0000;
	//*DMA = temp;//this is a bug in hardware
	while(1)
	{
		if (*DMA & 0x40) break;//wait for data
	}

	for (offset = 0; offset<128; offset++)
	{
		*(unsigned long*)(buf + offset) = *((unsigned long *)(DMARAM_ADDR) + offset);
	}
}

void write_(unsigned long *buf, unsigned short sector)
{
	unsigned long offset;
	volatile unsigned long temp;
	volatile unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	for (offset = 0; offset<128; offset++)
	{
		*((unsigned long *)(DMARAM_ADDR) + offset) = *(unsigned long *)(buf + offset);
	}
	temp = ((sector & 0xffff)<<16) | (3<<4);//write
	*DMA = temp;
	//temp &= 0xffff0000;
	//*DMA = temp;//*DMA = 0;//this is a bug in hardware
	while(1)
	{
		if (*DMA & 0x40) break;//wait for writing
	}
}

Sect_buffer __attribute__((section (".data")))	  _sect_buffer;
Volume_record __attribute__((section (".data")))  _volume;
DCB	__attribute__((section (".data")))			  _pwd_DCB;
FCB	__attribute__((section (".data")))			  _FCB_list[FCB_NUM];
unsigned char __attribute__((section (".data")))  _FCB_empty[FCB_NUM];
unsigned char __attribute__((section (".data")))  _ROOT_STR[] = "A:/";

static void write_buffer()
{
	if (_sect_buffer.dirty)
	{
		//_put_char('W');
		//kprintDec(_sect_buffer.sector);
		write_((unsigned long *)_sect_buffer.section, _sect_buffer.sector);
		_sect_buffer.dirty = 0;
	}
}

static Sect_buffer * read_disk(unsigned long sect)
{
	write_buffer();
	_sect_buffer.sector = sect;
	//_put_char('R');
	//kprintDec(_sect_buffer.sector);
	read_((unsigned long *)_sect_buffer.section, _sect_buffer.sector);
	return &_sect_buffer;
}

static unsigned long get_file_name(unsigned char *filename, unsigned char ** file_path)
{
	unsigned long i = 0;
	unsigned long state = 0;
	while(i<12)
	{
		switch (state)
		{
			case 0:if (**file_path == 0 || **file_path == '/')
					{
						while(i<11) filename[i++] = 0x20;
						goto get_file_name_ret1;
					}
					else if (**file_path == '.')
					{
						while(i<8) filename[i++] = 0x20;
						state = 1;
					}
					else if (i == 8)
					{
						goto get_file_name_ret0;
					}
					else
					{
						filename[i++] = **file_path;
					}
					break;
			case 1:if (**file_path == 0 || **file_path == '/')
					{
						while(i<11) filename[i++] = 0x20;
						goto get_file_name_ret1;
					}
					else if (i == 11)
					{
						goto get_file_name_ret0;
					}
					else
					{
						filename[i++] = **file_path;
					}
					break;
		}
		(*file_path)++;
	}
	get_file_name_ret0:
	return 0;
	get_file_name_ret1:
	return 1;
}

static unsigned long get_next_sect(FCB *fp)
{
	Volume_record *volp = &_volume;
	Sect_buffer* bufp;
	byte_2 next_FAT;

	bufp = read_disk((fp->sect_offset>>8) + volp->sect_FAT1);
	next_FAT = *(byte_2 *)(bufp->section + ((fp->sect_offset & 0xff)<<1));
	if (!next_FAT || (next_FAT >= 0xfff8 && next_FAT <= 0xffff)) goto get_next_sect_0;

	bufp = read_disk(volp->sect_DATA + next_FAT - 2);
	fp->bufp 				= bufp;
	fp->sect_offset 		= next_FAT;
	fp->pos_sect 			+= 512;

	return 1;
	get_next_sect_0:
	read_disk(volp->sect_DATA + fp->sect_offset - 2);
	return 0;
}

static unsigned long seek_sect(FCB *fp)
{
	Volume_record *volp = &_volume;

	if (fp->first_sect == 0xfffe) {
		goto seek_sect_0;
	}

	if (fp->p >= fp->pos_sect && fp->p < fp->pos_sect + 512)
	{
		fp->bufp = read_disk(volp->sect_DATA + fp->sect_offset - 2);
		goto seek_sect_1;
	}

	if (fp->p < fp->pos_sect)
	{
		fp->bufp = read_disk(volp->sect_DATA + fp->first_sect);
		fp->pos_sect = 0;
		fp->sect_offset = fp->first_sect + 2;
	}

	while(!(fp->p >= fp->pos_sect && fp->p < fp->pos_sect + 512))
		if (!get_next_sect(fp)) goto seek_sect_0;

	seek_sect_1:
	return 1;
	seek_sect_0:
	return 0;
}

static void do_open(FCB *fp, unsigned char *filename, Sect_buffer *bufp, unsigned long offset)
{
	byte *temp;
	temp = bufp->section + offset;

	*(byte *)(&(fp->property)) = *(temp + 11);
	fp->first_sect = *(byte_2 *)(temp + 26) - 2;
	fp->file_len   = *(byte_4 *)(temp + 28);
	kmemcpy(fp->file_name, filename, 8);
	kmemcpy(fp->file_ext, filename+8, 3);
	fp->sect_offset = *(byte_2 *)(temp + 26);
	fp->pos_sect = 0;
	fp->p = 0;
	fp->dir_sect = bufp->sector;
	fp->dir_offset = offset;
}

static Sect_buffer* dget_first_sect(DCB *dp)
{
	if (dp->type == ROOT)
	{
		dp->sect_offset = _volume.sect_DIR;
		return read_disk(_volume.sect_DIR);
	}
	else if (dp->type == DIR)
	{
		seek_file(&(dp->fcb), 0, SEEK_SET);
		if (seek_sect(&(dp->fcb)))
			return dp->fcb.bufp;
		else
			return 0;
	}
	return 0;
}

static Sect_buffer* dget_next_sect(DCB *dp)
{
	if (dp->type == ROOT)
	{
		if (dp->sect_offset == _volume.sect_DIR_END) return 0;
		dp->sect_offset++;
		return read_disk(dp->sect_offset);
	}
	else if (dp->type == DIR)
	{
		if (get_next_sect(&(dp->fcb))) return dp->fcb.bufp;
		else return 0;
	}
	return 0;
}

static unsigned long do_cd(DCB *dcb, unsigned char *path)
{
	int i;
	DCB temp;
	unsigned char file_name[11];
	unsigned char *t;
	Sect_buffer* bufp;
	
	if (kstrcmp_char(_ROOT_STR, path, 3) == 0)
	{
		//absolute path
		temp.type = ROOT;
		temp.sect_offset = _volume.sect_DIR;
		kmemcpy(temp.pwd, _ROOT_STR, 3);
		temp.pwd_len = 3;
		path += 3;
	}
	else
	{
		temp = *dcb;
	}

	cd_break:
	while(*path)
	{
		if (path[0] == '.')
		{
			if (path[1] == 0)
			{
				goto cd_ret0;
			}
			else if (path[1] == '/')
			{
				path += 2;
				goto cd_break;
			}
			else if (path[1] == '.' && (path[2] == 0 || path[2] == '/'))
			{
				if (path[2] == 0) path += 2;
				else path += 3;

				temp.pwd_len--;
				while(temp.pwd[temp.pwd_len-1] != '/') temp.pwd_len--;
				if (temp.pwd_len == 3)//A:/
				{
					temp.type = ROOT;
					temp.sect_offset = _volume.sect_DIR;
					if (path[0] == 0) goto cd_ret1;
					else goto cd_break;
				}
				else
				{
					file_name[0] = '.';
					file_name[1] = '.';
					for (i = 2; i<11; i++) file_name[i] = 0x20;
				}
				
			}
			else goto cd_ret0;
		}
		else
		{
			t = path;
			if (!get_file_name(file_name, &path)) goto cd_ret0;
			kmemcpy(temp.pwd + temp.pwd_len, t, path-t);
			temp.pwd_len += path-t;
			if (temp.pwd[temp.pwd_len-1] != '/')
			{
				temp.pwd[temp.pwd_len] = '/';
				temp.pwd_len++;
			}
			while(path[0] == '/') path++;
		}
		
		bufp = dget_first_sect(&temp);
		while(bufp)
		{
			t = bufp->section;
			for (i = 0; i<16; i++)
			{
				if (kstrcmp_char(t+i*32, file_name, 11) == 0)
				{
					do_open(&temp.fcb, file_name, bufp, i*32);
					if (!temp.fcb.property.dir) goto cd_ret0;
					else
					{
						temp.type = DIR;
						goto cd_break;
					}
				}
			}
			bufp = dget_next_sect(&temp);
		}
		goto cd_ret0;
	}
	cd_ret1:
	*dcb = temp;
	return 1;
	cd_ret0:
	return 0;
}

unsigned long open_file(unsigned char *file_path, FCB *fp)
{
	DCB dcb;
	int i;
	unsigned char * file;
	unsigned char filename[11];
	Sect_buffer* bufp;
	unsigned char *temp;
	
	file = file_path + kstrlen_char(file_path) - 1;
	while(file>file_path && file[0] != '/') file--;
	dcb = _pwd_DCB;
	if (file != file_path)
	{
		file[0] = 0;
		file++;
		do_cd(&dcb, file_path);
	}

	get_file_name(filename, &file);
	bufp = dget_first_sect(&dcb);
	while(bufp)
	{
		temp = bufp->section;
		for (i = 0; i<16; i++)//search in the sect
		{
			if (kstrcmp_char(temp + i*32, filename, 11) == 0)
			{
				do_open(fp, filename, bufp, i*32);
				goto open_file_1;
			}
		}
		bufp = dget_next_sect(&dcb);
	}
	return 0;
	open_file_1:
	return 1;
}

unsigned long seek_file(FCB *fp,	byte_4 offset, byte base)
{
	int p = -1;
	if (base == SEEK_SET)
	{
		p = offset;
	}
	else if (base == SEEK_CUR)
	{
		p = offset + fp->p;
	}
	else if (base == SEEK_END)
	{
		p = offset + fp->file_len;
	}

	if (p >= 0 && p < fp->file_len)
	{
		fp->p = p;
		return 1;
	}
	return 0;
}

unsigned long read_file(byte *dst, byte_4 total, FCB *fp)
{
	int i;
	unsigned char *temp;
	unsigned long s;//number of bytes have been read

	if (!total) goto read_file_0;
	if (!seek_sect(fp)) goto read_file_0;
	s = 0;
	temp = fp->bufp->section + (fp->p - fp->pos_sect);
	for (i = 0; i < total; i++) {
		 if (fp->p >= fp->file_len) goto read_file_s;

		 if (fp->p >= fp->pos_sect + 512)
		 {
			if (!get_next_sect(fp)) goto read_file_s;
			temp = fp->bufp->section;
		 }

		 *(dst+s) = *temp;
		 fp->p ++;
		 temp++;
		 s++;
	}

	read_file_s:
	return s;
	read_file_0:
	return 0;
}

unsigned long write_file(byte *src, byte_4 total, FCB *fp)
{
	unsigned long d;//num of blocks have been written
	unsigned char *temp;
	unsigned long i, j;
	Sect_buffer *bufp;
	Volume_record *volp;

	volp = &_volume;
	d = 0;

	if (!total) goto write_file_0;
	if (!seek_sect(fp))
	{
		if (fp->first_sect == 0xfffe)//empty file
		{
			bufp = read_disk(volp->sect_FAT1);

			write_file_loop0:
			{
				for (j = 0; j<256; j++)
				{
					if (*(byte_2 *)(bufp->section + 2*j) == 0)//an empty FAT
					{
						bufp->dirty = 1;
						*(byte_2 *)(bufp->section + 2*j) = 0xffff;
						j = ((bufp->sector - volp->sect_FAT1)<<8) + j;
						goto write_file_loop0_break;
					}
				}
				if (bufp->sector < volp->sect_FAT1_END)//next FAT sect
					bufp = read_disk(bufp->sector + 1);
				else goto write_file_0;
				goto write_file_loop0;
			}
			write_file_loop0_break:
			fp->first_sect = j - 2;
			fp->bufp = read_disk(volp->sect_DATA + j - 2);
			fp->sect_offset = j;
			fp->pos_sect = 0;
		}
		else	goto write_file_0;
	}

	fp->bufp->dirty = 1;
	temp = fp->bufp->section + fp->p - fp->pos_sect;
	for (i = 0; i<total; i++)
	{
			if (fp->p >= fp->pos_sect + 512)
			{
				//get a new sect
				if (!get_next_sect(fp))
				{
					bufp = read_disk(volp->sect_FAT1);

					write_file_loop:
					{
						if (!bufp) goto write_file_d;
						for (j = 0; j<256; j++)
						{
							if (*(byte_2 *)(bufp->section + 2*j) == 0)
							{
								bufp->dirty = 1;
								*(byte_2 *)(bufp->section + 2*j) = 0xffff;
								j = ((bufp->sector - volp->sect_FAT1)<<8) + j;
								goto write_file_loop_break;
							}
						}
						if (bufp->sector < volp->sect_FAT1_END)
							bufp = read_disk(bufp->sector + 1);
						else goto write_file_d;
						goto write_file_loop;
					}

					write_file_loop_break:
					bufp = read_disk(volp->sect_FAT1 + (fp->sect_offset>>8));
					bufp->dirty = 1;
					*(byte_2 *)(bufp->section + ((fp->sect_offset & 0xff)<<1)) = j;

					bufp = read_disk(volp->sect_DATA + j - 2);
					fp->bufp = bufp;
					fp->sect_offset = j;
					fp->pos_sect += 512;
				}
				fp->bufp->dirty = 1;
				temp = fp->bufp->section;
			}

			if (fp->p >= fp->file_len)
			{
				fp->file_len = fp->p + 1;
			}

			*temp = *(src + i);
			fp->p++;
			temp++;
			d++;
	}


	write_file_d:
	seek_sect(fp);
	return d;
	write_file_0:
	seek_sect(fp);
	return 0;
}

void close_file(FCB *fp)
{
	Sect_buffer   *bufp;
	unsigned char *temp;

	bufp = read_disk(fp->dir_sect);

	bufp->dirty = 1;
	temp = bufp->section + fp->dir_offset;
	*(byte_2 *)(temp + 26) = fp->first_sect + 2;
	*(byte_4 *)(temp + 28) = fp->file_len;
	write_buffer();
}

unsigned long end_file(FCB *fp)
{
	return (fp->p >= fp->file_len);
}

void init_fs()
{
	int i;
	Volume_record *volp = &_volume;
	byte          *temp;
	byte_4        sect0;
	
	_sect_buffer.dirty = 0;//init buffer
	for (i = 0; i<FCB_NUM; i++)//init FCBs
	{
		_FCB_empty[i] = 1;
	}
	read_disk(0);
	sect0 = *(byte_2 *)(_sect_buffer.section + 446 + 8);//只加载第一个分区
	sect0 =	(*(byte_2 *)(_sect_buffer.section + 446 + 10)<<16) + sect0;
	read_disk(sect0);
	
	temp = _sect_buffer.section;
	volp->sect0 = sect0;
	volp->sect_FAT1 = sect0 + *(byte_2 *)(temp + 14);
	volp->FAT_num = *(byte *)(temp + 16);
	volp->sect_FAT1_END = sect0 + volp->sect_FAT1 + *(byte_2 *)(temp + 22) - 1;
	volp->sect_DIR = volp->sect_FAT1 + volp->FAT_num * *(byte_2 *)(temp + 22);
	volp->sect_DATA = volp->sect_DIR + (*(byte_2 *)(temp + 17)>>4);
	volp->sect_DIR_END = volp->sect_DATA -1;

	_pwd_DCB.type = ROOT;
	_pwd_DCB.sect_offset = _volume.sect_DIR;
	_pwd_DCB.pwd[0] = 'A';
	_pwd_DCB.pwd[1] = ':';
	_pwd_DCB.pwd[2] = '/';
	_pwd_DCB.pwd_len = 3;
}

unsigned long pwd__(unsigned char *dst, unsigned long len)
{
	int i;
	if (len<_pwd_DCB.pwd_len) return 0;
	for (i = 0; i<_pwd_DCB.pwd_len; i++)
	{
		dst[i] = _pwd_DCB.pwd[i];
	}
	dst[i] = 0;
	return 1;
}

unsigned long cd__(unsigned char *path)
{
	return do_cd(&_pwd_DCB, path);
}

unsigned long crt_file__(unsigned char *file_path)
{
	FCB fcb;
	DCB dcb;
	Sect_buffer *bufp;
	unsigned char * file_name;
	unsigned char desc[32];
	int i;

	file_name = file_path + kstrlen_char(file_path) - 1;
	while(file_name > file_path && file_name[0] != '/') file_name--;
	dcb = _pwd_DCB;
	if (file_name[0] == '/')
	{
		file_name[0] = 0;
		file_name++;
		do_cd(&dcb, file_path);
	}
	
	for (i = 0; i<32; i++)
		desc[i] = 0;
	if (!get_file_name(desc, &file_name)) goto create_ret_0;
	if (desc[8] == 0x20 && desc[9] == 0x20 && desc[10] == 0x20)//dir
	{
		desc[11] = 0x10;
	}
	*(byte_4 *)(desc+28) = 0;

	//if exist
	bufp = dget_first_sect(&dcb);
	while(bufp)
	{
		for (i = 0; i<16; i++)
		{
			if (kstrcmp_char(desc, bufp->section + i*32, 11) == 0)
				goto create_ret_0;
		}
		bufp = dget_next_sect(&dcb);
	}

	bufp = dget_first_sect(&dcb);
	while(bufp)
	{
		for (i = 0; i<16; i++)
		{
			if (*(bufp->section + i * 32) == 0 || *(bufp->section + i * 32) == 0xE5)
			{
				bufp->dirty = 1;
				kmemcpy(bufp->section + i * 32, desc, 32);
				write_buffer();
				do_open(&fcb, file_name, bufp, i*32);
				goto create_ret_next;
			}
		}
		bufp = dget_next_sect(&dcb);
	}

	create_ret_next:
	if (desc[11] == 0x10)//dir
	{
		for (i = 0; i<8; i++)
		{
			desc[i] = 0x20;
		}
		desc[0] = '.';
		*(byte_2*)(desc + 26) = fcb.first_sect + 2;
		*(byte_4*)(desc + 28) = 0;
		if (write_file(desc, 32, &fcb)!=32) 
		{
			close_file(&fcb);
			goto create_ret_0;
		}
		desc[1] = '.';
		if (dcb.type == ROOT)
		{
			*(byte_2*)(desc + 26) = 0;
		}
		else if (dcb.type == DIR)
		{
			*(byte_2*)(desc + 26) = dcb.fcb.first_sect + 2;
		}
		if (write_file(desc, 32, &fcb)!=32)
		{
			close_file(&fcb);
			goto create_ret_0;
		}
	}
	close_file(&fcb);
	return 1;

	create_ret_0:
	return 0;
}

unsigned long del_file__(unsigned char *file_path)
{
	FCB fp;
	Sect_buffer *bufp;
	byte_2				temp;
	byte_2				temp2;
	Volume_record	*volp;
	byte desc[32];

	volp = &_volume;
	if (!open_file(file_path, &fp)) goto delete_file_0;
	if (fp.property.dir)
	{
		while(!end_file(&fp))
		{
			read_file(desc, 32, &fp);
			if (desc[0] != 0xe5 && desc[0] != 0 && desc[0] != '.') goto delete_file_0;
		}
	}

	temp = fp.first_sect + 2;
	//clear FAT
	if (temp != 0)//not empty file
	{
		while(temp != 0xffff)
		{
			bufp = read_disk(volp->sect_FAT1 + (temp>>8));
			if (!bufp) goto delete_file_0;
			temp2 = *(byte_2 *)(bufp->section + ((temp & 255)<<1));
			bufp->dirty = 1;
			*(byte_2 *)(bufp->section + ((temp & 255)<<1)) = 0;
			temp = temp2;
		}
	}

	//clear DIR
	bufp = read_disk(fp.dir_sect);
	if (!bufp) goto delete_file_0;
	bufp->dirty = 1;
	*(byte *)(bufp->section + fp.dir_offset) = 0xe5;

	return 1;
	delete_file_0:
	return 0;
}

unsigned long fopen__(unsigned char *file_path)
{
	int i;
	for (i = 0; i<FCB_NUM; i++)
	{
		if (_FCB_empty[i])
		{
			if (open_file(file_path, _FCB_list + i))
			{
				_FCB_empty[i] = 0;
				return i+1;
			}
			else return 0;
		}
	}
	return 0;
}

unsigned long fclose__(unsigned long fd)
{
	if (fd<1 || fd>FCB_NUM) return 0;
	fd--;
	if (_FCB_empty[fd]) return 0;
	close_file(_FCB_list + fd);
	_FCB_empty[fd] = 1;
	return 1;
}

unsigned long fread__(unsigned char *dst, unsigned long size, unsigned long fd)
{
	if (fd<1 || fd>FCB_NUM) return 0;
	fd--;
	if (_FCB_empty[fd]) return 0;
	return read_file(dst, size, _FCB_list + fd);
}

unsigned long fwrite__(unsigned char *src, unsigned long size, unsigned long fd)
{
	if (fd<1 || fd>FCB_NUM) return 0;
	fd--;
	if (_FCB_empty[fd]) return 0;
	return write_file(src, size, _FCB_list + fd);
}

unsigned long fseek__(unsigned long fd, unsigned long offset, unsigned long base)
{
	if (fd<1 || fd>FCB_NUM) return 0;
	fd--;
	if (_FCB_empty[fd]) return 0;
	return seek_file(_FCB_list + fd, offset, base);
}

unsigned long feof__(unsigned long fd)
{
	if (fd<1 || fd>FCB_NUM) return 1;
	fd--;
	if (_FCB_empty[fd]) return 1;
	return end_file(_FCB_list + fd);
}

void dir__()
{
	unsigned long i,j;
	Sect_buffer *bufp;
	unsigned char *temp;
	bufp = dget_first_sect(&_pwd_DCB);
	while(bufp)
	{
		temp = bufp->section;
		for (i = 0; i<16; i++)
		{
			if (temp[i*32] != 0 && temp[i*32] != 0xE5)
			{
				if (temp[i*32+11]&0x0c) continue;//volume or system
				for (j = 0; j<8;j++)
				{
					if (temp[i*32+j] == 0x20) break;
					_put_char(temp[i*32+j]);
				}
				if (temp[i*32+11]&0x10)
				{
					_put_char('\t');
					continue;
				}
				_put_char('.');
				for (j = 8; j<11; j++)
				{
					if (temp[i*32+j] == 0x20) break;
					_put_char(temp[i*32+j]);
				}
				_put_char('\t');
			}
		}
		bufp = dget_next_sect(&_pwd_DCB);
	}
	_put_char('\n');
}

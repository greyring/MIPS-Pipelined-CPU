#include "arch.h"
#include "filesys.h"

void read_(unsigned long *buf, unsigned short sector)
{
	unsigned long offset;
	volatile unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	*DMA = ((sector & 0xffff) << 16) | (1<<5);//read
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
	volatile unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	for (offset = 0; offset<128; offset++)
	{
		*((unsigned long *)(DMARAM_ADDR) + offset) = *(unsigned long *)(buf + offset);
	}
	*DMA = ((sector & 0xffff)<<16) | (3<<4);//write
	while(1)
	{
		if (*DMA & 0x40) break;//wait for writing
	}
}

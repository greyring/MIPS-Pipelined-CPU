#include "arch.h"

void read_(unsigned long *buf, unsigned short sector)
{
	unsigned long offset;
	unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	*DMA = ((sector & 0xffff) << 16);//read
	while(~((*DMA) & 0x20));//wait for data

	for (offset = 0; offset<128; offset++)
	{
		*(unsigned long*)(buf + offset) = *((unsigned long *)(DMARAM_ADDR) + offset);
	}
}

void write_(unsigned long *buf, unsigned short sector)
{
	unsigned long offset;
	unsigned long * DMA = (unsigned long *)(DMA_ADDR);
	for (offset = 0; offset<128; offset++)
	{
		*((unsigned long *)(DMARAM_ADDR) + offset) = *(unsigned long *)(buf + offset);
	}
	*DMA = ((sector & 0xffff)<<16) | (1<<5);//write
	while(~((*DMA) & 0x20));//wait for writing
}

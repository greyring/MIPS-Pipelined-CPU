#define DMA_ADDR         0xb0000018
#define DMARAM_ADDR      0xb0020000//0xb0020000-0xb00201ff 512B
inline void read_(unsigned long *buf, unsigned short sector)
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

void load_OS()
{
    unsigned long text_base = 0x80000000;
    unsigned long data_base = 0x80006000;//////////////////////////notice
    unsigned long i;
    for (i = 0; i < 5*8; i++)//20K////////////////////////////////
    {
        read_((unsigned long *)(text_base + i*512), i+1);/////////////
    }
    for (i = 0; i< 1*8; i++)//4K
    {
        read_((unsigned long *)(data_base + i*512), i+41);////////////
    }
}
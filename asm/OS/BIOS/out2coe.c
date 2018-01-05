#include <stdio.h>
#include <stdlib.h>

void main(int argc , char *args[])
{
  FILE *fp;
  FILE *fout;
  char strings[1024];
  unsigned char buffer[4];
  int i = 0;
  //.set noreorder
  sprintf(strings,"mips-objcopy -O binary -j.text bios.bin text.bin");
  system(strings);

  fp = fopen("text.bin","rb");
  if (!fp) return;
  fout = fopen("text.coe", "w");
  fprintf(fout, "memory_initialization_radix=16;\n");
  fprintf(fout, "memory_initialization_vector=\n");
  while(!feof(fp))
  {
    fread(buffer, 4, 1, fp);
    fprintf(fout,"%02x", buffer[3]);
    fprintf(fout,"%02x", buffer[2]);
    fprintf(fout,"%02x", buffer[1]);
    fprintf(fout,"%02x, ", buffer[0]);
    i++;
    if (i % 8 == 0) fprintf(fout,"\n");
  }
  fclose(fp);
  fclose(fout);
  system("del text.bin");

  printf("Successful\n");
}

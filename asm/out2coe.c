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
  sprintf(strings,"mips-objcopy -O binary -j.text %s a.bin", args[1]);
  system(strings);

  fp = fopen("a.bin","rb");
  if (!fp) return;
  fout = fopen("out.coe", "w");
  fprintf(fout, "memory_initialization_radix=16;\n");
  fprintf(fout, "memory_initialization_vector=\n");
  while(!feof(fp))
  {
    fread(buffer, 4, 1, fp);
    fprintf(fout,"%02x", buffer[0]);
    fprintf(fout,"%02x", buffer[1]);
    fprintf(fout,"%02x", buffer[2]);
    fprintf(fout,"%02x, ", buffer[3]);
    i++;
    if (i % 8 == 0) fprintf(fout,"\n");
  }
  fclose(fp);
  fclose(fout);
  sprintf(strings, "del %s", args[1]);
  system(strings);
  system("del a.bin");
  printf("Successful\n");
}

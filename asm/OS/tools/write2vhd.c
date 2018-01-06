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
  sprintf(strings,"mips-objcopy -O binary -j.text os.bin text.bin");
  system(strings);

  fp = fopen("text.bin","rb");
  if (!fp) return;
  fout = fopen("a.vhd", "rb+");
  if (!fout) return;
  fseek(fout, 512, SEEK_SET);
  while(!feof(fp))
  {
    fread(buffer, 1, 1, fp);
    fwrite(buffer, 1, 1, fout);
  }
  fclose(fp);

  system("del text.bin");

  sprintf(strings,"mips-objcopy -O binary -j.data os.bin data.bin");
  system(strings);

  fp = fopen("data.bin","rb");
  if (!fp) return;
  fseek(fout, 512*41, SEEK_SET);/////////////////////////////////////////
  while(!feof(fp))
  {
    fread(buffer, 1, 1, fp);
    fwrite(buffer, 1, 1, fout);
  }
  fclose(fp);
  fclose(fout);
  //sprintf(strings, "del %s", args[1]);
  //system(strings);
  system("del data.bin");

  printf("Successful\n");
}

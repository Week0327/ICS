#include <stdio.h>

unsigned srl(unsigned x, int k)
{
    unsigned xsra = (int) x >> k;
    return xsra & ~(~0 << (sizeof(int) * 8 - k));
}

int sra(int x, int k)
{
    int xsrl = (unsigned) x >> k;
    unsigned _sign = x & (0x1 << (sizeof(int) * 8 - 1));
    return xsrl | (((!_sign) + ~0) << (sizeof(int) * 8 - k));
}

int main()
 {
     int k;
     int x;
     printf("Input x,k:\n");
     scanf("%x%d",&x,&k);
     x = sra(x,k);
     printf("%x",x);
 }

/*int main()
 {
     int k;
     unsigned x;
     printf("Input x,k:\n");
     scanf("%x%d",&x,&k);
     x = srl(x,k);
     printf("%x",x);
 }*/


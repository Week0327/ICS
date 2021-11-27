#include <stdio.h>

typedef int BOOL;
#define TRUE 1
#define FALSE 0

BOOL isLittleEndian()
{
    short x = 0x2019;
    char x1,x2;
    x1 = *((char *)&x);
    x2 = *(((char *)&x)+1);
    if(x1==0x20 && x2==0x19)
        return 0;
    if(x2==0x20 && x1==0x19)
        return 1;
}

int main()
{
    BOOL a = isLittleEndian();
    if (a == 1)
        printf("It is Little Endian");
    else printf("It is Big Endian");
    return 0;
}

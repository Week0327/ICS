#include <stdio.h>

int combine(int x, int y)
{
    int a = (x & 0xff) + (y & 0xffffff00);
    return a;
}

int main()
{
    int x,y,_combine;
    printf("Input x,y:\n");
    scanf("%x%x",&x,&y);
    _combine = combine(x,y);
    printf("The combination is %x",_combine);
}

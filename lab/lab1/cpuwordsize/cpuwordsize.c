#include<stdio.h>

int cpuWordSize()
{
    int size;
    int a=1;
    int *p=&a;
    size = 8*sizeof(p);
    return size;
}

int main()
{
    int size;
    size = cpuWordSize();
    printf("CPU word size is %d bits\n",size);
    return 0;
}

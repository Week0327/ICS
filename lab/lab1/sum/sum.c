#include <stdio.h>
#define N 0
int sum(int a[],int len)
{
    int i,sum = 0;
    for (i = 0; i <= len-1; i++)
        sum += a[i];
    return sum;
}

int main()
{
    int a[N];
    int i,b;
    for(i = 0; i < N; i++)
    {
        a[i] = i+1;
    }
    b = sum(a,N);
    printf("sum = %d",b);
}

#include <stdio.h>

int cs_atoi(char* str)
{
    int x = 0;
    int y = 1;
    int i,j,p,q;
    for(j = 0;*str!= '\0';str++)
    {
        j++;
    }
    for(i = 0;i < j && *--str != '-';i++)
    {
        p = *str -'0';
        for(q = 0;q < i;q++)
        {
            y *= 10;
        }
        x = x + p*y;
        y = 1;
    }
    if(*str == '-')
    {
        x = -x;
    }
    return x;
}

int main()
{
    char str[99];
    int x;
    printf("Input a string:");
    scanf("%s",str);
    x = cs_atoi(str);
    printf("The integer is %d\n",x);
    return 0;
}

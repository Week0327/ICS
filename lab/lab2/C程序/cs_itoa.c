#include <stdio.h>


void cs_itoa(int i, char *string)
{
        if(i < 0)
        {
            *string++= '-';
            i = -i;
        }
        int power,j;
        j=i;
        for( power=1;j>10;j/=10)
                power*=10;

        for(;power>0;power/=10)
        {
                *string++='0'+i/power;
                i%=power;
        }
        *string='\0';
}

int main()
{
    int x;
    char str[99];
    printf("Input an integer:");
    scanf("%d",&x);
    cs_itoa(x,str);
    printf("The string is:%s\n",str);
}

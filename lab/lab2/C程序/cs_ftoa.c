#include <stdio.h>
void cs_itoa(int i, char *str);
void cs_ftoa(float f, char *str)
{
    int x = (int)f;
    cs_itoa(x,str);
    do
    {
        str++;
    }while(*str != '.');
    while(f - (float)x > 0.00000001)
    {
        f = (f - (float)x)*10;
        x = (int) f;
        *++str = x + '0';
    }
        *str = '\0';
}

int main()
{
    float f;
    printf("Input a float:");
    scanf("%f",&f);
    char str[99];
    cs_ftoa(f,str);
    printf("The string is:%s\n",str);
    return 0;
}

void cs_itoa(int i, char *str)
{
        if(i < 0)
        {
            *str++= '-';
            i = -i;
        }
        int power,j;
        j=i;
        for( power=1;j>10;j/=10)
                power*=10;
        for(;power>0;power/=10)
        {
                *str++='0'+i/power;
                i%=power;
        }
        *str++ = '.';
}

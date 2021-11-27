#include <stdio.h>

float cs_atof(char *str)
{
    int flag;
    int x = 0;
    if(*str == '-')
    {
        flag = 1;
        str++;
    }
    else flag = 0;
    do{
        x = 10*x + *str - '0';
    }while(*++str != '.' && *str != '\0');
    float f = (float)x;
    if(*str == '\0')
    {
        if(flag)
            f = -f;
        return f;
    }
    float pow = 0.1;
    str++;
    do{
        f += (*str-'0')*pow;
        pow *= 0.1;
    }while(*++str != '\0');
    if(flag)
        f = -f;
    return f;
}

int main()
{
    char str[100];
    float f;
    printf("Input a string:");
    scanf("%s",str);
    f = cs_atof(str);
    printf("The float is:%f",f);
}

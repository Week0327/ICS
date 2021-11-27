#include <stdio.h>
#include <string.h>

int show_and_count_bytes(unsigned char *s)
{
    int i;
    int t = 0;
    for(i = 0;i < strlen(s);i++)
    {
        //printf("%.2x ",s[i]);
        if(s[i] >= 0xc0 || s[i] < 0x80)
        {
            t++;
        }
    }
    return t;
}

int main()
{
    unsigned char s[50];
    printf("Please input a sentence:\n");
    scanf("%s",s);
    printf("Lenth in strlen is:%d\n",strlen(s));
    int t = show_and_count_bytes(s);
    printf("The real lenth is:%d\n",t);
}

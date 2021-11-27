#include <stdio.h>

int main()

{
    unsigned char f1[4] = {0x00,0x00,0x00,0x00};
    unsigned char f2[4] = {0x00,0x00,0x00,0x80};
    unsigned char f3[4] = {0x01,0x00,0x00,0x00};
    unsigned char f4[4] = {0xff,0xff,0x7f,0x7f};
    unsigned char f5[4] = {0x00,0x00,0x80,0x00};
    unsigned char f6[4] = {0x00,0x00,0x80,0x7f};
    unsigned char f7[4] = {0xff,0xff,0xff,0x7f};
    printf("+0 = %.100f\n",*(float*)f1);
    printf("     16进制为00000000\n");
    printf("-0 = %.100f\n",*(float*)f2);
    printf("     16进制为80000000\n");
    printf("最小浮点正数 = %.90f\n",*(float*)f3);
    printf("     16进制为00000001\n");
    printf("最大浮点正数 = %.50f\n",*(float*)f4);
    printf("     16进制为7f7fffff\n");
    printf("最小正的规格化浮点数 = %.80f\n",*(float*)f5);
    printf("     16进制为00800000\n");
    printf("正无穷大 = %.90f\n",*(float*)f6);
    printf("     16进制为7f800000\n");
    printf("Nan = %.90f\n",*(float*)f7);
    printf("     16进制为7fffffff\n");
}

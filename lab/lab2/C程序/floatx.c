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
    printf("     16����Ϊ00000000\n");
    printf("-0 = %.100f\n",*(float*)f2);
    printf("     16����Ϊ80000000\n");
    printf("��С�������� = %.90f\n",*(float*)f3);
    printf("     16����Ϊ00000001\n");
    printf("��󸡵����� = %.50f\n",*(float*)f4);
    printf("     16����Ϊ7f7fffff\n");
    printf("��С���Ĺ�񻯸����� = %.80f\n",*(float*)f5);
    printf("     16����Ϊ00800000\n");
    printf("������� = %.90f\n",*(float*)f6);
    printf("     16����Ϊ7f800000\n");
    printf("Nan = %.90f\n",*(float*)f7);
    printf("     16����Ϊ7fffffff\n");
}

 #include<stdio.h>
 #include<string.h>

 int Stu_Num = 1183200123;
 float f_Num = 12345.0;
 char cchar = 'c';
 const char *sstring = "祁天QiTian";
 int *p_int = &Stu_Num;
 int array_year[4] = {2,0,1,9};
 struct point
 {
     int x;
     char y[];
 };
 struct point love={520,"loveyou"};

 union tag
 {
     int ival;
     float fval;
 };
 union tag u = {233,2.33};

 enum response
 {
     no,yes,none
 };
 enum response answer;

 typedef unsigned char *byte_pointer;

 void show_bytes(byte_pointer start,size_t len)
 {
     size_t i;
     for (i = 0; i < len; i++)
         printf(" %.2x",start[i]);
     printf("\n");
 }

 void show_int(int x)
 {
     show_bytes((byte_pointer) &x,sizeof(int));
 }

 void show_float(float x)
 {
     show_bytes((byte_pointer) &x,sizeof(float));
 }
 void show_char(char x)
 {
     show_bytes((byte_pointer) &x,sizeof(char));
 }

 void show_pointer(void *x)
 {
     show_bytes((byte_pointer) &x,sizeof(void *));
 }

 void show_array(int a[],int n)
 {
     int i = 0;
     do
     {
         if(i == 0)
         {
             printf("a[%d]=%d\t\t%p(地址)\t",i,a[i],a);
         }
         else printf("\t\t\ta[%d]=%d\t\t%p\t",i,a[i],&a[i]);
         show_bytes((byte_pointer) &a[i],sizeof(int));
         i++;
     }while(i < n);
 }


int main()
{
    printf("类型\t变量名\t\t内容\t\t地址\t\t对应16进制的内存各字节 \n");
    printf("int\t");
    printf("Stu_Num\t\t%d\t%p\t",Stu_Num,&Stu_Num);
    show_int(Stu_Num);

    printf("float\t");
    printf("f_Num\t\t%f\t%p\t",f_Num,&f_Num);
    show_float(f_Num);

    printf("char\t");
    printf("cchar\t\t%c\t\t%p\t",cchar,&cchar);
    show_char(cchar);

    printf("指针\t");
    printf("p_int\t\t%p\t%p\t",p_int,&p_int);
    show_pointer(p_int);

    printf("数组\t");
    printf("array_year\t");
    show_array(array_year,4);

    printf("字符串\t");
    printf("sstring\t\t%s\t%p\t",sstring,sstring);
    show_bytes((byte_pointer) sstring, strlen(sstring));

    printf("结构体\t");
    printf("love\t\t%d\t\t%p(地址)\t",love.x,love);
    show_int(love.x);
    printf("\t\t\t%s\t\t%p\t",love.y,love.y);
    show_bytes((byte_pointer) love.y, strlen(love.y));

    printf("共用体\t");
    printf("u\t\t");
    printf("%d\t\t%p\t",u.ival,u);
    show_int(u.ival);

    printf("enum\t");
    answer = yes;
    printf("answer\t\t%d\t\t%p\t",answer,&answer);
    show_int(answer);

    printf("\n");
    printf("main函数的地址是:  %p\n",&main);
    printf("printf函数的地址是:  %p\n",&printf);
    return 0;
}



#include <stdio.h>

int fib_int_dg(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	return fib_int_dg(n - 1) + fib_int_dg(n - 2);
}

long fib_long_dg(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	return fib_long_dg(n - 1) + fib_long_dg(n - 2);
}

unsigned fib_unsigned_dg(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	return fib_unsigned_dg(n - 1) + fib_unsigned_dg(n - 2);
}

unsigned long fib_unsigned_long_dg(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	return fib_unsigned_long_dg(n - 1) + fib_unsigned_long_dg(n - 2);
}

int main()
{
    int n;
    printf("Input a number:");
    scanf("%d",&n);
    printf("int:%d\n",fib_int_dg(n));
    printf("long:%ld\n",fib_long_dg(n));
    printf("unsigned:%u\n",fib_unsigned_dg(n));
    printf("unsigned long:%lu\n",fib_unsigned_long_dg(n));
}

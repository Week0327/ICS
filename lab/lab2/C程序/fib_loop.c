#include <stdio.h>

int fib_int_loop(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	int f1 = 0;
	int f2 = 1;
	int c = 0;
	for (int i = 3; i <= n; i++)
	{
		c = f1 + f2;
		f1 = f2;
		f2 = c;
	}

	return c;
}

long fib_long_loop(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	long f1 = 0;
	long f2 = 1;
	long c = 0;
	for (int i = 3; i <= n; i++)
	{
		c = f1 + f2;
		f1 = f2;
		f2 = c;
	}

	return c;
}

unsigned fib_unsigned_loop(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	unsigned f1 = 0;
	unsigned f2 = 1;
	unsigned c = 0;
	for (int i = 3; i <= n; i++)
	{
		c = f1 + f2;
		f1 = f2;
		f2 = c;
	}

	return c;
}

unsigned long fib_unsigned_long_loop(int n)
{
	if (n == 1)
	{
		return 0;
	}
	if (n == 2)
	{
		return 1;
	}
	unsigned long f1 = 0;
	unsigned long f2 = 1;
	unsigned long c = 0;
	for (int i = 3; i <= n; i++)
	{
		c = f1 + f2;
		f1 = f2;
		f2 = c;
	}

	return c;
}

int main()
{
    int n;
    printf("Input a number:");
    scanf("%d",&n);
    printf("int:%d\n",fib_int_loop(n));
    printf("long:%ld\n",fib_long_loop(n));
    printf("unsigned:%u\n",fib_unsigned_loop(n));
    printf("unsigned long:%lu\n",fib_unsigned_long_loop(n));
}

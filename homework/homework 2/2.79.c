
int mul3div4(int x)
{
    x = (x << 1) + x;
	x = (x + ((1 << 2) - 1) * (x < 0)) >> 2;
	return x;
}

/*int main()
{
    int x,result;
    printf("Input x:");
    scanf("%d",&x);
    result = mul3div4(x);
    printf("%d",result);
}*/

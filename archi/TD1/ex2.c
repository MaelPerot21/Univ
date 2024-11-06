#include <stdio.h>

int Horner(int *ch, int k, int b)
{
	int result = 0;
	for (int i = 0; i < k; i++)
	{
		result *= b;
		result += ch[i];
	}
	return result;
}
	
int main(void)
{
	int ch[] = {0x1, 0xA, 0x3};
	printf("%d\n", Horner(ch, 3, 16));
	
	return 0;
}

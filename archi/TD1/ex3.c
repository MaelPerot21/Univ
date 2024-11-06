#include <stdio.h>

void afficherEnvers(int n)
{
	if (n > 0)
	{
		printf("%d", n % 2);
		afficherEnvers(n >> 1);
	}
}

int nBits(int n)
{
	if (n > 0)
		return 1 + nBits(n >> 1);
	return 0;
}

void afficherEnversDerniers(int n, int k)
{
	if (k > 0)
	{
		printf("%d", n % 2);
		afficherEnversDerniers(n >> 1, k - 1);
	}
}

void afficherEndroitDerniers(int n, int k)
{
	if (k > 0)
	{
		while (k)
		{
			printf("%d", (n & (1 << (k - 1))) != 0);
			k -= 1;
		}
	}
}

void afficherEndroit(int n)
{
	int k = 0;
	while (1 << k < n)
		k += 1;
		
	while (k)
	{
		printf("%d", (n & (1 << (k - 1))) != 0);
		k -= 1;
	}
}

int main(void)
{
	afficherEnvers(13);
	printf("\n");
	printf("%d\n", nBits(13));
	afficherEnversDerniers(13, 5);
	printf("\n");
	afficherEndroitDerniers(13, 5);
	printf("\n");
	afficherEndroit(13);
	
	return 0;
}

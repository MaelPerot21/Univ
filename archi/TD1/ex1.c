#include <stdio.h>

void AfficherDecomp(int n, int b)
{
    if (n > 0)
    {
        AfficherDecomp(n/b, b);
		printf("%d\n", n%b);
    }
}

void AfficherSymboles(int n, int b)
{
    if (n > 0)
    {
        AfficherSymboles(n/b, b);
        int toPrint = n%b;
        if (toPrint > 9)
			printf("%c\n", 'A' + toPrint - 10);
		else
			printf("%d\n", n%b);
    }
}

void AfficherModulo(int n, int b, int k)
{
	if (k > 0)
    {
		int b_pow = b + b;
		while (b_pow < n)
			b_pow += b;
		
		int toPrint = n%(b_pow - b);
		if (toPrint > 9)
			printf("%c\n", 'A' + toPrint - 10);
		else
			printf("%d\n", n%b);
		AfficherModulo((n - toPrint) / b, b, k - 1);
	}
}

int main(void)
{
    AfficherDecomp(419, 16);
    AfficherSymboles(419, 16);
    AfficherModulo(419, 16, 4);

    return 0;
}

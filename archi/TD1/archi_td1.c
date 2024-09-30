#include "stdio.h"

void AfficherDecomp(int n, int b)
{
  if (n >= b)
    AfficherDecomp(n/b, b);
  printf("%d", n%b);
}

void AfficherSymboles(int n, int b)
{
	if (n >= b)
		AfficherSymboles(n/b, b);

	int to_print = n%b;
	if (to_print > 9)
		putchar('A' + to_print - 10);
	else
		printf("%d", to_print);
}

int Power(int n, int p)
{
	if (p == 0)
		return 1;
	if (n % 2 == 0)
		return Power(n, p/2) * Power(n, p/2);
	return Power(n, p/2) * Power(n, p/2) * n;
}

void AfficherModulo(int n, int b, int k)
{
	if (n >= b)
		AfficherModulo(n/b, b, Power();
	
	if (n < b**)
	int to_print = n%b;
	if (to_print > 9)
		putchar('A' + to_print - 10);
	else
		printf("%d", to_print);

int main(void)
{
  AfficherSymboles(419, 16);
  return 0;
}

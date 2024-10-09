#include <ctype.h>
#include <stdio.h>

char Symbole(unsigned int v) {
	if (v < 10)
		return '0' + v;
	return 'A' + v - 10;
}

char symbole(unsigned int v) {
	if (v < 10)
		return '0' + v;
	return 'a' + v - 10;
}

int Valeur(char c) {
	if (isdigit(c))
		return c - '0';
	else if (isupper(c))
		return 10 + c - 'A';
	return 10 + c - 'a';
}
int main(void) {
	for (int i = 0; i < 16; i++) {
		printf("%d = %c et ", i, Symbole(i));
		printf("%d = %c\n", i, symbole(i));
	}
	
	printf("4 = %d\n", Valeur('4'));
	printf("d = %d\n", Valeur('d'));
	printf("E = %d\n", Valeur('E'));
	
	return 0;
}

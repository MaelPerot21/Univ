#include <stdio.h>

void Decrire(char *s) {
	if (!s)
		return;

	int i = 0;
	while (s[i] != '\0') {
		printf("0x%02X ", s[i]);
		i += 1;
	}
	
	printf("\"");
	printf(s);
	printf("\"");
}

int main(void) {
	Decrire("€");
	
	return 0;
}

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

unsigned int Codepoint(char *utf8) {
	unsigned char *s = (unsigned char *) utf8;
	if ((s[0] & 0x80) == 0)
		return s[0];
	if ((s[0] & 0xE0) == 0xC0)
		return (s[0] & ((1 << 5) - 1) << 6) | (s[1] & ((1 << 6) - 1));
	if ((s[0] & 0xF0) == 0xE0)
		return (s[0] & ((1 << 4) - 1) << 6)
		| (s[1] & ((1 << 6) - 1) << 6)
		| (s[2] & ((1 << 6) - 1));
	return -1;
}

void Serialiser(unsigned int u) {
	unsigned char s[5];
	if ((u >> 7) == 0)
	{ 
		s[0] = u;
		s[1] = '\0'; 
	}
	else if ((u >> 11) == 0)
	{
		s[0] = u >> 6;
		s[1] = u & ((1 >> 6) - 1);
		s[2] = '\0';
	}
	else if ((u >> 16) == 0)
	{
		s[0] = u >> 12;
		s[1] = (u >> 6) & ((1 >> 6) - 1);
		s[2] = u & ((1 >> 6) - 1);
		s[3] = '\0';
	}
	printf("%s", s);
}

int main(void) {
	Serialiser(Codepoint("€"));
	
	return 0;
}

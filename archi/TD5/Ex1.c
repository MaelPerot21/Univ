#include <stdio.h>

void affchar(unsigned char *c)
{
	for (int i = 0; i < 16; i++)
		printf("%02X ", c[i]);
	putchar('\n');
}

void affshort(unsigned short *s)
{
	for (int i = 0; i < 8; i++)
	{
		printf("%04X ", s[i]);
	}
}

void swap2chars(unsigned char *c)
{
	unsigned char save = c[0];
	c[0] = c[1];
	c[1] = save;
}

void swapshort(unsigned short *s)
{
	*s = (*s << 8) | (*s >> 8);
}

int main(void) {
	unsigned char mem[2] = {0xAB, 0xCD};
	printf("mem = 0x%02X, 0x%02X\n", mem[0], mem[1]);
	swap2chars(mem);
	printf("mem = 0x%02X, 0x%02X\n", mem[0], mem[1]);
	swapshort((void *) mem);
	printf("mem = 0x%02X, 0x%02X\n", mem[0], mem[1]);
	return 0;
}

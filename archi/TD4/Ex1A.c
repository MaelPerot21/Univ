#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>

bool isCntrl(char c) {
	if ((c >= 0x20) && (c < 0x7F))
		return false;
	return true;
}

bool isUpper(char c) {
	if ((c >= 'A') && (c <= 'Z'))
		return true;
	return false;
}

bool isLower(char c) {
	if ((c >= 'a') && (c <= 'z'))
		return true;
	return false;
}

bool isAlpha(char c) {
	if (isLower(c) || isUpper(c))
		return true;
	return false;
}

bool isDigit(char c) {
	if ((c >= '0') && (c <= '9'))
		return true;
	return false;
}

bool isXDigit(char c) {
	if (((c >= '0') && (c <= '9')) || ((c >= 'a') && (c <= 'f')) || ((c >= 'A') && (c <= 'F')))
		return true;
	return false;
}

bool isAlnum(char c) {
	if (isAlpha(c) || isDigit(c))
		return true;
	return false;
}

char toUpper(char c) {
	if (isLower(c))
		c = 'A' + c - 'a';
	return c;
}

char toLower(char c) {
	if (isUpper(c))
		c = 'a' + c - 'A';
	return c;
}

void tester () {
	for (int c = 0; c <= 0x7F; c++) {
		int ref = tolower(c);
		int test = toLower(c);
		if (!!ref != !!test)
			printf("Erreur pour %c\n", c);
	}
}

int main(void) {
	tester();
	
	return 0;
}

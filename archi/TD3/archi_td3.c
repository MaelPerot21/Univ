#include <assert.h>
#include <math.h>
#include <stdio.h>

void testQ1A () {
	int i = 999999900; // 1 000 000 000 - 100
	float f = i;
	printf("i=%d f=%.9g\n", i, f);
}
void testQ1B () {
	float f = 2.25;
	int i = f;
	printf("f=%.9g i=%d\n", f, i);
}

static inline unsigned int bits (float f) {
	union {unsigned int u; float f;} x;
	x.f = f;
	return x.u;
}

void visualiser(float f) {
	unsigned int u = bits(f);
	printf("%08X ",u);
	for (int i = 31; i >= 0; i--) {
		printf("%d", (u>>i)&1);
		if (i&8 == 7)
			printf(" ");
	}
	printf(" %16a %15.9g\n", f, f);
}

void ResoudreKO (double a, double b, double c, double *x) {
	double delta = b*b - 4*a*c;
	
	x[0] = (-b - sqrt(delta)) / 2 * a;
	x[1] = (-b + sqrt(delta)) / 2 * a;
}

void ResoudreOK (double a, double b, double c, double *x) {
	double delta = b*b - 4*a*c;
	
	if (!delta) {
		x[0] = -b / (2*a);
		x[1] = x[0];
	}
	else if (b > 0) {
		x[0] = (-b - sqrt(delta)) / 2 * a;
		x[1] = c / (a * x[0]);
	}
	else {
		x[1] = (-b + sqrt(delta)) / 2 * a;
		x[0] = c / (a * x[1]);
	}		
}

int main(void) {
	printf("test Q4");
	
	double M = 1;
	double s1 = 1/(M*M);
	double s2 = M;
	
	double x[2] = {0, 0};
	
	for (; M < 1000000; M += 1000) {
		s1 = 1/(M*M);
		s2 = M;
		ResoudreOK(1, -s1-s2, s1*s2, x);
		printf("s1 = %20.15g, s2 = %20.15g\n", s1, s2);
		printf("x0 = %20.15g, x1 = %20.15g\n\n", x[0], x[1]);
	}
	
	printf("test Q1"); 
	
	testQ1A();
	testQ1B();
	
	visualiser(M_PI);
	
	return 0;
}

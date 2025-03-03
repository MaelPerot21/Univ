#include <stdio.h>
#include <stdlib.h>

#define N 4

int fib(int k) {
    if(!k)
        return 0;
    if(k == 1)
        return 1;

    int fn1 = 1;
    int fn2 = 0;
    for (int i = 2; i < k; i++) {
        int temp = fn1;
        fn1 = fn1 + fn2;
        fn2 = temp;
    }

    return fn1 + fn2;
}

int fibWhile(int k) {
    if(!k)
        return 0;
    if(k == 1)
        return 1;

    int fn1 = 1;
    int fn2 = 0;
    int i = 2;
    while (i < k) {
        int temp = fn1;
        fn1 = fn1 + fn2;
        fn2 = temp;
        i++;
    }

    return fn1 + fn2;
}

int nArrayAvg(int *array) {
    int total = 0;
    for (int i = 0; i < N; i++)
        total += array[i];

    return total / 4;
}

int myStrLen(char *s) {
    int i = 0;
    while (s[i] != '\0') {
        i++;
    }
    return i;
}

void firstElemLen(int argc, char *argv[]) {
    if (argc > 1)
        printf("%d", myStrLen(argv[1]));
}

void allElemLen(int argc, char *argv[]) {
    for (int i = 1; i < argc; i++) {
        printf("%s %d\n", argv[i], myStrLen(argv[i]));
    }
}

void isFirstSymetric(int argc, char *argv[]) {
    if (argc == 1)
        printf("Ce n'est pas un palindrome");

    else {
        int n = myStrLen(argv[1]);
        for (int i = 0; i < n / 2; i++) {
            if (argv[1][i] != argv[1][n - 1 - i]) {
                printf("Ce n'est pas un palindrome");
                return;
            }
        }
        printf("C'est un palindrome");
    }
}

void isInAlphabeticOrder(int argc, char *argv[]) {
    if (argc == 1)
        printf("C'est dans l'ordre alphabetique");

    else {
        int i = 0;
        char crtChar = 0;
        while (argv[1][i] != '\0') {
            if (argv[1][i] >= crtChar)
                crtChar = argv[1][i++];
            else {
                printf("Ce n'est pas dans l'ordre alphabetique");
                return;
            }
        }
        printf("C'est dans l'ordre alphabetique");
    }
}

void hasUnderString(int argc, char *argv[]) {
    if (argc == 1)
        return;

    int n = myStrLen(argv[1]);
    char *toTest = malloc((n / 2 + 1) * sizeof(char));
    int underLength = n / 2;
    while (underLength > 0) {
        if (n % underLength == 0) {
            for (int i = 0; i < underLength; i++) {
                toTest[i] = argv[1][i];
            }
            toTest[underLength] = '\0';

            for (int j = 1; j < n / underLength; j++) {
                for (int k = 0; k < underLength; k++) {
                    if (toTest[k] == argv[1][j * underLength + k])
                        if ((k == underLength - 1) && (j == n / underLength - 1)) {
                            printf("%s is repeated %d times", toTest, n / underLength);
                            free(toTest);
                            return;
                        }
                }
            }
        }

        underLength--;
    }

    free(toTest);
    printf("No repetition");
}

int main(int argc, char *argv[])
{
    hasUnderString(argc, argv);
    return 0;
}

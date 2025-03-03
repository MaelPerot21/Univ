#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int sumPart(int i) {
    int total = 0;
    for (int k = 100 * i + 1; k < 100 * (i + 1); k++)
        total += k;
    return total;
}

int main(void)
{
    int sum = 0;
    for (int i = 0; i < 10; i++) {
        int pid = fork();
        if (pid == 0) {
            sum += sumPart(i);
            printf("%d\n", sum);
            exit(0);
        }
    }

    return 0;
}

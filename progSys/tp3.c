#include <signal.h>
#include <stdio.h>
#include <unistd.h>

int total;

void getSum() {
    printf("%d", total);
}

void getNumbers() {
    int num;
    while(1) {
        scanf("Entrez un nombre : %d", &num);
        total += num;
    }
}

int main() {
    struct sigaction sum;

    sigemptyset(&(sum.sa_mask));
    sum.sa_handler = getSum();
    sum.sa_flags = 0;

    sigaction(SIGINT, &sum, NULL);

    getNumbers();
}

#include <stdio.h>
#include <pthread.h>

const int nb_thread = 10;

void *calculer(void *p) {
    long i = (long) p;

    int borne1 = 1+i*100;
    int borne2 = (i+1)*100;

    int somme = 0;
    for (int j=borne1; j <= borne2; j++) {
        somme = somme + j;
    }
    printf("La somme de %d a %d est %d\n", borne1, borne2, somme);
}

int main() {
    for (long i = 0; i < nb_threads; i++) {
        pthread_t tid;
        pthread_create(&tid, NULL, calculer, (void *) i);
    }
}
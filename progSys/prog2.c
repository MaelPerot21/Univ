#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char * argv[]) {
    if (argc==2) {
        printf("%s [debut]\n", argv[1]);
        srand(getpid());
        int r = rand() % (1000*1000*1000);
        struct timespec attente = {0, r};
        nanosleep(&attente, NULL);
        printf("%s [fin]\n", argv[1]);
    }
}

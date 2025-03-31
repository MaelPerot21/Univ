#define _XOPEN_SOURCE

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

void stdoutStat()
{
    struct stat stats;
    fstat(0, &stats);

    switch (stats.st_mode & S_IFMT) {
    case S_IFREG:
        printf("regular file\n");
        break;
    case S_IFCHR:
        printf("character device\n");
        break;
    case S_IFIFO:
        printf("FIFO/pipe\n");
        break;
    default:
        printf("unknown?\n");
        break;
    }
}

void dirSizeFromRelativePath(char *file) {
    int tube[2];
    pipe(tube);

    int fils1 = fork();
    if (!fils1)
    {
        dup2(1, tube[1]);
        execlp("du", "du", "-BK", file, NULL);
    }

    int fils2 = fork();
    if (!fils2)
    {
        dup2(tube[0], 0);
        execlp("sort", "sort", "-h", NULL);
    }
}

void thousandSumWithPipe() {
    int total = 0;
    for (int i = 0; i < 10; i++) {
        int tube[10][2];
        pipe(tube[i]);
        dup2(0, tube[i][0]);

        int fils = fork();
        if (!fils) {
            dup2(1, tube[i][1]);
            int sum = total;
            for (int k = i * 100; k < i * 100 + 100; k++) {
                sum += k;
            }
            write(tube[i][1], &sum, sizeof(sum));
            exit(0);
        }

        read(tube[i][1], &total, 4);
    }
    printf("total : %d\n", total);
}

int main(void)
{
    thousandSumWithPipe();
    return 0;
}

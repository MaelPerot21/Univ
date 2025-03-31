#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
    int fd = open("fic1", O_CREAT | O_WRONLY, 00640);
    if (fd == -1)
    {
        perror("");
        return 0;
    }

    char *toWrite = malloc(257 * sizeof(char));
    for(int k = 0; k < 256; k++) {
        toWrite[k] = k;
    }
    toWrite[256] = '\0';

    int written = write(fd, toWrite, 256);
    free(toWrite);

    if (written != 256) {
        printf("The file haven't been written completely");
    }

    close(fd);
    return 0;
}

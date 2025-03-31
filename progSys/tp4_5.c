#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if (argc == 2)
    {
        int fd = open(argv[1], O_RDONLY);
        if (fd == -1)
        {
            perror("");
            return 0;
        }

        unsigned char *toPrint = malloc(2 * sizeof(char));
        toPrint[1] = '\0';
        while (read(fd, toPrint, 1))
            printf("%02x ", toPrint[0]);

        close(fd);
    }
    return 0;
}

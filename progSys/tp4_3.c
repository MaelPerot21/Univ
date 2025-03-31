#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if (argc == 3)
    {
        int fd = open(argv[1], O_WRONLY | O_APPEND, 00644);
        if (fd == -1)
        {
            perror("");
            return 0;
        }

        int writeLen = strlen(argv[2]);

        int written = write(fd, argv[2], writeLen);

        if (written != writeLen) {
            printf("The file haven't been written completely");
        }

        close(fd);
    }
    return 0;
}

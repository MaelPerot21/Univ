#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if (argc == 3)
    {
        int fd = open(argv[1], O_CREAT | O_WRONLY | O_EXCL, 00644);
        if (errno == EEXIST)
        {
            printf("The file already exists\n");
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

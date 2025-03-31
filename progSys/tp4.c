#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if (argc == 3)
    {
        int fd = open(argv[1], O_CREAT | O_WRONLY | O_APPEND, 00644);
        int writeLen = strlen(argv[2]);

        int written = write(fd, argv[2], writeLen);

        if (written != writeLen) {
            printf("The file haven't been written completely");
        }

        close(fd);
    }
    return 0;
}

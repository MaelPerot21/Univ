#include <signal.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main(int argc, char* argv[])
{
    if (argc == 3) {
        int pid1 = fork();
        int pid2;

        if (pid1 == 0) {
            int retVal1 = execl("/home/22113572t/Documents/Univ/progSys/prog2",
                                "prog2", argv[1]);
            if (retVal1 == -1) {
                perror("Le premier lancement a echoue ");
            }

            /* printf("Le processus %d est termine, lance avec : %s", getpid(), */
            /*        argv[1]); */
            /* int kill(pid2, SIGINT); */
        }

        else {
            pid2 = fork();

            if (pid2 == 0) {
                int retVal2 = execl("/home/22113572t/Documents/Univ/progSys/prog2",
                                    "prog2", argv[2]);
                if (retVal2 == -1) {
                    perror("Le deuxieme lancement a echoue ");
                }

                /* printf("Le processus %d est termine, lance avec : %s", getpid(), */
                /*        argv[2]); */
                /* int kill(pid1, SIGINT); */
            }
        }
    }
    return 0;
}

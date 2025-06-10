#include <stdio.h>
#include <unistd.h>

void main()
{
    int pid1, pid2;

    pid1 = fork();
    if (pid1 == 0)
    {
        printf("\nI am child process 1; my id is %d and parent id is %d", getpid(), getppid());
        sleep(1);
    }
    else
    {
        pid2 = fork();
        if (pid2 == 0)
        {
            printf("\nI am child process 2; my id is %d and parent id is %d", getpid(), getppid());
            sleep(1);
        }
        else
        {
            printf("\nI am parent; my id is %d and my child ids are %d and %d", getpid(), pid1, pid2);
            sleep(1);
        }
    }
}

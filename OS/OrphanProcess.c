#include <stdio.h>
#include <unistd.h>
void main()
{
    int pid = 0;
    pid = fork();
    if (pid > 0)
    {
        printf("I'm parent: my id is %d and my child id is %d", getpid(), pid);
        sleep(1);
    }
    else
    {
        printf("I'm torn child my child id is %d and my parent id is %d", getpid(), getppid());
        sleep(3);
        printf("I'm torn child: my id is %d and my parent id is %d", getpid(), getppid());
    }
}
#include <stdio.h>
#include <unistd.h>

void main()
{
    int pid = 0;
    pid = fork();

    if(pid > 0)
    {
        printf("\n I am parent: my id is %d and my child is %d", getpid(), pid);
        sleep(1);
    }
    else
    {
        printf("I am child: my id is %d and my parent is %d\n", getpid(), getppid());
        sleep(1);
    }
}

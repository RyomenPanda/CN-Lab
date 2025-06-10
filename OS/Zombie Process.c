#include <stdio.h>
#include <unistd.h>

void main() {
    int pid = 0;
    pid = fork();

    if (pid > 0) {
        printf("I'm am parent process: my id is %d and my child id is %d.\n", getpid(), pid);
        system("ps");
        sleep(3);
        system("ps");
    } else {
        printf("I'm am child process: my id is %d.\n", getpid());
        sleep(1);
    }
}
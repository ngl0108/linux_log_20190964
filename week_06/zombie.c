#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main() {
    pid_t childPid = fork();
    if(childPid > 0) {
        printf("Parent PID: %ld, Child PID: %d\n", (long)getpid(), childPid);
        sleep(30);
        printf("Parent process is exiting.\n");
        exit(0);
    } else if(childPid == 0) {
        printf("Child process is exiting.\n");
        exit(0);
    } else {
        perror("fork Fail! \n");
        return -1;
    }
    return 0;
}

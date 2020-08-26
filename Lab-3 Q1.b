 
#include <stdlib.h> 
#include <sys/types.h> 
#include <unistd.h> 

#include<stdio.h>

/*A Zombie process or defunct process is a process
that has completed execution 
but still has an entry in the process table.
Write a C program to create a zombie process.*/

main()
{
    int id;
    id=fork();

    if(id>0)
    {   printf("Parent id: %d\n",getpid());
        printf("Parent will sleep\n");
        sleep(10);
        printf("Parent wake up\n");
    }
    if(id==0){
        printf("I am child\n");
        printf("Child id: %d\n",getpid());
        exit(0);
    }
}

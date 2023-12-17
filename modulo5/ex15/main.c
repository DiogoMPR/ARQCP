#include <stdio.h>
#include <stdlib.h>
#include "ex15.h"

int main() {

    stack* s = stack_create(1); 

    stack_push(s, 10);
    stack_push(s, 20);
    stack_push(s, 30);

    printf("\nPopping the stack...\n\n");
    printf("Pop n1 -> %ld\n", stack_pop(s)); 
    printf("Pop n2 -> %ld\n", stack_pop(s)); 
    printf("Pop n3 -> %ld\n\n", stack_pop(s)); 


    stack_destroy(s);
	
    return 0;
}

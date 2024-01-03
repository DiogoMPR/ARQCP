#include <stdio.h>
#include "asm.h"

#define ARRAY_LENGHT 5


int main() {
    int array[ARRAY_LENGHT];
    int read = 0; 
	int write = 0; 

    enqueue_value(array, ARRAY_LENGHT, &read, &write, 10);
    enqueue_value(array, ARRAY_LENGHT, &read, &write, 20);
	enqueue_value(array, ARRAY_LENGHT, &read, &write, 30);
    enqueue_value(array, ARRAY_LENGHT, &read, &write, 40);
    enqueue_value(array, ARRAY_LENGHT, &read, &write, 50);
	enqueue_value(array, ARRAY_LENGHT, &read, &write, 60);
   
    printf("Circular buffer contents: ");
    for (int i = 0; i < ARRAY_LENGHT; i++) {
        printf("%d ", array[i]);
    }
    
    return 0;
}

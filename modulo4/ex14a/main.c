# include <stdio.h>
# include "asm.h"

int main() {
   
    long number = 10;
    char position = 2; 

    int result = set_bit(&number, position);

    if (result == 1) {
        printf("Bit at position %d was altered. New number: %ld\n", position, number);
    } else if (result == 0) {
        printf("Bit at position %d was already 1. Number remains unchanged: %ld\n", position, number);
    } else {
        printf("Error occurred.\n");
    }

    return 0;
}

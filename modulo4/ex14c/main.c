# include <stdio.h>
# include "asm.h"

int main() {
    long number = 10;
    int position = 2; 

    printf("Original number: %ld\n", number);

    int result_set_bit = set_bit(&number, position);

    if (result_set_bit == 1) {
        printf("Bit at position %d was altered. New number: %ld\n", position, number);
    } else if (result_set_bit == 0) {
        printf("Bit at position %d was already 1. Number remains unchanged: %ld\n", position, number);
    } else {
        printf("Error occurred in set_bit function.\n");
        return 1; 
    }

    set_2bits(&number, position);

    printf("Number after set_2bits: %ld\n", number);

    return 0;
}

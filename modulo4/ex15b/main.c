#include <stdio.h>

#include "activate_bits.h"

int main() {
    printf("0x%X\n", activate_bits(0, 2, 1));
    printf("0x%X\n", activate_bits(0, 1, 2));
    printf("0x%X\n", activate_bits(0, 0, 0));
    printf("0x%X\n", activate_bits(0, 2, 1)); 
    return 0;
}

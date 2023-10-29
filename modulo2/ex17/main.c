#include <stdio.h>
#include "asm.h"

int main() {
    number1 = 10;
    number2 = 3;
    res = 0; 

    sum();
    printf("Sum: %d\n", res);

    subtraction();
    printf("Subtraction: %d\n", res);

    multiplication();
    printf("Multiplication: %d\n", res);

    division();
    printf("Division: %d\n", res);

    modulus();
    printf("Modulus: %d\n", res);

    power2();
    printf("Power of 2: %d\n", res);

    power3();
    printf("Power of 3: %d\n", res);

    return 0;
}


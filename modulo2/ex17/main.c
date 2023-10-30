#include <stdio.h>
#include "asm.h"

int number1 = 0;
int number2 = 0;
int res = 0; 

int main() {

	printf("Number 1:");
	scanf("%d", &number1);

	printf("NUmber 2:");
	scanf("%d", &number2);

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


#include <stdio.h>
#include "asm.h"

int main() {
    int a, b, result;

    printf("Enter two integers: ");
    scanf("%d %d", &a, &b);

    result = add(a, b);
    printf("Sum: %d\n", result);

    result = subtract(a, b);
    printf("Subtraction: %d\n", result);

    result = multiply(a, b);
    printf("Multiplication: %d\n", result);

    result = divide(a, b);
    printf("Division: %d\n", result);

    result = modulus(a, b);
    printf("Modulus: %d\n", result);

    result = power_of_2(a);
    printf("2^a: %d\n", result);

    result = power_of_3(a);
    printf("3^a: %d\n", result);

    return 0;
}

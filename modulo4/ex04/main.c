# include <stdio.h>
# include "asm.h"

int main() {
    int num1 = 10;
    int num2 = 5;
    int result_sum, result_sub;

    result_sum = sum_sub(num1, num2, &result_sub);

    printf("Sum: %d\n", result_sum);
    printf("Subtraction: %d\n", result_sub);

    return 0;
}

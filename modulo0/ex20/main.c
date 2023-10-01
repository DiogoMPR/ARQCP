#include <stdio.h>
#include "check_lower_triangular_matrix.h"
#include "sum_lower_triangular_matrix.h"

int main() {
    int mat[][5] = {
        {1, 0, 0, 0, 0},
        {2, 3, 0, 0, 0},
        {4, 5, 6, 0, 0},
        {7, 8, 9, 10, 0},
        {11, 12, 13, 14, 15}
    };

    int lin = 5;

    if (check_lower_triangular_matrix(mat, lin, 5)) {
        int result = sum_lower_triangular_matrix(mat, lin);
        printf("Sum of lower triangular matrix: %d\n", result);
    } else {
        printf("It's not a lower triangular matrix.\n");
    }

    return 0;
}

#include "check_lower_triangular_matrix.h"

int sum_lower_triangular_matrix(int mat[][5], int lin) {
    int sum = 0;
    
    if (check_lower_triangular_matrix(mat, lin, 5)) {
        for (int i = 0; i < lin; i++) {
            for (int j = 0; j <= i; j++) {
                sum += mat[i][j]; // Sum of elements in the lower triangular part.
            }
        }
        return sum;
    }
    
    return -1;
}

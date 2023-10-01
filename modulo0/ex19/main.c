/*
 * Implement the function int sum_matrix_values(int mat[5][3]) that receives a
 * matrix of positive integers, mat, and returns the sum of its elements
 */

#include <stdio.h>
#include "sum_matrix.h"

int main(){
	 int mat[5][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
        {10, 11, 12},
        {13, 14, 15}
    };

    int result = sum_matrix(mat);
    printf("Sum of matrix values: %d\n", result);
	return 0;
}

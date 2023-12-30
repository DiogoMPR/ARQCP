#include <stdio.h>
#include <stdlib.h>
#include "ex13.h"

int main(void) {

	int y = 3;
	int k = 2;
	short** matrix = new_matrix(y, k);

	printf("\nMatrix:\n");
	for (int i = 0; i < y; i++) {
		for (int j = 0; j < k; j++) {
			*(*(matrix + i) + j) = random() % 50; 
			printf("%d ", *(*(matrix + i) + j));
		}
		printf("\n");
	}

	int numberOfOddNumbers = count_odd_matrix(matrix, y, k);

	printf("The number of odd numbers in the matrix is %d.\n", numberOfOddNumbers);
	
	for (int j = 0; j < y; j++) {
		free(*(matrix + j));
	}
	free(matrix);

	return 0;
}

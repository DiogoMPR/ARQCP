# include "asm.h"

short **add_matrixes(short **a, short **b, int y, int k){
	
	short **result_matrix = new_matrix(y, k);
	
	for(int i = 0; i < y; i++){
		for(int j = 0; j < k; j++){
			result_matrix[i][j] = a[i][j] + b[i][j];
		}
	}
	
	return result_matrix;
}

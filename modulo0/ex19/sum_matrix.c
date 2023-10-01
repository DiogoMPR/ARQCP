#include "sum.h"

int sum_matrix(int mat[5][3]){
	int sumM = 0;
	for(int i = 0; i<5; i++){
		for(int j = 0; j<3 ; j++){
			sumM = sum(sumM, mat[i][j]);
		}
	}
	return sumM;
}


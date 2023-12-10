#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main (){
    int y = 3;
    int k = 4;
    int **a = new_matrix(y, k);
    int **b = new_matrix(y, k);

    for(int i = 0; i < y; i++){
        for(int j = 0; j < k; j++){
            *(*(a+i)+j) = random() % 50;
            *(*(b+i)+j) = random() % 50;
        }
    }   

    int **result_matrix = add_matrixes(a, b, y, k);

    for(int i = 0; i < y; i++){
        for(int j = 0; j < k; j++){
            printf("%d ", *(*(result_matrix+i)+j));
        }
        printf("\n");
    }

    for(int k=0; k<y; k++){
        free(*(a+k));
        free(*(b+k));
        free(*(result_matrix+k));
    }
    free(a);
    free(b);
    free(result_matrix);

    return 0;
}

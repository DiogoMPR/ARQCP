#include <stdio.h>
#include <stdlib.h>
#include "asm.h"

int main(){

	int num = 12;
    int y = 4;
    int k = 3;
    int **m = new_matrix(y, k);

    printf("\nMatrix:\n");
    
    for(int i = 0; i < y; i++){
        for(int j = 0; j < k; j++){
            *(*(m+i)+j) = random() % 30; // Fill all positions of the array with a random number between 0 and 29
            printf("%d ", *(*(m+i)+j));
        }
        printf("\n");
    }
    
    if(find_matrix(m, y, k, num) == 1){
        printf("\nNumber %d Found!\n", num);
    }    
    else{
        printf("\nNumber %d not found!\n", num);
    }

    for(int j= 0; j < y; j++){
        free(*(m+j));
    }
    free(m);
    return 0;
}

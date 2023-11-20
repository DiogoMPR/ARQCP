#include <stdio.h>
#include "asm.h"

int array[] = {1,1,1,1,2};

int num = 5;
int *ptr = array;

int main(){

    array_sort(ptr, num);

    for(int i = 0; i < num; i++){
        printf("%d ", array[i]);
    }
    printf("\n");

    return 0;
}

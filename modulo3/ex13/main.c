#include <stdio.h>
#include "asm.h"

int  array[] = {1000,10000,20000,-1000,-5000};
int num = 5;
int *ptr = array;

int main(){

    keep_positives(ptr, num);

    for(int i = 0; i < num; i++){
        printf("%d ", array[i]);
    }
    printf("\n");

    return 0;
}

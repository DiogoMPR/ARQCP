#include <stdio.h>
#include "asm.h"

int num = 5;
int vec1[] = {3, 7, 2, -12, 4};

int* vec = vec1;

int main(void) {

    sort_array(vec, num);

    printf("Sorted Array: ");
    for (int i = 0; i < num; i++) {
        printf("%d ", vec[i]);
    }

    return 0;
}
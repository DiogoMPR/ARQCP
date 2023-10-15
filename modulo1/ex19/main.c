#include <stdio.h>
#include "swap.h"

int main(){
	short vec1[] = {1, 2, 3, 4, 5};
    short vec2[] = {6, 7, 8, 9, 10};
    int size = sizeof(vec1) / sizeof(vec1[0]);

    printf("Original arrays:\n");
    printf("vec1: ");
    for (int i = 0; i < size; i++) {
        printf("%d, ", *(vec1 + i));
    }
    printf("\n");

    printf("vec2: ");
    for (int i = 0; i < size; i++) {
        printf("%d, ", *(vec2 + i));
    }
    printf("\n");

    swap(vec1, vec2, size);
    printf("Swapped arrays:\n");
    printf("vec1: ");
    for (int i = 0; i < size; i++) {
        printf("%d, ", *(vec1 + i));
    }
    printf("\n");

    printf("vec2: ");
    for (int i = 0; i < size; i++) {
        printf("%d, ", *(vec2 + i));
    }
    printf("\n");

    return 0;
}

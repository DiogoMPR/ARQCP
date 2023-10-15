#include <stdio.h>
#include "array_sort.h"

void array_sort(int *vec, int n) {
int swapped;
    do {
        swapped = 0;
        for (int i = 1; i < n; i++) {
            if (vec[i - 1] > vec[i]) {
                // Trocar elementos se estiverem fora de ordem
                int temp = vec[i - 1];
                vec[i - 1] = vec[i];
                vec[i] = temp;
                swapped = 1;
            }
        }
    } while (swapped);
}

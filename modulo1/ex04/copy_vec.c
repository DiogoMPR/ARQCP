#include <stdio.h>
#include "copy_vec.h"

void copy_vec(int *vec1, int n, int *vec2){
for (int i = 0; i < n; i++) {
        *(vec2 + i) = *(vec1 + i);
    } 
}

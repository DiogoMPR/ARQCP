#include <stdio.h>

#include "add_byte.h"

void print_vec(int *vec) {
    for (int i = 1; i < vec[0] + 1; i++) {
        printf("[%d]=0x%X  ", i, vec[i]);
    }
    printf("\n");
}

int main() {
    int vec1[] = {4, 1, 2, 3, 4};
    int vec2[100];
    
    add_byte(0x01, vec1, vec2);
    print_vec(vec2);
    
    add_byte(0xFF, vec1, vec2);
    print_vec(vec2);
    
    add_byte(0x0, vec1, vec2);
    print_vec(vec2);
    
    return 0;
}

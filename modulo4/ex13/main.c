#include <stdio.h>
#include "rotate.h"

int main() {
    printf("----- rotate_left -----\n");
    printf("0x%X 1 -> 0x%X\n", 1, rotate_left(1, 1));
    printf("0x%X 2 -> 0x%X\n", 1, rotate_left(1, 2));
    printf("0x%X 20 -> 0x%X\n", 1, rotate_left(-1, 20));
    printf("0x%X 1 -> 0x%X\n", 1, rotate_left(-1, 1));
    printf("----- rotate_right -----\n");
    printf("0x%X 1 -> 0x%X\n", 1, rotate_right(1, 1));
    printf("0x%X 2 -> 0x%X\n", 1, rotate_right(1, 2));
    printf("0x%X 20 -> 0x%X\n", 1, rotate_right(-1, 20));
    printf("0x%X 1 -> 0x%X\n", 1, rotate_right(-1, 1));

    return 0;
}

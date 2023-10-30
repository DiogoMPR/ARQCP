#include <stdio.h>
#include "asm.h"

int main() {
	int num=-5;

    int result = check_num();

    switch (result) {
        case 1:
            printf("num is an even negative number\n");
            break;
        case 2:
            printf("num is an odd negative number\n");
            break;
        case 3:
            printf("num is even positive number\n");
            break;
        case 4:
            printf("num is odd positive number\n");
            break;
        default:
            printf("Invalid result\n");
    }

    return 0;
}

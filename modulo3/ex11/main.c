#include <stdio.h>
#include "asm.h"

int  vec[] = {11, 11, 9, -2, 15};
int num = 5;
int *ptr;

int main(){
    ptr = vec;
    int result = vec_greater12(ptr, num);

    printf("Result = %d\n", result);

    return 0;
}

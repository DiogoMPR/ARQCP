#include <stdio.h>
#include "asm.h"

long  array[] = {0x10000,0x22222,0x33333,0x44444};
int num = 4;
long *ptr = array;

int main(){

    int sum = sum_third_byte(ptr, num);

    printf("Sum = %d\n", sum);

    return 0;
}

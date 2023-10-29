#include <stdio.h>
#include "asm.h"

short C = 0;
int A = 0;
char B = 0;
short D = 0;
int main(void) {
    printf("Valor C:");
    scanf("%d", &C);

    printf("Valor A:");
    scanf("%d", &A); 

    printf("Valor B:");
    scanf(" %c", &B); 

    printf("Valor D:");
    scanf("%d", &D);

	sum_and_subtract();
    printf("Resultado = %lld:0x%llx\n", sum_and_subtract, sum_and_subtract); 

    return 0;
}

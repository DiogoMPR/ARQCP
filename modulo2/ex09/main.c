#include <stdio.h>
#include "asm.h"

char C = 0;
long A = 0;
short B = 0;
char D = 0;
int main(void) {

	printf("Valor de C:");
		scanf("%s",&C);	

	printf("Valor de A:");
		scanf("%ld",&A);
		
	printf("Valor de D:");
		scanf("%s",&D);	

	printf("Valor de B:");
		scanf("%hd",&B);

	long long resultado = sum_and_subtract();
	printf("Result = %lld\n", resultado);

    return 0;
}

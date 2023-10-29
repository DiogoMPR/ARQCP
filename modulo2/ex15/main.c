#include <stdio.h>
#include "asm.h"

int A;
int B;
int C;
int D;

int main(void){
	
printf("Valor de A:");
    scanf("%d", &A);

    printf("Valor de B:");
    scanf("%d", &B); 

    printf("Valor de C:");
    scanf(" %d", &C); 

    printf("Valor de D:");
    scanf(" %d", &D); 

	int result = compute();
    printf("Result = %d\n", result);


	return 0;
	}

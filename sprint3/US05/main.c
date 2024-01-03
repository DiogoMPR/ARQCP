#include <stdio.h>
#include "asm.h"

int num = 7;
int vec1[] = {1, 2, 3, 4, 5, 6, 7};

int *vec = vec1;

int main(void){

	int mediana1 = mediana(vec, num);
	printf("A mediana do array é: %d", mediana1);

}
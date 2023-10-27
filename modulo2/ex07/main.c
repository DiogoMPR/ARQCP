#include <stdio.h>
#include "asm.h"

short s1=0, s2=0;
int main(void){

	printf("Valor s1:");
	scanf("%hd",&s1);

	printf("Valor s2:");
	scanf("%hd",&s2);

	printf("Resto = %hd:0x%hx\n", crossSubBytes(), crossSubBytes());

	return 0;
}

#include <stdio.h>
#include "asm.h"

extern int op1, op2;
extern long op3, op4;

int main(void) {
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	
	int result = sum();
	printf("sum = %d:0x%x\n", result, result);
	
	result = another_sum();
	printf("another sum =%d:0x%x\n", result, result);
	
	printf("Valor op3:");
	scanf("%ld",&op3);
	printf("Valor op4:");
	scanf("%ld",&op4);
	
	long res = yet_another_sum();
	printf("yet another sum = %ld:0x%lx\n", res, res);
	
	return 0;
}

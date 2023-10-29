#include <stdio.h>
#include "asm.h"

short s1=0;

int main(void) {
	printf("Valor s1:");
	scanf("%hd",&s1);

	short result = swapBytes();
	printf("Swap Bytes = %d:0x%x\n", result, result);
	
	return 0;
}

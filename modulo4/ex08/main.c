#include <stdio.h>
#include "asm.h"


int main(void) {
	int a = 2;
	int b = 4;
	int c = -1;
		
	printf("%d\n", calc(a, &b, c));
	
	return 0;
}

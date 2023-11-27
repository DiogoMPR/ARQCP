#include <stdio.h>
#include "asm.h"

int main(void) {
	int a = 5;
	
	short *v1 = &a;

	int v2 = 3;
	
	v2 = inc_and_cube(v1, v2);
		
	printf("%d - %d\n", a, v2);
	
	return 0;
}

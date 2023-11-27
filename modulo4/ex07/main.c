#include <stdio.h>
#include "asm.h"


int main(void) {
	
	short vec[] = {1};
	
	int n = 1;
	
	int result = count_even(vec,n);
		
	printf("Number of even number is vec: %d\n", result);
	
	return 0;
}

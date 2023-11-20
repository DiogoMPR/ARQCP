# include <stdio.h>
# include "asm.h"

int main (void){
	long x = 254;
	printf("%d \n", count_bits_zero(x));
	return 0;
} 

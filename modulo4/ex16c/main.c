#include <stdio.h>
#include "asm.h"


int main(void) {
	long a = 2;
	long b = 4;
	char pos = 1;
	printf("%ld \n", join_bits(a,b,pos));
	printf("%ld \n", mixed_sum(a, b, pos));
	return 0;
}

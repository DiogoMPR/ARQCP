#include <stdio.h>
#include "asm.h"


int main(void) {
	long a = 2;
	long b = 4;
	char pos = 1;
	printf("%d \n", join_bits(a,b,pos));
	return 0;
}

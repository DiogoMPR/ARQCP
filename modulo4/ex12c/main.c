#include <stdio.h>
#include "asm.h"


int main(void) {
	int num = 2;
	short vec[] = {5,5};
	short *ptr = vec;
	printf("%d \n", vec_count_bits_zero(ptr, num));
	return 0;
}

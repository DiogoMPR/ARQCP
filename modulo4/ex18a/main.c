#include <stdio.h>
#include "asm.h"


int main(void) {
	int pointed = 4;
	int *ptr = &pointed;
	changes(&pointed);
	printf("%d \n", *ptr);
	return 0;
}

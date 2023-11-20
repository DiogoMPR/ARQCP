#include <stdio.h>
#include "asm.h"


int main(void) {
	char vec_a[] = "isep";
	char vec_b[] = "isep";
	char *a = vec_a;
	char *b = vec_b;
		
	printf("%d\n", test_different(a,b)); // equals
	return 0;
}

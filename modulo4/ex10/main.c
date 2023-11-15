#include <stdio.h>
#include "asm.h"


int main(void) {
	short p1 = 6;
	char val = 0xC3;
	short w = 3;
		
	int y = p1 + val;
		
	printf("\nExpected - %d", y);
	printf("\nActual - %d\n", call_decr(w));
	
	return 0;
}

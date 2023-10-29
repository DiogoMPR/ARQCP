#include <stdio.h>
#include "asm.h"

long num=5;

int main() {
	
	int result;
	
	result = steps();

    printf("Result: %d\n", result);

    return 0;
}


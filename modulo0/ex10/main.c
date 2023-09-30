#include <stdio.h>
#include "size_string.h"

int main() {
	char x[] = "I will master ARQCP";
	printf("Size =%zu\n", sizeof(x));
	printf("Size =%u\n", size_string_wrong (x));
	printf("Size =%u\n", size_string_correct(x));

	char y[25] = "I will master ARQCP";
	printf("\n Size =%zu\n", sizeof(y));
	printf("Size =%u\n", size_string_wrong (y));
	printf("Size =%u\n", size_string_correct(y)); 
	
	return 0;
}

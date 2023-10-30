#include <stdio.h>
#include "asm.h"

	char str1[100] = "ups";
	char str2[100];
	char *ptr1 = str1;
	char *ptr2 = str2;

int main(void) {	
	str_copy_roman();
	printf("%s ", str2);
	printf("\n");
	return 0;
}

#include <stdio.h>
#include "asm.h"

char chars[]="58e224293543920";
char *ptr=chars;

int main(void){
	
	int res;
	res = five_count(ptr);

	printf("result = %d\n", res);

	return 0;
}

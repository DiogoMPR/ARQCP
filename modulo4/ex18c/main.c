#include <stdio.h>
#include "asm.h"


int main(void) {
	int pointed[] = {1};
	int num = 1;
	int *ptr = pointed;
	changes_vec(ptr, num);
	for(int i = 0; i < num; i++){
		printf("%d ", (*ptr+i));
	}
	printf("\n");
	return 0;
}

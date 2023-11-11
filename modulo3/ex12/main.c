# include <stdio.h>
# include "asm.h"

int array[] = {80, 20, 0, 40, 50, 300};

int num = sizeof(array) / sizeof(array[0]);
int *ptr = array;

int main(void){

	printf("changed : %d numbers\n", vec_zero(ptr, num));

	return 0;
}

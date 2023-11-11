#include <stdio.h>
#include "asm.h"

int array[]={1,2,3,2};
int num = sizeof(array)/sizeof(array[0]);
int *ptr=array;

int main(void) {
	int result = count_max(ptr, num);
	printf("There are %d maximum values in the array\n", result);
}

#include <stdio.h>
#include "asm.h"

short num=5;
int array[]={10,10,10,10,10};
int *ptr=array;

int main(void) {
	
	int res=vec_sum(ptr, num);
	int res2=vec_avg(ptr, num);
	
	printf("Soma: %d\n", res);
	printf("Media: %d\n", res2);
	
	return 0;
}

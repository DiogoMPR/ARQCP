#include <stdio.h>
#include "asm.h"

int array[]={0,1,2,3,4,5,6,7,8};
int *ptr=array;
int num = 9;
int x = 0;

int main(void) {
	
	printf("Enter a number: ");
	scanf("%d", &x);
	
	int *res = vec_search(ptr, num, x);
	
	printf("%p ", res);
	
	return 0;
}

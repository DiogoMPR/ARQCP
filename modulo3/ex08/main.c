# include <stdio.h>
# include "asm.h"

int num = 7;
int evenArray [] = {1,2,3,4,5,6,7};
int even = 6;
int *ptr=evenArray;

int main(void){
	int result = test_even(even);
	printf("Even: %d\n", result);
	int soma = vec_sum_even(ptr, num);
	printf("Soma: %d\n", soma);
	return 0;
}

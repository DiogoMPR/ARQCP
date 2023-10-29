#include <stdio.h>
#include "asm.h"

char atual;
char final;


int main() {

	printf("Atual value:");
	scanf("%hhd", &atual);

	printf("Final value:");
	scanf("%hhd", &final);

	int result = needed_time();
	printf("Time required for desired temperature: %d seconds", result);

return 0;

}

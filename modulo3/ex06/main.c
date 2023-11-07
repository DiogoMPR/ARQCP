#include <stdio.h>
#include "asm.h"

char string[] = {'1','a','s','4','2','6','7','8','a','0','7','r','t','j','7',' ',0};
char *ptr = string;

int main(void) {
	
	int res = encrypt(ptr);
	printf("Number of modified chars %d\n", res);
	printf("Statment: %s\n", string);
	
	return 0;
}

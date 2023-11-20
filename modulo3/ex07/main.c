#include <stdio.h>
#include "asm.h"

char chars[]="Pma uvep ef cpn";
char *ptr=chars;

int main(void) {
	
	int res=decrypt(ptr);
	
	printf("Tem %d valores modificados\n", res);
	printf("Frase: %s\n", chars);
	
	return 0;
}

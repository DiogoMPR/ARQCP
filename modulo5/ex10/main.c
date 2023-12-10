# include <stdio.h>
# include "asm.h"
# include <stdlib.h>

int main(){
	
	char str[80] = "Hello, dynamic memory!";
	
	char *ptr_char = new_str(str);
	
	printf("Original string: %s\n", str);
	
	printf("String copy: %s\n", ptr_char);
	
	free(ptr_char);
	
	return 0;
	
	
}

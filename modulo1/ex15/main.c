#include <stdio.h>
#include "trim_string.h"

int main(){
	char str[] = "        the      numBEr       must be   saved          ";
	trim_string(str);
	printf("%s\n", str); // "the numBEr must be saved"
	return 0;
}

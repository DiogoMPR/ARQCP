#include <stdio.h>
#include "capitalize.h"

int main(){
	char myString[] = "Hello, World!";
	
	capitalize(myString);
	printf("%s", myString);
	return 0;
}

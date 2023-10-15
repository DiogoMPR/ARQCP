#include <stdio.h>
#include "capitalize2.h"

int main (){
	char str[] = "Bento";
    
    printf("Original string: %s\n", str);
    
    capitalize2(str);
    
    printf("Capitalized string: %s\n", str);

    return 0;
	
}

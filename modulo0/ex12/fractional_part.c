#include "string_to_int.h"

int fractional_part(char x[]){
	int decimalPosition = -1;
	for(int i = 0; x[i] != '\0'; i++){
		if(x[i] == '.'){
			decimalPosition = i;
			break;
		}
	}
	
	if(decimalPosition == -1){
		return 0;
	}
	
	char fracPart[100];
	int fracPos = 0;
	
	for(int i = decimalPosition +1; x[i] != '\0'; i++){
		fracPart[fracPos++] = x[i];
	}
	fracPart[fracPos] = '\0';
	
	return string_to_int(fracPart);
	
}

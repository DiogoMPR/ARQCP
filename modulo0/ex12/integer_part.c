#include "string_to_int.h"

int integer_part(char x[]){
	int decimalPos = -1;
	for(int i = 0; x[i] != '\0'; i++){
		if(x[i] == '.'){
			decimalPos = i;
			break;
		}
	}
	
	if(decimalPos == -1){
		return string_to_int(x);
	}
	
	char intPart[decimalPos+1];
	for(int i= 0; i < decimalPos; i++){
		intPart[i] = x[i];
	}
	intPart[decimalPos] = '\0';
	
	return string_to_int(intPart);
}

#include "get_int.h"

int string_to_int(char str[]){
	int result = 0;
	int i = 0;
	
	if(str[0] == '-'){ // If the number is negative
		i = 1;
	}
	
	while(str[i] != '\0'){
		if(str[i] >= '0' && str[i] <= '9'){
			int digit = get_int(str[i]) - '0';
			result = result*10 + digit;
		}else{
			return -1;
		}
		i++;
	}
	
	if(str[0] == '-'){
		result = -result;
	}
		return result;
}

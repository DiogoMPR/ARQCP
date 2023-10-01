#include "get_ascii_char.h"

int count_char(char str[], int c) {
	int counter = 0;
	int code = 0;
	for(int i = 0; str[i] != '\0'; i++){
		code = get_ascii_char(str[i]);
		if(code == c){
			counter++;
		}
		
	}
	return counter;
}

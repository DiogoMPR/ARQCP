#include "get_ascii_code.h"
#include "sum.h"

int fake_hash(char str[]){
	int sumChar = 0;
	int code = 0;
	for(int i=0; str[i] != '\0'; i++){
		code = get_ascii_code(str[i]);
		sumChar = sum(sumChar, code);
	}
	return sumChar;
}

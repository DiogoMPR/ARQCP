# include "cmp.h"

int getGreaterDigit (int number){
	
	int result;
	
	if(number == 0){
		return 0;
	}
	int greaterDigit = number % 10;
	number /= 10;
	
	while(number > 0){
		int currentDigit = number % 10;
		result = cmp(greaterDigit, currentDigit);
		if(result == -1){
			greaterDigit = currentDigit;
		}
		number /= 10;
	}
	return greaterDigit;
}

#include "sum.h"
#include <stdio.h>

int sumDigits(int number){
	int result = 0;
	int digit;
	while(number>0){
		digit = number%10;
		result = sum(result, digit);
		number=number/10;
	}
	return result;
}

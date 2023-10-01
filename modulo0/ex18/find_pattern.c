#include <string.h>
#include "cmp.h"

int find_pattern(char str[], char patt[]){
	int str_length = strlen(str);
	int patt_length = strlen(patt);
	int counter=0;
	
	for(int i = 0; i <= str_length - patt_length; i++){
		int j;
		for(j = 0; j < patt_length; j++){
			if(cmp((int)str[i+j], (int)patt[j]) != 0){
				break;
			}
		}
		if(j==patt_length){
			counter++;
		}
	}
	
	return counter;
}

#include "cmp.h"

int count_value(int vec[], int n, int value){
	int counter = 0;
	for(int i=0; i < n; i++){
		if(cmp(value, vec[i])==0){
			counter++;
		}
	}
	return counter;
}

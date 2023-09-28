/*
 * This function returns the multiplication of two integers by successive sums
 */
 
 #include "sum.h"
 
 int mul(int a, int b){
	 int result = 0;
	 for(int i = 0; i < a; i++){
		 result = sum(result, b); 
	 }
	return result;
 }

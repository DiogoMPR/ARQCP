/*
 * Implement the function int string_to_int(char str[]) that transforms a string into an equivalent integer value.
 */
 
 #include <stdio.h>
 #include "string_to_int.h"
 
 int main(){
	 char str[] = "12345";
	 int result = string_to_int(str);
	 
	 if(result != -1){
		 printf("The integer value is: %d\n", result);
	 } else{
		 printf("Invalid input\n");
	 }
	 return 0;
 }

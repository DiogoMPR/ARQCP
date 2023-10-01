/*
 * Implement the function int find_pattern(char str[], char patt[]) that receives two strings (str and patt) and returns the number of times the second
 * string, patt, appears into the first one, str.
 */
 
 #include <stdio.h>
 #include "find_pattern.h"
 
 int main(){
	 char str[] = "ababababa";
     char patt[] = "aba";
    
     int occurrences = find_pattern(str, patt);
    
     printf("Number of occurrences: %d\n", occurrences);
	 
	 return 0;
 }


/*
 * Implement a function int fake_hash(char str[]) that receives a string and returns an integer number that is the sum of all string characters.
 */
 
 #include <stdio.h>
 #include "fake_hash.h"
 
 int main(){
	char input[] = "Hello, World!";
    int result = fake_hash(input);
    
    printf("Fake Hash: %d\n", result);
    
	return 0;
 }

/*Implement the function int check_string(char str[], int h) that receives a
 * string and an hash and returns 1 if the given hash correspond with the string hash
 * or 0 otherwise.
 */
 
 #include <stdio.h>
 #include "check_string.h"
 
 int main(){
	char input[] = "Hello, World!";
    int expected_hash = 1129;
    
    int result = check_string(input, expected_hash);

    if (result == 0) {
        printf("Hashes match: %d\n", expected_hash);
    } else if (result < 0) {
        printf("Input string hash is less than expected hash.\n");
    } else {
        printf("Input string hash is greater than expected hash.\n");
    }
	 return 0;
 }

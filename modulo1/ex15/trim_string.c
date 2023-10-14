/*
 * Using pointer arithmetic, implement the function void trim_string(char *str)
 * that receives the address of a string, str, and removes all spaces at the beginning,
 * at the end, and also multiple spaces between words (leaving only one).
 */
 
 void trim_string(char *str){
	 
	 //verifies if the string is empty
	 if(*str == '\0'){
		 return;
	 }
	 
	 char *start = str;
	 while (*start == ' '){ // removes the blank spaces from the beggining of the string
		 start++; // increments the pointer until a non-space character is found
	 }
	
	 if(*start == '\0'){ // checks if the string is just composed by spaces
		 *str = '\0'; // puts the string empty (without any space)
		 return;
	 }
	 
	 char *end = start;
	 
	 while (*end){ // iterates through the string pointed by 'end' until the null terminator is reached
		 end++; 
	 }
	 end--; // the 'end' pointer points to the last non-null character in the string
	 
	 while (*end == ' '){ // removes all the spaces at the end of the string by moving the pointer backwards until a non-space character is reached
		 end--;
	 }
	 end++; // the pointer is moved to the correct end of the string
	 
	 *end='\0';
	 
	 char *dest = start; // new pointer that points to the 'start' position, and will be used to read the characters from the trimmed string
	 char *writer = str; // new pointer that points to the 'str' position, and will be used to write characters from the trimmed string
	 
	 while(*dest) { // iterates through the trimmed string
		 if(*dest == ' '){ // when a space is encountered in the 'dest' pointer, the code checks for consecutive spaces
			 while(*(dest+1) == ' '){ // skips any consecutive spaces following the first space
				 dest++;
			 }
			 *writer=' '; // add a single space
		 }else{ // copy the charcter from the 'dest' position to the 'writer' position
			 *writer = *dest;
		 }
		 // both pointers are incremented
		 writer++;
		 dest++;
	 }
	 *writer = '\0'; // ensures that the string ends with a null character, indicating its termination
	 }

# include <stdlib.h>
# include <string.h>

char *new_str(char str[80]){
	
	/* 
	 * Determine the length of str
	 */
	
	size_t strLenght = strlen(str);
	
	/* 
	 * pointer declaration 
	 */
	
	char *ptr_char = NULL;
	
	/* 
	 *  allocate (strLength + 1) chars in the heap
	 */
	
	ptr_char = (char *) malloc ((strLenght + 1) * sizeof(char));
	
	/*
	 * Copy the content of str to the ptr_char (pointer)
	 */
	
	strcpy(ptr_char, str);
	
	return ptr_char;
}

	/*
	 * Explanation:
	 * 
	 * 	It's possible to return the address of ptr_char because the use of 'malloc' that makes possible the dinamic allocation of memory
	 * and it will remain untouched until it's explicitly freed by 'free'. 
	 */
	

/*
 * Implement a function void frequencies(float *grades, int n, int *freq) that
 * receives the address of an array, grades, with the students’ exam grades at ARQCP
 * (a float value between 0.0 and 20.0), the number of elements in that array, n, and
 * the address of a second array, freq to be filled with the absolute frequency of the
 * integer part of the grades stored in the array grades. Use pointer arithmetic to
 * solve this exercise.
 */

void frequencies(float *grades, int n, int *freq){
	
	// intialize the frequency array to zeros in every position
	for(int i = 0; i < 21; i++){
		*(freq + i) = 0;
	}
	
	float *ptr = grades; // initializes the 'ptr' pointer in the first position of the grades array
	for(int i = 0; i < n ; i++){ // iterates through the n positions of the grades array	 
		int integerPart = (int)(*ptr); // Extract the integer part of the grade that is pointed by 'ptr'
		if(integerPart >= 0 || integerPart <= 20){
			*(freq + integerPart) += 1; // increases the frequency counter for thr corresponding integer part by 1.
		}
		ptr++; // move the pointer to the next grade
	}
}

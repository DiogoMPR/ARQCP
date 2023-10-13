/*
 * Using pointer arithmetic, implement the function int sum_odd(int *p) that receives the address of an array of integer values, (p), as its single parameter. The
 * first element of the array indicates how many elements are stored on it. The function should return the sum of the odd elements of that array, excluding the first
 * element
 */

int sum_odd(int *p){
	
	int n = *p; // Gets the number of the elements that are stored on the array ("The first element of the array indicates how many elements are stored on it")
	int sum  = 0;
	
	p++;
	
	for(int i = 1; i <= n; i++){
		if(*p % 2 != 0){ // checks if the the vaue stored in the address pointed by p is an odd number
			sum += *p; 
		}
		p++; // Move the pointer to the next element
	}
	return sum;
}

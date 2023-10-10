/*
 * Implement the function int sum_even(int *vec, int n) that receives an address
 * of an array, vec, and the number of elements in that array, n, and returns the sum
 * of all of its even elements.
*/

int sum_even(int *vec, int n){
	int sum = 0;
	int *end = vec + n; // points to the end of the array
	for(int *ptr = vec ; ptr < end ; ptr++){
		if(*ptr % 2 == 0){ // in each iteration, the if statement verifies if the value of the current pointed element is even 
			sum += *ptr; // Adds the pointed value to the previous sum
		}
	}
	return sum;
}

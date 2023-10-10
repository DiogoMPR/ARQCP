/*
 * Implement the function void get_array_statistics(int* vec, int n, int* min,
 * int* max, float* avg) that receives the address of an array of integer vales, vec,
 * and the number of elements in that array,n. The function should compute the
 * minimum, maximum, and average of the elements in that array. The computed
 * values should be written in the addresses given by the remaining function parameters, min, max, and avg, respectively
 */

void get_array_statistics(int* vec, int n, int* min, int* max, float* avg){
	if(n <= 0){
		return;
	}
	
	int *end = vec + n; // end pointer
	int *ptr = vec; // pointer starting at the beginning of the array
	*min = *max = *ptr; // initialize the min and max with the first value in the array
	*avg = 0.0;
	
	int sum = 0;
	while(ptr < end){
		int value = *ptr; // value pointed by 'ptr'
		
		if(value < *min){
			*min = value;
		}
		if(value > *max){
			*max = value;
		}
		sum += value;
		
		ptr++; // move the pointer to the next element of the array
	}
	
	*avg = (float) sum/n;
	
}

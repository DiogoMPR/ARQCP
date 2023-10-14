/*
 * Implement a function void swap(short* vec1, short* vec2, int size) that receives the address of two arrays of the same size and swaps the contents of both
 * arrays (i.e contents of vec1 will be copied to vec2 and vice versa). The new content
 * of each array must be printed in the main function.
 */

void swap(short* vec1, short* vec2, int size){
	short* end1 = vec1 + size; // initialize the 'end1' pointer with the last element of the 'vec1' array
	short* end2 = vec2 + size; // initialize the 'end2' pointer with the last element of the 'vec2' array
	
	for(short* p1 = vec1, *p2 = vec2; p1 < end1 && p2 < end2; p1++, p2++){ // iterates over every single position on the two arrays
		short aux = *p1; // atributes the value stored in the 'p1' pointer to the 'aux' pointer
		*p1 = *p2; // atributes the value stored in the 'p2' pointer to the 'p1' pointer
		*p2 = aux; // atributes the value stored in the 'aux' pointer to the 'p2' pointer
	}
}

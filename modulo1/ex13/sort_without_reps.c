/*
 * Using pointer arithmetic, implement a function int sort_without_reps(short *src, int n, short *dest)
 * that receives the address of an array src with n integer elements and the address of an empty second array of the same size. The
 * function should fill the second array with the elements of the first in ascending order, eliminating all repeated values. The function must return the number of items
 * placed in the second array. The content of the second array should be printed in
 * the main function.
 */
 
 int sort_without_reps(short *src, int n, short *dest){
	 int arrayDestSize = 0;
	 
	 for (int i = 0; i < n; i++){ // iterates through the src array
		 short element = *(src + i); // gets the element of the src array that is pointed by (src+i)
		 int duplicate = 0; // flag that catches a duplicate value
		 
		 for (int j = 0; j < arrayDestSize; j++){ // iterates through the second array
			 if(element == *(dest+j)){ // verifies if an given element is equal to every single one that is on the array
				 // if the element is duplicated:
				 duplicate = 1; // the flag is changed to the value one
				 break;
			 }
		 }
		 
		 if(!duplicate){ // checks if the the element isn't dulicated in the array
			 int insertionPosition = 0; // position where the element will be inserted in the array
			 
			 while(insertionPosition < arrayDestSize  &&  element > *(dest + insertionPosition)){ // Find the position to insert the element in the dest array
				 // while the insertionPosition is lower than the size of the dest array and the current element is bigger than the element that is currently pointed by the (dest + insertionPosition), the same insertion position will be incremented
				 insertionPosition ++;
			 }
			 
			 // Increases the size of the dest array by moving all of it's elements one position to the right
			 for(int j = arrayDestSize; j > insertionPosition; j--){
				 *(dest + j) = *(dest + j -1);
			 }
			 
			 *(dest + insertionPosition) = element; // insert the element into the dest array at the right position
			 arrayDestSize++; // increments the size of the dest array
		 }
	 }
	 return arrayDestSize; // returns the size of the dest array after being filled
 }

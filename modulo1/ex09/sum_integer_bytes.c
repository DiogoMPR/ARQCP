/*
 * Using pointer arithmetic, implement the function int sum_integer_bytes(unsigned
 * int *p) that receives the address of an integer, (p), and returns the sum of its bytes. 
 */
 
 int sum_integer_bytes (unsigned int *p){
	 
	 int sumBytes = 0;
	 unsigned char *byte_pointer = (unsigned char *)p; // p as a pointer to bytes
	 
	 for(int i = 0; i < sizeof(unsigned int); i++){
		 sumBytes += (int)(*byte_pointer);
		 byte_pointer++;
	 }
	 return sumBytes;
 }

int set_bit(long *ptr, char pos){
	// validate the given position
	if(pos < 0 || pos > 63){
		return -1;
	}
	// creates a mask with only the bit at the specified position set to 1
	long mask = 1L << pos;
	
	// checks if the bit is already 1
	if((*ptr & mask) != 0){
		return 0; // bit was already 1
	}else{
		// set the bit to 1
		*ptr |= mask;
		return 1; // bit was altered
}
}

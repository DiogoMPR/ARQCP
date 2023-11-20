int count_bits_zero(long x){
	int counter = 0;
	
	while(x != 0){ // iterates through each bit of the number
		if((x & 1) == 0){ // checks if the least significant bit is 0
			counter++;
		}
		x >>= 1; // Right shift the number in order to move to the next bit
	}
	return counter;
}

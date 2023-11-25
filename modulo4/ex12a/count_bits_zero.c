
int count_bits_zero(long x){
	int count = 0;
	
	for(int i = 0; i < 64; i++){ // iterates over all bits from x
		if((x & 1) == 0){  // verifies if the lsb of x is 0 using the AND operation
			count++;
		}
		x = x >> 1; // shift right of x
	}
	return count;
}

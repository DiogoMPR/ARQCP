long join_bits(long a, long b, char pos){
	
	unsigned long generalMask = 0xFFFFFFFFFFFFFFFF;	// mask containing 8 bytes of bits with value 1 : 1111 1111 1111 1111 1111 1111 1111 1111
	long aMask = generalMask >> (63-pos); //deactivate the irrelevant bits for the mask to apply to a.
	long bMask = ~aMask; //deactivate the irrelevant bits for the mask to apply to b.
	long concatenatedValue = (a & aMask) | (b & bMask); //apply the operations that concatenate a and b.
	return concatenatedValue;
}

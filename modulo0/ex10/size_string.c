unsigned int size_string_wrong (char s[]) {
	return sizeof(s);
}

unsigned int size_string_correct (char s[]) {
	unsigned int cont=0;
	while(s[cont]!=0){
		cont++;
	}

	return cont;
}

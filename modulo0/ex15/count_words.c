int count_words(char str[]){
	int counter = 0;
	int inside_word = 0; // it represents the false value
	for(int i = 0; str[i] != '\0'; i++){
		if(str[i] == ' ' || str[i] == '\n' || str[i] == '\t'){
			inside_word = 0;
		} else if(!inside_word){
			counter++;
			inside_word = 1; // it represents the true value
		}
	}
	return counter;
}

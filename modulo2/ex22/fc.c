int h = 0, g = 0 , r = 0;

int fc(int i, int j){	
	if(i==j){
		h = i - j + 1;
	}
	else {
		h = i + j - 1;
	}
	
	return h;
}

int fc2(int i, int j){	
	if(i > j){
		i--;
	}
	else {
		j++;
	}
	
	h = j * i;
	
	return h;
}

int fc3(int i, int j){
	if(i >= j){
		h = i * j;
		g = i + 1;
	}
	else{
		h = i + j;
		g = i + j + 2;
	}
	r = g/h;
	return r;
}

int fc4(int i, int j){
	int h = 0;
	
	if(i + j < 10) {
		h = 4 * i * i;
	}
	else{
		h = j * j / 3;
	}
	
	return h;
}

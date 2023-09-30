int average(int n1, int n2){
	return (n1+n2)/2;
}

int average_array(int v [], int n){
	int sum = 0;
	for(int i=0; i < n; i++){
		sum += v[i]; 
	}
	return sum/n;
}

int sum_even(int *p, int num){
	int i;
	int sum = 0;
	for(i = 0; i < num; i++){
		if(*(p+i) % 2 == 0){
			sum += *(p+i);
		}
	}
	return sum;
}

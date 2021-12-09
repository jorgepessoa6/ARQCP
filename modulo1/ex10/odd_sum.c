int odd_sum(int *p){
	int i;
	int j = 1;
	int sum = 0;
	//percorrer o vetor p
	for(i = 0; i < *p; i++){
		//verificar se o numero e impar
		if((*(p + i + j)) % 2 != 0){
			//somar o numero se este for impar
			sum += *(p + i + j); 
		}
	}
	return sum;
}

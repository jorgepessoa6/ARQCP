int count_bits_zero(int x){
	int count = 0;
	int k;
	int i;
	
	for(i = 0; i <= 31; i++){
		k = x >> i;
		if(k & 1){
		}else{
			count++;
		}	
	}
	
	return count;
}

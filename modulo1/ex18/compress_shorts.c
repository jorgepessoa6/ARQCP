void compress_shorts(short *shorts, int n_shorts, int *integers){
	int i;
	int ratio = sizeof(int)/sizeof(short);
	int n_ints = n_shorts/ratio;
	//percorrer o vetor
	for( i = 0; i < n_ints; i++){
		*(integers + i) = *((int*)(shorts + (ratio * i)));
	}
}

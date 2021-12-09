void array_sort1(int *vec, int n){
	int i,j,t;
	//percorrer o vec
	for(i = 0; i < n; i++){
		for(j = i + 1; j < n; j++){
			//se for menor troca de posição
			if(*(vec + j) < *(vec + i)){
				t = *(vec + i);
				*(vec + i) = *(vec + j);
				*(vec + j) = t;
			}
		}
	}
}

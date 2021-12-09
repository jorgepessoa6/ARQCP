void swap(int *vec1, int *vec2, int size){
	//criar um vetor temporario
	int temp[size];
	int i;
	//percorrer os vetores e trocar os seus elementos
	for(i = 0; i < size; i++){
		*(temp + i) = *(vec1 + i);
		*(vec1 + i) = *(vec2 + i);
		*(vec2 + i) = *(temp + i);
	}
}

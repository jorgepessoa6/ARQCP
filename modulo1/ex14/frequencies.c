void frequencies(float *grades, int n, int *freq){
	int i;
	int num;
	int valor = 1;
	//percorrer o array e colocar tudo a 0
	for(i = 0; i < 21; i++){
		*(freq + i) = 0; 
	}
	//percorrer o array
	for(i = 0; i < (n+1/4); i++){
		//obter valor inteiro
		num = (int) *(grades + i);
		// verificar se o numero é valido
		if(num <= 20 && num >= 0){
			*(freq + num) += valor;
		}
	}
}

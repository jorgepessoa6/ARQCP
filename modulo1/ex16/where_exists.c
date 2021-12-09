char* where_exists(char* str1, char* str2){
	int j = 0;
	int i = 0;
	int n = 0;
	int m = 0;
	//verificar se nenhuma das string esta vazia
	if( *str1 == '\0' || *str2 == '\0'){
		return 0;
	}
	// obter tamanho da string str2
	while( *(str2 + n) != '\0'){
		n++;
	}
	// obter tamanho da string str1
	while( *(str1 + m) != '\0'){
		m++;
	}
	//percorrer a string str2
	for(i = 0; i <= n - m; i++){
		//percorrer a string str1
		for(j = 0; j < m; j++){
			//verificar se elemento de str1 é igual a elemento de str2
			if(*(str2 + i + j) != *(str1 + j)){
				break;
			}
		}
		//se j == m entao str1 é uma substring de str2
		if( j == m){
			return str2 + i;
		}
	}
	return 0;
}
	

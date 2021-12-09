char * find_word(char* str, char* word, char* initial_addr){
	char* itr = initial_addr;
	int wordsize = 0;
	//calcular o tamanha da palavra
	while( *(word + wordsize) != '\0'){
		wordsize++;
	}
	while(*itr != '\0'){
		int i = 0;
		//verificar se é igual, se é igual a sua minuscula ou maiuscula
		if(*itr == *word || *itr == *word - 32 || *itr == *word + 32){
			char flag = 1;
			for(i = 0; i < wordsize; i++){
				//verificar se é diferente da sua maiuscula e minuscula
				if(*(itr + i) != *(word + i) + 32 && *(itr + i) != *(word + i) -32){
				//verificar se existe char seguinte na word e se o char seguinte na str e na word sao iguais
				if(*(itr + i) == '\0'|| *(itr + i) != *(word + i)){
					if(wordsize >=i){
						flag = 0;
					} else{
						flag = 1;
					}
					break;
				}
			}
		}
			if(flag){
				return itr;
			}
		}
		itr++;
	}
	return 0;
}

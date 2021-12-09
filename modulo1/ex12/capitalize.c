void capitalize(char *str){
	int i;
	//percorrer a string
	for(i = 0; *(str + i) != '\0'; i++){
		//verificar se é a primeira letra
		if(i == 0){
			//verificar se é maiuscula
			if((*(str + i) >= 'a' && *(str + i) <= 'z')){
				// a maiuscula correspondente é o seu valor - 32
				*(str + i) = *(str + i) -32;
			}
		}
		//verificar se tem um espaço
		if(*(str + i) == ' '){
			//se tiver um espaço, passar para o proximo elemento
			i++;
			//verificar se é maiuscula
			if(*(str + i) >= 'a' && *(str + i) <= 'z'){
				// a maiuscula correspondente é o seu valor - 32
				*(str + i) = *(str + i) - 32;
			}
		}
	}
}

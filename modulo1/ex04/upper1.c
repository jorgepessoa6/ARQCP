
void upper1(char *str){
	int i = 0;
	//percorrer a string
	while(str[i] != '\0'){
		// verificar se é minuscula
		if(str[i] >= 'a' && str[i] <= 'z'){
			// a maiuscula correspondente é o seu valor - 32
			str[i] = str[i] - 32;
		}
		i++;
	}
}

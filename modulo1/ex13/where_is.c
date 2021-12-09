int where_is(char *str, char c, int *p){
	int i = 0;
	int n = 0;
	//percorrer a string
	while(*(str + i) != '\0'){
		//verificar se o caracter é igual ao char c
		if(*(str + i) == c){
			*(p + n) = i;
			n++;
		}
		i++;
	}
	return n;
}

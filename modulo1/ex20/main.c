#include <stdio.h>
#include "find_all_words.h"



int main(){
	char str[]={"disciplina de Arquitetura de Computadores"};
	char word[]={"de"};

	char* a_addrs[5];
	char **addrs = (char**)(a_addrs);
	int i=0;
	find_all_words(str,word,addrs);
	for(i=0;i<1;i++){
		printf("A palavra %s foi encontrada no endereço: %p\n",word,&addrs[i]);

	}
	return 0;
}

#include <stdio.h>
#include "capitalize.h"

int main(void){
	char str[] = "The maximum value of this CYCLE";
	capitalize(str);
	// dar print do novo conteudo da string 
	printf("%s", str);
	return 0;
}

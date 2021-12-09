#include <stdio.h>
#include "ex20.h"

int num = 3, i;
int vec[] = {-1,-1,-1};
int *ptrvec = vec;


int main() {

	num = sizeof(vec)/sizeof(vec[0]);
	
	printf("Vetor= {");
	for(i=0; i<num; i++){
		printf("%d%s", *(vec+i), i!=num-1?", ":""); 
	}
	printf("}\n");

	int res = count_seq();

	printf("Existe %d sets de tres que cumprem a condicao vi < vi+1 < vi+2\n", res); 

	return 0;
}

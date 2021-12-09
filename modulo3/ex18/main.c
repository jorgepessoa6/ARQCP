#include <stdio.h>
#include "ex18.h"

int num = 9, i, res=0;
int vec[]={2,1,1,1,1,1,1,1,1};
int* ptrsrc = vec;
int vec_dest[5];
int* ptrdest = vec_dest;


int main (void){
	
	printf("Vetor apontado por ptrvec = {");
	for(i=0; i<num; i++){
		printf("%d%s", *(vec+i), i!=num-1?", ":""); // *(vec+i) é como vec++ mas nao altera vec ; enquanto nao acaba os valores inseridos poe virgula
	}
	printf("}\n");

	res = sort_without_reps();

	printf("Vetor apontado por ptrdest= {");
	for(i=0; i<res; i++){
		printf("%d%s", *(vec_dest+i), i!=res-1?", ":""); // *(vec+i) é como vec++ mas nao altera vec ; enquanto nao acaba os valores inseridos poe virgula
	}
	printf("}\n");
	
	//resultado esperado = {1,2,3,5} res = 4 
	printf ("Numero de elementos do vetor2 apontado por ptrdest: %d \n", res);
	
	return 0;
}

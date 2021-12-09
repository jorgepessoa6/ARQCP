#include "array_sort.h"
int sort_without_reps(int *src, int n, int *dest){
	int z = 0;
	int x;
	//verificar se o existem elementos
	if( n > 0){
		//ordenar o vetor src
		array_sort(src,n);
		for(x = 0; x < n-1; x++){
			//verificar se o elemento seguinte é igual
			if(src[z] != src[x+1]){
				dest[z++] = src[x];
			}
		}
		//adicionar ultimo elemento de src a dest
		dest[z++] = src[n-1];
	}
	return z;
}

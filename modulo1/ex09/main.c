#include <stdio.h>
#include "sort_without_reps.h"

int main(void){
	int n = 11;
	int i, c;
	int src[] = {10,1,1,1,15,15,9,30,30,19,10};
	int dest[11];
	c = sort_without_reps(src,n,dest);
	//dar print ao vetor dest
	for( i = 0; i < c; i++){
		printf("%d \n", *(dest + i));
	}
	return 0;
}

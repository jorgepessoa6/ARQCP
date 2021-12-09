#include <stdio.h>
#include "compress_shorts.h"

int main(void){
	short shorts[] = {1,2,3,4,5,6};
	int n = 6;
	int integers[3];
	compress_shorts(shorts,n,integers);
	int i;
	//print do conteudo do array de integers
	for(i = 0; i < n/2; i++){
		printf("%d", *(integers + i));
	}
	return 0;	
}

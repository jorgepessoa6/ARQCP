#include <stdio.h>
#include "swap.h"

int main(void){
	int vec1[] = {1,2,3,4};
	int vec2[] = {5,6,7,8};
	int size = 4;
	swap(vec1,vec2,size);
	int i;
	//dar print aos novos elementos do vec1
	for( i = 0; i < size; i++){
		printf("%d", *(vec1 + i));
	}
	//dar print aos novos elementos do vec2
	for( i = 0; i < size; i++){
		printf("%d", *(vec2 + i));
	}
	return 0;
}

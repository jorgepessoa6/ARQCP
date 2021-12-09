#include <stdio.h>
#include "array_sort1.h"

int main(void){
	int n = 5;
	int i;
	int vec[] = {10,1,15,9,30};
	array_sort1(vec,n);
	for( i = 0; i < n; i++){
		printf("%d \n", *(vec + i));
	}
	return 0;
}

#include <stdio.h>
#include "where_is.h"

int main(void){
	char str[] = "calccoi";
	int p[20];
	int n;
	int i = where_is(str,'c',p);
	// fazer print dos elementos do vetor
	for( n = 0; n < i; n++){
		printf("%d \n", *(p + n));
	}
	return 0;
}

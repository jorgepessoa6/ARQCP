#include <stdio.h>
#include "ex13b.h"

int main(){

	unsigned int a = 10;
	
	int left = 2;
	
	int right = 2;

	int res = activate_bits(a,left,right);
	
	printf("Numero inicial: %d\n", a);
	printf("Left: %d\n", left);
	printf("Right: %d\n", right);
	
	
	printf("Numero final: %d\n", res);


	
	return 0;
}
  

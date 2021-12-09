#include <stdio.h>
#include "power_ref.h"

int main(void){
	int z;
	int *x;
	x = &z;
	*x = 2;
	power_ref(x,4);
	printf("%d", z);
	return 0;
}

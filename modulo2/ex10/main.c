#include <stdio.h>
#include "asm.h"

long long op1, op2;

int main(void){
	long long int result;
	result=sum2ints();
	printf("%lld\n", result);
	return 0;
}

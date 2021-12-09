#include <stdio.h>
#include "asm.h"


int main(void) {

	int num1=9;
	int num2=3;
	int num4;
	int *smaller=&num4;

	int res=sum_smaller(num1,num2,smaller);

	printf("Sum of %d and %d, is %d and the smaller number is %d\n", num1,num2,res, *smaller);

	return 0;
}

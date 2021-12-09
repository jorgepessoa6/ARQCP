#include <stdio.h>
#include "sum_even.h"

int main(){
	int p[] = {1,2,3,4,5};
	int sum;
	sum = sum_even(p,5);
	printf("%d\n", sum);
	return 0;
}

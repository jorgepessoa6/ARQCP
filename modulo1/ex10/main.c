#include <stdio.h>
#include "odd_sum.h"

int main(void){
	int sum;
	int vec[] = {4,1,2,3,4};
	sum = odd_sum(vec);
	printf("%d", sum);
	return 0;
}

#include <stdio.h>
#include "ex12a.h"

int main(void){
	
	int number = 0x00000000;

	int* ptr = &number;

	int pos = 0;

	int result = activate_bit(ptr, pos);

	printf("result = %d\n", result);

	return 0;
}

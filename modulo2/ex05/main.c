#include <stdio.h>
#include "asm.h"

short op1 = 2, op2 = 0;
	

int main(void) {
	

	op2=swapBytes();
	// 2 x 2 ^8 --- 16 bits divididos em 2 de 8 bits  = 512
	
	
	printf("Before Swap = %d, After Swap: %hd \n", op1 , op2);
	
	return 0;
}

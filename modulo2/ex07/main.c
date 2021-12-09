#include <stdio.h>
#include "ex05.h"
#include "ex07.h"

short op1 = 2, op2=0, op3=4;
short res=0;
	

int main(void) {
	
			

	 op2=swapBytes();
	 printf("Before Swap = %d, After Swap= %d \n", op1 , op2);	
	 // 2 x 2 ^8 --- 16 bits divididos em 2 de 8 bits  = 512
	
	

	
	res = crossSumBytes();
	printf("Before Sum = %d and %d, After Sum= %d \n", op1, op3, res);
	// 2- 00000010 4-00000100 
	// resul = 1026 - 0000010000000010
	
	return 0;
}


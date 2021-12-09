#include <stdio.h>
#include "asm.h"

int A = 0;
int B = 0;
int C = 0;
int D = 0;


//unsigned A, B, C, D;
int res = 0;
	

int main(void) {
	
    printf("Valor A:");
	scanf("\n%d", &A);
	
	printf("Valor B:");
	scanf("\n%d", &B);
	
	printf("Valor C:");
	scanf("\n%d", &C);
	
	printf("Valor D:");
	scanf("\n%d", &D);
	
	compute();
	
	printf("((A * B ) + C) / D = %d\n", res);
	
	return 0;
}


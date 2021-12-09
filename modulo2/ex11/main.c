#include <stdio.h>
#include "asm.h"
#include "overflow.h"

int op1 = 0, op2 = 0;
char result = 0;
char result1 = 0;
	

int main(void) {
	
    printf("Valor op1:");
	scanf("\n%d", &op1);
	
	printf("Valor op2:");
	scanf("\n%d", &op2);
	
	test_flags();
	overflow();
	
	printf("carry flag: %d \n", result);
	printf("overflow flag: %d \n", result1);
	
	return 0;
}

#include <stdio.h>
#include "asm.h"

char A =3;
short B =7;
int C =5;
int D =2;


long long res = 0;
	

int main(void) {
	
    //printf("Valor A:");
	//scanf("\n%c", &A);
	
	//printf("Valor A:%d\n", A);
	
	//printf("Valor B:");
	//scanf("\n%hi", &B);
	
	//printf("Valor C:");
	//scanf("\n%d", &C);
	
	//printf("Valor D:");
	//scanf("\n%d", &D);
	
	sum_and_subtract();
	
	printf("C + A – D + B = %lld\n", res);
	
	return 0;
}


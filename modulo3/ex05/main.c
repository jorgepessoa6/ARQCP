#include <stdio.h>
#include "asm.h"

int *ptrvec;
int num=1;


int main(void){

	int int_array[]={1,2,3};
	ptrvec=int_array;
	
	int res=vec_sum();
	int res2=vec_avg();
	
	printf("%d\n", res);
	printf("%d\n", res2);

	return 0;
}

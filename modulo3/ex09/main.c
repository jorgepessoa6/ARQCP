#include <stdio.h>
#include "asm.h"

short *ptrvec;
int num;
short x;


int main(void){
	
	x=4;
	short short_array[]={1,2,3,4,5,6,7,8,9,10};
	ptrvec=short_array;
	num=10;

	short *xptr=vec_search();

	printf("%p\n", xptr);

	return 0;
}

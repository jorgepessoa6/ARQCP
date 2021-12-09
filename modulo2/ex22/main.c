#include <stdio.h>
#include "asm.h"

int i;
int j;

int main(void){
 	int h;

 	i=4;
 	j=3;
	
	//function f
  	printf("Function f, i is %d, j is %d\n", i,  j);
 	h=f();
 	printf("result is %d\n\n", h);
	
	//function f2
 	printf("Function f2, i is %d, j is %d\n", i,  j);
 	h=f2();
 	printf("result is %d\n\n", h);


 	//function f3
 	printf("Function f3, i is %d, j is %d\n", i,  j);
 	h=f3();
 	printf("result is %d\n\n", h);

	//function f4	
 	printf("Function f4, i is %d, j is %d\n", i,  j);
 	h=f4();
 	printf("result is %d\n", h);

 	return 0;
}

#include <stdio.h>
#include "ex10.h"

char *ptr1, *ptr2, *ptr3;
int res=0, n=0;

int main (void){

	char str1[40] = "Hello ";
	char str2[40] = "World";
	char str3[80];

	ptr1 = str1;
	ptr2 = str2;
	ptr3 = str3;

	n=str_cat();

	printf("Foram concatenados %d chars\n",n);

	printf(" String apontada por ptr1 = %s\n", str1);
	printf(" String apontada por ptr2 = %s\n", str2);
	printf(" String resultante da concatenacao apontada por ptr3 = %s\n", str3);

	return 0;
}

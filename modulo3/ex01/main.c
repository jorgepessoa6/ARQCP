#include <stdio.h>
#include "asm.h"

char *ptr1;

int main(void){

	char str[] = "a0a0b.";
	ptr1=str;
	int res=zero_count();
	printf("%d\n", res);
	return 0;
}

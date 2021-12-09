#include <stdio.h>
#include "asm.h"


int main(void) {

	char d[] ="abc";
	char c[] = "abc";
	
	int result = test_equal(c, d);
	
	printf("result = %d\n", result);
	
	return 0;
}


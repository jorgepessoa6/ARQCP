#include <stdio.h>
#include "asm.h"


int main(void) {

	short result = crossSumBytes();

	printf("crossSumBytes() = 0x%hx\n", result);

	return 0;

}

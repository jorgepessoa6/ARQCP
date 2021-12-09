#include <stdio.h>
#include "asm.h"

int num = -1;

int main(void) {

	int result = steps();

	printf("steps() = %d\n", result);

	return 0;

}

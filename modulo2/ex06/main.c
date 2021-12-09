#include <stdio.h>
#include "asm.h"

char byte1 = 1;
char byte2 = 2;

int main(void) {

	short resultadoConcat = concatBytes();

	printf("concatBytes() = 0x%hx\n", resultadoConcat);

	return 0;

}

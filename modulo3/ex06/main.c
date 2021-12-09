#include <stdio.h>
#include "asm.h"

char* ptr1;

int main(void) {

	char string1[] = "aAbBcC";

	ptr1 = string1;

	encrypt();

	printf("ptr1() = %s\n", string1);

	return 0;

}

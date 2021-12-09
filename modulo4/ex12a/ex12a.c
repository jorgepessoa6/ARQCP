#include <stdio.h>

int activate_bit(int *ptr, int pos) {

	if(pos < 0 || pos > 31) {
		return 0;
	}

	int binaryNumber = *(ptr);


	printf("binaryNumber = %x\n", binaryNumber);
	printf("pos = %d\n", pos);

	int mask = 1 << pos;

	*(ptr) = binaryNumber | mask;

	printf("after mask = %x\n", *(ptr));

	// if they are the same, there was a 0
	if(*(ptr) == binaryNumber) {
		return 0;
	}

	return 1;

}

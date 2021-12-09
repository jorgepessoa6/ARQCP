#include <stdio.h>

int main(){
	int x = 5;
	int* xPtr = &x;
	short y = *xPtr + 3;
	int vec[] = {10,11,12,13};
	
	printf("Valor de X: %d\n", x);
	printf("Valor de Y: %d\n", y);
	printf("Endereço de X: %p\n", &x);
	printf("Endereço de xPtr: %p\n", &xPtr);
	printf("The value pointed by xPtr: %d\n", *xPtr);
	printf("Endereço de vec[]: %p\n", vec);
	int count = 0;
	int size = sizeof(vec)/sizeof(int);
	while(count < size){
		printf("Valor de vec[%d]: %d\n", count, vec[count]);
		printf("Endereço de vec[%d]: %p\n", count, &vec[count]);
		count++;
	}
	return 0;
}

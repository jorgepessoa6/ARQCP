#include <stdio.h>
#include "asm.h"

int num = 6;
char* ptrgrades;

int* ptrfreq;


int main(void) {

	char gradesArray[] = {1,3,4,8,11,16};

    int freq[]={0,0,0,0,0,0, 0,0,0,0,0,  0,0,0,0,0, 0,0,0,0,0}; 

	ptrgrades = gradesArray;
	ptrfreq = freq;

	frequencies();

	int i;

	for(i = 0; i <= 20; i++) {
		printf("%d: %d\n", i, freq[i]);
	}

	return 0;

}

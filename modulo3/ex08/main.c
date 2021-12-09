#include <stdio.h>
#include "testeven.h"

int even = 0, test = 0, num = 0, sum = 0, i=0;
int vec[] = {4,6,3,4,5,6,7,8,9,10,11,14};
int* ptrvec = vec;

int main(void) {
	
	num = sizeof(vec)/sizeof(vec[0]);
	//printf("num: %d\n", num);

	printf("Insert Number:");
	scanf("\n%d", &even);
	
	test = test_even();
	
	if(test == 1){
		printf("O número inserido é par. \n");
	}else if (test == 0){
		printf("O número inserido é impar. \n");
	}
	
	
	printf("\n");
	printf("Vetor inserido = {");
	for(i=0; i<num; i++){
		printf("%d%s", *(vec+i), i!=num-1?", ":""); 
	}
	
	printf("}\n");
	
	
	sum = vec_sum_even();
	printf("A soma dos valores pares do vetor inserido é %d. \n", sum);
	
	
	return 0;
}

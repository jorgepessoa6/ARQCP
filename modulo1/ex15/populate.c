#include <time.h>
#include <stdlib.h>

void populate(int *vec, int num, int limit){
	int count=0;
	int random;
	srand(time(NULL));  
	while(count < num){
		random = rand() % limit;
		vec[count] = random;
		count++;
	}
}


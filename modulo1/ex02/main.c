#include <stdio.h>
#include "copy_vec.h"

int main(){
	int vec1[] = {1,2,3};
	int vec2[3];
	int n = 3;
	copy_vec(vec1,vec2,n);
	int i;
	for(i = 0; i < n; i++){
		printf("%d\n", *(vec2 + i));
	}
	return 0;
}

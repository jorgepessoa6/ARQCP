#include <stdio.h>
#include <string.h>
#include "main.h"

int main(void){
	
	s2 s;
	s2 *s2_ptr = &s;
	short w[] = {1,1,1};
	int j = 5;
	char c[] = {'a','b','c'};
	fill_s2(s2_ptr,w,j,c);
	printf("s2:\n");
	int i;
	for(i=0;i<3;i++){
		printf("%hd ", *(s.w + i));
	}
	printf("\n%d\n", s.j);
	for(i=0;i<3;i++){
		printf("%hhd ", *(s.c + i));
	}
	return 0;
}

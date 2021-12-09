#include <stdio.h>
#include <string.h>
#include "main.h"

int main(void){
	
	s1 s;
	s1 *s1_ptr = &s;
	int vi=1;
	char vc='a';
	int vj = 2;
	char vd = 'b';
	fill_s1(s1_ptr, vi, vc, vj, vd);
	
	printf("%d\n", s1_ptr->i);
	printf("%c\n", s1_ptr->c);
	printf("%d\n", s1_ptr->j);
	printf("%c\n", s1_ptr->d);

	return 0;
}

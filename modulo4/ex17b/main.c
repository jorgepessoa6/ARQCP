#include <stdio.h>
#include "ex17b.h"
 

int main() {
	
    int vec1[] = {4,120, 340, 662, 880};
    int vec2[4];
    char x = '2';
    int  n1=5;
	int  n2=4;
    int i;
 
	printf("Vetor Inicial = {");
	for(i=0; i<n1; i++){
		printf("%d%s", *(vec1+i), i!=n1-1?", ":""); 
	}
	
	printf("}\n");
 
    add_byte(x, vec1, vec2);
	
	printf("Vetor final = {");
	for(i=0; i<n2; i++){
		printf("%d%s", *(vec2+i), i!=n2-1?", ":""); 
	}
	printf("}\n");
	
    return 0;
}

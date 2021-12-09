#include <stdio.h>

union union_u1 {
        char vec[32];       /* 32 bytes */
        float a;            /* 4 bytes */
        int b;              /* 4 bytes */
} u;

struct struct_s1{
		char vec[32];       /* 32 bytes */
		float a;            /* 4 bytes */
		int b;				/* 4 bytes */
} s;


void print_u(){
	printf("Tamanho Union_u1: %d\n", sizeof(u)); /* O tamanho de uma union corresponde 
													ao seu elemento de maior tamanho */
}
	
void print_s(){
	printf("Tamanho Struct_s1: %d\n", sizeof(s));
}

int main(void){

    print_u();
    print_s();

	return 0;

}
	
	

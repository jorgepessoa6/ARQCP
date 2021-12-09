#include <stdio.h>
#include <stdlib.h>
#include "add_matrixes.h"

int main(){
	int i,j;
	int **ptr=new_matrix(2,3);
	int **ptr2=new_matrix(2,3);
	ptr[0][0]=1;
	ptr[0][1]=2;
	ptr[0][2]=3;
	ptr[1][0]=4;
	ptr[1][1]=5;
	ptr[1][2]=6;
	ptr2[0][0]=7;
	ptr2[0][1]=8;
	ptr2[0][2]=9;
	ptr2[1][0]=10;
	ptr2[1][1]=11;
	ptr2[1][2]=12;
	printf("m:\n");
	for (i = 0; i < 2; i++){
		for (j = 0; j < 3; j++){
			printf("m[%d][%d]: %d ",i,j,ptr[i][j]);
		}
		printf("\n");
	}
	printf("\nm2:\n");
	for (i = 0; i < 2; i++){
		for (j = 0; j < 3; j++){
			printf("m2[%d][%d]: %d ",i,j,ptr2[i][j]);
		}
		printf("\n");
	}
	int **res=add_matrixes(ptr,ptr2,2,3);
	printf("\nm+m2:\n");
	for (i = 0; i < 2; i++){
		for (j = 0; j < 3; j++){
			printf("m+m2[%d][%d]: %d ",i,j,res[i][j]);
		}
		printf("\n");
	}
	free(res[0]);
	free(res);
	return 0;
}

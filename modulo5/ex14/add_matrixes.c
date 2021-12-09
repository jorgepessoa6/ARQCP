#include <stdlib.h>
#include "add_matrixes.h"

int **add_matrixes(int **a, int **b, int y, int k){
	int i,j;
	int **matrix=(int **) malloc(y * sizeof(int *));
	matrix[0] = (int *) malloc(y * k * sizeof(int));
	for (i = 1; i < y; i++){
		matrix[i] = matrix[0] + i * k;
	}
	for (i = 0; i < y; i++){
		for (j = 0; j < k; j++){
			matrix[i][j]=a[i][j]+b[i][j];
		}
	}
	return matrix;
}

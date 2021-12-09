#include "add_matrixes.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int **new_matrix(int lines, int columns){
    int** matrix;

    matrix = (int**) calloc(lines, sizeof(int*));

    int i;
    for(i = 0; i < lines; i++) {
        *(matrix + i) = (int*) calloc(columns, sizeof(int));
        if(matrix[i] == NULL) {
            printf("Error reserving memory.\n");
            exit(1);
        }
    }

    return matrix;
}

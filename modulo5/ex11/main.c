#include <stdio.h>
#include <stdlib.h>
#include "new_matrix.h"

int main(void) {

    int lines = 4;
    int columns = 6;

    int** resultMatrix;

    resultMatrix = new_matrix(lines, columns);

    printf("resultMatrix: %p\n", resultMatrix);


    int k;
    int j;
    for (k = 0; k < lines; k++) {
        for (j = 0; j < columns; j++) {
            printf("%d ", resultMatrix[k][j]);
        }
        printf("\n");
    }




    int i;
    for (i = 0; i < lines; i++) {
        free(*(resultMatrix + i));
    }
    free(resultMatrix);

    return 0;
}
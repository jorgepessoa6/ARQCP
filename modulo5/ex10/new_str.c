#include <stdlib.h>
#include <string.h>
#include "new_str.h"

char *new_str(char str[80]){
	int len=strlen(str)+1, i;
	char *ptr=(char *) malloc(len * sizeof(char));
	for (i = 0; i < len; i++){
		ptr[i]=str[i];
	}
	return ptr;
}

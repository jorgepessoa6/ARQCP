#include <stdio.h>
#include <stdlib.h>
#include "new_str.h"

int main(){
	char s[80]="luis";
	char *ns=new_str(s);
	printf("s: %s ns: %s\n", s,ns);
	free(ns);
	return 0;
}

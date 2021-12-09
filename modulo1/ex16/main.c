#include <stdio.h>
#include "where_exists.h"

int main(void){
	char str1[] = "xrt";
	char str2[] = "xaixrarrxrt xrt xrt xrt";
	where_exists(str1,str2);
	return 0;
}

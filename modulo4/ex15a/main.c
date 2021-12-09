#include <stdio.h>
#include "ex15a.h"

int main(void){

	int date1=0b00001011010111011000011111011110;
	int date2=0b00001010010111011000011111011110;
	int res=greater_date(date1, date2);
	

	if(res==date1){
		printf("%s\n", "date1");
	}else{
		if(res==date2){
			printf("%s\n", "date2");
		}else{
			printf("%s\n", "unexpected result");
		}
	}

	return 0;
}

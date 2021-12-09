#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"


int main(void){
	int num= 100;
	int  vec[num] ;
	int limit=20;
	int x=0;
	int y=1;
	int z=2;
	int count=0;
	populate(vec, num, limit);
	while(count<num-1){
		if(check(x,y,z)==1){
			inc_nsets();
		}
		count++;
		x++;
		y++;
		z++;
	
	}
	
	return 0;
}

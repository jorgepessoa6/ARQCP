#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void){

    Student s;

	s.age = 19;
	s.number = 6;
	strcpy(s.name, "Jorge");
	strcpy(s.address, "Porto");

	char* newAddress = "Lisboa";

	Student* sPointer = &s;
	
	printf("%s\n", sPointer->address);

	update_address(sPointer, newAddress);

	printf("%s\n", sPointer->address);

	return 0;
}

#include <stdio.h>
#include "palindrome.h"
#include "lowerCase.h"

int main(void){
	int pali;
	char str[] = "Gateman sees name, garageman sees name tag";
	pali = palindrome(str);
	printf("%d\n", pali);
	return 0;
}

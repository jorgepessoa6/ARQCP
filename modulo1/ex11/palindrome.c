#include "lowerCase.h"

int palindrome(char *str){
	int size;
	int i = 0;
	if( str[0] != '\0'){
	size = lowerCase(str);
	if(size == 1){
		return 1;
	}
	while( i <= size){
		if((!(str[i] >= 'a' && str[i] <= 'z') && (str[i] < 48 || str[i] > 57)) || str[i] == ' '){
			i++;
		}
		else if((!(str[size] >= 'a' && str[size] <= 'z') && (str[size] < 48 && str[size] > 57)) || str[size] == ' '){
			size--;
		}
		else if(str[i] == str[size]){
			i++;
			size--;
		}
		else{
			return 0;
		}
	}
	return 1;
	}
	return 0;
}

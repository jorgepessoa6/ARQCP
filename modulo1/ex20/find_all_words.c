#include <stdio.h>

void find_all_words(char* str, char* word, char** addrs) {
	int flag=0,dcount=0;
	char *temp;
	char* orig = word;
	while(*str == '\0'){
		if(*word == *str){
			if(flag !=1){
				*temp = *str;
			}
			flag = 1;
			str++;
			word++;
		}else{
				if(*str == ' ' && flag == 1){
					*addrs = str;
					dcount++;
					addrs++;
					word =orig;

				}else{
					temp = NULL;
				}
				word = orig;
				flag =0;
				str++;
			}
	}
}

# ex11/Makefile

main: new_str.o main.o
		gcc -Wall -g new_str.o main.o -o main
		
new_str.o: new_str.c new_str.h
		gcc -Wall -g -c new_str.c
					
main.o: main.c new_str.h
		gcc -Wall -g -c main.c

run:		main
		./main

clean: 
	rm -f *.o main

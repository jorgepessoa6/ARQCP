# ex13/Makefile

main: new_matrix.o find_matrix.o main.o
		gcc -Wall -g new_matrix.o find_matrix.o main.o -o main
		
new_matrix.o: new_matrix.c find_matrix.h
		gcc -Wall -g -c new_matrix.c
		
find_matrix.o: find_matrix.c find_matrix.h
		gcc -Wall -g -c find_matrix.c
					
main.o: main.c find_matrix.h
		gcc -Wall -g -c main.c

run:		main
		./main

clean: 
	rm -f *.o main

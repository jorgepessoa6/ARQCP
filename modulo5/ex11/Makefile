# ex12/Makefile

main: new_matrix.o main.o
		gcc -Wall new_matrix.o main.o -o main
		
new_matrix.o: new_matrix.c new_matrix.h
		gcc -Wall -c new_matrix.c
					
main.o: main.c new_matrix.h
		gcc -Wall -c main.c

run:		main
		./main
		
clean: 
	rm -f *.o main

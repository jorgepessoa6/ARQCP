# ex15/Makefile

main: new_matrix.o add_matrixes.o main.o
		gcc -Wall -g new_matrix.o add_matrixes.o main.o -o main
		
new_matrix.o: new_matrix.c add_matrixes.h
		gcc -Wall -g -c new_matrix.c
		
add_matrixes.o: add_matrixes.c add_matrixes.h
		gcc -Wall -g -c add_matrixes.c
					
main.o: main.c add_matrixes.h
		gcc -Wall -g -c main.c

run:		main
		./main

clean: 
	rm -f *.o main

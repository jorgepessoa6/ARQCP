# ex10/Makefile

main: main.o asm.o
		gcc -Wall -g main.o asm.o -o main
		
asm.o: asm.s asm.h
		gcc -Wall -g -c asm.s
					
main.o: main.c asm.h
		gcc -Wall -g -c main.c

run:		main
		./main

clean: 
	rm -f *.o main

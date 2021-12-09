main: asm.o overflow.o main.o
	gcc -Wall -g asm.o overflow.o main.o -o main
	
asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o
	
overflow.o: overflow.s
	gcc -Wall -g -c overflow.s -o overflow.o	
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: main
	./main
	
clean:
	rm asm.o overflow.o main.o main


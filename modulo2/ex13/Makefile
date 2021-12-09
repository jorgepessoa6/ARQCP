main: asm.o main.o
	gcc -Wall -g asm.o main.o -o main
	
asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: main
	./main
	
clean:
	rm asm.o main.o asm


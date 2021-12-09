main: asm.o main.o
	gcc -g asm.o main.o -o main
	
asm.o: asm.s
	gcc -g -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -c main.c -o main.o

run: main
	./main
	
clean:
	rm asm.o main.o main

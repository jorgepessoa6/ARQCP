pex03: asm.o main.o
	gcc -Wall -g asm.o main.o -o pex03
	
asm.o: asm.s
	gcc -Wall -g -c asm.s -o asm.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex03
	./pex03
	
clean:
	rm asm.o main.o pex03

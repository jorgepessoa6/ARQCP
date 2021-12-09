pex13b: ex13b.o main.o
	gcc -Wall -g ex13b.o main.o -o pex13b
	
ex13b.o: ex13b.s
	gcc -Wall -g -c ex13b.s -o ex13b.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex13b
	./pex13b
	
clean:
	rm ex13b.o main.o pex13b

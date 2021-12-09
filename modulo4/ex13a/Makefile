pex13a: ex13a.o main.o
	gcc -Wall -g ex13a.o main.o -o pex13a
	
ex13a.o: ex13a.c
	gcc -Wall -g -c ex13a.c -o ex13a.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex13a
	./pex13a
	
clean:
	rm ex13a.o main.o pex13a

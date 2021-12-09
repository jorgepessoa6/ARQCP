pex17b: ex17b.o main.o
	gcc -Wall -g ex17b.o main.o -o pex17b
	
ex17b.o: ex17b.s
	gcc -Wall -g -c ex17b.s -o ex17b.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex17b
	./pex17b
	
clean:
	rm ex17b.o main.o pex17b

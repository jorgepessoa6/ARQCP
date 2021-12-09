pex17a: ex17a.o main.o
	gcc -Wall -g ex17a.o main.o -o pex17a
	
ex17a.o: ex17a.c
	gcc -Wall -g -c ex17a.c -o ex17a.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex17a
	./pex17a
	
clean:
	rm ex17a.o main.o pex17a

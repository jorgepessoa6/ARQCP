pex10: ex10.o main.o
	gcc -Wall -g ex10.o main.o -o pex10
	
ex10.o: ex10.s
	gcc -Wall -g -c ex10.s -o ex10.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex10
	./pex10
	
clean:
	rm ex10.o main.o pex10

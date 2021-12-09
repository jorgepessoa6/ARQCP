pex07: ex07.o main.o ex07.o
	gcc -g ex07.o ex05.o main.o -o pex07
	
ex07.o: ex07.s
	gcc -g -c ex07.s -o ex07.o	
	
main.o: main.c
	gcc -g -c main.c -o main.o

run: pex07
	./pex07
	
clean:
	rm ex07.o main.o pex07


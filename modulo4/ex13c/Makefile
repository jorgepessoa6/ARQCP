pex13c: ex13c.o ex13b.o main.o
	gcc -Wall -g ex13c.o ex13b.o  main.o -o pex13c
	
ex13c.o: ex13c.s
	gcc -Wall -g -c ex13c.s -o ex13c.o
	
ex13b.o: ex13b.s
	gcc -Wall -g -c ex13b.s -o ex13b.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex13c
	./pex13c
	
clean:
	rm ex13c.o ex13b.o main.o pex13c

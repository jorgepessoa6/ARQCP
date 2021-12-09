pex20: main.o ex20.o
	gcc -g main.o ex20.o -o pex20

ex20.o: ex20.s
	gcc -g -c ex20.s -o ex20.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
run: pex20
	./pex20
	
clean:
	rm ex20.o main.o pex20



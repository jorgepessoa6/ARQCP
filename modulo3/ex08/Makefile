pex08: testeven.o vecsumeven.o main.o
	gcc -Wall -g testeven.o vecsumeven.o main.o -o pex08
	
testeven.o: testeven.s
	gcc -Wall -g -c testeven.s -o testeven.o
	
vecsumeven.o: vecsumeven.s
	gcc -Wall -g -c vecsumeven.s -o vecsumeven.o
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o

run: pex08
	./pex08
	
clean:
	rm testeven.o vecsumeven.o main.o pex08

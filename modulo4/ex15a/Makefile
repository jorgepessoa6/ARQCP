main: main.o ex15a.o
	gcc -Wall -g main.o ex15a.o -o main

main.o: main.c ex15a.h
	gcc -Wall -g -c main.c

asm.o: ex15a.c
	gcc -Wall -g -c ex15a.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

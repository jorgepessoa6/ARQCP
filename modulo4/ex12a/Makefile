main: main.o ex12a.o
	gcc -Wall -g main.o ex12a.o -o main

main.o: main.c ex12a.h
	gcc -Wall -g -c main.c

asm.o: ex12a.c
	gcc -Wall -g -c ex12a.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

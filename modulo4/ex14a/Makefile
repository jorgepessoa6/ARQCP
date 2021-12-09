main: main.o ex14.o
	gcc -Wall -g main.o ex14.o -o main

main.o: main.c ex14.h
	gcc -Wall -g -c main.c

asm.o: ex14.c
	gcc -Wall -g -c ex14.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

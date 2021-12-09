main: main.o ex10a.o
	gcc -Wall -g main.o ex10a.o -o main

main.o: main.c ex10a.h
	gcc -Wall -g -c main.c

asm.o: ex10a.c
	gcc -Wall -g -c ex10a.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

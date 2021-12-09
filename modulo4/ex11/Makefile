main: main.o ex11.o
	gcc -Wall -g main.o ex11.o -o main

main.o: main.c ex11.h
	gcc -Wall -g -c main.c

asm.o: ex11.c
	gcc -Wall -g -c ex11.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

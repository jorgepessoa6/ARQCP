main: main.o asm.o update.o
	gcc -Wall -g main.o asm.o update.o -o main

main.o: main.c main.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s
	
update.o: update.s
	gcc -Wall -g -c update.s

run: main
	./main

clean:
	rm *.o main

debug:
	ddd main

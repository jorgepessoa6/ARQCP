main: main.o fill_student.o
	gcc -Wall -g main.o fill_student.o -o main

main.o: main.c main.h
	gcc -Wall -g -c main.c

asm.o: fill_student.c
	gcc -Wall -g -c fill_student.c

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

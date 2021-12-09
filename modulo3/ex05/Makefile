main: main.o asm.o asmAVG.s
	gcc -Wall -g main.o asm.o asmAVG.s -o main

main.o: main.c asm.h
	gcc -Wall -g -c main.c

asm.o: asm.s
	gcc -Wall -g -c asm.s
	

asmAVG.o: asmAVG.s
	gcc -Wall -g -c asmAVG.s

run: main
	valgrind ./main

clean:
	rm *.o main

debug:
	ddd main

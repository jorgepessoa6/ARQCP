main: main.o sort_without_reps.o array_sort.o
	gcc -g main.o array_sort.o sort_without_reps.o -o main

array_sort.o: array_sort.s
	gcc -g -c array_sort.s -o array_sort.o

sort_without_reps.o: sort_without_reps.s
	gcc -g -c sort_without_reps.s -o sort_without_reps.o

main.o: main.c
	gcc -g -c main.c -o main.o
	
run: main
	./main
	
clean:
	rm sort_without_reps.o array_sort.o main.o main


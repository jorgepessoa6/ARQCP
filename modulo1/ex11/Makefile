ex11: main.o palindrome.o
	gcc -Wall main.o palindrome.o -g -o ex11
	
main.o: main.c
	gcc -c main.c -o main.o
	
palindrome.o: palindrome.c
	gcc -c palindrome.c -o palindrome.o
	
clean : main.o palindrome.o
	rm -f main.o palindrome.o
	
run : ex11
	./ex11

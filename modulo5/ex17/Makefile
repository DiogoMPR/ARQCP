ex17: main.o ex17.o
	gcc -g -Wall main.o ex17.o -o ex17
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o

ex17.o: ex17.s
	gcc -g -Wall -c ex17.s -o ex17.o
	
clean:
	rm -f *.o ex17
	
run: ex17
	./ex17

ex15: main.o ex15.o 
	gcc -g -Wall main.o ex15.o -o ex15
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
ex15.o: ex15.c	
	gcc -g -Wall -c ex15.c -o ex15.o

clean:
	rm -f *.o ex15
	
run: ex15
	./ex15

db: ex15
	gdb -tui ./ex15

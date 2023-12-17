ex13: main.o ex11.o ex13.o 
	gcc -g -Wall main.o ex11.o ex13.o -o ex13
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
ex11.o: ex11.c	
	gcc -g -Wall -c ex11.c -o ex11.o
	
ex13.o: ex13.s	
	gcc -g -Wall -c ex13.s -o ex13.o
	
clean:
	rm -f *.o ex13
	
run: ex13
	./ex13

db: ex13
	gdb -tui ./ex13

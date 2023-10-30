main: main.o f.o f2.o f3.o f4.o fc.o
	gcc main.o f.o f2.o f3.o f4.o fc.o -o main
	
main.o: main.c f.h f2.h f3.h f4.h fc.h
	gcc -Wall -g -c main.c -o main.o
	
fc.o: fc.c
	gcc -Wall -g -c fc.c -o fc.o
	
f4.o: f4.s
	gcc -Wall -g -c f4.s -o f4.o
	
f3.o: f3.s
	gcc -Wall -g -c f3.s -o f3.o
	
f2.o: f2.s
	gcc -Wall -g -c f2.s -o f2.o
	
f.o: f.s
	gcc -Wall -g -c f.s -o f.o
	
run: main
	./main
	
clean:
	rm ∗ . o main

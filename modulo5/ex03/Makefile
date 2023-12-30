ex03: ex03.o main.o
	gcc -g ex03.o main.o -z noexecstack -o ex03
	
main.o: main.c ex03.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
ex03.o: ex03.c
	gcc -g -Wall -Wextra -fanalyzer -c ex03.c -o ex03.o
	
run: ex03
	./ex03
	
clean:
	rm *.o ex03
	
debug:
	gdb -tui ex03

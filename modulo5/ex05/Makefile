ex05: ex05.o ex03.o main.o
	gcc -g ex05.o ex03.o main.o -z noexecstack -o ex05	
	
ex05.o: ex05.s
	gcc -g -Wall -Wextra -fanalyzer -c ex05.s -o ex05.o
	
ex03.o: ex03.c
	gcc -g -Wall -Wextra -fanalyzer -c ex03.c -o ex03.o
		
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o	
		
run: ex05
	./ex05
	
clean:
	rm *.o ex05
	
debug:
	gdb -tui ex05

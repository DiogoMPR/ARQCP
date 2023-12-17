ex01: ex01.o main.o
	gcc -g ex01.o main.o -z noexecstack -o ex01
	
main.o: main.c ex01.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
ex01.o: ex01.c
	gcc -g -Wall -Wextra -fanalyzer -c ex01.c -o ex01.o
	
run: ex01
	./ex01
	
clean:
	rm *.o ex01
	
debug:
	gdb -tui ex01

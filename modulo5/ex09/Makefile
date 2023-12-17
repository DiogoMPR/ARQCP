main: main.o ex09.o
	gcc -g main.o ex09.o -Wall -Wextra -fanalyzer -z noexecstack -o main
	
main.o: main.c ex09.h
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack -c main.c -o main.o
	
ex09.o: ex09.s
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack  -c ex09.s -o ex09.o
	
run: main
	./main
	
clean:
	rm main.o ex09.o main
	
debug:
	gdb -tui ./main

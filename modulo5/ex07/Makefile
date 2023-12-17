main: main.o ex07.o
	gcc -g main.o ex07.o -Wall -Wextra -fanalyzer -z noexecstack -o main
	
main.o: main.c ex07.h
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack -c main.c -o main.o
	
ex07.o: ex07.s
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack  -c ex07.s -o ex07.o
	
run: main
	./main
	
clean:
	rm main.o ex07.o main
	
debug:
	gdb -tui ./main

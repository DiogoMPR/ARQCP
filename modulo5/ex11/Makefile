main: main.o ex11.o
	gcc -g main.o ex11.o -Wall -Wextra -fanalyzer -z noexecstack -o main
	
main.o: main.c ex11.h
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack -c main.c -o main.o
	
ex11.o: ex11.c
	gcc -g -Wall -Wextra -fanalyzer -z noexecstack  -c ex11.c -o ex11.o
	
run: main
	./main
	
clean:
	rm main.o ex11.o main
	
debug:
	gdb -tui ./main

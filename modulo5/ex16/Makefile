main: main.o asm.o
		gcc main.o asm.o -z noexecstack -o main

main.o: main.c asm.h
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: approved_semester.s
		gcc -g -Wall -Wextra -fanalyzer -c approved_semester.s -o asm.o

run: main
		./main

clean:
		rm *.o main

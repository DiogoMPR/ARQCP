ex04: copy_vec.o main.o
	gcc copy_vec.o main.o -o ex04

copy_vec.o: copy_vec.c
	gcc -g -Wall -Wextra -fanalyzer -c copy_vec.c -o copy_vec.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex04

run: ex04
	./ex04

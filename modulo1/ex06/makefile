ex06: average.o main.o
	gcc capitalize2.o main.o -o ex06
average.o: capitalize2.c
	gcc -g -Wall -Wextra -fanalyzer -c capitalize2.c -o capitalize2.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o ex06
run: ex06
	./ex06

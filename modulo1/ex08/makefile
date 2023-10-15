ex08: swap_numsandpointers.o main.o
	gcc swap_numsandpointers.o main.o -o ex08

swap_numsandpointers.o: swap_numsandpointers.c
	gcc -g -Wall -Wextra -fanalyzer -c swap_numsandpointers.c -o swap_numsandpointers.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex08
	
run: ex08
	./ex08

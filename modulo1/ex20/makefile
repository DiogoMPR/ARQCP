ex20: compress.o main.o
	gcc compress.o main.o -o ex20

compress.o: compress.c
	gcc -g -Wall -Wextra -fanalyzer -c compress.c -o compress.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex20

run: ex20
	./ex20

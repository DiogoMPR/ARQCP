ex10: where_is.o main.o
	gcc where_is.o main.o -o ex10
	
where_is.o: where_is.c
	gcc -g -Wall -Wextra -fanalyzer -c where_is.c -o where_is.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex10

run: ex10
	./ex10

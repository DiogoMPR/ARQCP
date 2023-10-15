ex16: format_string.o main.o
	gcc format_string.o main.o -o ex16
	
where_is.o: format_string.c
	gcc -g -Wall -Wextra -fanalyzer -c format_string.c -o format_string.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex16

run: ex16
	./ex16

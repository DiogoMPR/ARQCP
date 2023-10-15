ex14: count_words.o main.o
	gcc count_words.o main.o -o ex14
	
count_words.o: count_words.c
	gcc -g -Wall -Wextra -fanalyzer -c count_words.c -o count_words.o

main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

clean:
	rm -f *.o ex14

run: ex14
	./ex14

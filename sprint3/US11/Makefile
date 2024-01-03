prog: usac07.o usac0809.o usac11.o usac05.o usac04.o usac10.o
	gcc usac07.o usac0809.o usac11.o usac05.o usac04.o usac10.o -z noexecstack -g -o prog

usac11.o: usac11.c
	gcc -Wall -Wextra -fanalyzer -c usac11.c -g -o usac11.o

usac07.o: usac07.c
	gcc -Wall -Wextra -fanalyzer -c usac07.c -g -o usac07.o

usac0809.o: usac0809.c
	gcc -Wall -Wextra -fanalyzer -c usac0809.c -g -o usac0809.o

usac05.o: usac05.s
	gcc -Wall -Wextra -fanalyzer -c usac05.s -o usac05.o

usac04.o: usac04.s
	gcc -Wall -Wextra -fanalyzer -c usac04.s -o usac04.o

usac10.o: usac10.c
	gcc -Wall -Wextra -fanalyzer -c usac10.c -o usac10.o

run: prog
	./prog /dev/ttyS2 config intermedio 50

clean:
	rm -f *.o prog

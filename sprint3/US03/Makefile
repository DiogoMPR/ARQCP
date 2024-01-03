usac03: main.o asm.o
	gcc -g main.o asm.o -o usac03

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o

clean:
	rm -f *.o usac03

run: usac03
	./usac03

debug: usac03
	gdb -tui ./usac03

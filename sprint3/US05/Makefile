exUS05: main.o asm.o
	gcc -g main.o asm.o -o exUS05

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o

clean:
	rm -f *.o exUS05

run: exUS05
	./exUS05

debug: exUS05
	gdb -tui ./exUS05
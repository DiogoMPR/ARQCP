exIndividual: main.o sensores.o print_bits.o media.o
	gcc main.o sensores.o print_bits.o media.o -o exModelo

main.o : main.c asm.h print_bits.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
print_bits.o : print_bits.c print_bits.h
	gcc -g -Wall -Wextra -fanalyzer -c print_bits.c -o print_bits.o

sensores.o : sensores.s 
	gcc -g -Wall -Wextra -fanalyzer -c sensores.s -o sensores.o
	
media.o : media.s 
	gcc -g -Wall -Wextra -fanalyzer -c media.s -o media.o

run : exModelo
	./exModelo

clean:
	rm -fv *.o exModelo

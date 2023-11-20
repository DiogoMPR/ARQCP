# variaveis
INCLUDES = asm.h
SOURCES = count_bits_zero.c main.c
OBJFILES = count_bits_zero.o main.o
EXEC = main

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
		gcc -g -Wall -Wextra -fanalyzer -c $<

${EXEC}: ${OBJFILES}
		gcc ${OBJFILES} -o ${EXEC}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
		./${EXEC}

clean:
		rm -f ${OBJFILES} ${EXEC}

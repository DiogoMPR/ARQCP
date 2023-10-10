# variaveis
INCLUDES = capitalize.h
SOURCES = capitalize.c main.c
OBJFILES = capitalize.o main.o
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

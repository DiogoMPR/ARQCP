# variaveis
INCLUDES = cmp.h count_value.h
SOURCES = cmp.c count_value.c main.c
OBJFILES = cmp.o count_value.o main.o
EXEC = main

# Suffix rules
.SUFFIXES : .c.o

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

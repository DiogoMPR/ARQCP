# variaveis
INCLUDES = get_int.h string_to_int.h
SOURCES = get_int.c string_to_int.c main.c
OBJFILES = get_int.o string_to_int.o main.o
EXEC = main

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code .c ; $< -- file name 
.c.o:
		gcc -g -Wall -Wextra -fanalyzer -c $<
		
${EXEC}: ${OBJFILES}
		gcc ${OBJFILES} -o ${EXEC}
		
${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
		./${EXEC}
		
clean:
		rm -f ${OBJFILES} ${EXEC}

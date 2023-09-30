# variaveis
INCLUDES = string_to_int.h get_int.h fractional_part.h integer_part.h
SOURCES = string_to_int.c get_int.c fractional_part.c integer_part.c main.c
OBJFILES = string_to_int.o get_int.o fractional_part.o integer_part.o main.o
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

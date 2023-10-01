# variaveis
INCLUDES = check_lower_triangular_matrix.h sum_lower_triangular_matrix.h
SOURCES = check_lower_triangular_matrix.c sum_lower_triangular_matrix.c main.c
OBJFILES = check_lower_triangular_matrix.o sum_lower_triangular_matrix.o main.o
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

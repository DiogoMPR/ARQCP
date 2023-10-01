# variaveis
INCLUDES = cmp.h sum.h fake_hash.h get_ascii_code.h check_string.h
SOURCES = cmp.c sum.c fake_hash.c get_ascii_code.c check_string.c main.c
OBJFILES = cmp.o sum.o fake_hash.o get_ascii_code.o check_string.o main.o
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

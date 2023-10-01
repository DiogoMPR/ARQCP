# variables
INCLUDES = get_ascii_code.h sum.h fake_hash.h
SOURCES = get_ascii_code.c sum.c fake_hash.c main.c
OBJFILES = get_ascii_code.o sum.o fake_hash.o main.o
EXEC = main

# Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
		gcc -g -Wall -Wextra -fanalyzer -c $<
		
${EXEC}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
		./${EXEC}
		
clean:
		rm -f ${OBJFILES} ${EXEC}

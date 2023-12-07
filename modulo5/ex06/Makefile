# A Makefile with variables and suffix rules

# Variables
INCLUDES = asm.h
SOURCES = update_address.s fill_student.c main.c update_grades.s locate_greater.s
OBJFILES = update_address.o fill_student.o main.o update_grades.o locate_greater.o
EXEC = main

# Suffix rules
.SUFFIXES : .c .o

.s.o:
	gcc -Wall -g -c $<

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}

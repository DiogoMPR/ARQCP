# variaveis

SOURCES = main.c
OBJFILES = main.o
EXEC = main

#Suffix rules
.SUFFIXES : .c .o

# How to build an object .o from a code file .c ; $< -- file name
.c.o:
		gcc -g -Wall -Wextra -fanalyzer -c $<
		
${EXEC}: ${OBJFILES}
		gcc ${OBJFILES} -o ${EXEC}
		
${OBJFILES}: ${SOURCES}

run: ${EXEC}
		./${EXEC}
		
clean:
		rm -f ${OBJFILES} ${EXEC}

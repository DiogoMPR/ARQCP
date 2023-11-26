INCLUDES = greater_date.h
SOURCES = main.c greater_date.c
OBJFILES = main.o greater_date.o
EXEC = prog

.SUFFIXES : .c .o .s

.s.o:
	gcc -Wall -g -c $<

.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}

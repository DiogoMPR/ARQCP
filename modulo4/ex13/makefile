
«INCLUDES = rotate.h
SOURCES = main.c rotate.c
OBJFILES = main.o rotate.o
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

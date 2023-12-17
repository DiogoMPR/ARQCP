#include "ex05.h"
#include <string.h>


void fill_student(Student *s, char age, short number, char *name, char *address){
	s->age = age;
	s->number = number;
	for (int i = 0; i < 60 && name[i] != 0; ++i) {
        s->name[i] = name[i];
    }
    strcpy(s->address, address);
}


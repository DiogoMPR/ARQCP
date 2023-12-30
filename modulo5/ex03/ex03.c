#include <string.h>
#include "ex03.h"

void fill_student(Student *s, char age, short number, char *name, char *address){
	
	s->age=age;
	
	s->number=number;
	
	strcpy(s->name,name);
	
	strcpy(s->address, address);

}

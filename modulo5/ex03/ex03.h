#ifndef EX03_H
#define EX03_H
typedef struct {
		short number;
		int grades[5];
		char age;
		char name[60];
		char address[100];
	} Student;
void fill_student(Student *s, char age, short number, char *name,char *address);
#endif

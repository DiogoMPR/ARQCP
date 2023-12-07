typedef struct{
	short number;
	int grades[5];
	char age;
	char name[60];
	char address[100];
} Student;

void fill_student(Student *s, char age, short number, char *name, char *address){
	
	s-> age = age; // saving the age in the structure
	s-> number = number; // saving the number in the structure
	
	/* Loop to save the names in the structure */
	for(int i=0;i<60;i++){
		s-> name[i] = name[i];
		if(name[i] == '\0') break;
	}
	
	/* Loop to save the addresses in the structure */
	for(int i=0; i<100; i++){
		s-> address[i] = address[i];
		if(address[i] == '\0') break;
	}
}

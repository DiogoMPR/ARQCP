#include <stdio.h>
#include <string.h>
#include "ex05.h"

int main(void){
	
	int new_grades[] = {10,20,4,7,5};
	
	int *ptr = new_grades;
	
	Student student1[5];
	
	fill_student(&student1[0], '1', 17, "Tiago", "Rua");
	
	update_grades(&student1[0], ptr);

        printf("  Age: %c\n", student1->age);
        printf("  Number: %d\n", student1->number);
        printf("  Name: %s\n", student1->name);
        printf("  Address: %s\n", student1->address);
        printf("  Grades: ");
        for(int i=0; i<5; i++){
			printf(" %d ", student1->grades[i]);
		}
        printf("\n");
    return 0;

}

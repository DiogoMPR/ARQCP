#include <stdio.h>
#include <string.h>
#include "ex03.h"


int main(void){
	
	Student student1[5];
	
        fill_student(&student1[0], '19', 17, "Tiago", "Rua");

        printf("  Age: %c\n", student1->age);
        
        printf("  Number: %d\n", student1->number);
        
        printf("  Name: %s\n", student1->name);
        
        printf("  Address: %s\n", student1->address);
    
    return 0;
}

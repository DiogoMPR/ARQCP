# include <stdio.h>
# include "asm.h"

int main (void){
	
	Student students[5];
	
	fill_student(&students[0], 20, 1, "Joao", "Rua 1");
	fill_student(&students[1], 21, 2, "Maria", "Rua 2");
	fill_student(&students[2], 22, 3, "Jose", "Rua 3");
	fill_student(&students[3], 23, 4, "Ana", "Rua 4");
	fill_student(&students[4], 24, 5, "Paulo", "Rua 5");

	for (int i = 0; i < 5; i++) {
		printf("Student %d:\n", i + 1);
		printf("  Number: %hd\n", students[i].number);
		printf("  Age: %d\n", students[i].age);
		printf("  Name: %s\n", students[i].name);
		printf("  Address: %s\n", students[i].address);
	}

	update_address(&students[0], "Rua 6");
	update_address(&students[1], "Rua 7");
	update_address(&students[2], "Rua 8");
	update_address(&students[3], "Rua 9");
	update_address(&students[4], "Rua 10");
	
	
	printf("\n\n UPDATING ADDRESSES \n\n");

	for (int i = 0; i < 5; i++) {
		printf("Student %d:\n", i + 1);
		printf("Number: %hd\n", students[i].number);
		printf("Age: %d\n", students[i].age);
		printf("Name: %s\n", students[i].name);
		printf("Address: %s\n", students[i].address);

	}

	return 0;
}

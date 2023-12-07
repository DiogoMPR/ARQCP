#include <stdio.h>
#include "asm.h"

int main(void) {

	// Create a student structure array
	Student students[5];

	// Fill the data for each student using the fill_student function and addresses should be like Rua 1, Rua 2, etc.
	fill_student(&students[0], 20, 1, "Joao", "Rua 1");
	fill_student(&students[1], 21, 2, "Maria", "Rua 2");
	fill_student(&students[2], 22, 3, "Jose", "Rua 3");
	fill_student(&students[3], 23, 4, "Ana", "Rua 4");
	fill_student(&students[4], 24, 5, "Paulo", "Rua 5");


	// Update the grades for each student
	int new_grades1[5] = { 6,7,8,9,10 };
	update_grades(&students[0], new_grades1);
	int new_grades2[5] = { 11, 19, 19, 19, 19 };
	update_grades(&students[1], new_grades2);
	int new_grades3[5] = { 11, 11, 18, 18, 18 };
	update_grades(&students[2], new_grades3);
	int new_grades4[5] = { 11, 11, 11, 17, 17 };
	update_grades(&students[3], new_grades4);
	int new_grades5[5] = { 11, 11, 11, 11, 11 };
	update_grades(&students[4], new_grades5);
	
	// For each student check how many grades they have above min
	int min = 15;
	for (int i = 0; i < 5; i++) {
		int gradeResult[5] = { 10 };
		int count = locate_greater(&students[i], min, gradeResult);
		printf("Student %s has %d grades above %d\n", students[i].name, count, min);

		if (count != 0) {
			printf("Those grades are: ");
			for (int j = 0; j < count; j++) {
				printf("%d  ", gradeResult[j]);
			}
		    printf("\n");
		}
	}


	return 0;
}

#include <stdio.h>
#include "asm.h"

short code;
short salary;
int main() {

printf("Code:");
scanf("%hd", &code);

printf("Salary:");
scanf("%hd", &salary);

int result = new_salary();
printf("New Salary: %d euros. \n", result);

return 0;

}

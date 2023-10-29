#include <stdio.h>
#include "asm.h"

short op1 = 0;
short op2 = 0;
int main() {

printf("Value of op1:");
scanf("%hd", &op1);

printf("velue of op2:");
scanf("%hd", &op2);


char result = verify_flags();
printf(" Carry or Overflow = %d\n", result);

return 0;

}

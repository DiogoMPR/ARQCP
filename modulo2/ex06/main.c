#include <stdio.h>
#include "asm.h"

short op1, op2;

int main(void){
	op1 = 0x1234; // Assign the value 0x1234 to op1
    op2 = 0x5678; // Assign the value 0x5678 to op2

    short result = exchangeBytes();

    printf("Returned value: 0x%04X\n", result);
    return 0;
}

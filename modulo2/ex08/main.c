#include <stdio.h>
#include "asm.h"

short op1, op2;
extern short s1, s2;

int main(void) {
    op1 = 0x1234; // Assign the value 0x1234 to op1
    op2 = 0x5678; // Assign the value 0x5678 to op2

    short exchangeResult = exchangeBytes();
    short crossSubResult = crossSubBytes();

    printf("ExchangeBytes Result: 0x%04X\n", exchangeResult);
    printf("CrossSubBytes Result: 0x%04X\n", crossSubResult);

    return 0;
}

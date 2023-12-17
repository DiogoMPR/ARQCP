#include <stdio.h>
#include "exModelo.h"  

extern int validar_pressao(unsigned int passador);
extern int fechar_passadores(unsigned int *passadores, int n, unsigned int *fechados);

int main() {
    unsigned int passadores[5] = {0x03FC5702, 0x0BB89C04, 0x00C8FF06, 0x0AF0E008, 0x0EF0F00A};
    unsigned int fechados[5];
    int n = 5;
    int count = fechar_passadores(passadores, n, fechados);
    printf("Number of passadores to close: %d\n", count);
    for (int i = 0; i < count; i++) {
        printf("Passador %d: %u\n", i, fechados[i]);
    }
    return 0;
}

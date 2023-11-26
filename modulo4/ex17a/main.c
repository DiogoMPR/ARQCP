#include <stdio.h>

#include "greater_date.h"

unsigned int build_date(int y, int m, int d) {
    
    return (y << 8) | m | (d << 24);

}

int main() {
    unsigned int td1 = build_date(2022,1,1);
    
    unsigned int td2 = build_date(2021,1,1);
    
    printf("1. Date %d\n", greater_date(td1, td2) == td1 ? 1 : 2);
    
    td1 = build_date(2022,1,1);
    td2 = build_date(2021,1,2);
    
    printf("2. Date %d\n", greater_date(td1, td2) == td1 ? 1 : 2);

    return 0;
}

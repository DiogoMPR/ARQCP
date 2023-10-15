#include <stdio.h>
#include "check.h"

int check(unsigned char x, unsigned char y, unsigned char z){
	return (x < y && y < z);
}

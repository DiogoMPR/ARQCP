#include <stdio.h>
union union_u1{
	
char vec[32];
float a;
int b;

} u;

struct struct_s1{
	
char vec[32];
float a;
int b;

} s;

void printSizes(){
	
	printf("Size of u: %zu\n Size of s: %zu\n", sizeof(u), sizeof(s));
	
}

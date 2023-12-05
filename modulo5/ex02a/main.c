#include <stdio.h>
#include <string.h>

int main( void ){
	
	// Definition of the union_u1 which has 3 members : an array of characters 'vec' of size 32, a float 'a' and an integer 'b'.
	union union_u1{
	char vec[32];
	float a;
	int b;
} u;

	union union_u1 * ptr = &u; // pointer to 'u'

	strcpy(ptr->vec, "arquitectura de computadores" ); // copies the string and puts it in array 'vec' using 'strcpy'
	printf( "[1]=%s\n", ptr->vec );  // print of the 'vec' content
	
	ptr->a = 123.5; // 123.5 is assigned to the float member of union
	printf( "[2]=%f\n", ptr->a ); // the content of a is printed
	
	ptr->b = 2; // 2 is assigned to the integer member of union
	printf( "[3]=%d\n", ptr->b ); // the content of b is printed
	 
	printf( "[1]=%s\n", ptr->vec ); // prints the content of 'vec'
	printf( "[2]=%f\n", ptr->a ); // prints the content of 'a'
	printf( "[3]=%d\n", ptr->b ); // prints the content of 'b'

	return 0;
}

// The output :

// [1]=arquitetura de computadores
// [2]=123.5
// [3]=2
// [1]=
// [2]=0.000000
// [3]=2

// Output explaination

// 	Using object of the 'Union' type, they will be stored in the same memory space for all its members, so that whe we change the value of one member,
// it will affect the values of the other member. In this case, when we change the value of 'a' and 'b', the content of 'vec' is overwritten.

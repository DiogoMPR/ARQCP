#include <stdio.h>
#include <string.h>

	/* define a structure in a variable c1 */
	struct struct_s1{
	char vec[32];
	float a;
	int b;
	};

int main( void ){
	
	struct struct_s1 u; // defines a new structure of 'struct_s1' type
	struct struct_s1 *ptr = &u; // defines a pointer to the 'u'

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
// [1]=arquitetura de computadores
// [2]=123.5
// [3]=2

// Output explaination

// 	Using object of the 'Structure' type, they will be stored in different memory spaces for all its members, so that when we change the value of one member,
// it will not affect the values of the other members. In this case, when we change the value of 'a' and 'b', the content of 'vec' will not be overwritten.

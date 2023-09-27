/**
* Implement a C program that displays the size of the following data types:
 char, int, unsigned int, long, short, long long, float, double
*/

# include <stdio.h> 

int main(){

printf("Number of bits for a char: %lu\n", sizeof(char));
printf("Number of bits for a int: %lu\n", sizeof(int));
printf("Number of bits for a unsigned int: %lu\n", sizeof(unsigned int));
printf("Number of bits for a long: %lu\n", sizeof(long));
printf("Number of bits for a short: %lu\n", sizeof(short));
printf("Number of bits for a long long: %lu\n", sizeof(long long));
printf("Number of bits for a float: %lu\n", sizeof(float));
printf("Number of bits for a double: %lu\n", sizeof(double));

return 0;

}

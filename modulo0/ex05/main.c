/*Implement a function int cmp(int a, int b) that returns:
 * • -1 if a < b
 * • 0 if a == b
 * • 1 if a > b
 */
 
 #include <stdio.h>
 #include "cmp.h"
 
 int main(){
	 int a,b;
	 printf("Insert an integer value : ");
	 scanf("%d", &a);
	 
	 printf("Insert another integer value : ");
	 scanf("%d", &b);
	 
	 int result = cmp(a,b);
	 
	 if(result == -1){
		 printf("The number %d is lower than %d", a, b);
	 }else if(result == 0){
		 printf("The number %d is equal to %d", a, b);
	 }else{
		 printf("The number %d is bigger than %d", a, b);
	 }
	 return 0;
 }

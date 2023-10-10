/* Implement the function void capitalize(char *str) that receives the address of
 * a string1 and replaces all its lowercase characters by their uppercase counterpart.
 */
 
 #include <stddef.h>

void capitalize(char *str){
	if(str == NULL){
		return;
	}
	
	while(*str != '\0'){
		if(*str >= 'a' && *str <= 'z'){
			*str = *str - 32; // em código ASCII a diferença entre uma letra maíscula e a mesma minúscula é 32
		}
		str++; // Avança para o caracter seguinte
	}
}

#include <stdio.h>

int main(){
	
	int x = 5;
	int* ptr_x = &x; // cria o apontador ptr_x a atribui-lhe o valor de x
	float y = *ptr_x + 3;

	printf("The value of x: %d\n", x);	
	printf("The value of y: %f\n", y);

	printf("The address of x: %p\n", &x);
	printf("The address of y: %p\n", &y);
	printf("The address of ptr_x: %p\n", &ptr_x);
	
	printf("The value of ptr_x: %p\n", ptr_x);
	printf("The value pointed by ptr_x: %d\n", *ptr_x);
	
	int vec[] = {10, 20, 30, 40};
	int* ptr_vec = vec;
	int z = *ptr_vec;
	int h = *(ptr_vec + 3);
	
	printf("The value of z: %d\n", z);
	printf("The value of h: %d\n", h);
	
	printf("The address of vec: %p\n", vec);
	printf("The address of ptr_vec: %p\n", ptr_vec);

    printf("The value of ptr_vec: %p\n", ptr_vec);
    printf("The value of vec: %p\n", vec);

    printf("The value pointed by ptr_vec: %d\n", *ptr_vec);
    
    // O apontador 'ptr_vec' é inicializado para apontar para o primeiro elemento do array 'vec', guardando o endereço de memória desse mesmo elemento
    
    int i;
	for(i = 0; i < 4; i++){
		printf("1: %p,%d\t", &vec[i],vec[i]); // imprime o endereço de memória de cada elemento e o mesmo do array
	}
	printf("\n");
	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){ // usa um apontador aritmético para iterar todo o array
		printf("2: %p,%d\t", ptr_vec,*ptr_vec); // imprime o endereço de memória apontado por 'ptr_vec' e o valor guardado nesse endereço em cada posição do array
	}
	printf("\n");
	for(ptr_vec = vec + 3; ptr_vec >= vec; ptr_vec--){ // usa um apontador aritmético para iterar ao longo de todo o array, do último elemento ao primeiro 
		printf("3: %p,%d\t", ptr_vec,*ptr_vec); // imprime o endereço de memória apontado por 'ptr_vec' e o valor guardado nesse endereço em cada posição do array
	}
	
	// ptr_vec++ -> aumenta o valor do apontador por uma unidade, apontando neste contexto para o endereço seguinte de memória
	// ptr_vec-- -> diminui o valor do apontador em uma unidade, passando a apontar, neste contexto, para o endereço de memória anterior
	
	printf("\n");
	ptr_vec = vec;
	printf("4: %p,%d\n", ptr_vec,*ptr_vec);	// imprime o endereço de memória apontado por 'ptr_vec' e o valor nesse mesmo endereço
	
	int a = *ptr_vec++; // incrementa o apontador, passando este a apontar para o elemento seguinte de 'vec'
	printf("5: %p,%d,%d\n", ptr_vec,*ptr_vec, a); // imprime o endereço de memória apontado por 'ptr_vec' incrementado e o valor nesse mesmo endereço
	ptr_vec = vec; // inicializa o apontador para que este volte a apontar para a primeira posição do array
	
	a = (*ptr_vec)++; // incrementa o apontador, passando este a apontar o segundo elemento do array
	printf("6: %p,%d,%d\n", ptr_vec,*ptr_vec, a); // imprime o endereço de memória apontado por 'ptr_vec' incrementado e o valor nesse mesmo endereço
	
	ptr_vec = vec; // inicializa o apontador para que este volte a apontar para a primeira posição do array
	a = *++ptr_vec; // incrementa o apontador, passando este a apontar o segundo elemento do array 
	printf("7: %p,%d,%d\n", ptr_vec,*ptr_vec, a); // imprime o endereço de memória apontado por 'ptr_vec' incrementado e o valor nesse mesmo endereço
	
	ptr_vec = vec; // inicializa o apontador para que este volte a apontar para a primeira posição do array
	a = ++*ptr_vec; // incrementa o apontador, passando este a apontar o segundo elemento do array 
	printf("8: %p,%d,%d\n", ptr_vec,*ptr_vec, a); // imprime o endereço de memória apontado por 'ptr_vec' incrementado e o valor nesse mesmo endereço
	
	for(ptr_vec = vec; ptr_vec < vec + 4; ptr_vec++){ // o apontador 'ptr_vec' itera ao longo de todo o array
		printf("9: %p,%d\t", ptr_vec,*ptr_vec); // imprime cada endereço de memória e valor dos elementos do array
	}
	
	printf("\n");
	unsigned int d = 0xAABBCCDD;
	printf("10: %p,%x\t", &d,d); // imprime o endereço de memória e o valor da variável d
	printf("\n");	
	unsigned char* ptr_d = (unsigned char*)&d; // declara o apontador 'ptr_d' e atribui-lhe o valor de 'd'
	unsigned char* p; // declara o apontador 'p'
	
	for(p = ptr_d; p < ptr_d + sizeof(unsigned int); p++){ // itera ao longo dos bytes de 'd' usando o apontador 'p'. Começa no apontador 'ptr_d' que aponta para o primeiro byte de 'd' e continua a iteração até 'p' atingir o final do inteiro
		printf("11: %p,%x\t", p,(unsigned char)*p); // a cada iteração, imprime-se o endereço de memória apontado por 'p' e o valor desse byte em Hexadecimal
	}


	
	return 0;
}

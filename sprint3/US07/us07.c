#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>


typedef struct{
	int *array;
	int length;
	int read;
	int write;
} BufferCircular;

BufferCircular *BufferCircular_create (int length, char *path){
	BufferCircular *buffer =(BufferCircular *) malloc(sizeof(BufferCircular));

	if(buffer ==NULL){
		perror("Erro a alocar memória para o buffer.");
		exit(EXIT_FAILURE);
	}

	buffer -> array= (int*) malloc (length * sizeof(int));

	if(buffer -> array ==NULL){
		perror("Erro a alocar memória para o buffer.");
		free(buffer);
		exit(EXIT_FAILURE);
	}

	buffer->length =length;
	buffer->read =0;
	buffer->write =0;

    struct stat st = {0};

	if (stat(path, &st) == -1) {
		//O diretório não existe
		if(mkdir(path, 0777)!=0){
				perror("Erro na criação de diretório.");
				exit(EXIT_FAILURE);
		}
		printf("Sucesso!");
		printf("Diretória criado.");
	}else if (S_ISDIR(st.st_mode)){
			//O caminho existe e é um diretório
			printf("Errro!");
			printf ("O caminho já existe.");
		}else{
				//O caminho existe mas não é um diretório
				printf("Errro!");
				printf("O caminho não é um diretório.");
			}
	return buffer;
}

void insertValue(BufferCircular *buffer, int value){
	buffer -> array[buffer->write] =value;
	buffer -> write = (buffer->write + 1) % buffer->length;

	if (buffer->write == buffer->read)
        buffer->read = (buffer->read + 1) % buffer->length;

	printf("Estado do array:");
	for(int i =0 ; i< buffer->length; i++){
		printf("%d", buffer->array[i]);
	}
	printf("\nRead: %d, Write: %d\n", buffer ->read, buffer ->write);
}

int readValue(BufferCircular *buffer){
	int value =buffer->array[buffer->read];
	buffer-> read = (buffer->read+1) % buffer->length;
	return value;
}

void freeBuffer(BufferCircular *buffer){
	free(buffer->array);
	free(buffer);
}

int main(){
	int length = 5;
	char* path= "diretorio1";
	BufferCircular *buffer = BufferCircular_create(length, path);

	for(int i=1; i<=10; i++){
		insertValue(buffer, i);
	}
	free(buffer);

	return 0;
}
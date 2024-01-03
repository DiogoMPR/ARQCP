#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <time.h>
#include "usac11.h"



// Função para calcular a mediana dos valores no BufferCircular
int calcularMediana(BufferCircular *buffer) {
    int *tempArray = (int *)malloc(buffer->length * sizeof(int));
    if (tempArray == NULL) {
        perror("Erro ao alocar memória para o array temporário.");
        exit(EXIT_FAILURE);
    }

    // Copia os valores do BufferCircular para um array temporário
    int i = 0;
    int index = buffer->read;
    while (index != buffer->write) {
        tempArray[i] = buffer->array[index];
        index = (index + 1) % buffer->length;
        i++;
    }

    // Ordena o array temporário (usando um algoritmo simples de ordenação - Bubble Sort)
    for (int j = 0; j < i - 1; j++) {
        for (int k = 0; k < i - j - 1; k++) {
            if (tempArray[k] > tempArray[k + 1]) {
                int temp = tempArray[k];
                tempArray[k] = tempArray[k + 1];
                tempArray[k + 1] = temp;
            }
        }
    }

    // Calcula a mediana com base no tamanho do array
    int mediana;
    if (i % 2 == 0) {
        mediana = (tempArray[i / 2 - 1] + tempArray[i / 2]) / 2;
    } else {
        mediana = tempArray[i / 2];
    }

    free(tempArray); // Libera a memória alocada para o array temporário

    return mediana;
}


// Função para aguardar um tempo específico em milissegundos
void esperarMilissegundos(int milissegundos) {
    // Conversão de milissegundos para microssegundos
    useconds_t microsegundos = (useconds_t)milissegundos * 1000;

    // Espera por um período de tempo usando a função usleep (Unix)
    usleep(microsegundos);
}

// Função para obter a data e hora atual no formato necessário
void obterDataHoraAtual(char *nomeArquivo) {
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);

    sprintf(nomeArquivo, "%04d%02d%02d%02d%02d%02d_sensors.txt",
            tm->tm_year + 1900, tm->tm_mon + 1, tm->tm_mday,
            tm->tm_hour, tm->tm_min, tm->tm_sec);
}

int main() {
    char *sensorFilePath = "caminho_do_arquivo_de_sensores.txt";  // Caminho do arquivo de sensores
    char *outputDirectory = "diretorio_de_saida";  // Diretório de saída para os dados

    while (1) {
        FILE *sensorFile = fopen(sensorFilePath, "r");
        if (sensorFile == NULL) {
            printf("Erro ao abrir o arquivo de sensores.\n");
            return EXIT_FAILURE;
        }

        SensorConfig sensorConfig;
        int sensorValue;
        int quantidadeDeSensores = 0; // Variável para contar a quantidade de sensores lidos

        // Conta a quantidade de sensores no arquivo
        while (fscanf(sensorFile, "sensor_id:%d#type:%49[^#]#value:%*f#unit:%49[^#]#time:%d\n",
                      &(sensorConfig.sensor_id), sensorConfig.type, sensorConfig.unit, &(sensorConfig.time)) != EOF) {
            quantidadeDeSensores++;
        }

        // Aloca dinamicamente um array de sensores com base no número calculado
        SensorConfig *listaDeSensores = malloc(quantidadeDeSensores * sizeof(SensorConfig));
        if (listaDeSensores == NULL) {
            printf("Erro ao alocar memória para lista de sensores.\n");
            return EXIT_FAILURE;
        }

        fclose(sensorFile);

        FILE *sensorFile2 = fopen(sensorFilePath, "r");
        if (sensorFile2 == NULL) {
            printf("Erro ao abrir o arquivo de sensores.\n");
            return EXIT_FAILURE;
        }

        int indiceSensor = 0; // Índice para armazenar sensores na lista
        while (fscanf(sensorFile2, "sensor_id:%d#type:%49[^#]#value:%d#unit:%49[^#]#time:%d\n",
                      &(sensorConfig.sensor_id), sensorConfig.type, &sensorValue, sensorConfig.unit, &(sensorConfig.time)) != EOF) {
            // Insere valores lidos na lista de sensores
            sensorConfig.buffer = criarBufferCircular(50, "caminho_do_buffer"); // Substitua pelos valores apropriados
            insertValue(sensorConfig.buffer, sensorValue);
            listaDeSensores[indiceSensor] = sensorConfig;
            indiceSensor++;
        }

        fclose(sensorFile2);

        for (int i = 0; i < quantidadeDeSensores; i++) { // Substitua 'quantidadeDeSensores' pelo número real de sensores
            SensorConfig sensor = listaDeSensores[i]; // Substitua 'listaDeSensores' pela lista de sensores

            int mediana = calcularMediana(sensor.buffer);

            sensor.buffer->write++;

             char nomeArquivo[50];
             obterDataHoraAtual(nomeArquivo);

             char caminhoCompleto[100];
             snprintf(caminhoCompleto, sizeof(caminhoCompleto), "%s/%s", outputDirectory, nomeArquivo);


            FILE *saidaFile = fopen(nomeArquivo, "w");
            if (saidaFile == NULL) {
                printf("Erro ao criar o arquivo de saída.\n");
                return EXIT_FAILURE;
            }

            fprintf(saidaFile, "%d,%d,%s,%s,%d#\n", sensor.sensor_id, sensor.buffer->write, sensor.type, sensor.unit, mediana);
            fclose(saidaFile);
        }

        esperarMilissegundos(60000); // Espera 60 segundos (60000 milissegundos)
    }

    return 0;
}
#include "usac01.h"

DadosSensor** USAC08(int numLeituras, FILE *file){
    //Array com os dados do sensor
    DadosSensor** dados = (DadosSensor ** ) malloc(numLeituras * sizeof(DadosSensor*)); // : Aloca dinamicamente um array de ponteiros para a estrutura DadosSensor. Este array representará os dados do sensor.

    //Verificar se a memória foi alocada corretamente
    if(dados == NULL){
        printf("Erro na alocação de memória\n");
        return NULL;
    }
    // Aloca dinamicamente a memória para cada estrutura DadosSensor no array. Se a alocação falhar, imprime uma mensagem de erro e retorna NULL.
    for (int i = 0; i < numLeituras; i++){
        *(dados + i) = (DadosSensor *) maloc(sizeof(DadosSensor));

        if(*(dados + i) == NULL){
            printf("Erro na alocação de memória\n");
            return NULL;
        }
    }
    //Ler as linhas pretendidas recebidas pelo sensor
    int i = 0;
    char line[256]; // armazena linhas do arquivo
    while(i < numLeituras){
        fgets(line, sizeof(line), file); //  Lê uma linha do arquivo e armazena em line.
        int sensor_id_extracted = extracted_token(line, "sensor_id", &((*(dados + i)) ->sensor_id));
        int valor_extracted = extracted_token(line, "value", &((*(dados + i)) ->valor));
        int time_extracted = extracted_token(line, "time", &((*(dados + i)) ->time));
        // Se todas as informações foram extraídas com sucesso, incrementa i. Caso contrário, aguarda 1001 segundos antes de tentar novamente.
        if(sensor_id_extracted && valor_extracted && time_extracted){
            i++;
        } else{
            usleep(1001 * 1000);    // 1001 segundos de espera
            }
    }
    // Fecha o ficheiro
    return dados;
}
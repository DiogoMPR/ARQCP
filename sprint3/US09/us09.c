
// Declaracao extern da funcao insertValue da USAC07
extern void insertValue(BufferCircular *buffer, int value);

// Definicao da estrutura para o buffer circular
typedef struct {
    int *array;
    int length;
    int read;
    int write;
} BufferCircular;

// Definicao da estrutura para o sensor
typedef struct {
    int sensor_id;
    char type[50];
    char unit[20];
    BufferCircular buffer;
} Sensor;

// Funcao para inserir dados recebidos nas estruturas de dados
void insertData(Sensor *sensores, int numSensores, int sensor_id, int valor) {

    // Encontrar o sensor correspondente pelo sensor_id
    Sensor *sensorAtual = NULL;
    for (int i = 0; i < numSensores; i++) {
        if (sensores[i].sensor_id == sensor_id) {
            sensorAtual = &sensores[i];
            break;
        }
    }

    if (sensorAtual != NULL) {
        // Inserir o valor no buffer circular do sensor
        insertValue(&(sensorAtual->buffer), valor);  // Chama a funcao insertValue da USAC07

    } else {
        printf("Sensor com ID %d nao encontrado.\n", sensor_id);
    }
}


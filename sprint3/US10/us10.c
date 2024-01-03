
// Definicao da estrutura para o sensor
typedef struct {
    int sensor_id;
    char type[50];
    char unit[20];
    int write_counter;
    double mediana;
} Sensor;

void serializeAndWrite(Sensor *sensor, const char filename) {

    // Serializar a informacao do sensor
    File *file = fopen(filename, "wb");

    if (file == NULL) {
        perror("Error opening file");
        exit(EXIT_FAILURE);
    }

    // Escrever informacao no ficheiro
    fwrite(file, "%d,%d,%s,%s,%.2f#\n", sensor->sensor_id, sensor->write_counter, sensor->type, sensor->unit, sensor->mediana);

    fclose(file);
}


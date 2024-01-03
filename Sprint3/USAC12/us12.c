#include <stdio.h>
#include <stdlib.h>
#include <us12.h>

#define MAX_LINE_LENGTH 1024

struct Sensor {
    int sensorId;
    int status;
    char type[MAX_LINE_LENGTH];
    char unit[MAX_LINE_LENGTH];
    float value;
};

void processSensorData(FILE *outputFile, const char *fileName) {
    FILE *file = fopen(fileName, "r");

    if (file == NULL) {
        fprintf(stderr, "Error opening the file %s\n", fileName);
        return;
    }

    char line[MAX_LINE_LENGTH];

    while (fgets(line, MAX_LINE_LENGTH, file) != NULL) {
        struct Sensor sensor;
        int fields = sscanf(line, "%d,%d,%[^,],%[^,],%f#",
                            &sensor.sensorId, &sensor.status, sensor.type,
                            sensor.unit, &sensor.value);
        sensor.value = sensor.value / 100;

        if (fields == 5) {
            fprintf(outputFile, "Sensor ID: %d, Type: %s, Unidade: %s, Valor: %.2f\n",
                    sensor.sensorId, sensor.type, sensor.unit, sensor.value);
        } else {
            fprintf(stderr, "Error reading line: %s\n", line);
        }
    }

    fclose(file);
}

int main() {
    FILE *outputFile = fopen("output.txt", "w");

    if (outputFile == NULL) {
        fprintf(stderr, "Error creating output file.\n");
        return 1;
    }

    processSensorData(outputFile, "sensor.txt");

    fclose(outputFile);

    return 0;
}
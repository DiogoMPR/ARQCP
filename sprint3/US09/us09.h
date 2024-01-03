
#ifndef US09_H
#define US09_H

typedef struct {
    int *array;
    int length;
    int read;
    int write;
} BufferCircular;

typedef struct {
    int sensor_id;
    char type[50];
    char unit[20];
    BufferCircular buffer;
} Sensor;

void insertData(Sensor *sensores, int numSensores, int sensor_id, int valor);

extern void insertValue(BufferCircular *buffer, int value);

#endif

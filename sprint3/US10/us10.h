
#ifndef US10_H
#define US10_H

typedef struct {
    int sensor_id;
    char type[50];
    char unit[20];
    int write_counter;
    double mediana;
} Sensor;

void serializeAndWrite(Sensor *sensor, const char filename);

#endif

#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/time.h>
#include "processor.h"
#include "us07.h"


void createDirectory(const char *path) {
    struct stat st = {0};

    if (stat(path, &st) == -1) {
        // Directory does not exist
        if (mkdir(path, 0777) != 0) {
            perror("Error creating directory.");
            exit(EXIT_FAILURE);
        }
        printf("Directory created successfully.\n");
    } else if (S_ISDIR(st.st_mode)) {
        // Path exists and is a directory
        printf("The path already exists and is a directory.\n");
    } else {
        // Path exists but is not a directory
        printf("The path is not a directory.\n");
    }
}

Output* output(Sensor* sensor){

    Output* output = (Output*) malloc(sizeof(Output));

    output->id = sensor->id;
    strcpy(output->type, sensor->type);
    strcpy(output->unit, sensor->unit);
    output->median = sensor->median;

    return output;
}

void outputFree(Output* output){

    free(output->median);
    free(output);
}

void wait(int milliseconds) {
    struct timeval beggining, actual;

    gettimeofday(&beggining, NULL);

    do {
        gettimeofday(&actual, NULL);
    } while ((actual.tv_sec - beggining.tv_sec) * 1000 + (actual.tv_usec - beggining.tv_usec)/1000 < milliseconds);
}
#ifndef FUNCTIONS_H
#define FUNCTIONS_H
typedef struct {
     int y;
    short x;
    } structA;

typedef struct {
    int x;
    structA a;
    structA *b;
    short z;
    char c;
    int y;
    char e[3];
    } structB;

short fun1(structB *s);

short fun2(structB *s);

short* fun3(structB *s);

short fun4(structB *s);

#endif

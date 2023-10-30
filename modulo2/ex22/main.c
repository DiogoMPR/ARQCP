#include <stdio.h>
#include "f.h"
#include "f2.h"
#include "f3.h"
#include "f4.h"
#include "fc.h"

int i = 0, j = 0;

int main() {
	printf("i: ");
	scanf("%d",&i);
	printf("j: ");
	scanf("%d",&j);
	int fcr = fc(i,j);
	int fcr2 = fc2(i,j);
	int fcr3 = fc3(i,j);
	int fcr4 = fc4(i,j);
	int fas = f();
	int fas2 = f2();
	int fas3 = f3();
	int fas4 = f4();
	printf("f in assembly : %d\n f in c : %d\n", fas, fcr);
	printf("f2 in assembly : %d\n f2 f in c : %d\n", fas2, fcr2);
	printf("f3 in assembly : %d\n f3 in c : %d\n", fas3, fcr3);
	printf("f4 in assembly : %d\n f4 in c : %d\n", fas4, fcr4);
}

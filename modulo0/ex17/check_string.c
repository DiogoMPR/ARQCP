#include "fake_hash.h"
#include "cmp.h"

int check_string(char str[], int h){
	int hash = fake_hash(str);
	return cmp(hash, h);
}

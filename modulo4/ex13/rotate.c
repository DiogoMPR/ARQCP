int rotate_left(int num, int nbits) {
    unsigned int tmp = (unsigned int)num;
    nbits %= 32;  
    tmp = (tmp << nbits) | (tmp >> (32 - nbits));
    return (int)tmp;
}

int rotate_right(int num, int nbits) {
    unsigned int tmp = (unsigned int)num;
    nbits %= 32;  
    tmp = (tmp >> nbits) | (tmp << (32 - nbits));
    return (int)tmp;
}

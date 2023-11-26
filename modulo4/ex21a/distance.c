int distance(char *a, char *b) {
    int c = 0;
    
    while(*a != 0 || *b != 0) { 
        if (*a == 0 || *b == 0) return -1;
        if (*a != *b) c++;
        a++; b++;
    }
    
    return c;
}

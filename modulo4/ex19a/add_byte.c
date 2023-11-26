void add_byte(char x, int *vec1, int *vec2) {
    vec2[0] = vec1[0];
    for (int i = 1; i < vec1[0] + 1; i++) {
        
        char mask = 0xFF;
        
        unsigned char first_byte = (unsigned char) (vec1[i] & mask);
        
        vec2[i] = vec1[i] ^ first_byte;     
        
        first_byte += x;
        
        vec2[i] += first_byte;
    }
}

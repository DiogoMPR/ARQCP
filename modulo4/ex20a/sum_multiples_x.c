int sum_multiples_x(char *vec, int x) {
    int sum = 0;
    int thirdByteMask = 0xFF0000;           // mask that activates the third byte.
    int multiple = x & thirdByteMask;       // activating the third byte of x.
    multiple = multiple >> 16;              // move multiple to the third byte of x.
    
    while (*vec != '\0') {
        if (multiple != 0 && (*vec % multiple == 0)) {
            sum += *vec;
        }
        vec++;
    }
    return sum;
}

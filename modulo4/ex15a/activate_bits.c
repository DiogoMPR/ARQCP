int activate_bits(int a, int left, int right) {
    // 0000
    unsigned int lmask = 0xFFFFFFFF << (left + 1);
    if (left == 31) lmask = 0;
    unsigned int rmask = 0xFFFFFFFF >> (32-right);
    if (right == 0) rmask = 0;
    
    a |= lmask;
    a |= rmask;

    return a;
}

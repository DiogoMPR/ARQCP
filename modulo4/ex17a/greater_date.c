unsigned int greater_date(unsigned int date1, unsigned int date2) {
    
    const unsigned int MASK_YEAR = 0x00FFFF00;
    const unsigned int MASK_MONTH = 0x000000FF;
    const unsigned int MASK_DAY = 0xFF000000;

    unsigned int t1 = date1 & MASK_YEAR;
    unsigned int t2 = date2 & MASK_YEAR;

    if (t1 > t2) return date1;
    else if (t1 < t2) return date2;

    t1 = date1 & MASK_MONTH;
    t2 = date2 & MASK_MONTH;

    if (t1 > t2) return date1;
    else if (t1 < t2) return date2;

    t1 = date1 & MASK_DAY;
    t2 = date2 & MASK_DAY;

    if (t1 > t2) return date1;
    
    return date2;
}

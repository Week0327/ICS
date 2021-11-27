char int_32_size_is_32()
{
    int set_msb = 1 << 31;
    int beyond_msb = (1 << 16) << 16;
    return set_msb && !beyond_msb;
}

char int_16_size_is_32()
{
    int set_msb = (1 << 15)<<16;
    int beyond_msb = ((1 << 15) << 15)<<2;
    return set_msb && !beyond_msb;
}



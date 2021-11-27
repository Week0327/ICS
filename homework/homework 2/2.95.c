
float_bits float_half(float_bits f)
{
    unsigned sig = f >> 31;
    unsigned rest = f & 0x7FFFFFFF;
    unsigned exp = f >> 23 & 0xFF;
    unsigned frac = f & 0x7FFFFF;
    int is_NAN_or_oo = (exp == 0xFF);
    if (is_NAN_or_oo)
    {
        return f;
    }
    int addition = (frac & 0x3) == 0x3;
    if (exp == 0)
    {
        frac >>= 1;
        frac += addition;
    }
    else if (exp == 1)
    {
        rest >>= 1;
        rest += addition;
        exp = rest >> 23 & 0xFF;
        frac = rest & 0x7FFFFF;
    }
    else
    {
        exp -= 1;
    }
    return sig << 31 | exp << 23 | frac;
}

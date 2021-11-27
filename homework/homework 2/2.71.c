int xbyte(unsigned word, int bytenum)
{
    int ret = word << ((3 - bytenum)<<3);
    return ret >> 24;
}

unsigned unsigned_high_prod(unsigned x,unsigned y)
{
    int w = sizeof(unsigned) << 3;
    int sx = (int)x;
    int sy = (int)y;
    int t = signed_high_prod(sx,sy);
    return t + ((sx>>(w-1))&1)*sy+((sy>>(w-1))&1)*sx;
}

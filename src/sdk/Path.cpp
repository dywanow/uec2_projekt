#include "Path.h"

Path::Path()
    : Element()
{

}

void Path::Init()
{
    active = 1;
}

uint8_t Path::Code() const
{
    return 0;
}

uint8_t Path::IsCollidable() const
{
    return 0;
}

uint8_t Path::IsFireCollidable() const
{
    return 0;
}
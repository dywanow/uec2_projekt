#include "Wall.h"

Wall::Wall()
    : Element()
{

}

void Wall::Init()
{
    active = 0;
}

uint8_t Wall::IsDestructible() const
{
    return 0;
}

uint8_t Wall::Code() const
{
    return 2;
}
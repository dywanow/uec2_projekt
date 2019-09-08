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

#include "Wall.h"

Wall::Wall()
    : Element()
{

}

uint8_t Wall::IsDestructible() const
{
    return 0;
}

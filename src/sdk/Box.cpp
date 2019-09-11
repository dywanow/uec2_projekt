#include "Box.h"

Box::Box()
    : Element()
{

}

void Box::Init()
{
    active = 0;
}

void Box::OnFireCollision()
{
    active = 0;
}

uint8_t Box::Code() const
{
    return 1;
}
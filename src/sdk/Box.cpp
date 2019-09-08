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

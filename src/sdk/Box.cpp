#include "Box.h"

Box::Box()
    : Element()
{

}

void Box::OnFireCollision()
{
    active = 0;
}

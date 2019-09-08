#include "Fire.h"

const float EXPIRY_DELAY = 1.0f;

Fire::Fire()
    : Element()
{

}

void Fire::Init()
{
    active = 0;
    time = 0;
}

void Fire::Update(float dt)
{
    if (active)
    {
        time += dt;
        if (time >= EXPIRY_DELAY)
        {
            time = 0;
            active = 0;
        }
    }
}

uint8_t Fire::IsFireCollidable() const
{
    return 0;
}

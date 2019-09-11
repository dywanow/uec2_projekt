#include "Bomb.h"
#include "Arena.h"

Bomb::Bomb()
    : Element()
{

}

void Bomb::Init()
{
	owner = nullptr;
    active = 0;
    time = 0;
}

uint8_t Bomb::Code() const
{
    return 3;
}

void Bomb::Update(float dt)
{
    if (active)
    {
        time += dt;
        if (time >= EXPLOSION_DELAY)
        {
            Explode();
        }
    }
}

void Bomb::OnFireCollision()
{
    Explode();
}

void Bomb::SetOwner(Bomber *owner)
{
	this->owner = owner;
}

void Bomb::Explode()
{
    active = 0;
    time = 0;
    owner->OnBombExplosion();
    arena->InitExplosion(position);
}

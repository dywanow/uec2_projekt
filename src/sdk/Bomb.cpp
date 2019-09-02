#include "Bomb.h"
#include "Arena.h"

Bomb::Bomb() : Element(0, 0, Element::Types::BOMB)
{
    Init();
}

void Bomb::Init()
{
    detonated = 0;
    active = 0;
    time = 0;
}

void Bomb::SetBomberID(uint8_t bomber_id)
{
    this->bomber_id = bomber_id;
}


uint8_t Bomb::GetBomberID() const
{
    return bomber_id;
}

void Bomb::PrepareToDetonate()
{
    detonated = 0;
}

void Bomb::Detonate()
{
    detonated = 1;
    arena->InitExplosion(bomber_id, id);
    time = ACTIVE_TIME;
}

uint8_t Bomb::IsDetonated() const
{
    return detonated;
}

void Bomb::Update(float dt)
{
    if (IsActive())
    {
        time += dt;
        if (time >= ACTIVE_TIME)
        {
            if (!detonated)
            {
                Detonate();
            }
            Clear();
        }
    }
}

void Bomb::Clear()
{
    arena->BomberDeleteBomb(bomber_id);
    Deactivate();
    ResetTime();
    detonated = 0;
}

#include "Bomb.h"
#include "Arena.h"

Bomb::Bomb() : Element(0, 0, Element::Types::BOMB, 0),
               explosion_initialized(0),
               time(0)
{

}

void Bomb::SetTime(float time)
{
	this->time = time;
}

void Bomb::SetBomberID(uint8_t bomber_id)
{
	this->bomber_id = bomber_id;
}

float Bomb::GetTime() const
{
	return time;
}

uint8_t Bomb::GetBomberID() const
{
	return bomber_id;
}

void Bomb::Explode()
{
	arena->InitExplosion(bomber_id, id);
	explosion_initialized = 1;
	time = EXPLOSION_DELAY;
}

void Bomb::Update(float dt)
{
	if (active)
	{
		time += dt;
		if (time >= EXPLOSION_DELAY && !explosion_initialized)
		{
			Explode();
		}
		if (time >= ACTIVE_TIME)
		{
			Clear();
		}
	}
}

void Bomb::Clear()
{
	arena->BomberDeleteBomb(bomber_id);
	active = 0;
	explosion_initialized = 0;
	time = 0;
}

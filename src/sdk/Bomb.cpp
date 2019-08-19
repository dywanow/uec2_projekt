#include "Bomb.h"
#include "Bomberman.h"

Bomb::Bomb() : Element(0, 0, Element::Type::BOMB, Element::State::NOT_ACTIVE), time(0)
{
	position = owner->GetPosition();
}

Bomb::Bomb(Bomberman *owner) : Element(0, 0, Element::Type::BOMB, Element::State::NOT_ACTIVE),  owner(owner), time(0)
{
	position = owner->GetPosition();
}

void Bomb::SetTime(float time)
{
	this->time = time;
}

float Bomb::GetTime() const
{
	return time;
}

void Bomb::Update(float dt)
{
	if (state == Element::State::NOT_ACTIVE)
	{
		position = owner->GetPosition();
		time = 0;
	}
	else
	{
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			state = Element::State::NOT_ACTIVE;
		}
	}
}

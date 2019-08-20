#include "Bomb.h"
#include "Bomberman.h"

Bomb::Bomb() : Element(0, 0, Element::Type::BOMB, Element::State::NOT_ACTIVE),
			   time(0)
{

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
	if (state == Element::State::ACTIVE)
	{
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			state = Element::State::NOT_ACTIVE;
			time = 0;
		}
	}
}

#include "Bomb.h"
#include "Arena.h"

Bomb::Bomb() : Element(0, 0, Element::Type::BOMB, Element::State::NOT_ACTIVE),
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

void Bomb::Update(float dt)
{
	if (state == Element::State::ACTIVE)
	{
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			arena->players[bomber_id].DecrementBombsNumber();
			state = Element::State::NOT_ACTIVE;
			time = 0;
		}
	}
}

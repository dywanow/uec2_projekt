#include "Explosion.h"
#include "Bomberman.h"

Explosion::Explosion() : Element(0, 0, Element::Type::EXPL, Element::State::NOT_ACTIVE),
						 time(0)
{

}


void Explosion::SetTime(float time)
{
	this->time = time;
}

void Explosion::SetBomberman(Bomberman *player)
{
	this->player = player;
}

void Explosion::SetBomb(Bomb *bomb)
{
	this->bomb = bomb;
}

float Explosion::GetTime() const
{
	return time;
}

Bomberman* Explosion::GetBomberman() const
{
	return player;
}

Bomb* Explosion::GetBomb() const
{
	return bomb;
}

void Explosion::Update(float dt)
{
	if (state == Element::State::NOT_ACTIVE)
	{
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

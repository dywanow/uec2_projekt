#include "Explosion.h"
#include "Bomberman.h"
#include "Bomb.h"

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
	if (state == Element::State::ACTIVE)
	{
		// TODO: Set proper positions for explosion parts based on bomb position
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			state = Element::State::NOT_ACTIVE;
			time = 0;
		}
	}
}

uint8_t Explosion::CollidesWithElement(const Element &element) const
{
	auto el_pos = element.GetPosition();
	if (element.IsCollidable() && element.IsActive() && el_pos == position)
	{
		return 1;
	}
	return 0;
}

void Explosion::Draw(uint32_t *drawer) const
{
	for (auto &ep : explosion_parts)
	{
		ep.Draw(drawer);
	}
}

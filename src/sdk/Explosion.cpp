#include "Explosion.h"
#include "Bomber.h"
#include "Bomb.h"
#include "Arena.h"

Explosion::Explosion() : Element(0, 0, Element::Type::EXPL, Element::State::NOT_ACTIVE),
                         time(0)
{

}

void Explosion::SetBomberID(uint8_t bomber_id)
{
	this->bomber_id = bomber_id;
}

void Explosion::InitParts()
{
	for (auto &ep : explosion_parts)
	{
		ep.SetState(Element::State::NOT_ACTIVE);
	}
	uint8_t up_done, left_done, down_done, right_done;
	up_done = left_done = down_done = right_done = 0;
	auto origin_pos = arena->players[bomber_id].GetPosition();

	for (uint8_t ctr = 1, i = 0; ctr <= EXPLOSION_LENGTH; ctr++, i++)
	{

	}
}

void Explosion::Update(float dt)
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

void Explosion::Draw(uint32_t *drawer) const
{
	for (auto &ep : explosion_parts)
	{
		ep.Draw(drawer);
	}
}
